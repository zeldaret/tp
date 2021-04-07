lbl_80053C94:
/* 80053C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80053C98  7C 08 02 A6 */	mflr r0
/* 80053C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80053CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80053CA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80053CA8  41 82 00 1C */	beq lbl_80053CC4
/* 80053CAC  3C A0 80 3B */	lis r5, __vt__10J2DAnmBase@ha /* 0x803A8E04@ha */
/* 80053CB0  38 05 8E 04 */	addi r0, r5, __vt__10J2DAnmBase@l /* 0x803A8E04@l */
/* 80053CB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80053CB8  7C 80 07 35 */	extsh. r0, r4
/* 80053CBC  40 81 00 08 */	ble lbl_80053CC4
/* 80053CC0  48 27 B0 7D */	bl __dl__FPv
lbl_80053CC4:
/* 80053CC4  7F E3 FB 78 */	mr r3, r31
/* 80053CC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80053CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80053CD0  7C 08 03 A6 */	mtlr r0
/* 80053CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80053CD8  4E 80 00 20 */	blr 
