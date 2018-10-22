package ${packageName}.di

import dagger.Module
import dagger.Provides

@Module
class ${className}Module(
		@get:Provides val view: ${className}View
)