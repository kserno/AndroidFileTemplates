<?xml version="1.0"?>
<recipe>

	<instantiate from="src/app_package/ViewModel.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${className}ViewModel.kt"/>
	<instantiate from="src/app_package/Fragment.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${className}Fragment.kt"/>
	<instantiate from="src/app_package/View.kt.ftl" to="${escapeXmlAttribute(srcOut)}/${className}View.kt"/>
	<instantiate from="src/app_package/Module.kt.ftl" to="${escapeXmlAttribute(srcOut)}/di/${className}Module.kt"/>
	<instantiate from="src/app_package/Component.kt.ftl" to="${escapeXmlAttribute(srcOut)}/di/${className}Component.kt"/>
	<instantiate from="src/app_package/ViewModelFactory.kt.ftl" to="${escapeXmlAttribute(srcOut)}/di/${className}ViewModelFactory.kt"/>

	<!--<instantiate from="src/app_package/layout.xml.ftl" to="${escapeXmlAttribute(resOut)}/layout/${className}ViewModel.kt"/>-->

    <open file="${srcOut}/${className}Presenter.java"/>

</recipe>