lbl_8022BA3C:
/* 8022BA3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022BA40  7C 08 02 A6 */	mflr r0
/* 8022BA44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022BA48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022BA4C  93 C1 00 08 */	stw r30, 8(r1)
/* 8022BA50  7C 7E 1B 78 */	mr r30, r3
/* 8022BA54  83 E3 00 04 */	lwz r31, 4(r3)
/* 8022BA58  48 00 CB 1D */	bl getSelectWordFlag__12dMsgObject_cFv
/* 8022BA5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BA60  41 82 00 24 */	beq lbl_8022BA84
/* 8022BA64  48 00 CB 11 */	bl getSelectWordFlag__12dMsgObject_cFv
/* 8022BA68  98 7F 12 42 */	stb r3, 0x1242(r31)
/* 8022BA6C  38 60 00 00 */	li r3, 0
/* 8022BA70  98 7F 12 43 */	stb r3, 0x1243(r31)
/* 8022BA74  88 1F 12 74 */	lbz r0, 0x1274(r31)
/* 8022BA78  28 00 00 00 */	cmplwi r0, 0
/* 8022BA7C  40 82 00 08 */	bne lbl_8022BA84
/* 8022BA80  98 7F 12 44 */	stb r3, 0x1244(r31)
lbl_8022BA84:
/* 8022BA84  38 00 00 00 */	li r0, 0
/* 8022BA88  98 1E 00 B0 */	stb r0, 0xb0(r30)
/* 8022BA8C  88 1F 12 42 */	lbz r0, 0x1242(r31)
/* 8022BA90  28 00 00 02 */	cmplwi r0, 2
/* 8022BA94  40 82 00 28 */	bne lbl_8022BABC
/* 8022BA98  88 1F 12 43 */	lbz r0, 0x1243(r31)
/* 8022BA9C  28 00 00 00 */	cmplwi r0, 0
/* 8022BAA0  40 82 00 10 */	bne lbl_8022BAB0
/* 8022BAA4  38 00 00 02 */	li r0, 2
/* 8022BAA8  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 8022BAAC  48 00 00 6C */	b lbl_8022BB18
lbl_8022BAB0:
/* 8022BAB0  38 00 00 04 */	li r0, 4
/* 8022BAB4  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 8022BAB8  48 00 00 60 */	b lbl_8022BB18
lbl_8022BABC:
/* 8022BABC  28 00 00 03 */	cmplwi r0, 3
/* 8022BAC0  40 82 00 38 */	bne lbl_8022BAF8
/* 8022BAC4  88 1F 12 43 */	lbz r0, 0x1243(r31)
/* 8022BAC8  28 00 00 00 */	cmplwi r0, 0
/* 8022BACC  40 82 00 20 */	bne lbl_8022BAEC
/* 8022BAD0  7F E3 FB 78 */	mr r3, r31
/* 8022BAD4  4B FF D5 05 */	bl isMidona__19jmessage_tReferenceFv
/* 8022BAD8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022BADC  40 82 00 3C */	bne lbl_8022BB18
/* 8022BAE0  38 00 00 03 */	li r0, 3
/* 8022BAE4  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 8022BAE8  48 00 00 30 */	b lbl_8022BB18
lbl_8022BAEC:
/* 8022BAEC  38 00 00 05 */	li r0, 5
/* 8022BAF0  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 8022BAF4  48 00 00 24 */	b lbl_8022BB18
lbl_8022BAF8:
/* 8022BAF8  88 1F 12 4C */	lbz r0, 0x124c(r31)
/* 8022BAFC  28 00 00 05 */	cmplwi r0, 5
/* 8022BB00  40 82 00 10 */	bne lbl_8022BB10
/* 8022BB04  38 00 00 06 */	li r0, 6
/* 8022BB08  98 1F 12 4D */	stb r0, 0x124d(r31)
/* 8022BB0C  48 00 00 0C */	b lbl_8022BB18
lbl_8022BB10:
/* 8022BB10  38 00 00 07 */	li r0, 7
/* 8022BB14  98 1F 12 4D */	stb r0, 0x124d(r31)
lbl_8022BB18:
/* 8022BB18  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8022BB1C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8022BB20  88 03 5E B4 */	lbz r0, 0x5eb4(r3)
/* 8022BB24  28 00 00 00 */	cmplwi r0, 0
/* 8022BB28  41 82 00 0C */	beq lbl_8022BB34
/* 8022BB2C  38 00 00 00 */	li r0, 0
/* 8022BB30  98 03 5E B4 */	stb r0, 0x5eb4(r3)
lbl_8022BB34:
/* 8022BB34  88 1E 00 AF */	lbz r0, 0xaf(r30)
/* 8022BB38  28 00 00 FF */	cmplwi r0, 0xff
/* 8022BB3C  41 82 00 0C */	beq lbl_8022BB48
/* 8022BB40  38 00 00 FF */	li r0, 0xff
/* 8022BB44  98 1E 00 AF */	stb r0, 0xaf(r30)
lbl_8022BB48:
/* 8022BB48  88 1F 12 72 */	lbz r0, 0x1272(r31)
/* 8022BB4C  28 00 00 00 */	cmplwi r0, 0
/* 8022BB50  41 82 00 0C */	beq lbl_8022BB5C
/* 8022BB54  7F E3 FB 78 */	mr r3, r31
/* 8022BB58  4B FF DC F1 */	bl allsetCharCountBuffer__19jmessage_tReferenceFv
lbl_8022BB5C:
/* 8022BB5C  38 00 00 FF */	li r0, 0xff
/* 8022BB60  98 1F 05 DC */	stb r0, 0x5dc(r31)
/* 8022BB64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022BB68  83 C1 00 08 */	lwz r30, 8(r1)
/* 8022BB6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022BB70  7C 08 03 A6 */	mtlr r0
/* 8022BB74  38 21 00 10 */	addi r1, r1, 0x10
/* 8022BB78  4E 80 00 20 */	blr 
