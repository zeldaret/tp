lbl_80CAACE0:
/* 80CAACE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAACE4  7C 08 02 A6 */	mflr r0
/* 80CAACE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAACEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAACF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80CAACF4  7C 7E 1B 78 */	mr r30, r3
/* 80CAACF8  3C 60 80 CB */	lis r3, lit_3680@ha /* 0x80CAC50C@ha */
/* 80CAACFC  3B E3 C5 0C */	addi r31, r3, lit_3680@l /* 0x80CAC50C@l */
/* 80CAAD00  3C 60 80 CB */	lis r3, cNullVec__6Z2Calc@ha /* 0x80CAC59C@ha */
/* 80CAAD04  38 83 C5 9C */	addi r4, r3, cNullVec__6Z2Calc@l /* 0x80CAC59C@l */
/* 80CAAD08  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CAAD0C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80CAAD10  90 1E 06 0C */	stw r0, 0x60c(r30)
/* 80CAAD14  80 1E 06 0C */	lwz r0, 0x60c(r30)
/* 80CAAD18  2C 00 00 04 */	cmpwi r0, 4
/* 80CAAD1C  40 82 00 30 */	bne lbl_80CAAD4C
/* 80CAAD20  80 04 00 88 */	lwz r0, 0x88(r4)
/* 80CAAD24  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80CAAD28  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 80CAAD2C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 80CAAD30  80 04 00 90 */	lwz r0, 0x90(r4)
/* 80CAAD34  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80CAAD38  38 04 00 94 */	addi r0, r4, 0x94
/* 80CAAD3C  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80CAAD40  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80CAAD44  D0 1E 07 CC */	stfs f0, 0x7cc(r30)
/* 80CAAD48  48 00 00 A0 */	b lbl_80CAADE8
lbl_80CAAD4C:
/* 80CAAD4C  2C 00 00 02 */	cmpwi r0, 2
/* 80CAAD50  40 82 00 30 */	bne lbl_80CAAD80
/* 80CAAD54  80 04 00 64 */	lwz r0, 0x64(r4)
/* 80CAAD58  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80CAAD5C  80 04 00 68 */	lwz r0, 0x68(r4)
/* 80CAAD60  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 80CAAD64  80 04 00 6C */	lwz r0, 0x6c(r4)
/* 80CAAD68  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80CAAD6C  38 04 00 70 */	addi r0, r4, 0x70
/* 80CAAD70  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80CAAD74  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80CAAD78  D0 1E 07 CC */	stfs f0, 0x7cc(r30)
/* 80CAAD7C  48 00 00 6C */	b lbl_80CAADE8
lbl_80CAAD80:
/* 80CAAD80  2C 00 00 00 */	cmpwi r0, 0
/* 80CAAD84  40 82 00 30 */	bne lbl_80CAADB4
/* 80CAAD88  80 04 00 20 */	lwz r0, 0x20(r4)
/* 80CAAD8C  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80CAAD90  80 04 00 24 */	lwz r0, 0x24(r4)
/* 80CAAD94  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 80CAAD98  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 80CAAD9C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80CAADA0  38 04 00 34 */	addi r0, r4, 0x34
/* 80CAADA4  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80CAADA8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CAADAC  D0 1E 07 CC */	stfs f0, 0x7cc(r30)
/* 80CAADB0  48 00 00 38 */	b lbl_80CAADE8
lbl_80CAADB4:
/* 80CAADB4  80 04 00 20 */	lwz r0, 0x20(r4)
/* 80CAADB8  90 1E 07 BC */	stw r0, 0x7bc(r30)
/* 80CAADBC  38 64 00 24 */	addi r3, r4, 0x24
/* 80CAADC0  80 03 00 04 */	lwz r0, 4(r3)
/* 80CAADC4  90 1E 07 C0 */	stw r0, 0x7c0(r30)
/* 80CAADC8  38 64 00 2C */	addi r3, r4, 0x2c
/* 80CAADCC  80 03 00 04 */	lwz r0, 4(r3)
/* 80CAADD0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80CAADD4  38 64 00 34 */	addi r3, r4, 0x34
/* 80CAADD8  38 03 00 18 */	addi r0, r3, 0x18
/* 80CAADDC  90 1E 07 C8 */	stw r0, 0x7c8(r30)
/* 80CAADE0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80CAADE4  D0 1E 07 CC */	stfs f0, 0x7cc(r30)
lbl_80CAADE8:
/* 80CAADE8  7F C3 F3 78 */	mr r3, r30
/* 80CAADEC  28 1E 00 00 */	cmplwi r30, 0
/* 80CAADF0  41 82 00 08 */	beq lbl_80CAADF8
/* 80CAADF4  38 7E 05 A0 */	addi r3, r30, 0x5a0
lbl_80CAADF8:
/* 80CAADF8  80 9E 07 BC */	lwz r4, 0x7bc(r30)
/* 80CAADFC  4B 38 20 C1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CAAE00  7C 60 1B 78 */	mr r0, r3
/* 80CAAE04  2C 00 00 04 */	cmpwi r0, 4
/* 80CAAE08  40 82 00 5C */	bne lbl_80CAAE64
/* 80CAAE0C  7F C3 F3 78 */	mr r3, r30
/* 80CAAE10  48 00 00 71 */	bl setMtx__13daObjPDtile_cFv
/* 80CAAE14  80 1E 06 0C */	lwz r0, 0x60c(r30)
/* 80CAAE18  2C 00 00 04 */	cmpwi r0, 4
/* 80CAAE1C  38 C0 00 00 */	li r6, 0
/* 80CAAE20  41 82 00 0C */	beq lbl_80CAAE2C
/* 80CAAE24  3C 60 80 07 */	lis r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80CAAE28  38 C3 5A D8 */	addi r6, r3, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
lbl_80CAAE2C:
/* 80CAAE2C  7F C3 F3 78 */	mr r3, r30
/* 80CAAE30  80 9E 07 BC */	lwz r4, 0x7bc(r30)
/* 80CAAE34  80 BE 07 C0 */	lwz r5, 0x7c0(r30)
/* 80CAAE38  38 E0 12 A0 */	li r7, 0x12a0
/* 80CAAE3C  39 1E 05 A8 */	addi r8, r30, 0x5a8
/* 80CAAE40  4B 3C D9 7D */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CAAE44  7C 60 1B 78 */	mr r0, r3
/* 80CAAE48  2C 00 00 05 */	cmpwi r0, 5
/* 80CAAE4C  40 82 00 08 */	bne lbl_80CAAE54
/* 80CAAE50  48 00 00 18 */	b lbl_80CAAE68
lbl_80CAAE54:
/* 80CAAE54  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80CAAE58  D0 1E 06 28 */	stfs f0, 0x628(r30)
/* 80CAAE5C  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 80CAAE60  D0 1E 06 20 */	stfs f0, 0x620(r30)
lbl_80CAAE64:
/* 80CAAE64  7C 03 03 78 */	mr r3, r0
lbl_80CAAE68:
/* 80CAAE68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAAE6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CAAE70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAAE74  7C 08 03 A6 */	mtlr r0
/* 80CAAE78  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAAE7C  4E 80 00 20 */	blr 
