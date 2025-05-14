# 🏦 NativeBank — контракт банка на Solidity

Смарт-контракт для приёма и хранения нативной валюты (ETH), с возможностью снятия средств пользователями и владельцем.

---

## 🚀 Развёрнут в сети Sepolia

📎 Контракт на Etherscan:  
👉 [0x36D2786620608Bb117Ac0b37D0bc9812D547544a](https://sepolia.etherscan.io/address/0x36D2786620608Bb117Ac0b37D0bc9812D547544a)

---

## ⚙️ Функции контракта

| Функция | Описание |
|--------|----------|
| `deposit()` | Внести ETH на баланс |
| `withdraw(amount)` | Снять определённую сумму (если хватает средств) |
| `withdrawAll()` | Снять весь баланс (доступно только владельцу) |
| `getBalance()` | Получить баланс вызывающего адреса |
| `receive()` / `fallback()` | Принимают эфир напрямую и вызывают `deposit()` |

---

## 🔐 Безопасность

- Используется модификатор `onlyOwner` для функций с ограниченным доступом
- Все переводы ETH сопровождаются проверками `require`

---

## 🛠 Развёртывание

Контракт написан на Solidity `^0.8.29`, развёрнут через Remix + MetaMask:

1. Скомпилировать `NativeBank.sol` в Remix (Solidity Compiler 0.8.29)
2. Развернуть в сети Sepolia с помощью Injected Provider (MetaMask)
3. Верифицировать на Etherscan (см. ссылку выше)
4. Исходный код доступен на GitHub:  
👉 [https://github.com/nasta11/native-bank-contract](https://github.com/nasta11/native-bank-contract)

---

## 📁 Структура проекта

