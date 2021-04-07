lbl_809F75C0:
/* 809F75C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809F75C4  7C 08 02 A6 */	mflr r0
/* 809F75C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809F75CC  39 61 00 30 */	addi r11, r1, 0x30
/* 809F75D0  4B 96 AC 0D */	bl _savegpr_29
/* 809F75D4  7C 7E 1B 78 */	mr r30, r3
/* 809F75D8  3C 80 80 A0 */	lis r4, cNullVec__6Z2Calc@ha /* 0x809F87F4@ha */
/* 809F75DC  3B E4 87 F4 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x809F87F4@l */
/* 809F75E0  3C 80 80 A0 */	lis r4, m__19daNpc_GWolf_Param_c@ha /* 0x809F84F4@ha */
/* 809F75E4  3B A4 84 F4 */	addi r29, r4, m__19daNpc_GWolf_Param_c@l /* 0x809F84F4@l */
/* 809F75E8  A0 03 0E 0E */	lhz r0, 0xe0e(r3)
/* 809F75EC  2C 00 00 02 */	cmpwi r0, 2
/* 809F75F0  41 82 00 50 */	beq lbl_809F7640
/* 809F75F4  40 80 01 4C */	bge lbl_809F7740
/* 809F75F8  2C 00 00 00 */	cmpwi r0, 0
/* 809F75FC  41 82 00 0C */	beq lbl_809F7608
/* 809F7600  48 00 01 40 */	b lbl_809F7740
/* 809F7604  48 00 01 3C */	b lbl_809F7740
lbl_809F7608:
/* 809F7608  38 80 00 00 */	li r4, 0
/* 809F760C  C0 3D 00 BC */	lfs f1, 0xbc(r29)
/* 809F7610  38 A0 00 00 */	li r5, 0
/* 809F7614  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809F7618  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809F761C  7D 89 03 A6 */	mtctr r12
/* 809F7620  4E 80 04 21 */	bctrl 
/* 809F7624  7F C3 F3 78 */	mr r3, r30
/* 809F7628  38 80 00 02 */	li r4, 2
/* 809F762C  4B FF E5 35 */	bl setLookMode__13daNpc_GWolf_cFi
/* 809F7630  38 00 00 00 */	li r0, 0
/* 809F7634  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 809F7638  38 00 00 02 */	li r0, 2
/* 809F763C  B0 1E 0E 0E */	sth r0, 0xe0e(r30)
lbl_809F7640:
/* 809F7640  88 1E 0E 1D */	lbz r0, 0xe1d(r30)
/* 809F7644  28 00 00 00 */	cmplwi r0, 0
/* 809F7648  40 82 00 5C */	bne lbl_809F76A4
/* 809F764C  80 7D 02 10 */	lwz r3, 0x210(r29)
/* 809F7650  80 1D 02 14 */	lwz r0, 0x214(r29)
/* 809F7654  90 61 00 14 */	stw r3, 0x14(r1)
/* 809F7658  90 01 00 18 */	stw r0, 0x18(r1)
/* 809F765C  80 1D 02 18 */	lwz r0, 0x218(r29)
/* 809F7660  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809F7664  88 1E 0E 11 */	lbz r0, 0xe11(r30)
/* 809F7668  7C 03 07 74 */	extsb r3, r0
/* 809F766C  2C 03 FF FF */	cmpwi r3, -1
/* 809F7670  41 82 00 0C */	beq lbl_809F767C
/* 809F7674  7C 00 07 75 */	extsb. r0, r0
/* 809F7678  40 82 00 10 */	bne lbl_809F7688
lbl_809F767C:
/* 809F767C  38 00 00 09 */	li r0, 9
/* 809F7680  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 809F7684  48 00 00 14 */	b lbl_809F7698
lbl_809F7688:
/* 809F7688  54 60 08 3C */	slwi r0, r3, 1
/* 809F768C  38 61 00 12 */	addi r3, r1, 0x12
/* 809F7690  7C 03 02 2E */	lhzx r0, r3, r0
/* 809F7694  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
lbl_809F7698:
/* 809F7698  38 00 00 01 */	li r0, 1
/* 809F769C  98 1E 09 ED */	stb r0, 0x9ed(r30)
/* 809F76A0  48 00 00 A0 */	b lbl_809F7740
lbl_809F76A4:
/* 809F76A4  88 1E 0E 1C */	lbz r0, 0xe1c(r30)
/* 809F76A8  28 00 00 01 */	cmplwi r0, 1
/* 809F76AC  40 82 00 94 */	bne lbl_809F7740
/* 809F76B0  80 7D 02 1C */	lwz r3, 0x21c(r29)
/* 809F76B4  80 1D 02 20 */	lwz r0, 0x220(r29)
/* 809F76B8  90 61 00 08 */	stw r3, 8(r1)
/* 809F76BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 809F76C0  80 1D 02 24 */	lwz r0, 0x224(r29)
/* 809F76C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 809F76C8  88 1E 0E 11 */	lbz r0, 0xe11(r30)
/* 809F76CC  7C 03 07 74 */	extsb r3, r0
/* 809F76D0  2C 03 FF FF */	cmpwi r3, -1
/* 809F76D4  41 82 00 0C */	beq lbl_809F76E0
/* 809F76D8  7C 00 07 75 */	extsb. r0, r0
/* 809F76DC  40 82 00 10 */	bne lbl_809F76EC
lbl_809F76E0:
/* 809F76E0  38 00 00 03 */	li r0, 3
/* 809F76E4  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 809F76E8  48 00 00 14 */	b lbl_809F76FC
lbl_809F76EC:
/* 809F76EC  54 60 08 3C */	slwi r0, r3, 1
/* 809F76F0  38 61 00 06 */	addi r3, r1, 6
/* 809F76F4  7C 03 02 2E */	lhzx r0, r3, r0
/* 809F76F8  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
lbl_809F76FC:
/* 809F76FC  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 809F7700  54 06 18 38 */	slwi r6, r0, 3
/* 809F7704  7F C3 F3 78 */	mr r3, r30
/* 809F7708  38 BF 00 98 */	addi r5, r31, 0x98
/* 809F770C  7C 85 32 14 */	add r4, r5, r6
/* 809F7710  80 04 00 04 */	lwz r0, 4(r4)
/* 809F7714  54 00 10 3A */	slwi r0, r0, 2
/* 809F7718  38 9F 01 74 */	addi r4, r31, 0x174
/* 809F771C  7C 84 00 2E */	lwzx r4, r4, r0
/* 809F7720  7C 05 30 2E */	lwzx r0, r5, r6
/* 809F7724  54 00 10 3A */	slwi r0, r0, 2
/* 809F7728  38 BF 01 10 */	addi r5, r31, 0x110
/* 809F772C  7C A5 00 2E */	lwzx r5, r5, r0
/* 809F7730  38 C0 00 02 */	li r6, 2
/* 809F7734  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 809F7738  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 809F773C  4B 75 C2 19 */	bl changeEvent__8daNpcF_cFPcPcUsUs
lbl_809F7740:
/* 809F7740  38 60 00 01 */	li r3, 1
/* 809F7744  39 61 00 30 */	addi r11, r1, 0x30
/* 809F7748  4B 96 AA E1 */	bl _restgpr_29
/* 809F774C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809F7750  7C 08 03 A6 */	mtlr r0
/* 809F7754  38 21 00 30 */	addi r1, r1, 0x30
/* 809F7758  4E 80 00 20 */	blr 
