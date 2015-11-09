module Receptor
import bool
import list

{-This data type describes the four receptor types for touch - these take information from the receptor sites and transport them to the brain.-}

record Receptor where
    constructor mkReceptor
    name : String {-Name of the receptor type.-}
    resolution : String {-Resolution of the signal they give off.-}
    location : String {-Refers to location of the receptor cell in the skin.-}
    adaptation : bool {-Refers the speed of adaptation. True denotes fast adaptation and false is slow adaptation.-}
    spacialAcuity : Nat {-Refers to how sharply distances can be resolved in 10^-4 meters.-}

mer: Receptor
mer = mkReceptor "Merkel" "high" "epidermis" true 5

meis: Receptor
meis = mkReceptor "Meissner" "high" "epidermis" false 30

pac: Receptor
pac = mkReceptor "Pacinian" "low" "dermis" true 100

ruff: Receptor
ruff = mkReceptor "Ruffini" "low" "subcutaneous" false 70

allRcptrs: list Receptor
allRcptrs = mer :: meis :: pac :: ruff :: nil
--List of all four receptors.

highres: list Receptor
highres = mer :: meis :: nil
--List of receptors only with high-resolution read-outs.

lowres: list Receptor
lowres = pac :: ruff :: nil
--List of receptors only with low-resolution read-outs.

fastadpt: list Receptor
fastadpt = mer :: pac :: nil
--List of receptors with fast adaptation.

slowadpt: list Receptor
slowadpt = meis :: ruff :: nil
--List of receptors with slow adaptation.
