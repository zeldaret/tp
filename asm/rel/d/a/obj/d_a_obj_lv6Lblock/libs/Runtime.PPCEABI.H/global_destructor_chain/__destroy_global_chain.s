lbl_80C73394:
/* 80C73394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C73398  7C 08 02 A6 */	mflr r0
/* 80C7339C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C733A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C733A4  3C 60 80 C7 */	lis r3, __global_destructor_chain@ha
/* 80C733A8  3B E3 3D E8 */	addi r31, r3, __global_destructor_chain@l
/* 80C733AC  48 00 00 20 */	b lbl_80C733CC
lbl_80C733B0:
/* 80C733B0  80 05 00 00 */	lwz r0, 0(r5)
/* 80C733B4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C733B8  80 65 00 08 */	lwz r3, 8(r5)
/* 80C733BC  38 80 FF FF */	li r4, -1
/* 80C733C0  81 85 00 04 */	lwz r12, 4(r5)
/* 80C733C4  7D 89 03 A6 */	mtctr r12
/* 80C733C8  4E 80 04 21 */	bctrl 
lbl_80C733CC:
/* 80C733CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C733D0  28 05 00 00 */	cmplwi r5, 0
/* 80C733D4  40 82 FF DC */	bne lbl_80C733B0
/* 80C733D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C733DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C733E0  7C 08 03 A6 */	mtlr r0
/* 80C733E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C733E8  4E 80 00 20 */	blr 
