lbl_801B05A8:
/* 801B05A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B05AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B05B0  A0 03 01 6C */	lhz r0, 0x16c(r3)
/* 801B05B4  28 00 00 00 */	cmplwi r0, 0
/* 801B05B8  40 82 00 54 */	bne lbl_801B060C
/* 801B05BC  A0 03 01 6E */	lhz r0, 0x16e(r3)
/* 801B05C0  28 00 00 00 */	cmplwi r0, 0
/* 801B05C4  40 82 00 48 */	bne lbl_801B060C
/* 801B05C8  A0 03 01 70 */	lhz r0, 0x170(r3)
/* 801B05CC  28 00 00 00 */	cmplwi r0, 0
/* 801B05D0  40 82 00 3C */	bne lbl_801B060C
/* 801B05D4  A0 03 01 72 */	lhz r0, 0x172(r3)
/* 801B05D8  28 00 00 00 */	cmplwi r0, 0
/* 801B05DC  40 82 00 30 */	bne lbl_801B060C
/* 801B05E0  A0 03 01 74 */	lhz r0, 0x174(r3)
/* 801B05E4  28 00 00 00 */	cmplwi r0, 0
/* 801B05E8  40 82 00 24 */	bne lbl_801B060C
/* 801B05EC  A0 03 01 76 */	lhz r0, 0x176(r3)
/* 801B05F0  28 00 00 00 */	cmplwi r0, 0
/* 801B05F4  40 82 00 18 */	bne lbl_801B060C
/* 801B05F8  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B05FC  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B0600  88 03 09 D8 */	lbz r0, 0x9d8(r3)
/* 801B0604  28 00 00 00 */	cmplwi r0, 0
/* 801B0608  41 82 00 0C */	beq lbl_801B0614
lbl_801B060C:
/* 801B060C  38 60 00 01 */	li r3, 1
/* 801B0610  4E 80 00 20 */	blr 
lbl_801B0614:
/* 801B0614  38 60 00 00 */	li r3, 0
/* 801B0618  4E 80 00 20 */	blr 
