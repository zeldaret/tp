lbl_809A0DB8:
/* 809A0DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A0DBC  7C 08 02 A6 */	mflr r0
/* 809A0DC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A0DC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A0DC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A0DCC  41 82 00 1C */	beq lbl_809A0DE8
/* 809A0DD0  3C A0 80 9A */	lis r5, __vt__8cM3dGPla@ha /* 0x809A5280@ha */
/* 809A0DD4  38 05 52 80 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x809A5280@l */
/* 809A0DD8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 809A0DDC  7C 80 07 35 */	extsh. r0, r4
/* 809A0DE0  40 81 00 08 */	ble lbl_809A0DE8
/* 809A0DE4  4B 92 DF 59 */	bl __dl__FPv
lbl_809A0DE8:
/* 809A0DE8  7F E3 FB 78 */	mr r3, r31
/* 809A0DEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A0DF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A0DF4  7C 08 03 A6 */	mtlr r0
/* 809A0DF8  38 21 00 10 */	addi r1, r1, 0x10
/* 809A0DFC  4E 80 00 20 */	blr 
