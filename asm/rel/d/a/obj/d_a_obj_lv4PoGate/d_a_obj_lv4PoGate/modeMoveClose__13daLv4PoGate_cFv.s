lbl_80C602B0:
/* 80C602B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C602B4  7C 08 02 A6 */	mflr r0
/* 80C602B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C602BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C602C0  93 C1 00 08 */	stw r30, 8(r1)
/* 80C602C4  7C 7E 1B 78 */	mr r30, r3
/* 80C602C8  3C 60 80 C6 */	lis r3, lit_3629@ha /* 0x80C60804@ha */
/* 80C602CC  3B E3 08 04 */	addi r31, r3, lit_3629@l /* 0x80C60804@l */
/* 80C602D0  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 80C602D4  3C 80 80 C6 */	lis r4, l_HIO@ha /* 0x80C609C4@ha */
/* 80C602D8  38 84 09 C4 */	addi r4, r4, l_HIO@l /* 0x80C609C4@l */
/* 80C602DC  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 80C602E0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80C602E4  C0 64 00 08 */	lfs f3, 8(r4)
/* 80C602E8  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 80C602EC  4B 60 F6 91 */	bl cLib_addCalc__FPfffff
/* 80C602F0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C602F4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C602F8  40 82 00 0C */	bne lbl_80C60304
/* 80C602FC  7F C3 F3 78 */	mr r3, r30
/* 80C60300  48 00 00 1D */	bl init_modeMoveCloseWait__13daLv4PoGate_cFv
lbl_80C60304:
/* 80C60304  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C60308  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C6030C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C60310  7C 08 03 A6 */	mtlr r0
/* 80C60314  38 21 00 10 */	addi r1, r1, 0x10
/* 80C60318  4E 80 00 20 */	blr 
