lbl_80AFD250:
/* 80AFD250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFD254  7C 08 02 A6 */	mflr r0
/* 80AFD258  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFD25C  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80AFD260  80 84 00 04 */	lwz r4, 4(r4)
/* 80AFD264  80 84 00 04 */	lwz r4, 4(r4)
/* 80AFD268  80 84 00 60 */	lwz r4, 0x60(r4)
/* 80AFD26C  80 84 00 04 */	lwz r4, 4(r4)
/* 80AFD270  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80AFD274  90 04 00 3C */	stw r0, 0x3c(r4)
/* 80AFD278  38 80 00 00 */	li r4, 0
/* 80AFD27C  38 A0 00 00 */	li r5, 0
/* 80AFD280  3C C0 80 B0 */	lis r6, m__17daNpcTheB_Param_c@ha /* 0x80B00D6C@ha */
/* 80AFD284  38 C6 0D 6C */	addi r6, r6, m__17daNpcTheB_Param_c@l /* 0x80B00D6C@l */
/* 80AFD288  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80AFD28C  38 C0 00 00 */	li r6, 0
/* 80AFD290  38 E0 00 00 */	li r7, 0
/* 80AFD294  4B 65 50 19 */	bl draw__8daNpcF_cFiifP11_GXColorS10i
/* 80AFD298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFD29C  7C 08 03 A6 */	mtlr r0
/* 80AFD2A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFD2A4  4E 80 00 20 */	blr 
