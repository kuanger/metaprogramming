require 'builder'

xml = Builder::XmlMarkup.new(target: STDOUT, indent: 2)

xml.semester {
  xml.class 'Egyptology'
  xml.class 'Ornithologo'
}
