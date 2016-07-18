#!/usr/bin/env python2.7

from __future__ import print_function

import argparse
import ConfigParser
from contextlib import contextmanager
import sys


@contextmanager
def open_hgrc(modify=False):
    try:
        hgrc_file = open('.hg/hgrc', 'r+' if modify else 'r')
    except IOError as exc:
        if exc.errno != 2:
            raise
        if not modify:
            raise
        hgrc_file = open('.hg/hgrc', 'w+')

    with hgrc_file:
        parser = ConfigParser.RawConfigParser(allow_no_value=True)
        parser.readfp(hgrc_file)

        try:
            yield parser
        except:
            raise
        else:
            if modify:
                hgrc_file.seek(0)
                parser.write(hgrc_file)
                hgrc_file.truncate()


def add(args):
    with open_hgrc(modify=True) as hgrc:
        if not hgrc.has_section('paths'):
            hgrc.add_section('paths')
        hgrc.set('paths', args.name, args.path)


def show(args):
    with open_hgrc() as hgrc:
        path = hgrc.get('paths', args.name)
    print("{} = {}".format(args.name, path))


def main(argv):
    parser = argparse.ArgumentParser(description='manage paths in the local hg checkout')
    subparsers = parser.add_subparsers()

    add_cmd = subparsers.add_parser('add', help='add a new path to the local hg checkout')
    add_cmd.add_argument('name', nargs='?', default='default', help="name of the path to add (default: default)")
    add_cmd.add_argument('path', help="path URL to set")
    add_cmd.set_defaults(func=add)

    set_cmd = subparsers.add_parser('set', help='set an existing path in the local hg checkout')
    set_cmd.add_argument('name', nargs='?', default='default', help="name of the path to add (default: default)")
    set_cmd.add_argument('path', help="path URL to set")
    set_cmd.set_defaults(func=add)

    show_cmd = subparsers.add_parser('show', help='show a given path in a local hg checkout')
    show_cmd.add_argument('name', nargs='?', default='default', help="name of the path to show (default: default)")
    show_cmd.set_defaults(func=show)

    args = parser.parse_args(argv)
    args.func(args)
    return 0


if __name__ == '__main__':
    sys.exit(main(sys.argv[1:]))
