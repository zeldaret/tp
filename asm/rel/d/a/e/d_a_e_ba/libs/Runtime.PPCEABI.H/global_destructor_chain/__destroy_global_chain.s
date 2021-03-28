lbl_8067EC94:
/* 8067EC94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067EC98  7C 08 02 A6 */	mflr r0
/* 8067EC9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067ECA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067ECA4  3C 60 80 68 */	lis r3, __global_destructor_chain@ha
/* 8067ECA8  3B E3 26 30 */	addi r31, r3, __global_destructor_chain@l
/* 8067ECAC  48 00 00 20 */	b lbl_8067ECCC
lbl_8067ECB0:
/* 8067ECB0  80 05 00 00 */	lwz r0, 0(r5)
/* 8067ECB4  90 1F 00 00 */	stw r0, 0(r31)
/* 8067ECB8  80 65 00 08 */	lwz r3, 8(r5)
/* 8067ECBC  38 80 FF FF */	li r4, -1
/* 8067ECC0  81 85 00 04 */	lwz r12, 4(r5)
/* 8067ECC4  7D 89 03 A6 */	mtctr r12
/* 8067ECC8  4E 80 04 21 */	bctrl 
lbl_8067ECCC:
/* 8067ECCC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8067ECD0  28 05 00 00 */	cmplwi r5, 0
/* 8067ECD4  40 82 FF DC */	bne lbl_8067ECB0
/* 8067ECD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067ECDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067ECE0  7C 08 03 A6 */	mtlr r0
/* 8067ECE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8067ECE8  4E 80 00 20 */	blr 
