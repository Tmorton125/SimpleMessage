# This loads the manifest file located at MyEngine::Engine.root/config/manifest.rb
# and stores the values in a global variable
$engine_manifests = Array.new

engines = Rails::Engine.subclasses

engines.each do |engine|
	manifest = File.join(engine.root, 'config', 'manifest.rb')

	# Make sure file exists before attempting to lead it.
	if File.exist?( manifest )
		$engine_manifests << eval(File.read(manifest))
	end
end




