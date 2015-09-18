class XmlDocument
	def hello(name: nil)
		if name
			"<hello name='#{name}'/>"
		else
			"<hello/>"
		end
	end

	def method_missing(name, *args)
		"<#{name}/>"
	end
end