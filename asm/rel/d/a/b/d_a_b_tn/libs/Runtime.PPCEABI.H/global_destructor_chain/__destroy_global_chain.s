lbl_8061EB94:
/* 8061EB94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8061EB98  7C 08 02 A6 */	mflr r0
/* 8061EB9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8061EBA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8061EBA4  3C 60 80 63 */	lis r3, __global_destructor_chain@ha
/* 8061EBA8  3B E3 EF D8 */	addi r31, r3, __global_destructor_chain@l
/* 8061EBAC  48 00 00 20 */	b lbl_8061EBCC
lbl_8061EBB0:
/* 8061EBB0  80 05 00 00 */	lwz r0, 0(r5)
/* 8061EBB4  90 1F 00 00 */	stw r0, 0(r31)
/* 8061EBB8  80 65 00 08 */	lwz r3, 8(r5)
/* 8061EBBC  38 80 FF FF */	li r4, -1
/* 8061EBC0  81 85 00 04 */	lwz r12, 4(r5)
/* 8061EBC4  7D 89 03 A6 */	mtctr r12
/* 8061EBC8  4E 80 04 21 */	bctrl 
lbl_8061EBCC:
/* 8061EBCC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8061EBD0  28 05 00 00 */	cmplwi r5, 0
/* 8061EBD4  40 82 FF DC */	bne lbl_8061EBB0
/* 8061EBD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8061EBDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8061EBE0  7C 08 03 A6 */	mtlr r0
/* 8061EBE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8061EBE8  4E 80 00 20 */	blr 
