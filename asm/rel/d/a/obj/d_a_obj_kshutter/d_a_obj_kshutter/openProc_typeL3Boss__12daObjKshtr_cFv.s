lbl_80C490F8:
/* 80C490F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C490FC  7C 08 02 A6 */	mflr r0
/* 80C49100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C49104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C49108  93 C1 00 08 */	stw r30, 8(r1)
/* 80C4910C  7C 7E 1B 78 */	mr r30, r3
/* 80C49110  3C 60 80 C5 */	lis r3, l_bmd@ha /* 0x80C49CA8@ha */
/* 80C49114  3B E3 9C A8 */	addi r31, r3, l_bmd@l /* 0x80C49CA8@l */
/* 80C49118  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C4911C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80C49120  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80C49124  4B 62 76 1D */	bl cLib_chaseF__FPfff
/* 80C49128  38 7E 05 FC */	addi r3, r30, 0x5fc
/* 80C4912C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80C49130  C0 5E 05 2C */	lfs f2, 0x52c(r30)
/* 80C49134  4B 62 76 0D */	bl cLib_chaseF__FPfff
/* 80C49138  30 03 FF FF */	addic r0, r3, -1
/* 80C4913C  7C 60 19 10 */	subfe r3, r0, r3
/* 80C49140  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C49144  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C49148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4914C  7C 08 03 A6 */	mtlr r0
/* 80C49150  38 21 00 10 */	addi r1, r1, 0x10
/* 80C49154  4E 80 00 20 */	blr 
