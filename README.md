# meta-renesas-soafee
## OpenEmbedded/Yocto BSP layer for Renesas Electronics's SoCs
We tried to use Edge Workload Abstraction and Orchestration Layer(EWAOL) on our development board.
This layer provides support for Renesas Electronics's platforms for use with OpenEmbedded and/or Yocto.

## Supported Boards/Machines
In addition, this also provides layer which supports boards using Renesas SoCs. Layers and boards that support is the following:

meta-rcar-gen3

    - Renesas Electronics Corporation. R-Car Salvator-X (R8A77950/R8A77951/R8A77960/R8A77961/R8A77965)
    - Renesas Electronics Corporation. R-Car Starter Kit premier(H3ULCB) (R8A77950/R8A77951)
    - Renesas Electronics Corporation. R-Car Starter Kit pro(M3ULCB) (R8A77960/R8A77961)
    - Renesas Electronics Corporation. R-Car Starter Kit pro(M3NULCB) (R8A77965)
    - Renesas Electronics Corporation. R-Car Ebisu (R8A77990)
    - Renesas Electronics Corporation. R-Car Draak (R8A77995)

meta-rcar-bsp, meta-rcar-adas, meta-rcar-gateway

    - Renesas Electronics Corporation. R-Car Falcon (R8A779A0)
    - Renesas Electronics Corporation. R-Car Condor (R8A77980)
    - Renesas Electronics Corporation. R-Car Eagle (R8A77970)
    - Renesas Electronics Corporation. R-Car Spider (R8A779F0)
    - Renesas Electronics Corporation. R-Car Whitehawk (R8A779G0)

Please see README in the layer directory for the description of the board.

## Original BSP image

The meta-rcar-gen3 layer provides original BSP image. The following:

* core-image-minimal
* core-image-weston

The meta-rcar-bsp, meta-rcar-adas, meta-rcar-gateway layers provide original BSP image. The following:

* rcar-image-minimal
* rcar-image-adas

## EWAOL  berametal image

* ewaol-baremetal-image-spider
* ewaol-baremetal-image-v4h

## EWAOL virtualization image

* ewaol-virtualization-image-spider
* ewaol-virtualization-image-v4h

