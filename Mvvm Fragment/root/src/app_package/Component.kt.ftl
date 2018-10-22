package ${packageName}.di

import dagger.Component

@Component(modules = [${className}Module::class], dependencies = [MainComponent::class])
interface ${className}Component {
	
	fun inject(fragment: ${className}Fragment)

}