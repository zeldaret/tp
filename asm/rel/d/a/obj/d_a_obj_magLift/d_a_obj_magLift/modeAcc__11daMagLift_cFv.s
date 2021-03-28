lbl_80C8DE98:
/* 80C8DE98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8DE9C  7C 08 02 A6 */	mflr r0
/* 80C8DEA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8DEA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8DEA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80C8DEAC  7C 7E 1B 78 */	mr r30, r3
/* 80C8DEB0  3C 60 80 C9 */	lis r3, mSpeed__11daMagLift_c@ha
/* 80C8DEB4  3B E3 E6 5C */	addi r31, r3, mSpeed__11daMagLift_c@l
/* 80C8DEB8  C0 3E 05 CC */	lfs f1, 0x5cc(r30)
/* 80C8DEBC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C8DEC0  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C8DEC4  EC 41 00 24 */	fdivs f2, f1, f0
/* 80C8DEC8  4B 5E 28 78 */	b cLib_chaseF__FPfff
/* 80C8DECC  2C 03 00 01 */	cmpwi r3, 1
/* 80C8DED0  41 82 00 18 */	beq lbl_80C8DEE8
/* 80C8DED4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C8DED8  38 9E 05 B4 */	addi r4, r30, 0x5b4
/* 80C8DEDC  4B 5D 91 50 */	b __eq__4cXyzCFRC3Vec
/* 80C8DEE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C8DEE4  41 82 00 0C */	beq lbl_80C8DEF0
lbl_80C8DEE8:
/* 80C8DEE8  7F C3 F3 78 */	mr r3, r30
/* 80C8DEEC  48 00 00 35 */	bl init_modeMove__11daMagLift_cFv
lbl_80C8DEF0:
/* 80C8DEF0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C8DEF4  38 9E 05 B4 */	addi r4, r30, 0x5b4
/* 80C8DEF8  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C8DEFC  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C8DF00  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80C8DF04  4B 5E 1B B4 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80C8DF08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8DF0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C8DF10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8DF14  7C 08 03 A6 */	mtlr r0
/* 80C8DF18  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8DF1C  4E 80 00 20 */	blr 
