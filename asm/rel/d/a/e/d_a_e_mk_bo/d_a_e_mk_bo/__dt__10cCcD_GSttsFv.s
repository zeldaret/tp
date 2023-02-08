lbl_8071F59C:
/* 8071F59C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071F5A0  7C 08 02 A6 */	mflr r0
/* 8071F5A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071F5A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071F5AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8071F5B0  41 82 00 1C */	beq lbl_8071F5CC
/* 8071F5B4  3C A0 80 72 */	lis r5, __vt__10cCcD_GStts@ha /* 0x8071F7B8@ha */
/* 8071F5B8  38 05 F7 B8 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x8071F7B8@l */
/* 8071F5BC  90 1F 00 00 */	stw r0, 0(r31)
/* 8071F5C0  7C 80 07 35 */	extsh. r0, r4
/* 8071F5C4  40 81 00 08 */	ble lbl_8071F5CC
/* 8071F5C8  4B BA F7 75 */	bl __dl__FPv
lbl_8071F5CC:
/* 8071F5CC  7F E3 FB 78 */	mr r3, r31
/* 8071F5D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071F5D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071F5D8  7C 08 03 A6 */	mtlr r0
/* 8071F5DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8071F5E0  4E 80 00 20 */	blr 
