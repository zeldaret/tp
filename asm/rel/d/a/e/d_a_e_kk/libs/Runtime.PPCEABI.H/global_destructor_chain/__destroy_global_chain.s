lbl_806FA6B4:
/* 806FA6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806FA6B8  7C 08 02 A6 */	mflr r0
/* 806FA6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806FA6C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806FA6C4  3C 60 80 70 */	lis r3, __global_destructor_chain@ha
/* 806FA6C8  3B E3 F8 78 */	addi r31, r3, __global_destructor_chain@l
/* 806FA6CC  48 00 00 20 */	b lbl_806FA6EC
lbl_806FA6D0:
/* 806FA6D0  80 05 00 00 */	lwz r0, 0(r5)
/* 806FA6D4  90 1F 00 00 */	stw r0, 0(r31)
/* 806FA6D8  80 65 00 08 */	lwz r3, 8(r5)
/* 806FA6DC  38 80 FF FF */	li r4, -1
/* 806FA6E0  81 85 00 04 */	lwz r12, 4(r5)
/* 806FA6E4  7D 89 03 A6 */	mtctr r12
/* 806FA6E8  4E 80 04 21 */	bctrl 
lbl_806FA6EC:
/* 806FA6EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 806FA6F0  28 05 00 00 */	cmplwi r5, 0
/* 806FA6F4  40 82 FF DC */	bne lbl_806FA6D0
/* 806FA6F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806FA6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806FA700  7C 08 03 A6 */	mtlr r0
/* 806FA704  38 21 00 10 */	addi r1, r1, 0x10
/* 806FA708  4E 80 00 20 */	blr 
