#### Softlinks or shortlink or sysmlink
ln -s : softink
arrow in ls -l agaist file indicate the softfile
example:
roza25 -> Ramzan25: here roza25 (child file) is the softlink and ramzan25 is the parent file.
NOTE: if we delete the parent file than child file orphan file.


#### Difference b/w Symlinks and Harlinks
1. Softlinks can cross partition and hardlink can not
2. softlink is easy toa acces
3. If parents are deleted child became orphan- no use
4. Hardlink is a type of storage
5. Hardlink can not cross partition
6. if parents delete, no impact on child




ln: hardlink

