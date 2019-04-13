# frozen_string_literal: true

# ifelse / https://www.notion.so/highereducation/ifelse-08945f45f9e943798f3c51486beb0d49
# This will check if the string exists. If it does it will print the first output, otherwise it will print the second output.
# {{ string_to_check | ifelse: if_output, else_output }}

module IfElse
  def ifelse(content, if_content = '', else_content = '')
    content = content.to_s

    # Return if empty
    return if if_content.empty? && else_content.empty?

    # Return results
    (!content.nil? && !content.empty?) && content != 'false' ? if_content : else_content
  end
end

Liquid::Template.register_filter(IfElse)