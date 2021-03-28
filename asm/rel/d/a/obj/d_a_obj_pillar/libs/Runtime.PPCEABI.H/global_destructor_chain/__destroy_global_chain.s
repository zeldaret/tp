lbl_80CAF2D4:
/* 80CAF2D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAF2D8  7C 08 02 A6 */	mflr r0
/* 80CAF2DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAF2E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAF2E4  3C 60 80 CB */	lis r3, __global_destructor_chain@ha
/* 80CAF2E8  3B E3 0C 18 */	addi r31, r3, __global_destructor_chain@l
/* 80CAF2EC  48 00 00 20 */	b lbl_80CAF30C
lbl_80CAF2F0:
/* 80CAF2F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80CAF2F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80CAF2F8  80 65 00 08 */	lwz r3, 8(r5)
/* 80CAF2FC  38 80 FF FF */	li r4, -1
/* 80CAF300  81 85 00 04 */	lwz r12, 4(r5)
/* 80CAF304  7D 89 03 A6 */	mtctr r12
/* 80CAF308  4E 80 04 21 */	bctrl 
lbl_80CAF30C:
/* 80CAF30C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CAF310  28 05 00 00 */	cmplwi r5, 0
/* 80CAF314  40 82 FF DC */	bne lbl_80CAF2F0
/* 80CAF318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAF31C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAF320  7C 08 03 A6 */	mtlr r0
/* 80CAF324  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAF328  4E 80 00 20 */	blr 
