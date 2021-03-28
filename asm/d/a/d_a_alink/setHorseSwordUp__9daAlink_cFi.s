lbl_800EEE5C:
/* 800EEE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EEE60  7C 08 02 A6 */	mflr r0
/* 800EEE64  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EEE68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EEE6C  93 C1 00 08 */	stw r30, 8(r1)
/* 800EEE70  7C 7E 1B 78 */	mr r30, r3
/* 800EEE74  7C 9F 23 78 */	mr r31, r4
/* 800EEE78  81 83 06 28 */	lwz r12, 0x628(r3)
/* 800EEE7C  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 800EEE80  7D 89 03 A6 */	mtctr r12
/* 800EEE84  4E 80 04 21 */	bctrl 
/* 800EEE88  28 03 00 00 */	cmplwi r3, 0
/* 800EEE8C  41 82 00 80 */	beq lbl_800EEF0C
/* 800EEE90  7F C3 F3 78 */	mr r3, r30
/* 800EEE94  4B FC A3 C1 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800EEE98  2C 03 00 00 */	cmpwi r3, 0
/* 800EEE9C  41 82 00 70 */	beq lbl_800EEF0C
/* 800EEEA0  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800EEEA4  28 00 01 03 */	cmplwi r0, 0x103
/* 800EEEA8  40 82 00 64 */	bne lbl_800EEF0C
/* 800EEEAC  4B FF D8 C1 */	bl checkHorseZeldaBowMode__9daAlink_cFv
/* 800EEEB0  2C 03 00 00 */	cmpwi r3, 0
/* 800EEEB4  40 82 00 58 */	bne lbl_800EEF0C
/* 800EEEB8  2C 1F 00 00 */	cmpwi r31, 0
/* 800EEEBC  41 82 00 14 */	beq lbl_800EEED0
/* 800EEEC0  7F C3 F3 78 */	mr r3, r30
/* 800EEEC4  4B FF FF 6D */	bl checkHorseSwordUpSpped__9daAlink_cFv
/* 800EEEC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EEECC  40 82 00 28 */	bne lbl_800EEEF4
lbl_800EEED0:
/* 800EEED0  2C 1F 00 00 */	cmpwi r31, 0
/* 800EEED4  40 82 00 38 */	bne lbl_800EEF0C
/* 800EEED8  80 7E 27 EC */	lwz r3, 0x27ec(r30)
/* 800EEEDC  4B FE D6 6D */	bl checkEnemyGroup__9daAlink_cFP10fopAc_ac_c
/* 800EEEE0  2C 03 00 00 */	cmpwi r3, 0
/* 800EEEE4  41 82 00 28 */	beq lbl_800EEF0C
/* 800EEEE8  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800EEEEC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 800EEEF0  41 82 00 1C */	beq lbl_800EEF0C
lbl_800EEEF4:
/* 800EEEF4  7F C3 F3 78 */	mr r3, r30
/* 800EEEF8  4B FF E0 A5 */	bl setHorseSwordUpAnime__9daAlink_cFv
/* 800EEEFC  3C 60 80 39 */	lis r3, m__19daAlinkHIO_horse_c0@ha
/* 800EEF00  38 63 E5 A4 */	addi r3, r3, m__19daAlinkHIO_horse_c0@l
/* 800EEF04  A8 03 00 50 */	lha r0, 0x50(r3)
/* 800EEF08  B0 1E 30 02 */	sth r0, 0x3002(r30)
lbl_800EEF0C:
/* 800EEF0C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800EEF10  54 00 05 66 */	rlwinm r0, r0, 0, 0x15, 0x13
/* 800EEF14  90 1E 05 74 */	stw r0, 0x574(r30)
/* 800EEF18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EEF1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800EEF20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EEF24  7C 08 03 A6 */	mtlr r0
/* 800EEF28  38 21 00 10 */	addi r1, r1, 0x10
/* 800EEF2C  4E 80 00 20 */	blr 
