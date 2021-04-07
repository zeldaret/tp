lbl_804DAE2C:
/* 804DAE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DAE30  7C 08 02 A6 */	mflr r0
/* 804DAE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DAE38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DAE3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 804DAE40  41 82 00 30 */	beq lbl_804DAE70
/* 804DAE44  3C 60 80 4E */	lis r3, __vt__10dCcD_GStts@ha /* 0x804DD79C@ha */
/* 804DAE48  38 03 D7 9C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x804DD79C@l */
/* 804DAE4C  90 1F 00 00 */	stw r0, 0(r31)
/* 804DAE50  41 82 00 10 */	beq lbl_804DAE60
/* 804DAE54  3C 60 80 4E */	lis r3, __vt__10cCcD_GStts@ha /* 0x804DD790@ha */
/* 804DAE58  38 03 D7 90 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x804DD790@l */
/* 804DAE5C  90 1F 00 00 */	stw r0, 0(r31)
lbl_804DAE60:
/* 804DAE60  7C 80 07 35 */	extsh. r0, r4
/* 804DAE64  40 81 00 0C */	ble lbl_804DAE70
/* 804DAE68  7F E3 FB 78 */	mr r3, r31
/* 804DAE6C  4B DF 3E D1 */	bl __dl__FPv
lbl_804DAE70:
/* 804DAE70  7F E3 FB 78 */	mr r3, r31
/* 804DAE74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DAE78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DAE7C  7C 08 03 A6 */	mtlr r0
/* 804DAE80  38 21 00 10 */	addi r1, r1, 0x10
/* 804DAE84  4E 80 00 20 */	blr 
