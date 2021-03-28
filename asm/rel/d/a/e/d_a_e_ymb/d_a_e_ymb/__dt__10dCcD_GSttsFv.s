lbl_8082139C:
/* 8082139C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808213A0  7C 08 02 A6 */	mflr r0
/* 808213A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 808213A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808213AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 808213B0  41 82 00 30 */	beq lbl_808213E0
/* 808213B4  3C 60 80 82 */	lis r3, __vt__10dCcD_GStts@ha
/* 808213B8  38 03 1D D0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 808213BC  90 1F 00 00 */	stw r0, 0(r31)
/* 808213C0  41 82 00 10 */	beq lbl_808213D0
/* 808213C4  3C 60 80 82 */	lis r3, __vt__10cCcD_GStts@ha
/* 808213C8  38 03 1D C4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 808213CC  90 1F 00 00 */	stw r0, 0(r31)
lbl_808213D0:
/* 808213D0  7C 80 07 35 */	extsh. r0, r4
/* 808213D4  40 81 00 0C */	ble lbl_808213E0
/* 808213D8  7F E3 FB 78 */	mr r3, r31
/* 808213DC  4B AA D9 60 */	b __dl__FPv
lbl_808213E0:
/* 808213E0  7F E3 FB 78 */	mr r3, r31
/* 808213E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 808213E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808213EC  7C 08 03 A6 */	mtlr r0
/* 808213F0  38 21 00 10 */	addi r1, r1, 0x10
/* 808213F4  4E 80 00 20 */	blr 
