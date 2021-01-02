# Copyright 2020 Jack Grigg
#
# Licensed under the Apache License, Version 2.0 <LICENSE-APACHE or
# http://www.apache.org/licenses/LICENSE-2.0> or the MIT license
# <LICENSE-MIT or http://opensource.org/licenses/MIT>, at your
# option. This file may not be copied, modified, or distributed
# except according to those terms.

### Localization for strings in the rage CLI tools

-age = age
-rage = rage

## CLI flags

-flag-armor = -a/--armor
-flag-decrypt = -d/--decrypt
-flag-identity = -i/--identity
-flag-recipient = -r/--recipient
-flag-passphrase = -p/--passphrase
-flag-max-work-factor = --max-work-factor
-flag-unstable = --features unstable

## Usage

-input = INPUT
-output = OUTPUT
-identity = IDENTITY
-recipient = RECIPIENT

usage-header = Usage:

rage-usage =
    {usage-header}
      {$usage_a}
      {$usage_b}

    {$flags}

    {-input} 默认为标准输入 （stdin）, 而 {-output} 默认为标准输出 （stdout） 。

    {-recipient} 可为：
    - 一把以 {$keygen_name} 生成的 {-age} 公钥 ("age1...")。
    - 一把 SSH 公钥 ("ssh-ed25519 AAAA...", "ssh-rsa AAAA...")。
    - 一个文件的路径或 HTTPS URL。该文件应含有 {-age} 接收方, 每行一个
      （前缀为 "#" 的注释以及空行将被忽略）。

    {-identity} 是一个文件路径。该文件或含 {-age} 身份, 每行一个（前缀为 "#" 的注释以及空行将被忽略），
    亦或为 SSH 密钥文件。您可提供多份身份, 未使用的身份将被忽略。

    Example:
    {"  "}{$example_a}
    {"  "}{tty-pubkey}: {$example_a_output}
    {"  "}{$example_b}
    {"  "}{$example_c}

## Keygen messages

tty-pubkey = 公钥
identity-file-created = 已创建
identity-file-pubkey = 公钥

## Encryption messages

autogenerated-passphrase = 目前使用自动生成的密码短语：
type-passphrase = 输入密码短语
prompt-passphrase = 密码短语

## General errors

err-failed-to-open-output = 未能打开出输： {$err}
err-failed-to-write-output = 未能写入出输： {$err}
err-passphrase-timed-out = 等待输入密码短语时超时了。

err-ux-A = {-rage} 的行为与您的预期不符吗? 或是某个错误消息可包含更多信息?
err-ux-B = 请与我们分享
# Put spaces here to align the two lines in error output.
err-ux-C = {"                "}

## Encryption errors

err-enc-broken-stdout = 未能写入 stdout： {$err}
rec-enc-broken-stdout = 您是否输出至非从 stdin 读取数据的程序？

err-enc-broken-file = 未能写入文件： {$err}

err-enc-identity = {-flag-identity} 不可在加密模式使用。
rec-enc-identity = 您是否忘记指定 {-flag-decrypt} 标记？

err-enc-invalid-recipient = 无效接收方 '{$recipient}'

err-enc-missing-recipients = 缺少接收方。
rec-enc-missing-recipients = 您是否忘记指定 {-flag-recipient} 标记？

err-enc-mixed-recipient-passphrase = {-flag-recipient} 和 {-flag-passphrase} 标记不可联用。
err-enc-passphrase-without-file = 在使用 {-flag-passphrase} 时， 必将要加密的文件传递为参数

## Decryption errors

rec-dec-excessive-work = 请重试采用 {-flag-max-work-factor} {$wf} 以解密

err-dec-armor-flag = {-flag-armor} 和 {-flag-decrypt} 标记不可联用。
rec-dec-armor-flag = 请注意，装甲文件 （armored files） 会被自动检测。

err-dec-identity-not-found = 未搜索到身份文件： {$filename}

err-dec-missing-identities = 缺少身份。
rec-dec-missing-identities = 您是否忘记指定 {-flag-identity} 标记？

err-dec-passphrase-flag = {-flag-passphrase} 和 {-flag-decrypt} 标记不可联用。
rec-dec-passphrase-flag = 请注意，以密码短语加密的文件会被自动检测。

err-dec-passphrase-without-file-win =
    该文件需要密码短语； 在 Windows 中， 使用密码短语解密时
    必将解密的文件传递为位置参数。

err-dec-recipient-flag = {-flag-recipient} 和 {-flag-decrypt} 不可联用。
rec-dec-recipient-flag = 您是不是要用 {-flag-identity} 标记来指定私钥？

## rage-mount strings

-flag-mnt-types = -t/--types

info-decrypting = 正在解密 {$filename}
info-mounting-as-fuse = 正挂载为 FUSE 文件系统

err-mnt-missing-filename = 缺少文件名。
err-mnt-missing-mountpoint = 缺少挂载点。
err-mnt-missing-types = 缺少 {-flag-mnt-types} 。
err-mnt-unknown-type = 未知的文件系统类型 "{$fs_type}"

## Unstable features

unstable-github = GitHub 查找不稳定， 将忽略接收方。
test-unstable = 构建 {-rage} 时采用 {-flag-unstable} 以测试。
