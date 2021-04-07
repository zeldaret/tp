lbl_80B66D88:
/* 80B66D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B66D8C  7C 08 02 A6 */	mflr r0
/* 80B66D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B66D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B66D98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B66D9C  41 82 00 1C */	beq lbl_80B66DB8
/* 80B66DA0  3C A0 80 B7 */	lis r5, __vt__8cM3dGAab@ha /* 0x80B68C6C@ha */
/* 80B66DA4  38 05 8C 6C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80B68C6C@l */
/* 80B66DA8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80B66DAC  7C 80 07 35 */	extsh. r0, r4
/* 80B66DB0  40 81 00 08 */	ble lbl_80B66DB8
/* 80B66DB4  4B 76 7F 89 */	bl __dl__FPv
lbl_80B66DB8:
/* 80B66DB8  7F E3 FB 78 */	mr r3, r31
/* 80B66DBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B66DC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B66DC4  7C 08 03 A6 */	mtlr r0
/* 80B66DC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B66DCC  4E 80 00 20 */	blr 
