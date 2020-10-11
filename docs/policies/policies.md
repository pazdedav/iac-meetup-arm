# Overview of enforced policies at Contoso Corp.

The following Azure Policies are **assigned and enforced** in our PROD environment:

## Disable RDP protocol from Internet

- **Name:** contoso-cit-security-disable_rdp_internet-prod
- **Description:** This policy checks any network security rule that allows RDP access from Internet and blocks their usage.

## Enforce geo-redundant storage

- **Name:** contoso-cit-storage-enforce_geo_redundancy-prod
- **Description:** This policy ensures that all Storage Accounts are geo-redundant.

## Enforce secure transfer for storage accounts

- **Name:** contoso-cit-storage-enforce_secure_transfer-prod
- **Description:** Enforces the requirement of Secure transfer in your storage account. Secure transfer is an option that forces your storage account to accept requests only from secure connections (HTTPS). Use of HTTPS ensures authentication between the server and the service and protects data in transit from network layer attacks such as man-in-the-middle, eavesdropping, and session-hijacking.

## Allowed Virtual Machine images

- **Name:** contoso-cit-vm-allowed_os_skus-prod
- **Description:** Enforces only approved image publishers, offers, and versions.
- **Details:**
  - Allowed image publishers: MicrosoftWindowsServer
  - Allowed image offers: WindowsServer
  - Allowed image skus:

    ```json
    [
        "2016-Datacenter",
        "2016-Datacenter-smalldisk",
        "2016-datacenter-smalldisk-g2",
        "2016-Datacenter-with-Containers",
        "2016-datacenter-with-containers-g2",
        "2016-datacenter-with-containers-gs",
        "2016-Datacenter-with-RDSH",
        "2019-Datacenter",
        "2019-Datacenter-smalldisk",
        "2019-datacenter-smalldisk-g2",
        "2019-Datacenter-with-Containers",
        "2019-datacenter-with-containers-g2",
        "2019-datacenter-with-containers-gs",
        "2019-Datacenter-with-Containers-smalldisk",
        "2019-datacenter-with-containers-smalldisk-g2"
    ]
    ```

## Prohibit usage of unmanaged disks

- **Name:** contoso-cit-vm-deny_unmanaged_disks-prod
- **Description:** This policy denies VMs that do not use managed disks.
