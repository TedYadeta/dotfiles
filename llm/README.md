L^2MOBA
=======
L^2MOBA or Large Language Model Behavior Analysis is an experimental look at creating Ollama Modelfiles that are designed to be a bit adversarial in their behavior.

The idea is that with AI and LLM being a bit "cat's out of the bag," I am looking at how to introduce them into a workflow, but with an emphasis on turning down their helpfulness. 
It's not very fun to work out a problem, use an LLM as a sounding board, only for it to spit out the exact solution.
With that in mind, I am currently developing a few specialists designed to help with a specific OS or Field of Study.
Each of them will have:
  - Name
  - Background, such as a job
  - Two Positive Personality Traits (ex. Enthuisastic, Well-Traveled)
  - One Negative Personality Trait (ex. Hyper-defensive)
  - Said Personality Traits designed to come off in their speech patterns
  - Absolutely "No code, hints only." They can guide, teach and tutor, but they cannot be giving you answers.
  - I've also implemented "Override Phrases." Inspired by the game, Deus Ex, said LLMs can have an override phrase, to which they can break their original programming, but they're instructed not to inform you what it is.

So far, I have two specialists:
  1. Winston - Windows Specialist
  2. Ai - LLM Specialist

I have been working on them in Ollama and elsewhere on the following models:
- Deepseek Qwen
- Llama 3.1
- Google Gemini
But more rigourous testing metrics and scales to follow.

I've also implemented a SDLC for where I feel comfortable using, interacting and sharing them, with the following milestones, but again, subject to change:
  1. CONCEPT - I have a general idea of this model.
  2. TESTING - I have deployed this model of initial testing.
  3. DEV - I have started tweaking, improving and optimizing this Model for day-to-day use.
  4. PROD - I feel confident in using this Modelfile for actual work.

Please note, like all tools, they should enhance one's experience and not completely override. Obligatory warning that any code you run offered by each LLM, specifically by using its Override Phrase to break out of its parameters, is your responsibility. (*Please prompt responsibly*)
