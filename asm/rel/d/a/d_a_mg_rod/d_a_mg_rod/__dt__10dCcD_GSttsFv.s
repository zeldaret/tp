lbl_804BAE3C:
/* 804BAE3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BAE40  7C 08 02 A6 */	mflr r0
/* 804BAE44  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BAE48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BAE4C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804BAE50  41 82 00 30 */	beq lbl_804BAE80
/* 804BAE54  3C 60 80 4C */	lis r3, __vt__10dCcD_GStts@ha /* 0x804BBB14@ha */
/* 804BAE58  38 03 BB 14 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x804BBB14@l */
/* 804BAE5C  90 1F 00 00 */	stw r0, 0(r31)
/* 804BAE60  41 82 00 10 */	beq lbl_804BAE70
/* 804BAE64  3C 60 80 4C */	lis r3, __vt__10cCcD_GStts@ha /* 0x804BBB08@ha */
/* 804BAE68  38 03 BB 08 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x804BBB08@l */
/* 804BAE6C  90 1F 00 00 */	stw r0, 0(r31)
lbl_804BAE70:
/* 804BAE70  7C 80 07 35 */	extsh. r0, r4
/* 804BAE74  40 81 00 0C */	ble lbl_804BAE80
/* 804BAE78  7F E3 FB 78 */	mr r3, r31
/* 804BAE7C  4B E1 3E C1 */	bl __dl__FPv
lbl_804BAE80:
/* 804BAE80  7F E3 FB 78 */	mr r3, r31
/* 804BAE84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BAE88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BAE8C  7C 08 03 A6 */	mtlr r0
/* 804BAE90  38 21 00 10 */	addi r1, r1, 0x10
/* 804BAE94  4E 80 00 20 */	blr 
