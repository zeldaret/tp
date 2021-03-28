lbl_80CED580:
/* 80CED580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CED584  7C 08 02 A6 */	mflr r0
/* 80CED588  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CED58C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CED590  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CED594  41 82 00 30 */	beq lbl_80CED5C4
/* 80CED598  3C 60 80 CF */	lis r3, __vt__10dCcD_GStts@ha
/* 80CED59C  38 03 F1 48 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CED5A0  90 1F 00 00 */	stw r0, 0(r31)
/* 80CED5A4  41 82 00 10 */	beq lbl_80CED5B4
/* 80CED5A8  3C 60 80 CF */	lis r3, __vt__10cCcD_GStts@ha
/* 80CED5AC  38 03 F1 3C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CED5B0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CED5B4:
/* 80CED5B4  7C 80 07 35 */	extsh. r0, r4
/* 80CED5B8  40 81 00 0C */	ble lbl_80CED5C4
/* 80CED5BC  7F E3 FB 78 */	mr r3, r31
/* 80CED5C0  4B 5E 17 7C */	b __dl__FPv
lbl_80CED5C4:
/* 80CED5C4  7F E3 FB 78 */	mr r3, r31
/* 80CED5C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CED5CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CED5D0  7C 08 03 A6 */	mtlr r0
/* 80CED5D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CED5D8  4E 80 00 20 */	blr 
