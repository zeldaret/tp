lbl_80C66FFC:
/* 80C66FFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67000  7C 08 02 A6 */	mflr r0
/* 80C67004  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67008  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6700C  93 C1 00 08 */	stw r30, 8(r1)
/* 80C67010  7C 7E 1B 78 */	mr r30, r3
/* 80C67014  3C 60 80 C6 */	lis r3, lit_3746@ha /* 0x80C675D4@ha */
/* 80C67018  3B E3 75 D4 */	addi r31, r3, lit_3746@l /* 0x80C675D4@l */
/* 80C6701C  38 7E 09 42 */	addi r3, r30, 0x942
/* 80C67020  48 00 05 69 */	bl func_80C67588
/* 80C67024  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C67028  40 82 00 6C */	bne lbl_80C67094
/* 80C6702C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80C67030  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80C67034  C0 1E 09 3C */	lfs f0, 0x93c(r30)
/* 80C67038  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C6703C  EC 22 00 2A */	fadds f1, f2, f0
/* 80C67040  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C67044  EC 01 00 24 */	fdivs f0, f1, f0
/* 80C67048  FC 00 02 10 */	fabs f0, f0
/* 80C6704C  FC 20 00 18 */	frsp f1, f0
/* 80C67050  FC 40 08 90 */	fmr f2, f1
/* 80C67054  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C67058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C6705C  40 80 00 08 */	bge lbl_80C67064
/* 80C67060  FC 40 00 90 */	fmr f2, f0
lbl_80C67064:
/* 80C67064  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80C67068  C0 3E 09 3C */	lfs f1, 0x93c(r30)
/* 80C6706C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C67070  EC 21 00 28 */	fsubs f1, f1, f0
/* 80C67074  4B 60 96 CD */	bl cLib_chaseF__FPfff
/* 80C67078  2C 03 00 00 */	cmpwi r3, 0
/* 80C6707C  41 82 00 18 */	beq lbl_80C67094
/* 80C67080  88 1E 09 41 */	lbz r0, 0x941(r30)
/* 80C67084  28 00 00 02 */	cmplwi r0, 2
/* 80C67088  40 82 00 0C */	bne lbl_80C67094
/* 80C6708C  7F C3 F3 78 */	mr r3, r30
/* 80C67090  48 00 00 1D */	bl mode_init_end__16daObjL4DigSand_cFv
lbl_80C67094:
/* 80C67094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C67098  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6709C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C670A0  7C 08 03 A6 */	mtlr r0
/* 80C670A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C670A8  4E 80 00 20 */	blr 
