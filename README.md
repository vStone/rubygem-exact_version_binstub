# exact_version_binstub

This gem does nothing besides overriding the binstub function inside rubygems.

In stead of having the binstub require `'>= 0'` of a gem, it will match the exact
version of the gem being installed.


## Installation

    $ gem install exact_version_binstub

## Usage

After installing, all `gem installs` (from this point forward) will have the
modified binstub. Gems that are already installed will have to be reinstalled
or the binstubs will continue to require the best version available.

## Contributing

Required packages:

* git
* rubygems
* bundler

Forking and Pull Requests:

1. Fork it ( https://github.com/vStone/exact_version_binstub/fork )
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/my-new-feature`)
5. Create a new Pull Request

Remember, small commits merge better!
