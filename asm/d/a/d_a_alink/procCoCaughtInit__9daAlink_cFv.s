lbl_8011C904:
/* 8011C904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011C908  7C 08 02 A6 */	mflr r0
/* 8011C90C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8011C910  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8011C914  93 C1 00 08 */	stw r30, 8(r1)
/* 8011C918  7C 7E 1B 78 */	mr r30, r3
/* 8011C91C  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 8011C920  54 1F 03 5A */	rlwinm r31, r0, 0, 0xd, 0xd
/* 8011C924  38 80 01 53 */	li r4, 0x153
/* 8011C928  4B FA 64 7D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8011C92C  2C 03 00 00 */	cmpwi r3, 0
/* 8011C930  40 82 00 0C */	bne lbl_8011C93C
/* 8011C934  38 60 00 00 */	li r3, 0
/* 8011C938  48 00 00 80 */	b lbl_8011C9B8
lbl_8011C93C:
/* 8011C93C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 8011C940  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8011C944  41 82 00 20 */	beq lbl_8011C964
/* 8011C948  7F C3 F3 78 */	mr r3, r30
/* 8011C94C  38 80 00 3B */	li r4, 0x3b
/* 8011C950  3C A0 80 39 */	lis r5, m__25daAlinkHIO_wlDamCaught_c0@ha
/* 8011C954  38 A5 F3 B4 */	addi r5, r5, m__25daAlinkHIO_wlDamCaught_c0@l
/* 8011C958  C0 25 00 08 */	lfs f1, 8(r5)
/* 8011C95C  48 00 CD 4D */	bl setSingleAnimeWolfBaseMorf__9daAlink_cFQ29daAlink_c12daAlink_WANMf
/* 8011C960  48 00 00 1C */	b lbl_8011C97C
lbl_8011C964:
/* 8011C964  7F C3 F3 78 */	mr r3, r30
/* 8011C968  38 80 00 B9 */	li r4, 0xb9
/* 8011C96C  3C A0 80 39 */	lis r5, m__23daAlinkHIO_damCaught_c0@ha
/* 8011C970  38 A5 E4 9C */	addi r5, r5, m__23daAlinkHIO_damCaught_c0@l
/* 8011C974  C0 25 00 1C */	lfs f1, 0x1c(r5)
/* 8011C978  4B F9 06 39 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
lbl_8011C97C:
/* 8011C97C  28 1F 00 00 */	cmplwi r31, 0
/* 8011C980  41 82 00 10 */	beq lbl_8011C990
/* 8011C984  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 8011C988  64 00 00 04 */	oris r0, r0, 4
/* 8011C98C  90 1E 31 A0 */	stw r0, 0x31a0(r30)
lbl_8011C990:
/* 8011C990  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8011C994  D0 3E 33 98 */	stfs f1, 0x3398(r30)
/* 8011C998  D0 3E 04 FC */	stfs f1, 0x4fc(r30)
/* 8011C99C  7F C3 F3 78 */	mr r3, r30
/* 8011C9A0  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 8011C9A4  38 80 00 00 */	li r4, 0
/* 8011C9A8  4B F9 ED C9 */	bl setSpecialGravity__9daAlink_cFffi
/* 8011C9AC  38 00 00 00 */	li r0, 0
/* 8011C9B0  B0 1E 05 A0 */	sth r0, 0x5a0(r30)
/* 8011C9B4  38 60 00 01 */	li r3, 1
lbl_8011C9B8:
/* 8011C9B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8011C9BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8011C9C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8011C9C4  7C 08 03 A6 */	mtlr r0
/* 8011C9C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8011C9CC  4E 80 00 20 */	blr 
