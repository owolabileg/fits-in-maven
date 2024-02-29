package codegen.re.parameterized.egcl;

import java.util.ArrayList;

public class Foreach {

	private ArrayList<Rule> rules;

	private String target_type;
	private String target_var;

	private ArrayList<String> replicated_state_types;
	private ArrayList<String> replicated_state_vars;
	private ArrayList<String> replicated_state_defaults;

	public Foreach(ArrayList<Rule> rules, String target_type, String target_var,
			ArrayList<String> replicated_state_types, ArrayList<String> replicated_state_vars,
			ArrayList<String> replicated_state_defaults) {
		this.rules = rules;
		this.target_type = target_type;
		this.target_var = target_var;
		this.replicated_state_types = replicated_state_types;
		this.replicated_state_vars = replicated_state_vars;
		this.replicated_state_defaults = replicated_state_defaults;
	}

	public Foreach(ArrayList<Rule> rules) {
		this(rules, null, null, null, null, null);
	}

	// getters
	public ArrayList<Rule> getRules() {
		return rules;
	}

	public String getForeachType() {
		return target_type;
	}

	public String getForeachVariable() {
		return target_var;
	}

	public ArrayList<String> getReplicatedStateTypes() {
		return replicated_state_types;
	}

	public ArrayList<String> getReplicatedStateVars() {
		return replicated_state_vars;
	}

	public ArrayList<String> getReplicatedStateDefaults() {
		return replicated_state_defaults;
	}

	// returns the name of the method which initialises the foreach hashmap
	public String getInit() {
		String result = "";

		for (int i = 0; i < replicated_state_types.size(); i++)
			result += "initialise" + replicated_state_vars.get(i) + "();";

		return result;
	}

	// tostring
	public String toString() {
		String result = "foreach ";

		if (target_type != null) {
			result += "foreach target (" + target_type + " " + target_var + ") ";
		}

		result += "keep ( ";

		for (int i = 0; i < replicated_state_types.size(); i++)
			result += replicated_state_types.get(i) + " " + replicated_state_vars.get(i) + " defaultsTo "
					+ replicated_state_defaults.get(i) + ", ";

		result += ") { ";

		for (Rule r : rules)
			result += r.toString();

		result += "}";

		return result;

	}

	// toAJ
	public void toAspectJ(AspectJScript aspectJrules) {
		String result = "";

		// Hashmap
		for (int i = 0; i < replicated_state_types.size(); i++) {
			// note that we are assuming replicated state variable names do not repeat
			// throughout the script
			result += "\nstatic HashMap<" + target_type + ", " + replicated_state_types.get(i) + "> "
					+ replicated_state_vars.get(i) + " = new HashMap<" + target_type + ", "
					+ replicated_state_types.get(i) + ">();";

			result += "\nstatic void initialise" + replicated_state_vars.get(i) + "(){" + replicated_state_vars.get(i)
					+ "= new HashMap<" + target_type + ", " + replicated_state_types.get(i) + ">(); }\n\n";

		}
		aspectJrules.addToAspectPrelude(result);

		for (Rule r : rules)
			r.toAspectJ(aspectJrules, target_var, replicated_state_vars, replicated_state_defaults);
	}

}
