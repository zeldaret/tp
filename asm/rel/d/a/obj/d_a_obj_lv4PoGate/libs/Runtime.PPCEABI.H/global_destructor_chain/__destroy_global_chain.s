lbl_80C5FB94:
/* 80C5FB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5FB98  7C 08 02 A6 */	mflr r0
/* 80C5FB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5FBA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5FBA4  3C 60 80 C6 */	lis r3, __global_destructor_chain@ha
/* 80C5FBA8  3B E3 09 B0 */	addi r31, r3, __global_destructor_chain@l
/* 80C5FBAC  48 00 00 20 */	b lbl_80C5FBCC
lbl_80C5FBB0:
/* 80C5FBB0  80 05 00 00 */	lwz r0, 0(r5)
/* 80C5FBB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5FBB8  80 65 00 08 */	lwz r3, 8(r5)
/* 80C5FBBC  38 80 FF FF */	li r4, -1
/* 80C5FBC0  81 85 00 04 */	lwz r12, 4(r5)
/* 80C5FBC4  7D 89 03 A6 */	mtctr r12
/* 80C5FBC8  4E 80 04 21 */	bctrl 
lbl_80C5FBCC:
/* 80C5FBCC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C5FBD0  28 05 00 00 */	cmplwi r5, 0
/* 80C5FBD4  40 82 FF DC */	bne lbl_80C5FBB0
/* 80C5FBD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5FBDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5FBE0  7C 08 03 A6 */	mtlr r0
/* 80C5FBE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5FBE8  4E 80 00 20 */	blr 
