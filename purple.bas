FN = FreeFile
  Open strPrintToFile For Output As #FN
   For I = 0 To lstFormList.ListCount - 1
      Print #FN, lstFormList.List(I)
   Next I

  Close #FN 'thats it... your file is updated

  'clear the listbox?
  If blnClearList = True Then lstFormList.Clear
End Function
