context('Testing conversion function')

test_that('Are the values correct?',{
          expect_equal(convert(1, 'Centimeter', 'Inch'), 0.393701)
          expect_equal(convert(c(1,10, 'Inch', 'Centimeter'), c(2,20)))
            })

test_that('Are errors correct?', {
          expect_error(convert('dog', 'Inch', 'Meter'),
          expect_warning(convert(1, 'Kilogram', 'Meter')))

})
