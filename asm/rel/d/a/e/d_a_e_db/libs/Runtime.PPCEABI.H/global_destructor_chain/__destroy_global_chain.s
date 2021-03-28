lbl_8069AA94:
/* 8069AA94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8069AA98  7C 08 02 A6 */	mflr r0
/* 8069AA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8069AAA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8069AAA4  3C 60 80 6A */	lis r3, __global_destructor_chain@ha
/* 8069AAA8  3B E3 1D 90 */	addi r31, r3, __global_destructor_chain@l
/* 8069AAAC  48 00 00 20 */	b lbl_8069AACC
lbl_8069AAB0:
/* 8069AAB0  80 05 00 00 */	lwz r0, 0(r5)
/* 8069AAB4  90 1F 00 00 */	stw r0, 0(r31)
/* 8069AAB8  80 65 00 08 */	lwz r3, 8(r5)
/* 8069AABC  38 80 FF FF */	li r4, -1
/* 8069AAC0  81 85 00 04 */	lwz r12, 4(r5)
/* 8069AAC4  7D 89 03 A6 */	mtctr r12
/* 8069AAC8  4E 80 04 21 */	bctrl 
lbl_8069AACC:
/* 8069AACC  80 BF 00 00 */	lwz r5, 0(r31)
/* 8069AAD0  28 05 00 00 */	cmplwi r5, 0
/* 8069AAD4  40 82 FF DC */	bne lbl_8069AAB0
/* 8069AAD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8069AADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8069AAE0  7C 08 03 A6 */	mtlr r0
/* 8069AAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8069AAE8  4E 80 00 20 */	blr 
