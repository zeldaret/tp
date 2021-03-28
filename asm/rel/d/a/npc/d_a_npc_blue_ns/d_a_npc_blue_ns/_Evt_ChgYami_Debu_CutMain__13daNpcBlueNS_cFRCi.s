lbl_8096B8F8:
/* 8096B8F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096B8FC  7C 08 02 A6 */	mflr r0
/* 8096B900  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096B904  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8096B908  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8096B90C  7C 7E 1B 78 */	mr r30, r3
/* 8096B910  3B E0 00 00 */	li r31, 0
/* 8096B914  80 04 00 00 */	lwz r0, 0(r4)
/* 8096B918  2C 00 00 14 */	cmpwi r0, 0x14
/* 8096B91C  41 82 00 5C */	beq lbl_8096B978
/* 8096B920  40 80 00 10 */	bge lbl_8096B930
/* 8096B924  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096B928  41 82 00 14 */	beq lbl_8096B93C
/* 8096B92C  48 00 00 E0 */	b lbl_8096BA0C
lbl_8096B930:
/* 8096B930  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8096B934  41 82 00 88 */	beq lbl_8096B9BC
/* 8096B938  48 00 00 D4 */	b lbl_8096BA0C
lbl_8096B93C:
/* 8096B93C  80 9E 0E 00 */	lwz r4, 0xe00(r30)
/* 8096B940  3C 04 00 01 */	addis r0, r4, 1
/* 8096B944  28 00 FF FF */	cmplwi r0, 0xffff
/* 8096B948  40 82 00 28 */	bne lbl_8096B970
/* 8096B94C  38 80 00 00 */	li r4, 0
/* 8096B950  4B FF DB B5 */	bl create_Yamijin__13daNpcBlueNS_cFi
/* 8096B954  90 7E 0E 00 */	stw r3, 0xe00(r30)
/* 8096B958  80 7E 0E 00 */	lwz r3, 0xe00(r30)
/* 8096B95C  3C 03 00 01 */	addis r0, r3, 1
/* 8096B960  28 00 FF FF */	cmplwi r0, 0xffff
/* 8096B964  41 82 00 A8 */	beq lbl_8096BA0C
/* 8096B968  3B E0 00 01 */	li r31, 1
/* 8096B96C  48 00 00 A0 */	b lbl_8096BA0C
lbl_8096B970:
/* 8096B970  3B E0 00 01 */	li r31, 1
/* 8096B974  48 00 00 98 */	b lbl_8096BA0C
lbl_8096B978:
/* 8096B978  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 8096B97C  38 A0 00 01 */	li r5, 1
/* 8096B980  88 04 00 11 */	lbz r0, 0x11(r4)
/* 8096B984  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8096B988  40 82 00 1C */	bne lbl_8096B9A4
/* 8096B98C  3C 60 80 97 */	lis r3, lit_4393@ha
/* 8096B990  C0 23 C9 F4 */	lfs f1, lit_4393@l(r3)
/* 8096B994  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 8096B998  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8096B99C  41 82 00 08 */	beq lbl_8096B9A4
/* 8096B9A0  38 A0 00 00 */	li r5, 0
lbl_8096B9A4:
/* 8096B9A4  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 8096B9A8  41 82 00 64 */	beq lbl_8096BA0C
/* 8096B9AC  7F C3 F3 78 */	mr r3, r30
/* 8096B9B0  4B FF F8 55 */	bl ChgPtclDisp__13daNpcBlueNS_cFv
/* 8096B9B4  3B E0 00 01 */	li r31, 1
/* 8096B9B8  48 00 00 54 */	b lbl_8096BA0C
lbl_8096B9BC:
/* 8096B9BC  80 1E 0E 00 */	lwz r0, 0xe00(r30)
/* 8096B9C0  90 01 00 08 */	stw r0, 8(r1)
/* 8096B9C4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8096B9C8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8096B9CC  38 81 00 08 */	addi r4, r1, 8
/* 8096B9D0  4B 6A DE 28 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8096B9D4  90 7E 0D FC */	stw r3, 0xdfc(r30)
/* 8096B9D8  80 7E 0D FC */	lwz r3, 0xdfc(r30)
/* 8096B9DC  28 03 00 00 */	cmplwi r3, 0
/* 8096B9E0  41 82 00 2C */	beq lbl_8096BA0C
/* 8096B9E4  38 00 00 00 */	li r0, 0
/* 8096B9E8  98 03 0F 81 */	stb r0, 0xf81(r3)
/* 8096B9EC  80 7E 0D FC */	lwz r3, 0xdfc(r30)
/* 8096B9F0  80 03 0E 70 */	lwz r0, 0xe70(r3)
/* 8096B9F4  60 00 00 01 */	ori r0, r0, 1
/* 8096B9F8  90 03 0E 70 */	stw r0, 0xe70(r3)
/* 8096B9FC  80 03 0E 5C */	lwz r0, 0xe5c(r3)
/* 8096BA00  60 00 00 01 */	ori r0, r0, 1
/* 8096BA04  90 03 0E 5C */	stw r0, 0xe5c(r3)
/* 8096BA08  3B E0 00 01 */	li r31, 1
lbl_8096BA0C:
/* 8096BA0C  7F E3 FB 78 */	mr r3, r31
/* 8096BA10  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8096BA14  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8096BA18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096BA1C  7C 08 03 A6 */	mtlr r0
/* 8096BA20  38 21 00 20 */	addi r1, r1, 0x20
/* 8096BA24  4E 80 00 20 */	blr 
