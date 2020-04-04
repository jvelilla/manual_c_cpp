note
	description: "Summary description for {WRAP_MATH_DLL}."
	EIS: "name=MSVC_Tutorial", "src=https://docs.microsoft.com/en-us/cpp/build/walkthrough-creating-and-using-a-dynamic-link-library-cpp?view=vs-2019"
	EIS: "name=Eiffel_docs_interfacing_with_dll", "src=https://www.eiffel.org/doc/solutions/Interfacing_with_DLLs"
	misc_notes: "[
		The DLL uses the C calling convention.
		]"

class
	WRAP_MATH_DLL


feature -- Wrapping DLL

	fibonacci_initialization (a, b: INTEGER_32)
			-- Encapsulation of a dll function with the `_stdcall' call mechanism.
			-- Initialize a Fibonacci relation sequence
			-- such that F(0) = a, F(1) = b.
			-- This function must be called before any other function.
		external
			"C [dllwin32 %"MathLibrary.dll%"] (long, long)"
		alias
			"fibonacci_init"
		end


	fibonacci_initialization_1 (a, b: INTEGER)
			-- Encapsulation of a dll function with the `_stdcall' call mechanism.
			-- Initialize a Fibonacci relation sequence
			-- such that F(0) = a, F(1) = b.
			-- This function must be called before any other function.

		external
			"dll MathLibrary.dll signature (EIF_INTEGER_32, EIF_INTEGER_32) "
		alias
			"fibonacci_init"
		end

end
