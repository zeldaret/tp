lbl_80CC6B0C:
/* 80CC6B0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC6B10  7C 08 02 A6 */	mflr r0
/* 80CC6B14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC6B18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC6B1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC6B20  7C 7F 1B 78 */	mr r31, r3
/* 80CC6B24  4B 35 20 40 */	b __ct__10fopAc_ac_cFv
/* 80CC6B28  3C 60 80 CD */	lis r3, __vt__11daSCannon_c@ha
/* 80CC6B2C  38 03 95 E8 */	addi r0, r3, __vt__11daSCannon_c@l
/* 80CC6B30  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80CC6B34  3B DF 05 84 */	addi r30, r31, 0x584
/* 80CC6B38  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80CC6B3C  38 03 95 F4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80CC6B40  90 1F 05 84 */	stw r0, 0x584(r31)
/* 80CC6B44  7F C3 F3 78 */	mr r3, r30
/* 80CC6B48  38 80 00 00 */	li r4, 0
/* 80CC6B4C  4B 66 18 B0 */	b init__12J3DFrameCtrlFs
/* 80CC6B50  38 00 00 00 */	li r0, 0
/* 80CC6B54  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80CC6B58  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CC6B5C  4B 5A 15 18 */	b __ct__13cBgS_PolyInfoFv
/* 80CC6B60  38 00 00 00 */	li r0, 0
/* 80CC6B64  90 1F 05 E0 */	stw r0, 0x5e0(r31)
/* 80CC6B68  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 80CC6B6C  38 80 00 00 */	li r4, 0
/* 80CC6B70  38 A0 00 08 */	li r5, 8
/* 80CC6B74  4B 33 C8 E4 */	b memset
/* 80CC6B78  38 7F 06 28 */	addi r3, r31, 0x628
/* 80CC6B7C  38 80 00 00 */	li r4, 0
/* 80CC6B80  38 A0 00 0C */	li r5, 0xc
/* 80CC6B84  4B 33 C8 D4 */	b memset
/* 80CC6B88  38 7F 06 1C */	addi r3, r31, 0x61c
/* 80CC6B8C  38 80 00 00 */	li r4, 0
/* 80CC6B90  38 A0 00 0C */	li r5, 0xc
/* 80CC6B94  4B 33 C8 C4 */	b memset
/* 80CC6B98  38 00 00 00 */	li r0, 0
/* 80CC6B9C  90 1F 06 34 */	stw r0, 0x634(r31)
/* 80CC6BA0  90 1F 05 F0 */	stw r0, 0x5f0(r31)
/* 80CC6BA4  90 1F 05 F4 */	stw r0, 0x5f4(r31)
/* 80CC6BA8  90 1F 05 EC */	stw r0, 0x5ec(r31)
/* 80CC6BAC  7F E3 FB 78 */	mr r3, r31
/* 80CC6BB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC6BB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC6BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC6BBC  7C 08 03 A6 */	mtlr r0
/* 80CC6BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC6BC4  4E 80 00 20 */	blr 
