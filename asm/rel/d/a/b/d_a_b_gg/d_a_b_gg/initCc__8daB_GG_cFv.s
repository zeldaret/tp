lbl_805DE650:
/* 805DE650  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DE654  7C 08 02 A6 */	mflr r0
/* 805DE658  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DE65C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE660  4B D8 3B 71 */	bl _savegpr_26
/* 805DE664  7C 7E 1B 78 */	mr r30, r3
/* 805DE668  3C 60 80 5F */	lis r3, lit_3911@ha /* 0x805ED060@ha */
/* 805DE66C  3B E3 D0 60 */	addi r31, r3, lit_3911@l /* 0x805ED060@l */
/* 805DE670  38 7E 11 08 */	addi r3, r30, 0x1108
/* 805DE674  38 80 00 FE */	li r4, 0xfe
/* 805DE678  38 A0 00 FF */	li r5, 0xff
/* 805DE67C  7F C6 F3 78 */	mr r6, r30
/* 805DE680  4B AA 51 E1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 805DE684  38 7E 06 D8 */	addi r3, r30, 0x6d8
/* 805DE688  38 9F 00 38 */	addi r4, r31, 0x38
/* 805DE68C  4B AA 62 29 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 805DE690  38 1E 11 08 */	addi r0, r30, 0x1108
/* 805DE694  90 1E 07 1C */	stw r0, 0x71c(r30)
/* 805DE698  38 7E 07 FC */	addi r3, r30, 0x7fc
/* 805DE69C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805DE6A0  4B C9 0B 3D */	bl SetC__8cM3dGCylFRC4cXyz
/* 805DE6A4  80 1E 06 D8 */	lwz r0, 0x6d8(r30)
/* 805DE6A8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805DE6AC  90 1E 06 D8 */	stw r0, 0x6d8(r30)
/* 805DE6B0  80 1E 07 74 */	lwz r0, 0x774(r30)
/* 805DE6B4  60 00 00 04 */	ori r0, r0, 4
/* 805DE6B8  90 1E 07 74 */	stw r0, 0x774(r30)
/* 805DE6BC  80 1E 07 74 */	lwz r0, 0x774(r30)
/* 805DE6C0  60 00 00 01 */	ori r0, r0, 1
/* 805DE6C4  90 1E 07 74 */	stw r0, 0x774(r30)
/* 805DE6C8  38 7E 0B BC */	addi r3, r30, 0xbbc
/* 805DE6CC  38 9F 00 7C */	addi r4, r31, 0x7c
/* 805DE6D0  4B AA 61 E5 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 805DE6D4  38 1E 11 08 */	addi r0, r30, 0x1108
/* 805DE6D8  90 1E 0C 00 */	stw r0, 0xc00(r30)
/* 805DE6DC  38 7E 0C E0 */	addi r3, r30, 0xce0
/* 805DE6E0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805DE6E4  4B C9 0A F9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 805DE6E8  80 1E 0B BC */	lwz r0, 0xbbc(r30)
/* 805DE6EC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805DE6F0  90 1E 0B BC */	stw r0, 0xbbc(r30)
/* 805DE6F4  80 1E 0C 58 */	lwz r0, 0xc58(r30)
/* 805DE6F8  60 00 00 04 */	ori r0, r0, 4
/* 805DE6FC  90 1E 0C 58 */	stw r0, 0xc58(r30)
/* 805DE700  38 7E 0C F8 */	addi r3, r30, 0xcf8
/* 805DE704  38 9F 00 C0 */	addi r4, r31, 0xc0
/* 805DE708  4B AA 63 2D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805DE70C  38 1E 11 08 */	addi r0, r30, 0x1108
/* 805DE710  90 1E 0D 3C */	stw r0, 0xd3c(r30)
/* 805DE714  38 7E 0E 1C */	addi r3, r30, 0xe1c
/* 805DE718  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805DE71C  4B C9 0F 2D */	bl SetC__8cM3dGSphFRC4cXyz
/* 805DE720  80 1E 0D 94 */	lwz r0, 0xd94(r30)
/* 805DE724  60 00 00 04 */	ori r0, r0, 4
/* 805DE728  90 1E 0D 94 */	stw r0, 0xd94(r30)
/* 805DE72C  80 1E 0D 94 */	lwz r0, 0xd94(r30)
/* 805DE730  60 00 00 01 */	ori r0, r0, 1
/* 805DE734  90 1E 0D 94 */	stw r0, 0xd94(r30)
/* 805DE738  3B 40 00 00 */	li r26, 0
/* 805DE73C  3B A0 00 00 */	li r29, 0
/* 805DE740  3B 9E 11 08 */	addi r28, r30, 0x1108
lbl_805DE744:
/* 805DE744  7F 7E EA 14 */	add r27, r30, r29
/* 805DE748  38 7B 08 14 */	addi r3, r27, 0x814
/* 805DE74C  38 9F 01 00 */	addi r4, r31, 0x100
/* 805DE750  4B AA 62 E5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 805DE754  93 9B 08 58 */	stw r28, 0x858(r27)
/* 805DE758  38 7B 09 38 */	addi r3, r27, 0x938
/* 805DE75C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805DE760  4B C9 0E E9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 805DE764  80 1B 08 B0 */	lwz r0, 0x8b0(r27)
/* 805DE768  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 805DE76C  90 1B 08 B0 */	stw r0, 0x8b0(r27)
/* 805DE770  80 1B 08 2C */	lwz r0, 0x82c(r27)
/* 805DE774  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 805DE778  90 1B 08 2C */	stw r0, 0x82c(r27)
/* 805DE77C  3B 5A 00 01 */	addi r26, r26, 1
/* 805DE780  2C 1A 00 03 */	cmpwi r26, 3
/* 805DE784  3B BD 01 38 */	addi r29, r29, 0x138
/* 805DE788  41 80 FF BC */	blt lbl_805DE744
/* 805DE78C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DE790  4B D8 3A 8D */	bl _restgpr_26
/* 805DE794  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DE798  7C 08 03 A6 */	mtlr r0
/* 805DE79C  38 21 00 20 */	addi r1, r1, 0x20
/* 805DE7A0  4E 80 00 20 */	blr 
