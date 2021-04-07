lbl_80BA9A48:
/* 80BA9A48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA9A4C  7C 08 02 A6 */	mflr r0
/* 80BA9A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA9A54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA9A58  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA9A5C  41 82 00 1C */	beq lbl_80BA9A78
/* 80BA9A60  3C A0 80 BB */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BA9CA0@ha */
/* 80BA9A64  38 05 9C A0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BA9CA0@l */
/* 80BA9A68  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA9A6C  7C 80 07 35 */	extsh. r0, r4
/* 80BA9A70  40 81 00 08 */	ble lbl_80BA9A78
/* 80BA9A74  4B 72 52 C9 */	bl __dl__FPv
lbl_80BA9A78:
/* 80BA9A78  7F E3 FB 78 */	mr r3, r31
/* 80BA9A7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA9A80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA9A84  7C 08 03 A6 */	mtlr r0
/* 80BA9A88  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA9A8C  4E 80 00 20 */	blr 
