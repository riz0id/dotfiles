{ omz-theme-riz0id, symlinkJoin }:

let 

in symlinkJoin {
  name = "omz-riz0id";
  paths = [
    omz-theme-riz0id 
  ];
}