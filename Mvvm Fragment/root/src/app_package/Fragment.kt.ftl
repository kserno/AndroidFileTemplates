package ${packageName}

import android.os.Bundle
import android.view.View
import androidx.databinding.DataBindingUtil
import androidx.lifecycle.ViewModelProviders
import javax.inject.Inject

class ${className}Fragment: BaseFragment(), ${className}View {
	
	override val layoutId = R.layout.fragment_${className}

	@Inject
	lateinit var viewModelFactory: ${className}ViewModelFactory

	lateinit var viewModel: ${className}ViewModel

	lateinit var binding: Fragment${className}Binding

	override fun bindData(view: View, savedInstanceState: Bundle?) {
		binding = DataBindingUtil.bind(view)!!
        binding.setLifecycleOwner(this)

        Dagger${className}Component.builder()
                .mainComponent(application!!.component)
                .${className}Module(${className}Module(this))
                .build()
                .inject(this)

        viewModel = ViewModelProviders.of(this, viewModelFactory).get(${className}ViewModel::class.java)

        binding.viewModel = viewModel
	}


}