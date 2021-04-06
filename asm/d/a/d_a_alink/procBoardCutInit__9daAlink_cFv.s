lbl_801074AC:
/* 801074AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801074B0  7C 08 02 A6 */	mflr r0
/* 801074B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801074B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801074BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801074C0  7C 7E 1B 78 */	mr r30, r3
/* 801074C4  38 80 00 AC */	li r4, 0xac
/* 801074C8  4B FF F1 89 */	bl commonProcBoardInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 801074CC  3B E0 00 00 */	li r31, 0
/* 801074D0  7F C3 F3 78 */	mr r3, r30
/* 801074D4  38 80 00 FA */	li r4, 0xfa
/* 801074D8  4B FA 50 81 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 801074DC  2C 03 00 00 */	cmpwi r3, 0
/* 801074E0  41 82 00 3C */	beq lbl_8010751C
/* 801074E4  C0 5E 1F E0 */	lfs f2, 0x1fe0(r30)
/* 801074E8  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 801074EC  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 801074F0  A8 03 00 56 */	lha r0, 0x56(r3)
/* 801074F4  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 801074F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801074FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80107500  3C 00 43 30 */	lis r0, 0x4330
/* 80107504  90 01 00 08 */	stw r0, 8(r1)
/* 80107508  C8 01 00 08 */	lfd f0, 8(r1)
/* 8010750C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80107510  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80107514  40 81 00 08 */	ble lbl_8010751C
/* 80107518  3B E0 00 01 */	li r31, 1
lbl_8010751C:
/* 8010751C  7F C3 F3 78 */	mr r3, r30
/* 80107520  38 80 00 00 */	li r4, 0
/* 80107524  4B FF F0 11 */	bl setCommonBoardAnime__9daAlink_cFi
/* 80107528  7F C3 F3 78 */	mr r3, r30
/* 8010752C  38 80 00 01 */	li r4, 1
/* 80107530  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 80107534  4B FC A8 E9 */	bl setCutDash__9daAlink_cFii
/* 80107538  38 00 00 00 */	li r0, 0
/* 8010753C  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 80107540  38 60 00 01 */	li r3, 1
/* 80107544  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80107548  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8010754C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80107550  7C 08 03 A6 */	mtlr r0
/* 80107554  38 21 00 20 */	addi r1, r1, 0x20
/* 80107558  4E 80 00 20 */	blr 
