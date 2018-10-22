package ${packageName}.di

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import javax.inject.Inject

class ${className}ViewModelFactory @Inject constructor(
		val view: ${className}View
): ViewModelProvider.Factory {
	
	override fun <T : ViewModel?> create(modelClass: Class<T>): T {
        if (modelClass.isAssignableFrom(${className}ViewModel::class.java)) {
            return ${className}ViewModel(view) as T
        } else {
            throw IllegalArgumentException()
        }
    }

}