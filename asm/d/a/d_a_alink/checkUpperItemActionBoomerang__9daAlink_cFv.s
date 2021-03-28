lbl_800E0A9C:
/* 800E0A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E0AA0  7C 08 02 A6 */	mflr r0
/* 800E0AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E0AA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E0AAC  7C 7F 1B 78 */	mr r31, r3
/* 800E0AB0  A8 83 30 18 */	lha r4, 0x3018(r3)
/* 800E0AB4  2C 04 00 00 */	cmpwi r4, 0
/* 800E0AB8  41 82 00 20 */	beq lbl_800E0AD8
/* 800E0ABC  38 04 FF FF */	addi r0, r4, -1
/* 800E0AC0  B0 1F 30 18 */	sth r0, 0x3018(r31)
/* 800E0AC4  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 800E0AC8  2C 00 00 00 */	cmpwi r0, 0
/* 800E0ACC  40 82 00 0C */	bne lbl_800E0AD8
/* 800E0AD0  38 80 00 00 */	li r4, 0
/* 800E0AD4  4B FD 66 BD */	bl cancelItemUseQuake__9daAlink_cFi
lbl_800E0AD8:
/* 800E0AD8  7F E3 FB 78 */	mr r3, r31
/* 800E0ADC  4B FD 7E 55 */	bl checkReadyItem__9daAlink_cFv
/* 800E0AE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E0AE4  41 82 00 54 */	beq lbl_800E0B38
/* 800E0AE8  7F E3 FB 78 */	mr r3, r31
/* 800E0AEC  4B FD 1B 19 */	bl itemButton__9daAlink_cFv
/* 800E0AF0  2C 03 00 00 */	cmpwi r3, 0
/* 800E0AF4  40 82 00 44 */	bne lbl_800E0B38
/* 800E0AF8  38 60 00 00 */	li r3, 0
/* 800E0AFC  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800E0B00  28 00 00 40 */	cmplwi r0, 0x40
/* 800E0B04  41 82 00 0C */	beq lbl_800E0B10
/* 800E0B08  28 00 01 02 */	cmplwi r0, 0x102
/* 800E0B0C  40 82 00 14 */	bne lbl_800E0B20
lbl_800E0B10:
/* 800E0B10  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800E0B14  28 00 00 54 */	cmplwi r0, 0x54
/* 800E0B18  40 82 00 08 */	bne lbl_800E0B20
/* 800E0B1C  38 60 00 01 */	li r3, 1
lbl_800E0B20:
/* 800E0B20  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E0B24  41 82 00 14 */	beq lbl_800E0B38
/* 800E0B28  7F E3 FB 78 */	mr r3, r31
/* 800E0B2C  4B FF FA BD */	bl setThrowBoomerangAnime__9daAlink_cFv
/* 800E0B30  38 60 00 01 */	li r3, 1
/* 800E0B34  48 00 00 10 */	b lbl_800E0B44
lbl_800E0B38:
/* 800E0B38  7F E3 FB 78 */	mr r3, r31
/* 800E0B3C  38 80 00 00 */	li r4, 0
/* 800E0B40  4B FD 66 AD */	bl cancelUpperItemReadyAnime__9daAlink_cFi
lbl_800E0B44:
/* 800E0B44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E0B48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E0B4C  7C 08 03 A6 */	mtlr r0
/* 800E0B50  38 21 00 10 */	addi r1, r1, 0x10
/* 800E0B54  4E 80 00 20 */	blr 
