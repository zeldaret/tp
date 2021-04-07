lbl_80C60450:
/* 80C60450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C60454  7C 08 02 A6 */	mflr r0
/* 80C60458  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6045C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C60460  93 C1 00 08 */	stw r30, 8(r1)
/* 80C60464  7C 7E 1B 78 */	mr r30, r3
/* 80C60468  3C 60 80 C6 */	lis r3, lit_3629@ha /* 0x80C60804@ha */
/* 80C6046C  3B E3 08 04 */	addi r31, r3, lit_3629@l /* 0x80C60804@l */
/* 80C60470  3C 60 80 C6 */	lis r3, l_HIO@ha /* 0x80C609C4@ha */
/* 80C60474  38 63 09 C4 */	addi r3, r3, l_HIO@l /* 0x80C609C4@l */
/* 80C60478  C0 23 00 20 */	lfs f1, 0x20(r3)
/* 80C6047C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C60480  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C60484  EC 41 00 24 */	fdivs f2, f1, f0
/* 80C60488  4B 61 02 B9 */	bl cLib_chaseF__FPfff
/* 80C6048C  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C60490  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C60494  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 80C60498  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80C6049C  FC 80 10 90 */	fmr f4, f2
/* 80C604A0  4B 60 F4 DD */	bl cLib_addCalc__FPfffff
/* 80C604A4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C604A8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C604AC  40 82 00 14 */	bne lbl_80C604C0
/* 80C604B0  7F C3 F3 78 */	mr r3, r30
/* 80C604B4  48 00 00 25 */	bl setSe__13daLv4PoGate_cFv
/* 80C604B8  7F C3 F3 78 */	mr r3, r30
/* 80C604BC  4B FF FB D5 */	bl init_modeWait__13daLv4PoGate_cFv
lbl_80C604C0:
/* 80C604C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C604C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C604C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C604CC  7C 08 03 A6 */	mtlr r0
/* 80C604D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C604D4  4E 80 00 20 */	blr 
