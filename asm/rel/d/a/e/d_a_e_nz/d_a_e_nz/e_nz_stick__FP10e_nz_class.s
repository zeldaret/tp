lbl_8072A680:
/* 8072A680  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8072A684  7C 08 02 A6 */	mflr r0
/* 8072A688  90 01 00 34 */	stw r0, 0x34(r1)
/* 8072A68C  39 61 00 30 */	addi r11, r1, 0x30
/* 8072A690  4B C3 7B 4C */	b _savegpr_29
/* 8072A694  7C 7D 1B 78 */	mr r29, r3
/* 8072A698  3C 80 80 73 */	lis r4, lit_3789@ha
/* 8072A69C  3B E4 C1 80 */	addi r31, r4, lit_3789@l
/* 8072A6A0  3B C0 00 00 */	li r30, 0
/* 8072A6A4  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8072A6A8  2C 00 00 01 */	cmpwi r0, 1
/* 8072A6AC  41 82 00 64 */	beq lbl_8072A710
/* 8072A6B0  40 80 00 FC */	bge lbl_8072A7AC
/* 8072A6B4  2C 00 00 00 */	cmpwi r0, 0
/* 8072A6B8  40 80 00 08 */	bge lbl_8072A6C0
/* 8072A6BC  48 00 00 F0 */	b lbl_8072A7AC
lbl_8072A6C0:
/* 8072A6C0  38 80 00 05 */	li r4, 5
/* 8072A6C4  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 8072A6C8  38 A0 00 02 */	li r5, 2
/* 8072A6CC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8072A6D0  4B FF F3 6D */	bl anm_init__FP10e_nz_classifUcf
/* 8072A6D4  38 00 00 01 */	li r0, 1
/* 8072A6D8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8072A6DC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8072A6E0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8072A6E4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8072A6E8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8072A6EC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8072A6F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072A6F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8072A6F8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8072A6FC  38 80 00 01 */	li r4, 1
/* 8072A700  38 A0 00 01 */	li r5, 1
/* 8072A704  38 C1 00 0C */	addi r6, r1, 0xc
/* 8072A708  4B 94 53 1C */	b StartShock__12dVibration_cFii4cXyz
/* 8072A70C  48 00 00 A0 */	b lbl_8072A7AC
lbl_8072A710:
/* 8072A710  80 7D 05 E0 */	lwz r3, 0x5e0(r29)
/* 8072A714  38 63 00 0C */	addi r3, r3, 0xc
/* 8072A718  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8072A71C  4B BF DD 10 */	b checkPass__12J3DFrameCtrlFf
/* 8072A720  2C 03 00 00 */	cmpwi r3, 0
/* 8072A724  41 82 00 30 */	beq lbl_8072A754
/* 8072A728  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700C6@ha */
/* 8072A72C  38 03 00 C6 */	addi r0, r3, 0x00C6 /* 0x000700C6@l */
/* 8072A730  90 01 00 08 */	stw r0, 8(r1)
/* 8072A734  38 7D 05 F4 */	addi r3, r29, 0x5f4
/* 8072A738  38 81 00 08 */	addi r4, r1, 8
/* 8072A73C  38 A0 00 00 */	li r5, 0
/* 8072A740  38 C0 FF FF */	li r6, -1
/* 8072A744  81 9D 05 F4 */	lwz r12, 0x5f4(r29)
/* 8072A748  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8072A74C  7D 89 03 A6 */	mtctr r12
/* 8072A750  4E 80 04 21 */	bctrl 
lbl_8072A754:
/* 8072A754  3C 60 80 73 */	lis r3, data_8072C454@ha
/* 8072A758  88 83 C4 54 */	lbz r4, data_8072C454@l(r3)
/* 8072A75C  3C 60 80 73 */	lis r3, stick_bit@ha
/* 8072A760  38 63 C2 84 */	addi r3, r3, stick_bit@l
/* 8072A764  38 00 00 08 */	li r0, 8
/* 8072A768  7C 09 03 A6 */	mtctr r0
lbl_8072A76C:
/* 8072A76C  88 03 00 00 */	lbz r0, 0(r3)
/* 8072A770  7C 80 00 39 */	and. r0, r4, r0
/* 8072A774  41 82 00 0C */	beq lbl_8072A780
/* 8072A778  38 1E 00 01 */	addi r0, r30, 1
/* 8072A77C  7C 1E 07 74 */	extsb r30, r0
lbl_8072A780:
/* 8072A780  38 63 00 01 */	addi r3, r3, 1
/* 8072A784  42 00 FF E8 */	bdnz lbl_8072A76C
/* 8072A788  7F C0 07 74 */	extsb r0, r30
/* 8072A78C  2C 00 00 03 */	cmpwi r0, 3
/* 8072A790  41 80 00 1C */	blt lbl_8072A7AC
/* 8072A794  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8072A798  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8072A79C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8072A7A0  80 03 05 70 */	lwz r0, 0x570(r3)
/* 8072A7A4  64 00 40 00 */	oris r0, r0, 0x4000
/* 8072A7A8  90 03 05 70 */	stw r0, 0x570(r3)
lbl_8072A7AC:
/* 8072A7AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8072A7B0  4B C3 7A 78 */	b _restgpr_29
/* 8072A7B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8072A7B8  7C 08 03 A6 */	mtlr r0
/* 8072A7BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8072A7C0  4E 80 00 20 */	blr 
