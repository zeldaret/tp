lbl_809DB184:
/* 809DB184  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809DB188  7C 08 02 A6 */	mflr r0
/* 809DB18C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809DB190  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809DB194  7C 7F 1B 78 */	mr r31, r3
/* 809DB198  80 83 05 68 */	lwz r4, 0x568(r3)
/* 809DB19C  80 84 00 04 */	lwz r4, 4(r4)
/* 809DB1A0  80 84 00 04 */	lwz r4, 4(r4)
/* 809DB1A4  80 84 00 60 */	lwz r4, 0x60(r4)
/* 809DB1A8  80 84 00 04 */	lwz r4, 4(r4)
/* 809DB1AC  80 03 0B DC */	lwz r0, 0xbdc(r3)
/* 809DB1B0  90 04 00 3C */	stw r0, 0x3c(r4)
/* 809DB1B4  3C 80 80 9E */	lis r4, lit_4584@ha /* 0x809DF508@ha */
/* 809DB1B8  38 A4 F5 08 */	addi r5, r4, lit_4584@l /* 0x809DF508@l */
/* 809DB1BC  80 85 00 00 */	lwz r4, 0(r5)
/* 809DB1C0  80 05 00 04 */	lwz r0, 4(r5)
/* 809DB1C4  90 81 00 08 */	stw r4, 8(r1)
/* 809DB1C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 809DB1CC  80 05 00 08 */	lwz r0, 8(r5)
/* 809DB1D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 809DB1D4  38 81 00 08 */	addi r4, r1, 8
/* 809DB1D8  48 00 1B CD */	bl chkAction__11daNpc_grO_cFM11daNpc_grO_cFPCvPvPv_i
/* 809DB1DC  7C 64 1B 78 */	mr r4, r3
/* 809DB1E0  7F E3 FB 78 */	mr r3, r31
/* 809DB1E4  38 A0 00 00 */	li r5, 0
/* 809DB1E8  3C C0 80 9E */	lis r6, m__17daNpc_grO_Param_c@ha /* 0x809DEF7C@ha */
/* 809DB1EC  38 C6 EF 7C */	addi r6, r6, m__17daNpc_grO_Param_c@l /* 0x809DEF7C@l */
/* 809DB1F0  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 809DB1F4  38 C0 00 00 */	li r6, 0
/* 809DB1F8  38 E0 00 00 */	li r7, 0
/* 809DB1FC  4B 77 70 B1 */	bl draw__8daNpcF_cFiifP11_GXColorS10i
/* 809DB200  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809DB204  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809DB208  7C 08 03 A6 */	mtlr r0
/* 809DB20C  38 21 00 20 */	addi r1, r1, 0x20
/* 809DB210  4E 80 00 20 */	blr 
