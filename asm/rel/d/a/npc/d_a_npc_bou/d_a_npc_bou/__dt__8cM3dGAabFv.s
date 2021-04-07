lbl_80971A80:
/* 80971A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80971A84  7C 08 02 A6 */	mflr r0
/* 80971A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80971A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80971A90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80971A94  41 82 00 1C */	beq lbl_80971AB0
/* 80971A98  3C A0 80 97 */	lis r5, __vt__8cM3dGAab@ha /* 0x80973348@ha */
/* 80971A9C  38 05 33 48 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80973348@l */
/* 80971AA0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80971AA4  7C 80 07 35 */	extsh. r0, r4
/* 80971AA8  40 81 00 08 */	ble lbl_80971AB0
/* 80971AAC  4B 95 D2 91 */	bl __dl__FPv
lbl_80971AB0:
/* 80971AB0  7F E3 FB 78 */	mr r3, r31
/* 80971AB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80971AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80971ABC  7C 08 03 A6 */	mtlr r0
/* 80971AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80971AC4  4E 80 00 20 */	blr 
