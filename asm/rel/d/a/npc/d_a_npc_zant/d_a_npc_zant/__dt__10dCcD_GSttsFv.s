lbl_80B6E254:
/* 80B6E254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6E258  7C 08 02 A6 */	mflr r0
/* 80B6E25C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6E260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6E264  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6E268  41 82 00 30 */	beq lbl_80B6E298
/* 80B6E26C  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B6EC04@ha */
/* 80B6E270  38 03 EC 04 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B6EC04@l */
/* 80B6E274  90 1F 00 00 */	stw r0, 0(r31)
/* 80B6E278  41 82 00 10 */	beq lbl_80B6E288
/* 80B6E27C  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B6EBF8@ha */
/* 80B6E280  38 03 EB F8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B6EBF8@l */
/* 80B6E284  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B6E288:
/* 80B6E288  7C 80 07 35 */	extsh. r0, r4
/* 80B6E28C  40 81 00 0C */	ble lbl_80B6E298
/* 80B6E290  7F E3 FB 78 */	mr r3, r31
/* 80B6E294  4B 76 0A A9 */	bl __dl__FPv
lbl_80B6E298:
/* 80B6E298  7F E3 FB 78 */	mr r3, r31
/* 80B6E29C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6E2A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6E2A4  7C 08 03 A6 */	mtlr r0
/* 80B6E2A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6E2AC  4E 80 00 20 */	blr 
