lbl_80495910:
/* 80495910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80495914  7C 08 02 A6 */	mflr r0
/* 80495918  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049591C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80495920  93 C1 00 08 */	stw r30, 8(r1)
/* 80495924  7C 7E 1B 78 */	mr r30, r3
/* 80495928  88 03 09 7F */	lbz r0, 0x97f(r3)
/* 8049592C  28 00 00 00 */	cmplwi r0, 0
/* 80495930  40 82 00 28 */	bne lbl_80495958
/* 80495934  A8 1E 04 B4 */	lha r0, 0x4b4(r30)
/* 80495938  B0 1E 09 80 */	sth r0, 0x980(r30)
/* 8049593C  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 80495940  B0 1E 09 82 */	sth r0, 0x982(r30)
/* 80495944  38 00 00 00 */	li r0, 0
/* 80495948  B0 1E 04 B8 */	sth r0, 0x4b8(r30)
/* 8049594C  B0 1E 04 B4 */	sth r0, 0x4b4(r30)
/* 80495950  38 00 00 01 */	li r0, 1
/* 80495954  98 1E 09 7F */	stb r0, 0x97f(r30)
lbl_80495958:
/* 80495958  7F C3 F3 78 */	mr r3, r30
/* 8049595C  4B FF B4 F5 */	bl getModelInfo__8daTbox_cFv
/* 80495960  7C 7F 1B 78 */	mr r31, r3
/* 80495964  38 7E 07 1C */	addi r3, r30, 0x71c
/* 80495968  80 9F 00 00 */	lwz r4, 0(r31)
/* 8049596C  4B B9 75 51 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80495970  2C 03 00 04 */	cmpwi r3, 4
/* 80495974  41 82 00 08 */	beq lbl_8049597C
/* 80495978  48 00 00 5C */	b lbl_804959D4
lbl_8049597C:
/* 8049597C  7F C3 F3 78 */	mr r3, r30
/* 80495980  4B FF BC A5 */	bl calcHeapSize__8daTbox_cFv
/* 80495984  7C 67 1B 78 */	mr r7, r3
/* 80495988  7F C3 F3 78 */	mr r3, r30
/* 8049598C  80 9F 00 00 */	lwz r4, 0(r31)
/* 80495990  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 80495994  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80495998  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 8049599C  39 00 00 00 */	li r8, 0
/* 804959A0  4B BE 2E 1D */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 804959A4  7C 7F 1B 78 */	mr r31, r3
/* 804959A8  2C 1F 00 05 */	cmpwi r31, 5
/* 804959AC  40 82 00 08 */	bne lbl_804959B4
/* 804959B0  48 00 00 24 */	b lbl_804959D4
lbl_804959B4:
/* 804959B4  7F C3 F3 78 */	mr r3, r30
/* 804959B8  4B FF BD 8D */	bl CreateInit__8daTbox_cFv
/* 804959BC  38 00 00 40 */	li r0, 0x40
/* 804959C0  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 804959C4  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 804959C8  64 00 00 40 */	oris r0, r0, 0x40
/* 804959CC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 804959D0  7F E3 FB 78 */	mr r3, r31
lbl_804959D4:
/* 804959D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804959D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804959DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804959E0  7C 08 03 A6 */	mtlr r0
/* 804959E4  38 21 00 10 */	addi r1, r1, 0x10
/* 804959E8  4E 80 00 20 */	blr 
