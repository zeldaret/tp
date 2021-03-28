lbl_80B4841C:
/* 80B4841C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B48420  7C 08 02 A6 */	mflr r0
/* 80B48424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B48428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4842C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B48430  41 82 00 1C */	beq lbl_80B4844C
/* 80B48434  3C A0 80 B5 */	lis r5, __vt__10cCcD_GStts@ha
/* 80B48438  38 05 99 9C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80B4843C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B48440  7C 80 07 35 */	extsh. r0, r4
/* 80B48444  40 81 00 08 */	ble lbl_80B4844C
/* 80B48448  4B 78 68 F4 */	b __dl__FPv
lbl_80B4844C:
/* 80B4844C  7F E3 FB 78 */	mr r3, r31
/* 80B48450  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B48454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B48458  7C 08 03 A6 */	mtlr r0
/* 80B4845C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B48460  4E 80 00 20 */	blr 
