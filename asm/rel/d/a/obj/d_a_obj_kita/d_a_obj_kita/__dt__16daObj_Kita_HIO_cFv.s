lbl_80C45E84:
/* 80C45E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C45E88  7C 08 02 A6 */	mflr r0
/* 80C45E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C45E90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C45E94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C45E98  41 82 00 1C */	beq lbl_80C45EB4
/* 80C45E9C  3C A0 80 C4 */	lis r5, __vt__16daObj_Kita_HIO_c@ha /* 0x80C45FDC@ha */
/* 80C45EA0  38 05 5F DC */	addi r0, r5, __vt__16daObj_Kita_HIO_c@l /* 0x80C45FDC@l */
/* 80C45EA4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C45EA8  7C 80 07 35 */	extsh. r0, r4
/* 80C45EAC  40 81 00 08 */	ble lbl_80C45EB4
/* 80C45EB0  4B 68 8E 8D */	bl __dl__FPv
lbl_80C45EB4:
/* 80C45EB4  7F E3 FB 78 */	mr r3, r31
/* 80C45EB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C45EBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C45EC0  7C 08 03 A6 */	mtlr r0
/* 80C45EC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C45EC8  4E 80 00 20 */	blr 
