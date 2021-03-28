lbl_80267ED0:
/* 80267ED0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80267ED4  7C 08 02 A6 */	mflr r0
/* 80267ED8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80267EDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80267EE0  48 0F A2 FD */	bl _savegpr_29
/* 80267EE4  7C 7D 1B 78 */	mr r29, r3
/* 80267EE8  7C BE 2B 78 */	mr r30, r5
/* 80267EEC  7C DF 33 78 */	mr r31, r6
/* 80267EF0  38 7D 00 24 */	addi r3, r29, 0x24
/* 80267EF4  48 00 73 F5 */	bl SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80267EF8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80267EFC  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 80267F00  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80267F04  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 80267F08  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80267F0C  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 80267F10  93 FD 00 08 */	stw r31, 8(r29)
/* 80267F14  80 1D 00 4C */	lwz r0, 0x4c(r29)
/* 80267F18  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80267F1C  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 80267F20  38 7D 00 14 */	addi r3, r29, 0x14
/* 80267F24  48 00 01 FD */	bl ClearPi__13cBgS_PolyInfoFv
/* 80267F28  39 61 00 20 */	addi r11, r1, 0x20
/* 80267F2C  48 0F A2 FD */	bl _restgpr_29
/* 80267F30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80267F34  7C 08 03 A6 */	mtlr r0
/* 80267F38  38 21 00 20 */	addi r1, r1, 0x20
/* 80267F3C  4E 80 00 20 */	blr 
