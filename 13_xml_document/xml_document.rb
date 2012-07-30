# xml_document.rb
#make an object, Xmldoc, that builds an XML file, which contains tags

class XmlDocument
	def initialize(indent=false)
		@indent = indent
	end

	def method_missing(name, *args, &block)
		# args = [ 'arg1', 'arg2', { :hash => 'options'}]
		# #{key}='#{value}'
		if args.length > 0 and args.last.is_a?(Hash)
			# We're in the XML "attributes" case
			hash_options = args.last
			hashy_stuff=hash_options.map { |key,value| "#{key}='#{value}'" }.join(' ')
			if @indent
				return "<#{name} #{hashy_stuff}/>\n"
			else
				return "<#{name} #{hashy_stuff}/>"
			end

		elsif block_given?
			if @indent
				result = ""
				result << "<#{name}>\n"
				result << block.call.split("\n").map { |line| line = "  " + line }.join("\n")+"\n"
				result << "</#{name}>\n"
				return result
			else
				return "<#{name}>#{block.call}</#{name}>"
			end
			
		else
			if @indent
				return "<#{name}>\n"
			else
				return "<#{name}/>"
			end
		end
 	end 
end

