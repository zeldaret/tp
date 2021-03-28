lbl_808221B4:
/* 808221B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808221B8  7C 08 02 A6 */	mflr r0
/* 808221BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 808221C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808221C4  3C 60 80 83 */	lis r3, __global_destructor_chain@ha
/* 808221C8  3B E3 8D A8 */	addi r31, r3, __global_destructor_chain@l
/* 808221CC  48 00 00 20 */	b lbl_808221EC
lbl_808221D0:
/* 808221D0  80 05 00 00 */	lwz r0, 0(r5)
/* 808221D4  90 1F 00 00 */	stw r0, 0(r31)
/* 808221D8  80 65 00 08 */	lwz r3, 8(r5)
/* 808221DC  38 80 FF FF */	li r4, -1
/* 808221E0  81 85 00 04 */	lwz r12, 4(r5)
/* 808221E4  7D 89 03 A6 */	mtctr r12
/* 808221E8  4E 80 04 21 */	bctrl 
lbl_808221EC:
/* 808221EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 808221F0  28 05 00 00 */	cmplwi r5, 0
/* 808221F4  40 82 FF DC */	bne lbl_808221D0
/* 808221F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808221FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80822200  7C 08 03 A6 */	mtlr r0
/* 80822204  38 21 00 10 */	addi r1, r1, 0x10
/* 80822208  4E 80 00 20 */	blr 
