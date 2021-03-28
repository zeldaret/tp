lbl_8067EEA8:
/* 8067EEA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067EEAC  7C 08 02 A6 */	mflr r0
/* 8067EEB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067EEB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067EEB8  7C 7F 1B 78 */	mr r31, r3
/* 8067EEBC  4B 99 9E 24 */	b fopAc_IsActor__FPv
/* 8067EEC0  2C 03 00 00 */	cmpwi r3, 0
/* 8067EEC4  41 82 00 44 */	beq lbl_8067EF08
/* 8067EEC8  A8 1F 00 08 */	lha r0, 8(r31)
/* 8067EECC  2C 00 00 FE */	cmpwi r0, 0xfe
/* 8067EED0  40 82 00 38 */	bne lbl_8067EF08
/* 8067EED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8067EED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8067EEDC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8067EEE0  54 00 03 19 */	rlwinm. r0, r0, 0, 0xc, 0xc
/* 8067EEE4  40 82 00 24 */	bne lbl_8067EF08
/* 8067EEE8  4B AE 09 B4 */	b checkBoomerangCharge__9daPy_py_cFv
/* 8067EEEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8067EEF0  41 82 00 18 */	beq lbl_8067EF08
/* 8067EEF4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8067EEF8  28 00 00 01 */	cmplwi r0, 1
/* 8067EEFC  40 82 00 0C */	bne lbl_8067EF08
/* 8067EF00  7F E3 FB 78 */	mr r3, r31
/* 8067EF04  48 00 00 08 */	b lbl_8067EF0C
lbl_8067EF08:
/* 8067EF08  38 60 00 00 */	li r3, 0
lbl_8067EF0C:
/* 8067EF0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067EF10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067EF14  7C 08 03 A6 */	mtlr r0
/* 8067EF18  38 21 00 10 */	addi r1, r1, 0x10
/* 8067EF1C  4E 80 00 20 */	blr 
