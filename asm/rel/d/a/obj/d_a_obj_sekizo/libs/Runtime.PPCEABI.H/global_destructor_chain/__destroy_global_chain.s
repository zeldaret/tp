lbl_80CCDBB4:
/* 80CCDBB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCDBB8  7C 08 02 A6 */	mflr r0
/* 80CCDBBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCDBC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCDBC4  3C 60 80 CD */	lis r3, __global_destructor_chain@ha
/* 80CCDBC8  3B E3 E2 38 */	addi r31, r3, __global_destructor_chain@l
/* 80CCDBCC  48 00 00 20 */	b lbl_80CCDBEC
lbl_80CCDBD0:
/* 80CCDBD0  80 05 00 00 */	lwz r0, 0(r5)
/* 80CCDBD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80CCDBD8  80 65 00 08 */	lwz r3, 8(r5)
/* 80CCDBDC  38 80 FF FF */	li r4, -1
/* 80CCDBE0  81 85 00 04 */	lwz r12, 4(r5)
/* 80CCDBE4  7D 89 03 A6 */	mtctr r12
/* 80CCDBE8  4E 80 04 21 */	bctrl 
lbl_80CCDBEC:
/* 80CCDBEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CCDBF0  28 05 00 00 */	cmplwi r5, 0
/* 80CCDBF4  40 82 FF DC */	bne lbl_80CCDBD0
/* 80CCDBF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCDBFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCDC00  7C 08 03 A6 */	mtlr r0
/* 80CCDC04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCDC08  4E 80 00 20 */	blr 
