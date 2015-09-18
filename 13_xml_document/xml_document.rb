class XmlDocument
	def initialize(indents=false)
		@indents = indents
		@index_level = 0
	end
	
	def method_missing(name, **args, &block)
		if block
			"<#{name}>#{"\n"+' '*@index_level+=2 if @indents}#{ block.call }</#{name}>#{"\n"+' '*(@index_level >0 ? @index_level-=2 : @index_level) if @indents}"
		else
			if args.any?
				"<#{name} #{args.keys[0]}='#{args[args.keys[0]]}'/>#{"\n"+' '*(@index_level-=2)  if @indents}"
			else
				"<#{name}/>#{"\n"if @indents}"
			end
		end
	end

end
