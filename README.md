# RGZ

## USAGE: generating an rgz file

Assuming you have a gem project "dummy" that has "Gemfile".

    $ rgz

Generates "ruby" directory and "ruby.rgz" file. Use the rgz file later.

## USAGE: using the rgz file

    require 'rgz'
    $LOAD_PATH.concat Rgz.include_paths 'the-rgz-file-path.rgz'
    require 'a-library-in-the-rgz-file'

## Authors

* Tatsuhiro Ujihisa <http://ujihisa.blogspot.com>
* Super Momonga <http://supermomonga.com>

## License

GPL version 3 or later
