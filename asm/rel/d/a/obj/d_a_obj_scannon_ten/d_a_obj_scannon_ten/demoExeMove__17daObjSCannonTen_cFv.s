lbl_80CCC118:
/* 80CCC118  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CCC11C  7C 08 02 A6 */	mflr r0
/* 80CCC120  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CCC124  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CCC128  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80CCC12C  7C 7E 1B 78 */	mr r30, r3
/* 80CCC130  3C 80 80 CD */	lis r4, lit_3832@ha
/* 80CCC134  3B E4 CC 38 */	addi r31, r4, lit_3832@l
/* 80CCC138  48 00 06 15 */	bl exeEmtSmoke__17daObjSCannonTen_cFv
/* 80CCC13C  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CCC140  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80CCC144  4B 65 C2 E8 */	b checkPass__12J3DFrameCtrlFf
/* 80CCC148  2C 03 00 00 */	cmpwi r3, 0
/* 80CCC14C  41 82 00 38 */	beq lbl_80CCC184
/* 80CCC150  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CCC154  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CCC158  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CCC15C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CCC160  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CCC164  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCC168  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCC16C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CCC170  38 80 00 05 */	li r4, 5
/* 80CCC174  38 A0 00 1F */	li r5, 0x1f
/* 80CCC178  38 C1 00 14 */	addi r6, r1, 0x14
/* 80CCC17C  4B 3A 38 A8 */	b StartShock__12dVibration_cFii4cXyz
/* 80CCC180  48 00 00 74 */	b lbl_80CCC1F4
lbl_80CCC184:
/* 80CCC184  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CCC188  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80CCC18C  4B 65 C2 A0 */	b checkPass__12J3DFrameCtrlFf
/* 80CCC190  2C 03 00 00 */	cmpwi r3, 0
/* 80CCC194  41 82 00 38 */	beq lbl_80CCC1CC
/* 80CCC198  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80CCC19C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80CCC1A0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80CCC1A4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CCC1A8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80CCC1AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCC1B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCC1B4  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CCC1B8  38 80 00 05 */	li r4, 5
/* 80CCC1BC  38 A0 00 1F */	li r5, 0x1f
/* 80CCC1C0  38 C1 00 08 */	addi r6, r1, 8
/* 80CCC1C4  4B 3A 38 60 */	b StartShock__12dVibration_cFii4cXyz
/* 80CCC1C8  48 00 00 2C */	b lbl_80CCC1F4
lbl_80CCC1CC:
/* 80CCC1CC  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CCC1D0  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80CCC1D4  4B 65 C2 58 */	b checkPass__12J3DFrameCtrlFf
/* 80CCC1D8  2C 03 00 00 */	cmpwi r3, 0
/* 80CCC1DC  41 82 00 18 */	beq lbl_80CCC1F4
/* 80CCC1E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCC1E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCC1E8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CCC1EC  80 9E 05 E4 */	lwz r4, 0x5e4(r30)
/* 80CCC1F0  4B 37 BF 8C */	b cutEnd__16dEvent_manager_cFi
lbl_80CCC1F4:
/* 80CCC1F4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CCC1F8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80CCC1FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CCC200  7C 08 03 A6 */	mtlr r0
/* 80CCC204  38 21 00 30 */	addi r1, r1, 0x30
/* 80CCC208  4E 80 00 20 */	blr 
