## What is this?

This is @bcrypt's janky twitter replacement.

## Vision!

<a href="https://twitter.com/bcrypt">
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/0.png" width="543">
  <img alt="yan @bcrypt" src="./readme_segments/light/0 @bcrypt.png" width="543">
</picture>
</a>
<picture>
 <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/1.png" width="543">
  <img alt='just made a "decentralized" "alternative" to twitter; everyone should go "join" it"' src="./readme_segments/light/1 just made a _decentralized_ _alternative_ to twitter; everyone should go _join_ it.png" width="543">
</picture>
<a href="https://github.com/diracdeltas/tweets/fork">
  <picture>
   <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/2.png" width="543">
    <img src="./readme_segments/light/2 to make an account_ fork https___github.com_diracdeltas_tweets.png" width="543" alt="to make an account: fork https://github.com/diracdeltas/tweets">
  </picture>
</a>
<picture>
 <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/3.png" width="543">
  <img src="./readme_segments/light/3 to tweet_ git commit --allow-empty to follow someone_ git remote add _alias_ _their fork url_ to retweet_ git cherry-pick _their _tweet__.png" width="543" alt="to tweet: git commit --allow-empty to follow someone: git remote add <alias> <their fork url> to retweet: git cherry-pick <their 'tweet'>">
</picture>
<!--
 <picture>
    <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/4.png" width="543">
    <img src="./readme_segments/light/4 diracdeltas_tweets_ janky twitter replacement.png" width="543" alt="">
 </picture>
-->
<a href="https://twitter.com/bcrypt/status/1588416861552582657">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/5.png" width="543">
    <img src="./readme_segments/light/5 11_24 PM · Nov 3, 2022 ·Twitter Web App_ https___twitter.com_bcrypt_status_1588416861552582657.png" width="543" alt="11:24 PM · Nov 3, 2022 ·Twitter Web App">
  </picture>
</a>

&nbsp;

<details>
  <summary>Show this thread! (here in the Readme)</summary>

  <a href="https://github.com/diracdeltas/tweets/commit/1e02b74ee2e06ed36ca885c838d460a073a0a061">
    <picture>
    <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/6.png" width="543">
      <img src="./readme_segments/light/6 it even has image support now_ https___github.com_diracdeltas_tweets_commit_1e02b74ee2e06ed36ca885c838d460a073a0a061.png" width="543" alt="it even has image support now: https://github.com/diracdeltas/tweets/commit/1e02b74ee2e06ed36ca885c838d460a073a0a061">
    </picture>
  </a>
  <a href="https://github.com/diracdeltas/tweets/commit/f7d8522ece59f97c49f53784b83ddbfb69c83c35">
    <picture>
    <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/7.png" width="543">
      <img src="./readme_segments/light/7 no video support but if you scroll really fast... https___github.com_diracdeltas_tweets_commit_f7d8522ece59f97c49f53784b83ddbfb69c83c35.png" width="543" alt="7 no video support but if you scroll really fast... https://github.com/diracdeltas/tweets/commit/f7d8522ece59f97c49f53784b83ddbfb69c83c35">
    </picture>
  </a>
  <picture>
  <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/8.png" width="543">
    <img src="./readme_segments/light/8 to refresh the timeline_ git fetch --all && git rev-list --all --remotes --pretty _ less.png" width="543" alt="8 to refresh the timeline: git fetch --all && git rev-list --all --remotes --pretty | less">
  </picture>
  <a href="https://twitter.com/ssch0ber">
    <picture>
    <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/9.png" width="543">
      <img src="./readme_segments/light/9 https___twitter.com_ssch0ber.png" width="543" alt="https://twitter.com/ssch0ber">
    </picture>
  </a>
  <picture>
  <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/A.png" width="543">
    <img src="./readme_segments/light/A Haha, that's actually a cool idea in my opinion! Limited to 60 chars... but git log --graph --all --decorate --oneline might look confusing_.png" width="543" alt="Haha, that's actually a cool idea in my opinion! Limited to 60 chars... but git log --graph --all --decorate --oneline might look confusing?">
  </picture>
  <a href="./readme_segments/light/B1 screenshot of graph.jpg">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/B.png" width="543">
      <img src="./readme_segments/light/B omg this looks way cool_ [img].png" width="543" alt="B omg this looks way cool: [img]">
    </picture>
  </a>
  <a href="https://github.com/diracdeltas/tweets/network/members">
    <picture>
    <source media="(prefers-color-scheme: dark)" srcset="./readme_segments/dark/C.png" width="543">
      <img src="./readme_segments/light/see the _suggested accounts_ to _follow_ here_  https___github.com_diracdeltas_tweets_network_members.png" width="543" alt="see the 'suggested accounts' to 'follow' here:  https://github.com/diracdeltas/tweets/network/members">
    </picture>
  </a>
</details>

## Setup

- fork https://github.com/diracdeltas/tweets
- in your fork:

```
git reset --hard d10b092
git push -f origin main
```

## Stuff you can do

- to post:

```
git commit -m "your post" --allow-empty
git push
```

- to follow someone:

```
git remote add <git name> <their fork of diracdelta's repo>
git fetch <git name>
```

- to follow everybody using GitHub:
  `./follow-everybody.bash`

- to repeat someone else's utterance:

```
git cherry-pick -x <their commit hash>
```

- [people to follow](https://github.com/diracdeltas/tweets/network/members)

- to refresh your timeline and view it:

```
git fetch --all && git rev-list --all --remotes --pretty | less
```

- some alternative ways to view your timeline (use `git show <commit hash>` to
  show the full "tweet"):

```
git log --format="format:%Cred%cd %Cblue%h %Cgreen%cn%Creset: %s" --all --date=iso-local
git log --graph --all --decorate --oneline
```

- to get verified (GitHub-only):

1. [follow github's own verification instructions and make your commit email match your GPG key email](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification)
2. `git commit -S -m "your post" --allow-empty` from now on

- to encrypt a message:

see `encrypt using the public key of a github user` in https://sshenc.sh/ or
use your favorite key distribution mechanism to get their public key.

## Cheatcodes

```shell
make post $"Your sage wisdom"
```

---

```shell
make refresh
```

---

```shell
make timeline
```

_OR_

```shell
make timeline-short
```

_OR_

```shell
make timeline-graph
```
