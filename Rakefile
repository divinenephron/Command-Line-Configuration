require 'rake/clean'

source_dir = File.join(Dir.pwd, 'dotfiles')
unless Dir.pwd == File.expand_path("~")
  puts "This rakefile should be run from the home directory, please copy it there."
  exit(1)
end

source_dir = File.join(Dir.pwd, '.cl', 'dotfiles')
dest_dir = Dir.pwd

DOTFILE_SOURCE = FileList["#{source_dir}/*"]
DOTFILES = DOTFILE_SOURCE.sub(%r|^#{source_dir}/|, "#{dest_dir}/.")
CLOBBER.include(DOTFILES)

desc "Symlinks (ln -s) all of the dotfiles to the home directory. The dotfiles are presumed to be in ~/.cl/dotfiles."
task :deploy => DOTFILES do |t|
end

rule( %r|^#{dest_dir}/\.[^/]*$| => proc { |tn| tn.sub(%r|^#{dest_dir}/\.|, "#{source_dir}/")}) do |t|
  sh "ln -s #{t.source} #{t.name}"
end
