require_relative "../../lib/cli.rb"

RSpec.describe CLI do
  describe "#start" do
    it "prints a welcome message and asks the user for their location" do
      cli = CLI.new

      # Stubbing the standard input to simulate user input
      allow(cli).to receive(:gets).and_return("AA\n")

      # Expecting specific output to standard output
      expect { cli.start }.to output(
        "Let's find a job in Canada!\nWhat is your location?\nFind a job in AA!\n"
      ).to_stdout
    end
  end
end