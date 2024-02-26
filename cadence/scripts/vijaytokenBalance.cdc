import FungibleToken from 0x05
import vijaytoken from 0x05

pub fun main(account: Address) {

    // Attempt to borrow PublicVault capability
    let publicVault: &vijaytoken.Vault{FungibleToken.Balance, FungibleToken.Receiver, vijaytoken.CollectionPublic}? =
        getAccount(account).getCapability(/public/Vault)
            .borrow<&vijaytoken.Vault{FungibleToken.Balance, FungibleToken.Receiver, vijaytoken.CollectionPublic}>()

    if (publicVault == nil) {
        // Create and link an empty vault if capability is not present
        let newVault <- vijaytoken.createEmptyVault()
        getAuthAccount(account).save(<-newVault, to: /storage/VaultStorage)
        getAuthAccount(account).link<&vijaytoken.Vault{FungibleToken.Balance, FungibleToken.Receiver, vijaytoken.CollectionPublic}>(
            /public/Vault,
            target: /storage/VaultStorage
        )
        log("Empty vault created")
        
        // Borrow the vault capability again to display its balance
        let retrievedVault: &vijaytoken.Vault{FungibleToken.Balance}? =
            getAccount(account).getCapability(/public/Vault)
                .borrow<&vijaytoken.Vault{FungibleToken.Balance}>()
        log(retrievedVault?.balance)
    } else {
        log("Vault already exists and is properly linked")
        
        // Borrow the vault capability for further checks
        let checkVault: &vijaytoken.Vault{FungibleToken.Balance, FungibleToken.Receiver, vijaytoken.CollectionPublic} =
            getAccount(account).getCapability(/public/Vault)
                .borrow<&vijaytoken.Vault{FungibleToken.Balance, FungibleToken.Receiver, vijaytoken.CollectionPublic}>()
                ?? panic("Vault capability not found")
        
        // Check if the vault's UUID is in the list of vaults
        if vijaytoken.vaults.contains(checkVault.uuid) {
            log(publicVault?.balance)
            log("This is a vijaytoken vault")
        } else {
            log("This is not a vijaytoken vault")
        }
    }
}