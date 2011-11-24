require 'tmpdir'
require 'rgz/version'

module Rgz
  RgzNotFound = Class.new Exception

  def include_paths(libpath)
    raise RgzNotFound unless File.exist? libpath
    libpath = File.expand_path libpath
    t = Dir.mktmpdir
    Dir.chdir t do
      tar_xzvf libpath
    end
    Dir.glob(t + '/**/lib')
  end
  module_function :include_paths

  def make_rgz(dir)
    system 'bundle install .'
    system 'tar czvf ruby.rgz ruby'
  end
  module_function :make_rgz

  def tar_xzvf(path)
    # FIXME: don't use tar external command(?)
    system 'tar', 'xzvf', path, [:err, :out] => '/dev/null' # TODO /dev/null
  end
  module_function :tar_xzvf
  private :tar_xzvf
end
