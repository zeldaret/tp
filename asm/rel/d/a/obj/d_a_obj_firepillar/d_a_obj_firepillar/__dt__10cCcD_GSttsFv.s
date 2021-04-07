lbl_80BE9A40:
/* 80BE9A40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE9A44  7C 08 02 A6 */	mflr r0
/* 80BE9A48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE9A4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE9A50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE9A54  41 82 00 1C */	beq lbl_80BE9A70
/* 80BE9A58  3C A0 80 BF */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BE9BE4@ha */
/* 80BE9A5C  38 05 9B E4 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BE9BE4@l */
/* 80BE9A60  90 1F 00 00 */	stw r0, 0(r31)
/* 80BE9A64  7C 80 07 35 */	extsh. r0, r4
/* 80BE9A68  40 81 00 08 */	ble lbl_80BE9A70
/* 80BE9A6C  4B 6E 52 D1 */	bl __dl__FPv
lbl_80BE9A70:
/* 80BE9A70  7F E3 FB 78 */	mr r3, r31
/* 80BE9A74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE9A78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE9A7C  7C 08 03 A6 */	mtlr r0
/* 80BE9A80  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE9A84  4E 80 00 20 */	blr 
