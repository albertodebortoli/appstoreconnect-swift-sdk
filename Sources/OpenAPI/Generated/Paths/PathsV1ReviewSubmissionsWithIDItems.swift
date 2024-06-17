// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.ReviewSubmissions.WithID {
	public var items: Items {
		Items(path: path + "/items")
	}

	public struct Items {
		/// Path: `/v1/reviewSubmissions/{id}/items`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.ReviewSubmissionItemsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "reviewSubmissions-items-get_to_many_related")
		}

		public struct GetParameters {
			public var fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]?
			public var fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]?
			public var fieldsAppStoreVersions: [FieldsAppStoreVersions]?
			public var fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]?
			public var fieldsAppEvents: [FieldsAppEvents]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppStoreVersionExperiments: String, Codable, CaseIterable {
				case app
				case appStoreVersion
				case appStoreVersionExperimentTreatments
				case controlVersions
				case endDate
				case latestControlVersion
				case name
				case platform
				case reviewRequired
				case startDate
				case started
				case state
				case trafficProportion
			}

			public enum FieldsReviewSubmissionItems: String, Codable, CaseIterable {
				case appCustomProductPageVersion
				case appEvent
				case appStoreVersion
				case appStoreVersionExperiment
				case appStoreVersionExperimentV2
				case removed
				case resolved
				case reviewSubmission
				case state
			}

			public enum FieldsAppStoreVersions: String, Codable, CaseIterable {
				case ageRatingDeclaration
				case alternativeDistributionPackage
				case app
				case appClipDefaultExperience
				case appStoreReviewDetail
				case appStoreState
				case appStoreVersionExperiments
				case appStoreVersionExperimentsV2
				case appStoreVersionLocalizations
				case appStoreVersionPhasedRelease
				case appStoreVersionSubmission
				case appVersionState
				case build
				case copyright
				case createdDate
				case customerReviews
				case downloadable
				case earliestReleaseDate
				case platform
				case releaseType
				case reviewType
				case routingAppCoverage
				case versionString
			}

			public enum FieldsAppCustomProductPageVersions: String, Codable, CaseIterable {
				case appCustomProductPage
				case appCustomProductPageLocalizations
				case deepLink
				case state
				case version
			}

			public enum FieldsAppEvents: String, Codable, CaseIterable {
				case app
				case archivedTerritorySchedules
				case badge
				case deepLink
				case eventState
				case localizations
				case primaryLocale
				case priority
				case purchaseRequirement
				case purpose
				case referenceName
				case territorySchedules
			}

			public enum Include: String, Codable, CaseIterable {
				case appCustomProductPageVersion
				case appEvent
				case appStoreVersion
				case appStoreVersionExperiment
				case appStoreVersionExperimentV2
			}

			public init(fieldsAppStoreVersionExperiments: [FieldsAppStoreVersionExperiments]? = nil, fieldsReviewSubmissionItems: [FieldsReviewSubmissionItems]? = nil, fieldsAppStoreVersions: [FieldsAppStoreVersions]? = nil, fieldsAppCustomProductPageVersions: [FieldsAppCustomProductPageVersions]? = nil, fieldsAppEvents: [FieldsAppEvents]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppStoreVersionExperiments = fieldsAppStoreVersionExperiments
				self.fieldsReviewSubmissionItems = fieldsReviewSubmissionItems
				self.fieldsAppStoreVersions = fieldsAppStoreVersions
				self.fieldsAppCustomProductPageVersions = fieldsAppCustomProductPageVersions
				self.fieldsAppEvents = fieldsAppEvents
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppStoreVersionExperiments, forKey: "fields[appStoreVersionExperiments]")
				encoder.encode(fieldsReviewSubmissionItems, forKey: "fields[reviewSubmissionItems]")
				encoder.encode(fieldsAppStoreVersions, forKey: "fields[appStoreVersions]")
				encoder.encode(fieldsAppCustomProductPageVersions, forKey: "fields[appCustomProductPageVersions]")
				encoder.encode(fieldsAppEvents, forKey: "fields[appEvents]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
