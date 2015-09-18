class XmlDocument
	def method_missing(name, **args, &block)
		if block
			"<#{name}>#{ block.call }</#{name}>"
		else
			if args.any?
				"<#{name} #{args.keys[0]}='#{args[args.keys[0]]}'/>"
			else
				"<#{name}/>"
			end
		end
	end
end