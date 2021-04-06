lbl_80A84734:
/* 80A84734  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A84738  7C 08 02 A6 */	mflr r0
/* 80A8473C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A84740  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A84744  7C 7F 1B 78 */	mr r31, r3
/* 80A84748  3C 80 80 A9 */	lis r4, lit_4477@ha /* 0x80A8886C@ha */
/* 80A8474C  38 A4 88 6C */	addi r5, r4, lit_4477@l /* 0x80A8886C@l */
/* 80A84750  80 85 00 00 */	lwz r4, 0(r5)
/* 80A84754  80 05 00 04 */	lwz r0, 4(r5)
/* 80A84758  90 81 00 08 */	stw r4, 8(r1)
/* 80A8475C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A84760  80 05 00 08 */	lwz r0, 8(r5)
/* 80A84764  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A84768  38 81 00 08 */	addi r4, r1, 8
/* 80A8476C  48 00 0E 7D */	bl chkAction__13daNpc_myna2_cFM13daNpc_myna2_cFPCvPvPv_i
/* 80A84770  7C 64 1B 78 */	mr r4, r3
/* 80A84774  7F E3 FB 78 */	mr r3, r31
/* 80A84778  38 A0 00 00 */	li r5, 0
/* 80A8477C  3C C0 80 A9 */	lis r6, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A84780  38 C6 84 34 */	addi r6, r6, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A84784  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80A84788  38 C0 00 00 */	li r6, 0
/* 80A8478C  38 E0 00 00 */	li r7, 0
/* 80A84790  4B 6C DB 1D */	bl draw__8daNpcF_cFiifP11_GXColorS10i
/* 80A84794  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A84798  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A8479C  7C 08 03 A6 */	mtlr r0
/* 80A847A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80A847A4  4E 80 00 20 */	blr 
