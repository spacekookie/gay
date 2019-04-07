<Body for PICKELDATABAS.oz>=
  <Body for DATABAS.oz>  
    proc {Save File}
      {Pickle.save {Ctr get($)}# 
        {Dictionary.toRecord db Data}  
      File}
    end 
    proc {Load File}
      I#D={Pickle.load File}
    in 
      {Dictionary.removeAll Data}
        {Ctr init(I)}
        {Record.forAllInd D
          proc {$ K E}
        {Dictionary.put Data K E}
      end}
  end