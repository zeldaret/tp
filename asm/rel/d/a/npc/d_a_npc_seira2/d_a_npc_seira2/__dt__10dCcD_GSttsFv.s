lbl_80AD41AC:
/* 80AD41AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD41B0  7C 08 02 A6 */	mflr r0
/* 80AD41B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD41B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD41BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD41C0  41 82 00 30 */	beq lbl_80AD41F0
/* 80AD41C4  3C 60 80 AD */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AD54E8@ha */
/* 80AD41C8  38 03 54 E8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AD54E8@l */
/* 80AD41CC  90 1F 00 00 */	stw r0, 0(r31)
/* 80AD41D0  41 82 00 10 */	beq lbl_80AD41E0
/* 80AD41D4  3C 60 80 AD */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AD54DC@ha */
/* 80AD41D8  38 03 54 DC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AD54DC@l */
/* 80AD41DC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AD41E0:
/* 80AD41E0  7C 80 07 35 */	extsh. r0, r4
/* 80AD41E4  40 81 00 0C */	ble lbl_80AD41F0
/* 80AD41E8  7F E3 FB 78 */	mr r3, r31
/* 80AD41EC  4B 7F AB 51 */	bl __dl__FPv
lbl_80AD41F0:
/* 80AD41F0  7F E3 FB 78 */	mr r3, r31
/* 80AD41F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD41F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD41FC  7C 08 03 A6 */	mtlr r0
/* 80AD4200  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD4204  4E 80 00 20 */	blr 
