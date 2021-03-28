lbl_80729994:
/* 80729994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80729998  7C 08 02 A6 */	mflr r0
/* 8072999C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807299A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807299A4  3C 60 80 73 */	lis r3, __global_destructor_chain@ha
/* 807299A8  3B E3 C3 E0 */	addi r31, r3, __global_destructor_chain@l
/* 807299AC  48 00 00 20 */	b lbl_807299CC
lbl_807299B0:
/* 807299B0  80 05 00 00 */	lwz r0, 0(r5)
/* 807299B4  90 1F 00 00 */	stw r0, 0(r31)
/* 807299B8  80 65 00 08 */	lwz r3, 8(r5)
/* 807299BC  38 80 FF FF */	li r4, -1
/* 807299C0  81 85 00 04 */	lwz r12, 4(r5)
/* 807299C4  7D 89 03 A6 */	mtctr r12
/* 807299C8  4E 80 04 21 */	bctrl 
lbl_807299CC:
/* 807299CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 807299D0  28 05 00 00 */	cmplwi r5, 0
/* 807299D4  40 82 FF DC */	bne lbl_807299B0
/* 807299D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807299DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807299E0  7C 08 03 A6 */	mtlr r0
/* 807299E4  38 21 00 10 */	addi r1, r1, 0x10
/* 807299E8  4E 80 00 20 */	blr 
