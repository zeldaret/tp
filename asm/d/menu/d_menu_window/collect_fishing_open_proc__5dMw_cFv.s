lbl_801FB91C:
/* 801FB91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801FB920  7C 08 02 A6 */	mflr r0
/* 801FB924  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FB928  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801FB92C  7C 7F 1B 78 */	mr r31, r3
/* 801FB930  80 63 01 2C */	lwz r3, 0x12c(r3)
/* 801FB934  88 03 01 FA */	lbz r0, 0x1fa(r3)
/* 801FB938  28 00 00 01 */	cmplwi r0, 1
/* 801FB93C  40 82 00 30 */	bne lbl_801FB96C
/* 801FB940  4B FC 99 A5 */	bl _open__15dMenu_Fishing_cFv
/* 801FB944  88 1F 01 52 */	lbz r0, 0x152(r31)
/* 801FB948  28 00 00 00 */	cmplwi r0, 0
/* 801FB94C  40 82 00 20 */	bne lbl_801FB96C
/* 801FB950  80 7F 01 2C */	lwz r3, 0x12c(r31)
/* 801FB954  4B FC 98 B1 */	bl isSync__15dMenu_Fishing_cFv
/* 801FB958  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801FB95C  41 82 00 10 */	beq lbl_801FB96C
/* 801FB960  48 00 15 19 */	bl dMw_fade_in__5dMw_cFv
/* 801FB964  38 00 00 01 */	li r0, 1
/* 801FB968  98 1F 01 52 */	stb r0, 0x152(r31)
lbl_801FB96C:
/* 801FB96C  80 7F 01 2C */	lwz r3, 0x12c(r31)
/* 801FB970  88 03 01 FA */	lbz r0, 0x1fa(r3)
/* 801FB974  28 00 00 02 */	cmplwi r0, 2
/* 801FB978  40 82 00 20 */	bne lbl_801FB998
/* 801FB97C  88 1F 01 52 */	lbz r0, 0x152(r31)
/* 801FB980  28 00 00 01 */	cmplwi r0, 1
/* 801FB984  40 82 00 14 */	bne lbl_801FB998
/* 801FB988  38 00 00 17 */	li r0, 0x17
/* 801FB98C  98 1F 01 46 */	stb r0, 0x146(r31)
/* 801FB990  38 00 00 00 */	li r0, 0
/* 801FB994  98 1F 01 52 */	stb r0, 0x152(r31)
lbl_801FB998:
/* 801FB998  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801FB99C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FB9A0  7C 08 03 A6 */	mtlr r0
/* 801FB9A4  38 21 00 10 */	addi r1, r1, 0x10
/* 801FB9A8  4E 80 00 20 */	blr 
