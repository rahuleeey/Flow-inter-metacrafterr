import FungibleToken from 0x05
import vijaytoken from 0x05

pub fun main(account: Address) {

    // Borrow the public vault capability and handle errors
    let publicVault = getAccount(account)
        .getCapability(/public/Vault)
        .borrow<&vijaytoken.Vault{FungibleToken.Balance}>()
        ?? panic("Vault not found, setup might be incomplete")

    log("Vault setup verified successfully")
}