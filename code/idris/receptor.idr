module receptor
import bool

record Receptor where 
    constructor mkReceptor
    name : String
    resolution : String
    location : String {-Refers to location of the receptor cell in the skin.-}
    adaptation : bool {-Refers the speed of adaptation. True denotes fast adaptation and false is slow adaptation.-}
    axonDiameter : Nat {-Refers to the diameter of the axon in micrometers.-}

mer: Receptor
mer = mkReceptor "Merkel" "high" "epidermis" true 11

meis: Receptor
meis = mkReceptor "Meissner" "high" "epidermis" false 12

pac: Receptor
pac = mkReceptor "Pacinian" "low" "dermis" true 12

ruff: Receptor
ruff = mkReceptor "Ruffini" "low" "subcutaneous" false 12
