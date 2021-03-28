lbl_807D8490:
/* 807D8490  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807D8494  7C 08 02 A6 */	mflr r0
/* 807D8498  90 01 00 34 */	stw r0, 0x34(r1)
/* 807D849C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807D84A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807D84A4  7C 7E 1B 78 */	mr r30, r3
/* 807D84A8  3C 80 80 7E */	lis r4, lit_3882@ha
/* 807D84AC  3B E4 29 8C */	addi r31, r4, lit_3882@l
/* 807D84B0  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807D84B4  2C 00 00 01 */	cmpwi r0, 1
/* 807D84B8  41 82 00 40 */	beq lbl_807D84F8
/* 807D84BC  40 80 00 CC */	bge lbl_807D8588
/* 807D84C0  2C 00 00 00 */	cmpwi r0, 0
/* 807D84C4  40 80 00 08 */	bge lbl_807D84CC
/* 807D84C8  48 00 00 C0 */	b lbl_807D8588
lbl_807D84CC:
/* 807D84CC  C0 1F 01 AC */	lfs f0, 0x1ac(r31)
/* 807D84D0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 807D84D4  38 80 00 20 */	li r4, 0x20
/* 807D84D8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807D84DC  38 A0 00 02 */	li r5, 2
/* 807D84E0  FC 40 08 90 */	fmr f2, f1
/* 807D84E4  4B FF A0 65 */	bl anm_init__FP10e_wb_classifUcf
/* 807D84E8  38 00 00 01 */	li r0, 1
/* 807D84EC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D84F0  38 00 00 00 */	li r0, 0
/* 807D84F4  B0 1E 06 8E */	sth r0, 0x68e(r30)
lbl_807D84F8:
/* 807D84F8  A8 1E 06 8E */	lha r0, 0x68e(r30)
/* 807D84FC  2C 00 00 AA */	cmpwi r0, 0xaa
/* 807D8500  40 81 00 88 */	ble lbl_807D8588
/* 807D8504  80 1E 08 18 */	lwz r0, 0x818(r30)
/* 807D8508  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 807D850C  41 82 00 7C */	beq lbl_807D8588
/* 807D8510  38 00 00 17 */	li r0, 0x17
/* 807D8514  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 807D8518  38 00 00 00 */	li r0, 0
/* 807D851C  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 807D8520  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 807D8524  D0 1E 16 84 */	stfs f0, 0x1684(r30)
/* 807D8528  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005007D@ha */
/* 807D852C  38 03 00 7D */	addi r0, r3, 0x007D /* 0x0005007D@l */
/* 807D8530  90 01 00 08 */	stw r0, 8(r1)
/* 807D8534  38 7E 05 EC */	addi r3, r30, 0x5ec
/* 807D8538  38 81 00 08 */	addi r4, r1, 8
/* 807D853C  38 A0 FF FF */	li r5, -1
/* 807D8540  81 9E 05 EC */	lwz r12, 0x5ec(r30)
/* 807D8544  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807D8548  7D 89 03 A6 */	mtctr r12
/* 807D854C  4E 80 04 21 */	bctrl 
/* 807D8550  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 807D8554  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807D8558  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807D855C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807D8560  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807D8564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807D8568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807D856C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807D8570  38 80 00 08 */	li r4, 8
/* 807D8574  38 A0 00 4F */	li r5, 0x4f
/* 807D8578  38 C1 00 0C */	addi r6, r1, 0xc
/* 807D857C  4B 89 74 A8 */	b StartShock__12dVibration_cFii4cXyz
/* 807D8580  38 00 00 01 */	li r0, 1
/* 807D8584  98 1E 14 2E */	stb r0, 0x142e(r30)
lbl_807D8588:
/* 807D8588  3C 60 80 7E */	lis r3, l_HIO@ha
/* 807D858C  38 63 35 C8 */	addi r3, r3, l_HIO@l
/* 807D8590  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 807D8594  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807D8598  A8 1E 06 8E */	lha r0, 0x68e(r30)
/* 807D859C  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 807D85A0  40 82 00 14 */	bne lbl_807D85B4
/* 807D85A4  38 7E 07 AC */	addi r3, r30, 0x7ac
/* 807D85A8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 807D85AC  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 807D85B0  4B 89 D9 A8 */	b SetWall__12dBgS_AcchCirFff
lbl_807D85B4:
/* 807D85B4  A8 1E 06 8E */	lha r0, 0x68e(r30)
/* 807D85B8  2C 00 00 AA */	cmpwi r0, 0xaa
/* 807D85BC  40 81 00 0C */	ble lbl_807D85C8
/* 807D85C0  38 80 C5 68 */	li r4, -15000
/* 807D85C4  48 00 00 2C */	b lbl_807D85F0
lbl_807D85C8:
/* 807D85C8  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 807D85CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807D85D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 807D85D4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 807D85D8  7C 23 04 2E */	lfsx f1, r3, r0
/* 807D85DC  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 807D85E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 807D85E4  FC 00 00 1E */	fctiwz f0, f0
/* 807D85E8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807D85EC  80 81 00 1C */	lwz r4, 0x1c(r1)
lbl_807D85F0:
/* 807D85F0  AB FE 04 DE */	lha r31, 0x4de(r30)
/* 807D85F4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807D85F8  3C 84 00 01 */	addis r4, r4, 1
/* 807D85FC  38 04 80 00 */	addi r0, r4, -32768
/* 807D8600  7C 04 07 34 */	extsh r4, r0
/* 807D8604  38 A0 00 02 */	li r5, 2
/* 807D8608  38 C0 08 00 */	li r6, 0x800
/* 807D860C  4B A9 7F FC */	b cLib_addCalcAngleS2__FPssss
/* 807D8610  38 7E 07 9A */	addi r3, r30, 0x79a
/* 807D8614  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807D8618  7C 1F 00 50 */	subf r0, r31, r0
/* 807D861C  1C 00 FF F3 */	mulli r0, r0, -13
/* 807D8620  7C 04 07 34 */	extsh r4, r0
/* 807D8624  38 A0 00 08 */	li r5, 8
/* 807D8628  38 C0 08 00 */	li r6, 0x800
/* 807D862C  4B A9 7F DC */	b cLib_addCalcAngleS2__FPssss
/* 807D8630  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807D8634  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807D8638  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807D863C  7C 08 03 A6 */	mtlr r0
/* 807D8640  38 21 00 30 */	addi r1, r1, 0x30
/* 807D8644  4E 80 00 20 */	blr 
