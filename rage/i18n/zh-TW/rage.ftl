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

    {-input} 默認為標準輸入 （stdin）, 而 {-output} 默認為標準輸出 （stdout） 。

    {-recipient} 可為：
    - 一把以 {$keygen_name} 生成的 {-age} 公鑰 ("age1...")。
    - 一把 SSH 公鑰 ("ssh-ed25519 AAAA...", "ssh-rsa AAAA...")。
    - 一個文件的路徑或 HTTPS URL。該文件應含有 {-age} 接收方, 每行一個
      （前綴為 "#" 的注釋以及空行將被忽略）。

    {-identity} 是一個文件路徑。該文件或含 {-age} 身份, 每行一個（前綴為 "#" 的注釋以及空行將被忽略），
    亦或為 SSH 密鑰文件。您可提供多份身份, 未使用的身份將被忽略。

    Example:
    {"  "}{$example_a}
    {"  "}{tty-pubkey}: {$example_a_output}
    {"  "}{$example_b}
    {"  "}{$example_c}

## Keygen messages

tty-pubkey = 公鑰
identity-file-created = 已創建
identity-file-pubkey = 公鑰

## Encryption messages

autogenerated-passphrase = 目前使用自動生成的密碼短語：
type-passphrase = 輸入密碼短語
prompt-passphrase = 密碼短語

## General errors

err-failed-to-open-output = 未能打開出輸： {$err}
err-failed-to-write-output = 未能寫入出輸： {$err}
err-passphrase-timed-out = 等待輸入密碼短語時超時了。

err-ux-A = {-rage} 的行為與您的預期不符嗎? 或是某個錯誤消息可包含更多信息?
err-ux-B = 請與我們分享
# Put spaces here to align the two lines in error output.
err-ux-C = {"                "}

## Encryption errors

err-enc-broken-stdout = 未能寫入 stdout： {$err}
rec-enc-broken-stdout = 您是否輸出至非從 stdin 讀取數據的程序？

err-enc-broken-file = 未能寫入文件： {$err}

err-enc-identity = {-flag-identity} 不可在加密模式使用。
rec-enc-identity = 您是否忘記指定 {-flag-decrypt} 標記？

err-enc-invalid-recipient = 無效接收方 '{$recipient}'

err-enc-missing-recipients = 缺少接收方。
rec-enc-missing-recipients = 您是否忘記指定 {-flag-recipient} 標記？

err-enc-mixed-recipient-passphrase = {-flag-recipient} 和 {-flag-passphrase} 標記不可聯用。
err-enc-passphrase-without-file = 在使用 {-flag-passphrase} 時， 必將要加密的文件傳遞為參數

## Decryption errors

rec-dec-excessive-work = 請重試採用 {-flag-max-work-factor} {$wf} 以解密

err-dec-armor-flag = {-flag-armor} 和 {-flag-decrypt} 標記不可聯用。
rec-dec-armor-flag = 請注意，裝甲文件 （armored files） 會被自動檢測。

err-dec-identity-not-found = 未搜索到身份文件： {$filename}

err-dec-missing-identities = 缺少身份。
rec-dec-missing-identities = 您是否忘記指定 {-flag-identity} 標記？

err-dec-passphrase-flag = {-flag-passphrase} 和 {-flag-decrypt} 標記不可聯用。
rec-dec-passphrase-flag = 請注意，以密碼短語加密的文件會被自動檢測。

err-dec-passphrase-without-file-win =
    該文件需要密碼短語； 在 Windows 中， 使用密碼短語解密時
    必將解密的文件傳遞為位置參數。

err-dec-recipient-flag = {-flag-recipient} 和 {-flag-decrypt} 不可聯用。
rec-dec-recipient-flag = 您是不是要用 {-flag-identity} 標記來指定私鑰？

## rage-mount strings

-flag-mnt-types = -t/--types

info-decrypting = 正在解密 {$filename}
info-mounting-as-fuse = 正掛載為 FUSE 文件系統

err-mnt-missing-filename = 缺少文件名。
err-mnt-missing-mountpoint = 缺少掛載點。
err-mnt-missing-types = 缺少 {-flag-mnt-types} 。
err-mnt-unknown-type = 未知的文件系統類型 "{$fs_type}"

## Unstable features

unstable-github = GitHub 查找不穩定， 將忽略接收方。
test-unstable = 構建 {-rage} 時採用 {-flag-unstable} 以測試。
