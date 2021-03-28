lbl_80332A44:
/* 80332A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80332A48  7C 08 02 A6 */	mflr r0
/* 80332A4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80332A50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80332A54  7C 7F 1B 79 */	or. r31, r3, r3
/* 80332A58  41 82 00 30 */	beq lbl_80332A88
/* 80332A5C  3C 60 80 3D */	lis r3, __vt__15J3DTevBlockNull@ha
/* 80332A60  38 03 EF 0C */	addi r0, r3, __vt__15J3DTevBlockNull@l
/* 80332A64  90 1F 00 00 */	stw r0, 0(r31)
/* 80332A68  41 82 00 10 */	beq lbl_80332A78
/* 80332A6C  3C 60 80 3D */	lis r3, __vt__11J3DTevBlock@ha
/* 80332A70  38 03 E9 58 */	addi r0, r3, __vt__11J3DTevBlock@l
/* 80332A74  90 1F 00 00 */	stw r0, 0(r31)
lbl_80332A78:
/* 80332A78  7C 80 07 35 */	extsh. r0, r4
/* 80332A7C  40 81 00 0C */	ble lbl_80332A88
/* 80332A80  7F E3 FB 78 */	mr r3, r31
/* 80332A84  4B F9 C2 B9 */	bl __dl__FPv
lbl_80332A88:
/* 80332A88  7F E3 FB 78 */	mr r3, r31
/* 80332A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80332A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80332A94  7C 08 03 A6 */	mtlr r0
/* 80332A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80332A9C  4E 80 00 20 */	blr 
