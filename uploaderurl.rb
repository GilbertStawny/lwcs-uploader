# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Uploaderurl < Formula
  desc "Script to generate a pre-signed S3 URL for customers to upload log files and diagnostic evidence."
  homepage ""
  url "https://github.com/GilbertStawny/uploaderURL/archive/refs/tags/v0.1.0.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "f027d49be015bd31565fbe48be6cc3324134d06f1d6c0bd567035162bd844e9f"
  license "GPL-3.0"
  
  depends_on "boto3" => :python
  # depends_on "cmake" => :build

  def install
    bin.install "uploadurl"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test uploaderURL`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
