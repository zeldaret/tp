lbl_80C6CCE4:
/* 80C6CCE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6CCE8  7C 08 02 A6 */	mflr r0
/* 80C6CCEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6CCF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C6CCF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C6CCF8  41 82 00 1C */	beq lbl_80C6CD14
/* 80C6CCFC  3C A0 80 C7 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80C6D65C@ha */
/* 80C6CD00  38 05 D6 5C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80C6D65C@l */
/* 80C6CD04  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C6CD08  7C 80 07 35 */	extsh. r0, r4
/* 80C6CD0C  40 81 00 08 */	ble lbl_80C6CD14
/* 80C6CD10  4B 66 20 2D */	bl __dl__FPv
lbl_80C6CD14:
/* 80C6CD14  7F E3 FB 78 */	mr r3, r31
/* 80C6CD18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C6CD1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6CD20  7C 08 03 A6 */	mtlr r0
/* 80C6CD24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6CD28  4E 80 00 20 */	blr 
