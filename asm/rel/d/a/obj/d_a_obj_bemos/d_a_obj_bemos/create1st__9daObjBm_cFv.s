lbl_80BAEFD8:
/* 80BAEFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAEFDC  7C 08 02 A6 */	mflr r0
/* 80BAEFE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAEFE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAEFE8  7C 7F 1B 78 */	mr r31, r3
/* 80BAEFEC  88 03 10 0E */	lbz r0, 0x100e(r3)
/* 80BAEFF0  28 00 00 00 */	cmplwi r0, 0
/* 80BAEFF4  40 82 00 38 */	bne lbl_80BAF02C
/* 80BAEFF8  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80BAEFFC  B0 1F 10 0A */	sth r0, 0x100a(r31)
/* 80BAF000  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80BAF004  B0 1F 10 0C */	sth r0, 0x100c(r31)
/* 80BAF008  38 00 00 00 */	li r0, 0
/* 80BAF00C  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80BAF010  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80BAF014  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80BAF018  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80BAF01C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80BAF020  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80BAF024  38 00 00 01 */	li r0, 1
/* 80BAF028  98 1F 10 0E */	stb r0, 0x100e(r31)
lbl_80BAF02C:
/* 80BAF02C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BAF030  3C 80 80 BB */	lis r4, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BAF034  38 84 3A 94 */	addi r4, r4, l_arcName@l /* 0x80BB3A94@l */
/* 80BAF038  80 84 00 00 */	lwz r4, 0(r4)
/* 80BAF03C  4B 47 DE 81 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BAF040  7C 60 1B 78 */	mr r0, r3
/* 80BAF044  2C 00 00 04 */	cmpwi r0, 4
/* 80BAF048  40 82 00 3C */	bne lbl_80BAF084
/* 80BAF04C  7F E3 FB 78 */	mr r3, r31
/* 80BAF050  3C 80 80 BB */	lis r4, l_arcName@ha /* 0x80BB3A94@ha */
/* 80BAF054  38 84 3A 94 */	addi r4, r4, l_arcName@l /* 0x80BB3A94@l */
/* 80BAF058  80 84 00 00 */	lwz r4, 0(r4)
/* 80BAF05C  38 A0 00 1E */	li r5, 0x1e
/* 80BAF060  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80BAF064  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80BAF068  38 E0 55 00 */	li r7, 0x5500
/* 80BAF06C  39 00 00 00 */	li r8, 0
/* 80BAF070  4B 4C 97 4D */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BAF074  7C 60 1B 78 */	mr r0, r3
/* 80BAF078  2C 00 00 05 */	cmpwi r0, 5
/* 80BAF07C  40 82 00 08 */	bne lbl_80BAF084
/* 80BAF080  48 00 00 08 */	b lbl_80BAF088
lbl_80BAF084:
/* 80BAF084  7C 03 03 78 */	mr r3, r0
lbl_80BAF088:
/* 80BAF088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAF08C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAF090  7C 08 03 A6 */	mtlr r0
/* 80BAF094  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAF098  4E 80 00 20 */	blr 
