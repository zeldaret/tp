lbl_80B5C6D8:
/* 80B5C6D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C6DC  7C 08 02 A6 */	mflr r0
/* 80B5C6E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C6E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5C6E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5C6EC  41 82 00 1C */	beq lbl_80B5C708
/* 80B5C6F0  3C A0 80 B6 */	lis r5, __vt__13daNpcT_Path_c@ha /* 0x80B5EC44@ha */
/* 80B5C6F4  38 05 EC 44 */	addi r0, r5, __vt__13daNpcT_Path_c@l /* 0x80B5EC44@l */
/* 80B5C6F8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80B5C6FC  7C 80 07 35 */	extsh. r0, r4
/* 80B5C700  40 81 00 08 */	ble lbl_80B5C708
/* 80B5C704  4B 77 26 39 */	bl __dl__FPv
lbl_80B5C708:
/* 80B5C708  7F E3 FB 78 */	mr r3, r31
/* 80B5C70C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5C710  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C714  7C 08 03 A6 */	mtlr r0
/* 80B5C718  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C71C  4E 80 00 20 */	blr 
