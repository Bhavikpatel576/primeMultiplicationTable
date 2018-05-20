require 'rspec'
require './lib/renderHelper'

describe CLI do 
  it "outputs executable commands" do
    expectation = expect {CLI.help}
    expectation.to output(/A prime number multiplication table/).to_stdout
    expectation.to output(/Commands:/).to_stdout
    expectation.to output(/\[SIZE\]/).to_stdout
    expectation.to output(/-s/).to_stdout
  end
end

describe Render do 
	context "executable outputs to stdout" do 
  	specify { expect { system('./render') }.to output.to_stdout_from_any_process }
  end

  context "executable does not throw error" do
  	specify { expect { system('./render') }.to_not output("error").to_stderr_from_any_process }
  end
end
