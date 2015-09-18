class XmlDocument
	def hello(name: nil,&block)
		if name
			"<hello name='#{name}'/>"
		else
			if block
			"<hello>#{block.call}</hello>" 
			else
			"<hello/>"
		end
		end
	end

	def method_missing(name, *args)
		"<#{name}/>"
	end
end