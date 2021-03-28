lbl_805CA49C:
/* 805CA49C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805CA4A0  7C 08 02 A6 */	mflr r0
/* 805CA4A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805CA4A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805CA4AC  7C 7F 1B 78 */	mr r31, r3
/* 805CA4B0  38 7F 04 FC */	addi r3, r31, 0x4fc
/* 805CA4B4  C0 3F 06 14 */	lfs f1, 0x614(r31)
/* 805CA4B8  3C 80 80 5D */	lis r4, lit_4227@ha
/* 805CA4BC  C0 44 AD B0 */	lfs f2, lit_4227@l(r4)
/* 805CA4C0  3C 80 80 5D */	lis r4, lit_4411@ha
/* 805CA4C4  C0 64 AD E4 */	lfs f3, lit_4411@l(r4)
/* 805CA4C8  4B CA 55 74 */	b cLib_addCalc2__FPffff
/* 805CA4CC  38 7F 05 2C */	addi r3, r31, 0x52c
/* 805CA4D0  C0 3F 06 10 */	lfs f1, 0x610(r31)
/* 805CA4D4  3C 80 80 5D */	lis r4, lit_4227@ha
/* 805CA4D8  C0 44 AD B0 */	lfs f2, lit_4227@l(r4)
/* 805CA4DC  3C 80 80 5D */	lis r4, lit_4411@ha
/* 805CA4E0  C0 64 AD E4 */	lfs f3, lit_4411@l(r4)
/* 805CA4E4  4B CA 55 58 */	b cLib_addCalc2__FPffff
/* 805CA4E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805CA4EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805CA4F0  7C 08 03 A6 */	mtlr r0
/* 805CA4F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805CA4F8  4E 80 00 20 */	blr 
