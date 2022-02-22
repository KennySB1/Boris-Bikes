# Passing your first Unit Test

[Back to the Challenge Map](0_challenge_map.md)

Your spec file should now look like this:

```ruby
# In spec/docking_station_spec.rb
describe DockingStation do

end
```
When you ran RSpec, you should have gotten an error like this:

```
An error occurred while loading ./spec/docking_station_spec.rb.
Failure/Error:
  describe DockingStation do

  end

NameError:
  uninitialized constant DockingStation
# ./spec/docking_station_spec.rb:1:in `<top (required)>'
No examples found.


Finished in 0.00003 seconds (files took 0.12494 seconds to load)
0 examples, 0 failures, 1 error occurred outside of examples
```

This is an error from the testing framework RSpec. It says that it doesn't know what `DockingStation` is.

In this challenge, you will create a `DockingStation` class and include it in the spec file you created.

### Learning Objectives covered
- Pass a unit test
- Use `require`

### To complete this challenge, you will need to:

- [ ] Create a new file for a Docking Station class, inside the `/lib` directory
- [ ] Define a `DockingStation` class
- [ ] Use `require` to include this file inside your spec file
- [ ] Run RSpec from the Command Line
- [ ] Explain to your pair partner the difference between what you see, and the error you saw before.

### Hints

<details><summary>CLICK ME</summary>
  <li>You now have a matching failure in your feature and unit test - time to write some code!</li>
  <li>Remember - your job is to get your tests passing in the simplest way possible.  In order to do this, you'll need to define a DockingStation class in a file within a '/lib' directory.</li>
  <li>At this point, try running RSpec again - the test still fails!  Why might this be?</li>
  <li>Right now, your spec file has no way of knowing about the contents of your file in the '/lib' directory - you'll need to require it.  Check the links below for more info.</li>
</details>

### Resources
- [Ruby in 20 minutes](https://www.ruby-lang.org/en/documentation/quickstart/)
- [Including files in Ruby](https://github.com/makersacademy/course/blob/main/pills/require.md)

### [Walkthrough](walkthroughs/6.md)

[Previous Challenge](5_from_feature_tests_to_unit_tests.md) | [Next Challenge](7_back_to_the_feature.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/6_passing_your_first_unit_test.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/6_passing_your_first_unit_test.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/6_passing_your_first_unit_test.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/6_passing_your_first_unit_test.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/course&prefill_File=boris_bikes/6_passing_your_first_unit_test.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
