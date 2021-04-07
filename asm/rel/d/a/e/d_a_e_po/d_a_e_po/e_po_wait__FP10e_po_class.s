lbl_8074D16C:
/* 8074D16C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8074D170  7C 08 02 A6 */	mflr r0
/* 8074D174  90 01 00 24 */	stw r0, 0x24(r1)
/* 8074D178  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8074D17C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8074D180  7C 7F 1B 78 */	mr r31, r3
/* 8074D184  3C 80 80 75 */	lis r4, lit_3917@ha /* 0x807576FC@ha */
/* 8074D188  3B C4 76 FC */	addi r30, r4, lit_3917@l /* 0x807576FC@l */
/* 8074D18C  80 03 05 B4 */	lwz r0, 0x5b4(r3)
/* 8074D190  2C 00 00 01 */	cmpwi r0, 1
/* 8074D194  41 82 00 58 */	beq lbl_8074D1EC
/* 8074D198  40 80 01 88 */	bge lbl_8074D320
/* 8074D19C  2C 00 00 00 */	cmpwi r0, 0
/* 8074D1A0  40 80 00 08 */	bge lbl_8074D1A8
/* 8074D1A4  48 00 01 7C */	b lbl_8074D320
lbl_8074D1A8:
/* 8074D1A8  38 80 00 15 */	li r4, 0x15
/* 8074D1AC  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8074D1B0  38 A0 00 02 */	li r5, 2
/* 8074D1B4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8074D1B8  4B FF F4 A9 */	bl anm_init__FP10e_po_classifUcf
/* 8074D1BC  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 8074D1C0  4B B1 A7 95 */	bl cM_rndF__Ff
/* 8074D1C4  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8074D1C8  EC 00 08 2A */	fadds f0, f0, f1
/* 8074D1CC  FC 00 00 1E */	fctiwz f0, f0
/* 8074D1D0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8074D1D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074D1D8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8074D1DC  B0 1F 07 52 */	sth r0, 0x752(r31)
/* 8074D1E0  38 00 00 01 */	li r0, 1
/* 8074D1E4  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074D1E8  48 00 01 38 */	b lbl_8074D320
lbl_8074D1EC:
/* 8074D1EC  88 1F 05 C1 */	lbz r0, 0x5c1(r31)
/* 8074D1F0  28 00 00 00 */	cmplwi r0, 0
/* 8074D1F4  40 82 00 C0 */	bne lbl_8074D2B4
/* 8074D1F8  4B A1 22 2D */	bl checkNowWolfEyeUp__9daPy_py_cFv
/* 8074D1FC  2C 03 00 00 */	cmpwi r3, 0
/* 8074D200  41 82 00 90 */	beq lbl_8074D290
/* 8074D204  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074D208  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074D20C  3B C3 56 B8 */	addi r30, r3, 0x56b8
/* 8074D210  7F C3 F3 78 */	mr r3, r30
/* 8074D214  38 80 00 00 */	li r4, 0
/* 8074D218  4B 92 36 2D */	bl GetLockonList__12dAttention_cFl
/* 8074D21C  28 03 00 00 */	cmplwi r3, 0
/* 8074D220  41 82 00 70 */	beq lbl_8074D290
/* 8074D224  7F C3 F3 78 */	mr r3, r30
/* 8074D228  4B 92 65 BD */	bl LockonTruth__12dAttention_cFv
/* 8074D22C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8074D230  41 82 00 60 */	beq lbl_8074D290
/* 8074D234  7F C3 F3 78 */	mr r3, r30
/* 8074D238  38 80 00 00 */	li r4, 0
/* 8074D23C  4B 92 36 09 */	bl GetLockonList__12dAttention_cFl
/* 8074D240  4B 92 66 25 */	bl getActor__10dAttList_cFv
/* 8074D244  7C 03 F8 40 */	cmplw r3, r31
/* 8074D248  40 82 00 48 */	bne lbl_8074D290
/* 8074D24C  38 00 00 00 */	li r0, 0
/* 8074D250  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074D254  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700CC@ha */
/* 8074D258  38 03 00 CC */	addi r0, r3, 0x00CC /* 0x000700CC@l */
/* 8074D25C  90 01 00 08 */	stw r0, 8(r1)
/* 8074D260  38 7F 05 F8 */	addi r3, r31, 0x5f8
/* 8074D264  38 81 00 08 */	addi r4, r1, 8
/* 8074D268  38 A0 FF FF */	li r5, -1
/* 8074D26C  81 9F 05 F8 */	lwz r12, 0x5f8(r31)
/* 8074D270  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074D274  7D 89 03 A6 */	mtctr r12
/* 8074D278  4E 80 04 21 */	bctrl 
/* 8074D27C  38 00 00 01 */	li r0, 1
/* 8074D280  98 1F 07 57 */	stb r0, 0x757(r31)
/* 8074D284  38 00 00 03 */	li r0, 3
/* 8074D288  B0 1F 07 42 */	sth r0, 0x742(r31)
/* 8074D28C  48 00 00 94 */	b lbl_8074D320
lbl_8074D290:
/* 8074D290  7F E3 FB 78 */	mr r3, r31
/* 8074D294  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8074D298  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8074D29C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8074D2A0  4B 8C D4 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8074D2A4  3C 63 00 01 */	addis r3, r3, 1
/* 8074D2A8  38 03 80 00 */	addi r0, r3, -32768
/* 8074D2AC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8074D2B0  48 00 00 70 */	b lbl_8074D320
lbl_8074D2B4:
/* 8074D2B4  38 80 00 03 */	li r4, 3
/* 8074D2B8  4B FF F3 35 */	bl mArg0Check__FP10e_po_classs
/* 8074D2BC  2C 03 00 00 */	cmpwi r3, 0
/* 8074D2C0  40 82 00 38 */	bne lbl_8074D2F8
/* 8074D2C4  38 00 00 00 */	li r0, 0
/* 8074D2C8  90 1F 05 B4 */	stw r0, 0x5b4(r31)
/* 8074D2CC  38 00 00 02 */	li r0, 2
/* 8074D2D0  B0 1F 07 42 */	sth r0, 0x742(r31)
/* 8074D2D4  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 8074D2D8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8074D2DC  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 8074D2E0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8074D2E4  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 8074D2E8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8074D2EC  7F E3 FB 78 */	mr r3, r31
/* 8074D2F0  4B FF F9 DD */	bl e_po_opening__FP10e_po_class
/* 8074D2F4  48 00 00 2C */	b lbl_8074D320
lbl_8074D2F8:
/* 8074D2F8  38 00 00 05 */	li r0, 5
/* 8074D2FC  B0 1F 07 42 */	sth r0, 0x742(r31)
/* 8074D300  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 8074D304  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8074D308  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 8074D30C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8074D310  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 8074D314  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8074D318  38 00 00 0A */	li r0, 0xa
/* 8074D31C  90 1F 05 B4 */	stw r0, 0x5b4(r31)
lbl_8074D320:
/* 8074D320  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8074D324  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8074D328  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8074D32C  7C 08 03 A6 */	mtlr r0
/* 8074D330  38 21 00 20 */	addi r1, r1, 0x20
/* 8074D334  4E 80 00 20 */	blr 
