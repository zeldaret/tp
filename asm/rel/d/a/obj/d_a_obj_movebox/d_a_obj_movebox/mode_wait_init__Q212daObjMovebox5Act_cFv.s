lbl_8047F634:
/* 8047F634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047F638  7C 08 02 A6 */	mflr r0
/* 8047F63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047F640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047F644  7C 7F 1B 78 */	mr r31, r3
/* 8047F648  3C 80 80 48 */	lis r4, lit_3687@ha
/* 8047F64C  C0 04 10 E8 */	lfs f0, lit_3687@l(r4)
/* 8047F650  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 8047F654  80 03 08 AC */	lwz r0, 0x8ac(r3)
/* 8047F658  1C A0 00 A0 */	mulli r5, r0, 0xa0
/* 8047F65C  3C 80 80 48 */	lis r4, M_attr__Q212daObjMovebox5Act_c@ha
/* 8047F660  38 04 11 68 */	addi r0, r4, M_attr__Q212daObjMovebox5Act_c@l
/* 8047F664  7C 80 2A 14 */	add r4, r0, r5
/* 8047F668  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 8047F66C  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 8047F670  3C 80 80 07 */	lis r4, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 8047F674  38 04 5B 44 */	addi r0, r4, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 8047F678  80 83 05 68 */	lwz r4, 0x568(r3)
/* 8047F67C  90 04 00 B0 */	stw r0, 0xb0(r4)
/* 8047F680  4B FF FE 8D */	bl clr_moment_cnt__Q212daObjMovebox5Act_cFv
/* 8047F684  38 00 FF FF */	li r0, -1
/* 8047F688  90 1F 08 E8 */	stw r0, 0x8e8(r31)
/* 8047F68C  38 00 00 00 */	li r0, 0
/* 8047F690  90 1F 05 AC */	stw r0, 0x5ac(r31)
/* 8047F694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047F698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047F69C  7C 08 03 A6 */	mtlr r0
/* 8047F6A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8047F6A4  4E 80 00 20 */	blr 
