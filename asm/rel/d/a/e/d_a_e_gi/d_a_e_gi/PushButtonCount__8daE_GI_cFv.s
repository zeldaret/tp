lbl_806CF720:
/* 806CF720  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806CF724  7C 08 02 A6 */	mflr r0
/* 806CF728  90 01 00 24 */	stw r0, 0x24(r1)
/* 806CF72C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806CF730  7C 7F 1B 78 */	mr r31, r3
/* 806CF734  80 03 06 8C */	lwz r0, 0x68c(r3)
/* 806CF738  2C 00 00 00 */	cmpwi r0, 0
/* 806CF73C  41 82 01 18 */	beq lbl_806CF854
/* 806CF740  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 806CF744  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 806CF748  A8 63 00 0C */	lha r3, 0xc(r3)
/* 806CF74C  A8 1F 06 A6 */	lha r0, 0x6a6(r31)
/* 806CF750  7C 03 00 50 */	subf r0, r3, r0
/* 806CF754  7C 03 07 34 */	extsh r3, r0
/* 806CF758  4B C9 59 79 */	bl abs
/* 806CF75C  2C 03 10 00 */	cmpwi r3, 0x1000
/* 806CF760  40 81 00 10 */	ble lbl_806CF770
/* 806CF764  80 7F 06 A8 */	lwz r3, 0x6a8(r31)
/* 806CF768  38 03 00 01 */	addi r0, r3, 1
/* 806CF76C  90 1F 06 A8 */	stw r0, 0x6a8(r31)
lbl_806CF770:
/* 806CF770  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 806CF774  38 83 D2 E8 */	addi r4, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 806CF778  80 04 00 34 */	lwz r0, 0x34(r4)
/* 806CF77C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 806CF780  41 82 00 10 */	beq lbl_806CF790
/* 806CF784  80 7F 06 A8 */	lwz r3, 0x6a8(r31)
/* 806CF788  38 03 00 02 */	addi r0, r3, 2
/* 806CF78C  90 1F 06 A8 */	stw r0, 0x6a8(r31)
lbl_806CF790:
/* 806CF790  80 04 00 34 */	lwz r0, 0x34(r4)
/* 806CF794  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 806CF798  41 82 00 10 */	beq lbl_806CF7A8
/* 806CF79C  80 7F 06 A8 */	lwz r3, 0x6a8(r31)
/* 806CF7A0  38 03 00 02 */	addi r0, r3, 2
/* 806CF7A4  90 1F 06 A8 */	stw r0, 0x6a8(r31)
lbl_806CF7A8:
/* 806CF7A8  80 04 00 34 */	lwz r0, 0x34(r4)
/* 806CF7AC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 806CF7B0  41 82 00 10 */	beq lbl_806CF7C0
/* 806CF7B4  80 7F 06 A8 */	lwz r3, 0x6a8(r31)
/* 806CF7B8  38 03 00 02 */	addi r0, r3, 2
/* 806CF7BC  90 1F 06 A8 */	stw r0, 0x6a8(r31)
lbl_806CF7C0:
/* 806CF7C0  80 04 00 34 */	lwz r0, 0x34(r4)
/* 806CF7C4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806CF7C8  41 82 00 10 */	beq lbl_806CF7D8
/* 806CF7CC  80 7F 06 A8 */	lwz r3, 0x6a8(r31)
/* 806CF7D0  38 03 00 02 */	addi r0, r3, 2
/* 806CF7D4  90 1F 06 A8 */	stw r0, 0x6a8(r31)
lbl_806CF7D8:
/* 806CF7D8  80 1F 06 A8 */	lwz r0, 0x6a8(r31)
/* 806CF7DC  7C 00 0E 70 */	srawi r0, r0, 1
/* 806CF7E0  7C 60 01 94 */	addze r3, r0
/* 806CF7E4  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 806CF7E8  7C 03 00 50 */	subf r0, r3, r0
/* 806CF7EC  90 1F 06 8C */	stw r0, 0x68c(r31)
/* 806CF7F0  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 806CF7F4  2C 00 00 00 */	cmpwi r0, 0
/* 806CF7F8  40 80 00 0C */	bge lbl_806CF804
/* 806CF7FC  38 00 00 00 */	li r0, 0
/* 806CF800  90 1F 06 8C */	stw r0, 0x68c(r31)
lbl_806CF804:
/* 806CF804  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 806CF808  3C 60 80 6D */	lis r3, lit_4222@ha /* 0x806D0ED0@ha */
/* 806CF80C  C8 23 0E D0 */	lfd f1, lit_4222@l(r3)  /* 0x806D0ED0@l */
/* 806CF810  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806CF814  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CF818  3C 00 43 30 */	lis r0, 0x4330
/* 806CF81C  90 01 00 08 */	stw r0, 8(r1)
/* 806CF820  C8 01 00 08 */	lfd f0, 8(r1)
/* 806CF824  EC 20 08 28 */	fsubs f1, f0, f1
/* 806CF828  3C 60 80 6D */	lis r3, l_HIO@ha /* 0x806D1138@ha */
/* 806CF82C  38 63 11 38 */	addi r3, r3, l_HIO@l /* 0x806D1138@l */
/* 806CF830  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 806CF834  EC 01 00 2A */	fadds f0, f1, f0
/* 806CF838  FC 00 00 1E */	fctiwz f0, f0
/* 806CF83C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806CF840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806CF844  90 1F 06 90 */	stw r0, 0x690(r31)
/* 806CF848  80 1F 06 A8 */	lwz r0, 0x6a8(r31)
/* 806CF84C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 806CF850  90 1F 06 A8 */	stw r0, 0x6a8(r31)
lbl_806CF854:
/* 806CF854  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 806CF858  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 806CF85C  A8 03 00 0C */	lha r0, 0xc(r3)
/* 806CF860  B0 1F 06 A6 */	sth r0, 0x6a6(r31)
/* 806CF864  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806CF868  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806CF86C  7C 08 03 A6 */	mtlr r0
/* 806CF870  38 21 00 20 */	addi r1, r1, 0x20
/* 806CF874  4E 80 00 20 */	blr 
