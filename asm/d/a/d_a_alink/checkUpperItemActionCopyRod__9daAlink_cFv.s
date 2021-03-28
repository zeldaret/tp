lbl_800E1ADC:
/* 800E1ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1AE0  7C 08 02 A6 */	mflr r0
/* 800E1AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E1AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E1AEC  7C 7F 1B 78 */	mr r31, r3
/* 800E1AF0  A8 63 30 18 */	lha r3, 0x3018(r3)
/* 800E1AF4  2C 03 00 00 */	cmpwi r3, 0
/* 800E1AF8  41 82 00 0C */	beq lbl_800E1B04
/* 800E1AFC  38 03 FF FF */	addi r0, r3, -1
/* 800E1B00  B0 1F 30 18 */	sth r0, 0x3018(r31)
lbl_800E1B04:
/* 800E1B04  7F E3 FB 78 */	mr r3, r31
/* 800E1B08  4B FD 6E 29 */	bl checkReadyItem__9daAlink_cFv
/* 800E1B0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E1B10  41 82 00 84 */	beq lbl_800E1B94
/* 800E1B14  7F E3 FB 78 */	mr r3, r31
/* 800E1B18  4B FD 0A ED */	bl itemButton__9daAlink_cFv
/* 800E1B1C  2C 03 00 00 */	cmpwi r3, 0
/* 800E1B20  40 82 00 74 */	bne lbl_800E1B94
/* 800E1B24  38 60 00 00 */	li r3, 0
/* 800E1B28  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800E1B2C  28 00 00 46 */	cmplwi r0, 0x46
/* 800E1B30  40 82 00 14 */	bne lbl_800E1B44
/* 800E1B34  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800E1B38  28 00 00 54 */	cmplwi r0, 0x54
/* 800E1B3C  40 82 00 08 */	bne lbl_800E1B44
/* 800E1B40  38 60 00 01 */	li r3, 1
lbl_800E1B44:
/* 800E1B44  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E1B48  41 82 00 4C */	beq lbl_800E1B94
/* 800E1B4C  7F E3 FB 78 */	mr r3, r31
/* 800E1B50  38 80 00 53 */	li r4, 0x53
/* 800E1B54  38 A0 00 02 */	li r5, 2
/* 800E1B58  3C C0 80 39 */	lis r6, m__18daAlinkHIO_boom_c0@ha
/* 800E1B5C  38 C6 E6 C8 */	addi r6, r6, m__18daAlinkHIO_boom_c0@l
/* 800E1B60  4B FC BB 91 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800E1B64  7F E3 FB 78 */	mr r3, r31
/* 800E1B68  4B FF F7 C9 */	bl getCopyRodBallDisMax__9daAlink_cCFv
/* 800E1B6C  D0 3F 34 90 */	stfs f1, 0x3490(r31)
/* 800E1B70  88 1F 20 B0 */	lbz r0, 0x20b0(r31)
/* 800E1B74  28 00 00 00 */	cmplwi r0, 0
/* 800E1B78  40 82 00 14 */	bne lbl_800E1B8C
/* 800E1B7C  C0 3F 34 90 */	lfs f1, 0x3490(r31)
/* 800E1B80  C0 02 93 18 */	lfs f0, lit_7308(r2)
/* 800E1B84  EC 01 00 28 */	fsubs f0, f1, f0
/* 800E1B88  D0 1F 34 90 */	stfs f0, 0x3490(r31)
lbl_800E1B8C:
/* 800E1B8C  38 60 00 01 */	li r3, 1
/* 800E1B90  48 00 00 10 */	b lbl_800E1BA0
lbl_800E1B94:
/* 800E1B94  7F E3 FB 78 */	mr r3, r31
/* 800E1B98  38 80 00 00 */	li r4, 0
/* 800E1B9C  4B FD 56 51 */	bl cancelUpperItemReadyAnime__9daAlink_cFi
lbl_800E1BA0:
/* 800E1BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E1BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E1BA8  7C 08 03 A6 */	mtlr r0
/* 800E1BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 800E1BB0  4E 80 00 20 */	blr 
