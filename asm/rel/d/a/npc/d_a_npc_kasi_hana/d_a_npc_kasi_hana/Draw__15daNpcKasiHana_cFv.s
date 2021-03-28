lbl_80A1C78C:
/* 80A1C78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A1C790  7C 08 02 A6 */	mflr r0
/* 80A1C794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1C798  88 03 14 43 */	lbz r0, 0x1443(r3)
/* 80A1C79C  28 00 00 00 */	cmplwi r0, 0
/* 80A1C7A0  40 82 00 24 */	bne lbl_80A1C7C4
/* 80A1C7A4  38 80 00 00 */	li r4, 0
/* 80A1C7A8  38 A0 00 00 */	li r5, 0
/* 80A1C7AC  3C C0 80 A2 */	lis r6, m__21daNpcKasiHana_Param_c@ha
/* 80A1C7B0  38 C6 10 C8 */	addi r6, r6, m__21daNpcKasiHana_Param_c@l
/* 80A1C7B4  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80A1C7B8  38 C0 00 00 */	li r6, 0
/* 80A1C7BC  38 E0 00 00 */	li r7, 0
/* 80A1C7C0  4B 73 5A EC */	b draw__8daNpcF_cFiifP11_GXColorS10i
lbl_80A1C7C4:
/* 80A1C7C4  38 60 00 01 */	li r3, 1
/* 80A1C7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1C7CC  7C 08 03 A6 */	mtlr r0
/* 80A1C7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A1C7D4  4E 80 00 20 */	blr 
