local BlizzardTOC = require("Tests.TOC.BlizzardTOC")
local CDN = require("Tests.TOC.CDN")

local VALID_RESPONSE_FILE = path.join("Tests", "Fixtures", "cdn-response-example.txt")
local VALID_RESPONSE_TEXT = C_FileSystem.ReadFile(VALID_RESPONSE_FILE)
local INVALID_RESPONSE_FILE = path.join("Tests", "Fixtures", "cdn-response-malformed-header.txt")
local INVALID_RESPONSE_TEXT = C_FileSystem.ReadFile(INVALID_RESPONSE_FILE)

local RARITY_CORE_TOC = C_FileSystem.ReadFile("Rarity.toc")
local RARITY_OPTIONS_TOC = C_FileSystem.ReadFile(path.join("Modules", "Options", "Rarity_Options.toc"))

local EXAMPLE_PRODUCT_INFO = {
	BuildConfig = "afb222415432704dab1c5849cfd3e39f",
	BuildId = "57212",
	CDNConfig = "bba400d95ca3cbf8a0912ec7c9d8899d",
	KeyRing = "3ca57fe7319a297346440e4d2a03a0cd",
	ProductConfig = "53020d32e1a25648c8e1eafd5771935f",
	Region = "us",
	VersionsName = "11.0.5.57212",
}

describe("TOC", function()
	describe("BlizzardTOC", function()
		describe("DecodeFileContents", function()
			it("should be able to load valid TOC files", function()
				local RarityCoreTOC = BlizzardTOC:DecodeFileContents(RARITY_CORE_TOC)
				local RarityOptionsTOC = BlizzardTOC:DecodeFileContents(RARITY_OPTIONS_TOC)

				-- For now, only parse the header (other fields can be added as needed)
				assertEquals(RarityCoreTOC["Title"], "Rarity")
				assertEquals(RarityCoreTOC["Author"], "Allara")
				assertTrue(RarityCoreTOC["Interface"] > 0)
				assertEquals(type(RarityCoreTOC["X-Min-Interface"]), "number")
				assertEquals(RarityCoreTOC["X-Curse-Project-ID"], 30801)
				assertEquals(RarityCoreTOC["Interface"], RarityCoreTOC["X-Min-Interface"])

				assertEquals(RarityOptionsTOC["Title"], "Rarity [|caaedc99fOptions|r]")
				assertEquals(RarityOptionsTOC["Dependencies"], "Rarity")
				assertEquals(RarityOptionsTOC["X-Part-Of"], "Rarity")

				assertEquals(RarityCoreTOC["Author"], RarityOptionsTOC["Author"])
				assertEquals(RarityCoreTOC["Interface"], RarityOptionsTOC["Interface"])
				assertEquals(RarityCoreTOC["X-Min-Interface"], RarityOptionsTOC["X-Min-Interface"])
			end)
		end)
	end)

	describe("CDN", function()
		describe("VersionNameToInterfaceVersion", function()
			it("should return a number representing the TOC interface version", function()
				assertEquals(CDN:VersionNameToInterfaceVersion("11.0.5.57212"), 110005)
			end)

			it("should fail if the provided version name has an invalid format", function()
				assertFailure(function()
					return CDN:VersionNameToInterfaceVersion("11.0")
				end, CDN.errorStrings.INVALID_VERSION_FORMAT)
			end)
		end)

		describe("ParseResponseText", function()
			it("should throw if the header's key-value format is not as expected", function()
				assertThrows(function()
					CDN:ParseResponseText(INVALID_RESPONSE_TEXT)
				end, CDN.errorStrings.MALFORMED_RESPONSE_HEADER)
			end)

			it("should return a table representing the CDN response body", function()
				local expectedFieldNames =
					{ "Region", "BuildConfig", "CDNConfig", "KeyRing", "BuildId", "VersionsName", "ProductConfig" }

				local response = CDN:ParseResponseText(VALID_RESPONSE_TEXT)
				assertEquals(response.sequenceNumber, 2515340)
				assertEquals(#response.csvFieldNames, 7)
				assertEquals(response.csvFieldNames, expectedFieldNames)
				assertEquals(response.productInfoByRegion.us, EXAMPLE_PRODUCT_INFO) -- Don't care about the rest
			end)
		end)
	end)
end)
