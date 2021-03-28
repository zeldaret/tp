lbl_801EEAE4:
/* 801EEAE4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 801EEAE8  40 82 00 48 */	bne lbl_801EEB30
/* 801EEAEC  88 03 06 CC */	lbz r0, 0x6cc(r3)
/* 801EEAF0  28 00 00 24 */	cmplwi r0, 0x24
/* 801EEAF4  40 82 00 3C */	bne lbl_801EEB30
/* 801EEAF8  A8 83 06 8E */	lha r4, 0x68e(r3)
/* 801EEAFC  2C 04 00 00 */	cmpwi r4, 0
/* 801EEB00  40 81 00 24 */	ble lbl_801EEB24
/* 801EEB04  38 04 FF FF */	addi r0, r4, -1
/* 801EEB08  B0 03 06 8E */	sth r0, 0x68e(r3)
/* 801EEB0C  A8 03 06 8E */	lha r0, 0x68e(r3)
/* 801EEB10  2C 00 00 00 */	cmpwi r0, 0
/* 801EEB14  40 82 00 28 */	bne lbl_801EEB3C
/* 801EEB18  38 00 00 00 */	li r0, 0
/* 801EEB1C  98 03 06 CC */	stb r0, 0x6cc(r3)
/* 801EEB20  48 00 00 1C */	b lbl_801EEB3C
lbl_801EEB24:
/* 801EEB24  38 00 00 0A */	li r0, 0xa
/* 801EEB28  B0 03 06 8E */	sth r0, 0x68e(r3)
/* 801EEB2C  48 00 00 10 */	b lbl_801EEB3C
lbl_801EEB30:
/* 801EEB30  98 83 06 CC */	stb r4, 0x6cc(r3)
/* 801EEB34  38 00 00 00 */	li r0, 0
/* 801EEB38  B0 03 06 8E */	sth r0, 0x68e(r3)
lbl_801EEB3C:
/* 801EEB3C  88 03 06 CC */	lbz r0, 0x6cc(r3)
/* 801EEB40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801EEB44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801EEB48  98 03 5E 3C */	stb r0, 0x5e3c(r3)
/* 801EEB4C  38 00 00 00 */	li r0, 0
/* 801EEB50  98 03 5E 57 */	stb r0, 0x5e57(r3)
/* 801EEB54  4E 80 00 20 */	blr 
