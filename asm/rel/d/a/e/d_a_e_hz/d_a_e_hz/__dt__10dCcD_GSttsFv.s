lbl_806F018C:
/* 806F018C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F0190  7C 08 02 A6 */	mflr r0
/* 806F0194  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F0198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F019C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F01A0  41 82 00 30 */	beq lbl_806F01D0
/* 806F01A4  3C 60 80 6F */	lis r3, __vt__10dCcD_GStts@ha
/* 806F01A8  38 03 0A D0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 806F01AC  90 1F 00 00 */	stw r0, 0(r31)
/* 806F01B0  41 82 00 10 */	beq lbl_806F01C0
/* 806F01B4  3C 60 80 6F */	lis r3, __vt__10cCcD_GStts@ha
/* 806F01B8  38 03 0A C4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 806F01BC  90 1F 00 00 */	stw r0, 0(r31)
lbl_806F01C0:
/* 806F01C0  7C 80 07 35 */	extsh. r0, r4
/* 806F01C4  40 81 00 0C */	ble lbl_806F01D0
/* 806F01C8  7F E3 FB 78 */	mr r3, r31
/* 806F01CC  4B BD EB 70 */	b __dl__FPv
lbl_806F01D0:
/* 806F01D0  7F E3 FB 78 */	mr r3, r31
/* 806F01D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F01D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F01DC  7C 08 03 A6 */	mtlr r0
/* 806F01E0  38 21 00 10 */	addi r1, r1, 0x10
/* 806F01E4  4E 80 00 20 */	blr 
