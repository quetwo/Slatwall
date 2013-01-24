component output="false" accessors="true" extends="HibachiService" {
	
	public any function init() {
		if(!encryptionKeyExists()){
			createEncryptionKey();
		}
		return super.init();
	}
	
	public string function encryptValue(required string value) {
		return encrypt(arguments.value, getEncryptionKey(), setting("globalEncryptionAlgorithm"), setting("globalEncryptionEncoding"));
	}

	public string function decryptValue(required string value) {
		try {
			return decrypt(arguments.value, getEncryptionKey(), setting("globalEncryptionAlgorithm"), setting("globalEncryptionEncoding"));	
		} catch (any e) {
			logHibachi("There was an error decrypting a value from the database.  This is usually because Slatwall cannot find the Encryption key used to encrypt the data.  Verify that you have a key file in the location specified in the advanced settings of the admin.", true);
			return "";
		}
	}
	
	public string function createEncryptionKey() {
		var	theKey = generateSecretKey(setting("globalEncryptionAlgorithm"), setting("globalEncryptionKeySize"));
		storeEncryptionKey(theKey);
		return theKey;
	}
	
	public string function getEncryptionKey() {
		var encryptionFileData = fileRead(getEncryptionKeyFilePath());
		var encryptionInfoXML = xmlParse(encryptionFileData);
		return encryptionInfoXML.crypt.key.xmlText;
	}
	
	private string function getEncryptionKeyFilePath() {
		return getEncryptionKeyLocation() & getEncryptionKeyFileName();
	}
	
	private string function getEncryptionKeyLocation() {
		return setting("globalEncryptionKeyLocation") NEQ "" ? setting("globalEncryptionKeyLocation") : expandPath('/Slatwall/config/custom/');
	}
	
	private string function getEncryptionKeyFileName() {
		return "key.xml.cfm";
	}
	
	private boolean function encryptionKeyExists() {
		return fileExists(getEncryptionKeyFilePath());
	}
	
	private void function storeEncryptionKey(required string key) {
		var theKey = "<crypt><key>#arguments.key#</key></crypt>";
		fileWrite(getEncryptionKeyFilePath(),theKey);
	}
	
	// ===================== START: Logical Methods ===========================
	
	// =====================  END: Logical Methods ============================
	
	// ===================== START: DAO Passthrough ===========================
	
	// ===================== START: DAO Passthrough ===========================
	
	// ===================== START: Process Methods ===========================
	
	// =====================  END: Process Methods ============================
	
	// ====================== START: Save Overrides ===========================
	
	// ======================  END: Save Overrides ============================
	
	// ==================== START: Smart List Overrides =======================
	
	// ====================  END: Smart List Overrides ========================
	
	// ====================== START: Get Overrides ============================
	
	// ======================  END: Get Overrides =============================
	
}