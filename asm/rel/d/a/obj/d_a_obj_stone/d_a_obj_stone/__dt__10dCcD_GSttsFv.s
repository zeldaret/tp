lbl_80CE9A64:
/* 80CE9A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE9A68  7C 08 02 A6 */	mflr r0
/* 80CE9A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE9A70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE9A74  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CE9A78  41 82 00 30 */	beq lbl_80CE9AA8
/* 80CE9A7C  3C 60 80 CF */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CECDBC@ha */
/* 80CE9A80  38 03 CD BC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CECDBC@l */
/* 80CE9A84  90 1F 00 00 */	stw r0, 0(r31)
/* 80CE9A88  41 82 00 10 */	beq lbl_80CE9A98
/* 80CE9A8C  3C 60 80 CF */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CECDB0@ha */
/* 80CE9A90  38 03 CD B0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CECDB0@l */
/* 80CE9A94  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CE9A98:
/* 80CE9A98  7C 80 07 35 */	extsh. r0, r4
/* 80CE9A9C  40 81 00 0C */	ble lbl_80CE9AA8
/* 80CE9AA0  7F E3 FB 78 */	mr r3, r31
/* 80CE9AA4  4B 5E 52 99 */	bl __dl__FPv
lbl_80CE9AA8:
/* 80CE9AA8  7F E3 FB 78 */	mr r3, r31
/* 80CE9AAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE9AB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE9AB4  7C 08 03 A6 */	mtlr r0
/* 80CE9AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE9ABC  4E 80 00 20 */	blr 
