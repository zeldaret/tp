lbl_80B713F4:
/* 80B713F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B713F8  7C 08 02 A6 */	mflr r0
/* 80B713FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B71400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B71404  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B71408  41 82 00 30 */	beq lbl_80B71438
/* 80B7140C  3C 60 80 B7 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80B71D80@ha */
/* 80B71410  38 03 1D 80 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80B71D80@l */
/* 80B71414  90 1F 00 00 */	stw r0, 0(r31)
/* 80B71418  41 82 00 10 */	beq lbl_80B71428
/* 80B7141C  3C 60 80 B7 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80B71D74@ha */
/* 80B71420  38 03 1D 74 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80B71D74@l */
/* 80B71424  90 1F 00 00 */	stw r0, 0(r31)
lbl_80B71428:
/* 80B71428  7C 80 07 35 */	extsh. r0, r4
/* 80B7142C  40 81 00 0C */	ble lbl_80B71438
/* 80B71430  7F E3 FB 78 */	mr r3, r31
/* 80B71434  4B 75 D9 09 */	bl __dl__FPv
lbl_80B71438:
/* 80B71438  7F E3 FB 78 */	mr r3, r31
/* 80B7143C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B71440  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B71444  7C 08 03 A6 */	mtlr r0
/* 80B71448  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7144C  4E 80 00 20 */	blr 
