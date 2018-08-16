
/**
 * User Profile
 */
var profile = {
  userName: 'saml-test',
  nameIdFormat: 'urn:oasis:names:tc:SAML:2.0:nameid-format:persistent',
  groups: ['Support', 'Readonly']
}

/**
 * SAML Attribute Metadata
 */
var metadata = [{
  id: "groups",
  optional: false,
  displayName: 'Groups',
  description: 'A list of user roles',
  multiValue: true
}];

module.exports = {
  user: profile,
  metadata: metadata
}
