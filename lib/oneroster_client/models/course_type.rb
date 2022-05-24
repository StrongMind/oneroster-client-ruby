=begin
#OneRoster OpenAPI (JSON) Definition

#The OneRoster service binding is available in WSDL/XSD and REST/JSON. The model is based upon the IMS PSM modelling approach.

OpenAPI spec version: 1.1
Contact: platform@strongmind.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.34
=end

require 'date'
require 'oneroster_client/models/base_type'

module OneRosterClient
  # ...tbd (Class description)...
  class CourseType < BaseType
    # Model Primitive Datatype = NormalizedString
    attr_accessor :title

    attr_accessor :school_year

    # Model Primitive Datatype = NormalizedString
    attr_accessor :course_code

    # Model Primitive Datatype = NormalizedString
    attr_accessor :grades

    # Model Primitive Datatype = NormalizedString
    attr_accessor :subjects

    attr_accessor :org

    # Model Primitive Datatype = NormalizedString
    attr_accessor :subject_codes

    attr_accessor :resources

    # ...tbd (Class description)...
    attr_accessor :sourced_id

    attr_accessor :status

    # Model Primitive Datatype = DateTime
    attr_accessor :date_last_modified

    # ...tbd (Class description)...
    attr_accessor :metadata

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'title' => :'title',
        :'school_year' => :'schoolYear',
        :'course_code' => :'courseCode',
        :'grades' => :'grades',
        :'subjects' => :'subjects',
        :'org' => :'org',
        :'subject_codes' => :'subjectCodes',
        :'resources' => :'resources',
        :'sourced_id' => :'sourcedId',
        :'status' => :'status',
        :'date_last_modified' => :'dateLastModified',
        :'metadata' => :'metadata'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'title' => :'String',
        :'school_year' => :'GUIDRefType',
        :'course_code' => :'String',
        :'grades' => :'Array<String>',
        :'subjects' => :'Array<String>',
        :'org' => :'GUIDRefType',
        :'subject_codes' => :'Array<String>',
        :'resources' => :'Array<GUIDRefType>',
        :'sourced_id' => :'String',
        :'status' => :'String',
        :'date_last_modified' => :'DateTime',
        :'metadata' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OneRosterClient::CourseType` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OneRosterClient::CourseType`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'school_year')
        self.school_year = attributes[:'school_year']
      end

      if attributes.key?(:'course_code')
        self.course_code = attributes[:'course_code']
      end

      if attributes.key?(:'grades')
        if (value = attributes[:'grades']).is_a?(Array)
          self.grades = value
        end
      end

      if attributes.key?(:'subjects')
        if (value = attributes[:'subjects']).is_a?(Array)
          self.subjects = value
        end
      end

      if attributes.key?(:'org')
        self.org = attributes[:'org']
      end

      if attributes.key?(:'subject_codes')
        if (value = attributes[:'subject_codes']).is_a?(Array)
          self.subject_codes = value
        end
      end

      if attributes.key?(:'resources')
        if (value = attributes[:'resources']).is_a?(Array)
          self.resources = value
        end
      end

      if attributes.key?(:'sourced_id')
        self.sourced_id = attributes[:'sourced_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'date_last_modified')
        self.date_last_modified = attributes[:'date_last_modified']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @title.nil?
        invalid_properties.push('invalid value for "title", title cannot be nil.')
      end

      if @course_code.nil?
        invalid_properties.push('invalid value for "course_code", course_code cannot be nil.')
      end

      if @sourced_id.nil?
        invalid_properties.push('invalid value for "sourced_id", sourced_id cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @date_last_modified.nil?
        invalid_properties.push('invalid value for "date_last_modified", date_last_modified cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @title.nil?
      return false if @course_code.nil?
      return false if @sourced_id.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('', ['active', 'tobedeleted'])
      return false unless status_validator.valid?(@status)
      return false if @date_last_modified.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('', ['active', 'tobedeleted'])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          title == o.title &&
          school_year == o.school_year &&
          course_code == o.course_code &&
          grades == o.grades &&
          subjects == o.subjects &&
          org == o.org &&
          subject_codes == o.subject_codes &&
          resources == o.resources &&
          sourced_id == o.sourced_id &&
          status == o.status &&
          date_last_modified == o.date_last_modified &&
          metadata == o.metadata && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [title, school_year, course_code, grades, subjects, org, subject_codes, resources, sourced_id, status, date_last_modified, metadata].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      super(attributes)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        OneRosterClient.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = super
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
