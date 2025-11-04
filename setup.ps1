$dir = pwd

$nvim_link = Join-Path -Path $HOME -ChildPath AppData/Local/nvim
$nvim_target = Join-Path -Path $dir -ChildPath nvim

New-Item -Path $nvim_link -ItemType SymbolicLink -Value $nvim_target -Force

