lbl_805F92FC:
/* 805F92FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805F9300  7C 08 02 A6 */	mflr r0
/* 805F9304  90 01 00 34 */	stw r0, 0x34(r1)
/* 805F9308  39 61 00 30 */	addi r11, r1, 0x30
/* 805F930C  4B D6 8E C8 */	b _savegpr_27
/* 805F9310  7C 7E 1B 78 */	mr r30, r3
/* 805F9314  3C 60 80 60 */	lis r3, lit_3815@ha
/* 805F9318  3B E3 26 64 */	addi r31, r3, lit_3815@l
/* 805F931C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805F9320  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805F9324  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 805F9328  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805F932C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 805F9330  FC 00 00 1E */	fctiwz f0, f0
/* 805F9334  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805F9338  83 61 00 14 */	lwz r27, 0x14(r1)
/* 805F933C  80 1E 1F B4 */	lwz r0, 0x1fb4(r30)
/* 805F9340  90 01 00 08 */	stw r0, 8(r1)
/* 805F9344  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 805F9348  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 805F934C  38 81 00 08 */	addi r4, r1, 8
/* 805F9350  4B A2 04 A8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 805F9354  7C 7D 1B 78 */	mr r29, r3
/* 805F9358  A8 1E 05 BC */	lha r0, 0x5bc(r30)
/* 805F935C  2C 00 00 01 */	cmpwi r0, 1
/* 805F9360  41 82 00 B8 */	beq lbl_805F9418
/* 805F9364  40 80 01 18 */	bge lbl_805F947C
/* 805F9368  2C 00 00 00 */	cmpwi r0, 0
/* 805F936C  40 80 00 08 */	bge lbl_805F9374
/* 805F9370  48 00 01 0C */	b lbl_805F947C
lbl_805F9374:
/* 805F9374  38 00 00 01 */	li r0, 1
/* 805F9378  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805F937C  C0 3F 00 00 */	lfs f1, 0(r31)
/* 805F9380  4B C6 E5 D4 */	b cM_rndF__Ff
/* 805F9384  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 805F9388  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805F938C  40 80 00 20 */	bge lbl_805F93AC
/* 805F9390  7F C3 F3 78 */	mr r3, r30
/* 805F9394  38 80 00 21 */	li r4, 0x21
/* 805F9398  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805F939C  38 A0 00 00 */	li r5, 0
/* 805F93A0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F93A4  4B FF B6 F1 */	bl anm_init__FP11b_gnd_classifUcf
/* 805F93A8  48 00 00 1C */	b lbl_805F93C4
lbl_805F93AC:
/* 805F93AC  7F C3 F3 78 */	mr r3, r30
/* 805F93B0  38 80 00 22 */	li r4, 0x22
/* 805F93B4  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 805F93B8  38 A0 00 00 */	li r5, 0
/* 805F93BC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F93C0  4B FF B6 D5 */	bl anm_init__FP11b_gnd_classifUcf
lbl_805F93C4:
/* 805F93C4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070560@ha */
/* 805F93C8  38 03 05 60 */	addi r0, r3, 0x0560 /* 0x00070560@l */
/* 805F93CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805F93D0  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805F93D4  38 81 00 0C */	addi r4, r1, 0xc
/* 805F93D8  38 A0 FF FF */	li r5, -1
/* 805F93DC  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805F93E0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805F93E4  7D 89 03 A6 */	mtctr r12
/* 805F93E8  4E 80 04 21 */	bctrl 
/* 805F93EC  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 805F93F0  3C 63 00 01 */	addis r3, r3, 1
/* 805F93F4  38 03 80 00 */	addi r0, r3, -32768
/* 805F93F8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 805F93FC  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 805F9400  D0 1E 0E B0 */	stfs f0, 0xeb0(r30)
/* 805F9404  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 805F9408  B0 1E 0E AC */	sth r0, 0xeac(r30)
/* 805F940C  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 805F9410  D0 1D 39 5C */	stfs f0, 0x395c(r29)
/* 805F9414  48 00 00 68 */	b lbl_805F947C
lbl_805F9418:
/* 805F9418  A8 1E 0C 58 */	lha r0, 0xc58(r30)
/* 805F941C  2C 00 00 32 */	cmpwi r0, 0x32
/* 805F9420  40 81 00 0C */	ble lbl_805F942C
/* 805F9424  2C 1B 00 0A */	cmpwi r27, 0xa
/* 805F9428  41 81 00 34 */	bgt lbl_805F945C
lbl_805F942C:
/* 805F942C  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 805F9430  38 80 00 01 */	li r4, 1
/* 805F9434  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805F9438  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805F943C  40 82 00 18 */	bne lbl_805F9454
/* 805F9440  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805F9444  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805F9448  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805F944C  41 82 00 08 */	beq lbl_805F9454
/* 805F9450  38 80 00 00 */	li r4, 0
lbl_805F9454:
/* 805F9454  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805F9458  41 82 00 24 */	beq lbl_805F947C
lbl_805F945C:
/* 805F945C  38 00 00 0F */	li r0, 0xf
/* 805F9460  B0 1E 0C 58 */	sth r0, 0xc58(r30)
/* 805F9464  38 00 00 0A */	li r0, 0xa
/* 805F9468  B0 1E 0A FE */	sth r0, 0xafe(r30)
/* 805F946C  38 00 00 00 */	li r0, 0
/* 805F9470  B0 1E 05 BC */	sth r0, 0x5bc(r30)
/* 805F9474  B0 1E 1E 0A */	sth r0, 0x1e0a(r30)
/* 805F9478  98 1E 0C 7C */	stb r0, 0xc7c(r30)
lbl_805F947C:
/* 805F947C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805F9480  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 805F9484  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805F9488  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 805F948C  4B C7 65 B0 */	b cLib_addCalc2__FPffff
/* 805F9490  39 61 00 30 */	addi r11, r1, 0x30
/* 805F9494  4B D6 8D 8C */	b _restgpr_27
/* 805F9498  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805F949C  7C 08 03 A6 */	mtlr r0
/* 805F94A0  38 21 00 30 */	addi r1, r1, 0x30
/* 805F94A4  4E 80 00 20 */	blr 
