lbl_807C1A60:
/* 807C1A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C1A64  7C 08 02 A6 */	mflr r0
/* 807C1A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C1A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C1A70  7C 7F 1B 79 */	or. r31, r3, r3
/* 807C1A74  41 82 00 1C */	beq lbl_807C1A90
/* 807C1A78  3C A0 80 7C */	lis r5, __vt__10cCcD_GStts@ha
/* 807C1A7C  38 05 23 08 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 807C1A80  90 1F 00 00 */	stw r0, 0(r31)
/* 807C1A84  7C 80 07 35 */	extsh. r0, r4
/* 807C1A88  40 81 00 08 */	ble lbl_807C1A90
/* 807C1A8C  4B B0 D2 B0 */	b __dl__FPv
lbl_807C1A90:
/* 807C1A90  7F E3 FB 78 */	mr r3, r31
/* 807C1A94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C1A98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C1A9C  7C 08 03 A6 */	mtlr r0
/* 807C1AA0  38 21 00 10 */	addi r1, r1, 0x10
/* 807C1AA4  4E 80 00 20 */	blr 
