lbl_80282C58:
/* 80282C58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80282C5C  7C 08 02 A6 */	mflr r0
/* 80282C60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80282C64  80 63 00 44 */	lwz r3, 0x44(r3)
/* 80282C68  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80282C6C  54 00 10 3A */	slwi r0, r0, 2
/* 80282C70  C8 44 00 08 */	lfd f2, 8(r4)
/* 80282C74  C8 24 00 00 */	lfd f1, 0(r4)
/* 80282C78  7C 63 04 2E */	lfsx f3, r3, r0
/* 80282C7C  C8 82 BA 00 */	lfd f4, lit_652(r2)
/* 80282C80  C8 02 BA 08 */	lfd f0, lit_792(r2)
/* 80282C84  FC A0 10 2A */	fadd f5, f0, f2
/* 80282C88  7C 63 02 14 */	add r3, r3, r0
/* 80282C8C  C0 C3 00 04 */	lfs f6, 4(r3)
/* 80282C90  FC E0 20 90 */	fmr f7, f4
/* 80282C94  4B FF EA 7D */	bl interpolateValue_hermite__Q27JStudio13functionvalueFddddddd
/* 80282C98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80282C9C  7C 08 03 A6 */	mtlr r0
/* 80282CA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80282CA4  4E 80 00 20 */	blr 
