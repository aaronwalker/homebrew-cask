cask 'aws-sessionmanager' do
  version "latest"
  sha256 "a68e716f618937e6671b1f01b1a7c2b986457a21c0274426effba8383e15c042"

  url "https://s3.amazonaws.com/session-manager-downloads/plugin/#{version}/mac/sessionmanager-bundle.zip"
  homepage "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with.html"
  
  depends_on formula: "awscli"

  installer script: {
    executable: "#{staged_path}/sessionmanager-bundle/install",
    args:       ['--install-dir',"#{staged_path}"],
    sudo:       false,
  }

end
