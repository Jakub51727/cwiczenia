rozdział 1
I:
$ git commit
$ git commit
II:
$ git branch bugFix
$ git checkout bugFix
III:
$ git branch bugFix
$ git checkout bugFix
$ git commit
$ git checkout main
$ git commit
$ git merge bugFix
IV:
$ git branch bugFix
$ git commit
$ git checkout main
$ git commit
$ git checkout bugFix
$ git rebase main
rozdział 2
I:
$ git checkout c4
II:
$ git checkout bugFix
$ git checkout c4
$ git checkout HEAD^
III:
$ git branch -f main c6
$ git checkout HEAD^
$ git branch -f bugFix HEAD^
IV:
$ git reset HEAD^
$ git checkout pushed
$ git revert HEAD
rozdział 3
I:
$ git cherry-pick c3 c4 c7
II:
$ git rebase -i c1
rozdział 4
I:
$ git checkout main
$ git cherry-pick c4
II:
$ git rebase -i HEAD~2
$ git commit --amend
$ git rebase -i HEAD~2
$ git rebase caption main
III:
$ git checkout main
$ git cherry-pick c2
$ git commit --amend
$ git cherry-pick c3
IV:
$ git tag v0 c1
$ git checkout c2
$ git tag v1
V:
$ git describe main
$ git describe bugFix
$ git describe
$ git commit
rozdział 5
I:
$ git rebase main bugFix
$ git rebase bugFix side
$ git rebase side another
$ git rebase another main
II:
$ git checkout HEAD~1^2~1
$ git branch bugWork
$ git checkout main
III:
$ git checkout one 
$ git cherry-pick c4 c3 c2
$ git checkout two
$ git cherry-pick c5 c4 c3 c2
$ git checkout three
$ git branch -f three c2
