lbl_802BAC74:
/* 802BAC74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802BAC78  7C 08 02 A6 */	mflr r0
/* 802BAC7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 802BAC80  39 61 00 40 */	addi r11, r1, 0x40
/* 802BAC84  48 0A 75 55 */	bl _savegpr_28
/* 802BAC88  7C 9C 23 78 */	mr r28, r4
/* 802BAC8C  7C DD 33 78 */	mr r29, r6
/* 802BAC90  38 00 00 00 */	li r0, 0
/* 802BAC94  3B C0 00 01 */	li r30, 1
/* 802BAC98  54 A4 06 3F */	clrlwi. r4, r5, 0x18
/* 802BAC9C  41 82 00 0C */	beq lbl_802BACA8
/* 802BACA0  38 00 00 02 */	li r0, 2
/* 802BACA4  3B C0 00 03 */	li r30, 3
lbl_802BACA8:
/* 802BACA8  54 04 15 BA */	rlwinm r4, r0, 2, 0x16, 0x1d
/* 802BACAC  7C A3 22 14 */	add r5, r3, r4
/* 802BACB0  80 85 00 04 */	lwz r4, 4(r5)
/* 802BACB4  28 04 00 00 */	cmplwi r4, 0
/* 802BACB8  41 82 01 4C */	beq lbl_802BAE04
/* 802BACBC  57 C4 15 BA */	rlwinm r4, r30, 2, 0x16, 0x1d
/* 802BACC0  7F E3 22 14 */	add r31, r3, r4
/* 802BACC4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802BACC8  28 03 00 00 */	cmplwi r3, 0
/* 802BACCC  40 82 00 08 */	bne lbl_802BACD4
/* 802BACD0  48 00 01 34 */	b lbl_802BAE04
lbl_802BACD4:
/* 802BACD4  88 7C 00 00 */	lbz r3, 0(r28)
/* 802BACD8  98 61 00 08 */	stb r3, 8(r1)
/* 802BACDC  88 7C 00 01 */	lbz r3, 1(r28)
/* 802BACE0  B0 61 00 0A */	sth r3, 0xa(r1)
/* 802BACE4  88 7C 00 02 */	lbz r3, 2(r28)
/* 802BACE8  B0 61 00 0E */	sth r3, 0xe(r1)
/* 802BACEC  57 A3 06 3F */	clrlwi. r3, r29, 0x18
/* 802BACF0  41 82 00 14 */	beq lbl_802BAD04
/* 802BACF4  38 60 00 00 */	li r3, 0
/* 802BACF8  B0 61 00 0C */	sth r3, 0xc(r1)
/* 802BACFC  B0 61 00 10 */	sth r3, 0x10(r1)
/* 802BAD00  48 00 00 14 */	b lbl_802BAD14
lbl_802BAD04:
/* 802BAD04  A8 7C 00 04 */	lha r3, 4(r28)
/* 802BAD08  B0 61 00 0C */	sth r3, 0xc(r1)
/* 802BAD0C  A8 7C 00 06 */	lha r3, 6(r28)
/* 802BAD10  B0 61 00 10 */	sth r3, 0x10(r1)
lbl_802BAD14:
/* 802BAD14  88 7C 00 03 */	lbz r3, 3(r28)
/* 802BAD18  90 61 00 14 */	stw r3, 0x14(r1)
/* 802BAD1C  A8 7C 00 08 */	lha r3, 8(r28)
/* 802BAD20  B0 61 00 18 */	sth r3, 0x18(r1)
/* 802BAD24  A8 7C 00 0A */	lha r3, 0xa(r28)
/* 802BAD28  B0 61 00 1A */	sth r3, 0x1a(r1)
/* 802BAD2C  A8 7C 00 0C */	lha r3, 0xc(r28)
/* 802BAD30  B0 61 00 1C */	sth r3, 0x1c(r1)
/* 802BAD34  A8 7C 00 0E */	lha r3, 0xe(r28)
/* 802BAD38  B0 61 00 1E */	sth r3, 0x1e(r1)
/* 802BAD3C  A8 7C 00 10 */	lha r3, 0x10(r28)
/* 802BAD40  B0 61 00 20 */	sth r3, 0x20(r1)
/* 802BAD44  A8 7C 00 12 */	lha r3, 0x12(r28)
/* 802BAD48  B0 61 00 22 */	sth r3, 0x22(r1)
/* 802BAD4C  A8 7C 00 14 */	lha r3, 0x14(r28)
/* 802BAD50  B0 61 00 24 */	sth r3, 0x24(r1)
/* 802BAD54  A8 7C 00 16 */	lha r3, 0x16(r28)
/* 802BAD58  B0 61 00 26 */	sth r3, 0x26(r1)
/* 802BAD5C  7C 03 03 78 */	mr r3, r0
/* 802BAD60  80 85 00 04 */	lwz r4, 4(r5)
/* 802BAD64  38 A1 00 08 */	addi r5, r1, 8
/* 802BAD68  4B FE 2E 11 */	bl setFXLine__6JASDspFUcPsPQ26JASDsp13FxlineConfig_
/* 802BAD6C  88 1C 00 18 */	lbz r0, 0x18(r28)
/* 802BAD70  98 01 00 08 */	stb r0, 8(r1)
/* 802BAD74  88 1C 00 19 */	lbz r0, 0x19(r28)
/* 802BAD78  B0 01 00 0A */	sth r0, 0xa(r1)
/* 802BAD7C  88 1C 00 1A */	lbz r0, 0x1a(r28)
/* 802BAD80  B0 01 00 0E */	sth r0, 0xe(r1)
/* 802BAD84  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 802BAD88  41 82 00 14 */	beq lbl_802BAD9C
/* 802BAD8C  38 00 00 00 */	li r0, 0
/* 802BAD90  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802BAD94  B0 01 00 10 */	sth r0, 0x10(r1)
/* 802BAD98  48 00 00 14 */	b lbl_802BADAC
lbl_802BAD9C:
/* 802BAD9C  A8 1C 00 1C */	lha r0, 0x1c(r28)
/* 802BADA0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 802BADA4  A8 1C 00 1E */	lha r0, 0x1e(r28)
/* 802BADA8  B0 01 00 10 */	sth r0, 0x10(r1)
lbl_802BADAC:
/* 802BADAC  88 1C 00 1B */	lbz r0, 0x1b(r28)
/* 802BADB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BADB4  A8 1C 00 20 */	lha r0, 0x20(r28)
/* 802BADB8  B0 01 00 18 */	sth r0, 0x18(r1)
/* 802BADBC  A8 1C 00 22 */	lha r0, 0x22(r28)
/* 802BADC0  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 802BADC4  A8 1C 00 24 */	lha r0, 0x24(r28)
/* 802BADC8  B0 01 00 1C */	sth r0, 0x1c(r1)
/* 802BADCC  A8 1C 00 26 */	lha r0, 0x26(r28)
/* 802BADD0  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 802BADD4  A8 1C 00 28 */	lha r0, 0x28(r28)
/* 802BADD8  B0 01 00 20 */	sth r0, 0x20(r1)
/* 802BADDC  A8 1C 00 2A */	lha r0, 0x2a(r28)
/* 802BADE0  B0 01 00 22 */	sth r0, 0x22(r1)
/* 802BADE4  A8 1C 00 2C */	lha r0, 0x2c(r28)
/* 802BADE8  B0 01 00 24 */	sth r0, 0x24(r1)
/* 802BADEC  A8 1C 00 2E */	lha r0, 0x2e(r28)
/* 802BADF0  B0 01 00 26 */	sth r0, 0x26(r1)
/* 802BADF4  7F C3 F3 78 */	mr r3, r30
/* 802BADF8  80 9F 00 04 */	lwz r4, 4(r31)
/* 802BADFC  38 A1 00 08 */	addi r5, r1, 8
/* 802BAE00  4B FE 2D 79 */	bl setFXLine__6JASDspFUcPsPQ26JASDsp13FxlineConfig_
lbl_802BAE04:
/* 802BAE04  39 61 00 40 */	addi r11, r1, 0x40
/* 802BAE08  48 0A 74 1D */	bl _restgpr_28
/* 802BAE0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802BAE10  7C 08 03 A6 */	mtlr r0
/* 802BAE14  38 21 00 40 */	addi r1, r1, 0x40
/* 802BAE18  4E 80 00 20 */	blr 
