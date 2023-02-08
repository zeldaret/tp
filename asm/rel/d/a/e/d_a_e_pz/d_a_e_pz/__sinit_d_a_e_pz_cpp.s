lbl_80760CA8:
/* 80760CA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80760CAC  7C 08 02 A6 */	mflr r0
/* 80760CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80760CB4  3C 60 80 76 */	lis r3, struct_80761E0C+0x0@ha /* 0x80761E0C@ha */
/* 80760CB8  38 63 1E 0C */	addi r3, r3, struct_80761E0C+0x0@l /* 0x80761E0C@l */
/* 80760CBC  4B FF 78 B1 */	bl __ct__12daE_PZ_HIO_cFv
/* 80760CC0  3C 80 80 76 */	lis r4, __dt__12daE_PZ_HIO_cFv@ha /* 0x80760C60@ha */
/* 80760CC4  38 84 0C 60 */	addi r4, r4, __dt__12daE_PZ_HIO_cFv@l /* 0x80760C60@l */
/* 80760CC8  3C A0 80 76 */	lis r5, lit_3922@ha /* 0x80761E00@ha */
/* 80760CCC  38 A5 1E 00 */	addi r5, r5, lit_3922@l /* 0x80761E00@l */
/* 80760CD0  4B FF 78 29 */	bl __register_global_object
/* 80760CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80760CD8  7C 08 03 A6 */	mtlr r0
/* 80760CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80760CE0  4E 80 00 20 */	blr 
