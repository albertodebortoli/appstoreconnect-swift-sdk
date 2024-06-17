// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BundleIDCapabilitiesWithoutIncludesResponse: Codable {
	public var data: [BundleIDCapability]
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public init(data: [BundleIDCapability], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([BundleIDCapability].self, forKey: "data")
		self.links = try values.decode(PagedDocumentLinks.self, forKey: "links")
		self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encode(links, forKey: "links")
		try values.encodeIfPresent(meta, forKey: "meta")
	}
}
