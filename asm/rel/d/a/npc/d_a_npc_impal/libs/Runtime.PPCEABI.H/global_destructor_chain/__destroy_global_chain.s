lbl_80A07994:
/* 80A07994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A07998  7C 08 02 A6 */	mflr r0
/* 80A0799C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A079A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A079A4  3C 60 80 A1 */	lis r3, __global_destructor_chain@ha
/* 80A079A8  3B E3 C8 F0 */	addi r31, r3, __global_destructor_chain@l
/* 80A079AC  48 00 00 20 */	b lbl_80A079CC
lbl_80A079B0:
/* 80A079B0  80 05 00 00 */	lwz r0, 0(r5)
/* 80A079B4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A079B8  80 65 00 08 */	lwz r3, 8(r5)
/* 80A079BC  38 80 FF FF */	li r4, -1
/* 80A079C0  81 85 00 04 */	lwz r12, 4(r5)
/* 80A079C4  7D 89 03 A6 */	mtctr r12
/* 80A079C8  4E 80 04 21 */	bctrl 
lbl_80A079CC:
/* 80A079CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80A079D0  28 05 00 00 */	cmplwi r5, 0
/* 80A079D4  40 82 FF DC */	bne lbl_80A079B0
/* 80A079D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A079DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A079E0  7C 08 03 A6 */	mtlr r0
/* 80A079E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A079E8  4E 80 00 20 */	blr 
