use inc::Module::Install;
use Module::Install::AuthorTests;

name 'Amon2-Auth';
all_from 'lib/Amon2/Auth.pm';

requires 'Amon2' => '3.03';
requires 'Plack' =>  '0.9984';
requires 'LWP' => '6.00';
requires 'LWP::Protocol::https' => '6.00';
requires 'JSON' => '2.53';

requires 'Mouse' => 0.97;

# for Github/Facebook/Loctouch
requires 'Hash::MultiValue' => 0.10;
requires 'URI::Escape';

# for Twitter
requires 'Net::Twitter::Lite' => '0.10004';

tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
test_requires 'Test::More' => 0.96; # done_testing, subtest
# test_requires 'Test::Requires';
author_tests('xt');
WriteAll;
