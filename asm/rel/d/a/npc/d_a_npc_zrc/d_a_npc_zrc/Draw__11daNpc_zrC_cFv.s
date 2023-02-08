lbl_80B8E884:
/* 80B8E884  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B8E888  7C 08 02 A6 */	mflr r0
/* 80B8E88C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B8E890  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B8E894  7C 7F 1B 78 */	mr r31, r3
/* 80B8E898  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80B8E89C  80 84 00 04 */	lwz r4, 4(r4)
/* 80B8E8A0  80 84 00 04 */	lwz r4, 4(r4)
/* 80B8E8A4  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80B8E8A8  80 84 00 04 */	lwz r4, 4(r4)
/* 80B8E8AC  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80B8E8B0  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80B8E8B4  3C 80 80 B9 */	lis r4, lit_4517@ha /* 0x80B93994@ha */
/* 80B8E8B8  38 A4 39 94 */	addi r5, r4, lit_4517@l /* 0x80B93994@l */
/* 80B8E8BC  80 85 00 00 */	lwz r4, 0(r5)
/* 80B8E8C0  80 05 00 04 */	lwz r0, 4(r5)
/* 80B8E8C4  90 81 00 08 */	stw r4, 8(r1)
/* 80B8E8C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B8E8CC  80 05 00 08 */	lwz r0, 8(r5)
/* 80B8E8D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B8E8D4  38 81 00 08 */	addi r4, r1, 8
/* 80B8E8D8  48 00 21 95 */	bl chkAction__11daNpc_zrC_cFM11daNpc_zrC_cFPCvPvPv_i
/* 80B8E8DC  7C 64 1B 78 */	mr r4, r3
/* 80B8E8E0  7F E3 FB 78 */	mr r3, r31
/* 80B8E8E4  38 A0 00 01 */	li r5, 1
/* 80B8E8E8  3C C0 80 B9 */	lis r6, m__17daNpc_zrC_Param_c@ha /* 0x80B931FC@ha */
/* 80B8E8EC  38 C6 31 FC */	addi r6, r6, m__17daNpc_zrC_Param_c@l /* 0x80B931FC@l */
/* 80B8E8F0  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80B8E8F4  38 C0 00 00 */	li r6, 0
/* 80B8E8F8  38 E0 00 00 */	li r7, 0
/* 80B8E8FC  4B 5C 39 B1 */	bl draw__8daNpcF_cFiifP11_GXColorS10i
/* 80B8E900  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B8E904  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B8E908  7C 08 03 A6 */	mtlr r0
/* 80B8E90C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B8E910  4E 80 00 20 */	blr 
