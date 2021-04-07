lbl_80D2D6C4:
/* 80D2D6C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2D6C8  7C 08 02 A6 */	mflr r0
/* 80D2D6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2D6D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2D6D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D2D6D8  7C 7E 1B 78 */	mr r30, r3
/* 80D2D6DC  3C 60 80 D3 */	lis r3, lit_3645@ha /* 0x80D2E770@ha */
/* 80D2D6E0  3B E3 E7 70 */	addi r31, r3, lit_3645@l /* 0x80D2E770@l */
/* 80D2D6E4  C0 3E 0B 04 */	lfs f1, 0xb04(r30)
/* 80D2D6E8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80D2D6EC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80D2D6F0  EC 41 00 24 */	fdivs f2, f1, f0
/* 80D2D6F4  4B 54 30 4D */	bl cLib_chaseF__FPfff
/* 80D2D6F8  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80D2D6FC  C0 3E 0B 10 */	lfs f1, 0xb10(r30)
/* 80D2D700  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D2D704  C0 7E 05 2C */	lfs f3, 0x52c(r30)
/* 80D2D708  C0 9F 00 C0 */	lfs f4, 0xc0(r31)
/* 80D2D70C  4B 54 22 71 */	bl cLib_addCalc__FPfffff
/* 80D2D710  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80D2D714  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D2D718  40 82 00 0C */	bne lbl_80D2D724
/* 80D2D71C  7F C3 F3 78 */	mr r3, r30
/* 80D2D720  48 00 00 1D */	bl actionUpFirstWaitInit__12daWtPillar_cFv
lbl_80D2D724:
/* 80D2D724  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2D728  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D2D72C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2D730  7C 08 03 A6 */	mtlr r0
/* 80D2D734  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2D738  4E 80 00 20 */	blr 
