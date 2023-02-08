lbl_8007D8E8:
/* 8007D8E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8007D8EC  7C 08 02 A6 */	mflr r0
/* 8007D8F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8007D8F4  39 61 00 20 */	addi r11, r1, 0x20
/* 8007D8F8  48 2E 48 DD */	bl _savegpr_27
/* 8007D8FC  7C 7E 1B 78 */	mr r30, r3
/* 8007D900  7C 9F 23 78 */	mr r31, r4
/* 8007D904  7C BB 2B 78 */	mr r27, r5
/* 8007D908  38 9F 00 2C */	addi r4, r31, 0x2c
/* 8007D90C  80 63 00 AC */	lwz r3, 0xac(r3)
/* 8007D910  1C 1B 00 1C */	mulli r0, r27, 0x1c
/* 8007D914  7C 63 02 14 */	add r3, r3, r0
/* 8007D918  48 1E B0 D1 */	bl cM3d_Cross_AabAab__FPC8cM3dGAabPC8cM3dGAab
/* 8007D91C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8007D920  41 82 00 CC */	beq lbl_8007D9EC
/* 8007D924  80 7E 00 A0 */	lwz r3, 0xa0(r30)
/* 8007D928  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 8007D92C  1C 1B 00 14 */	mulli r0, r27, 0x14
/* 8007D930  7F 83 02 14 */	add r28, r3, r0
/* 8007D934  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8007D938  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8007D93C  41 82 00 7C */	beq lbl_8007D9B8
/* 8007D940  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 8007D944  A0 1C 00 04 */	lhz r0, 4(r28)
/* 8007D948  1C 00 00 06 */	mulli r0, r0, 6
/* 8007D94C  7C 63 02 14 */	add r3, r3, r0
/* 8007D950  A0 83 00 02 */	lhz r4, 2(r3)
/* 8007D954  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007D958  41 82 00 10 */	beq lbl_8007D968
/* 8007D95C  7F C3 F3 78 */	mr r3, r30
/* 8007D960  7F E5 FB 78 */	mr r5, r31
/* 8007D964  4B FF FE F5 */	bl RwgCaptPoly__4dBgWFiR13dBgS_CaptPoly
lbl_8007D968:
/* 8007D968  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 8007D96C  A0 1C 00 04 */	lhz r0, 4(r28)
/* 8007D970  1C 00 00 06 */	mulli r0, r0, 6
/* 8007D974  7C 83 02 2E */	lhzx r4, r3, r0
/* 8007D978  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007D97C  41 82 00 10 */	beq lbl_8007D98C
/* 8007D980  7F C3 F3 78 */	mr r3, r30
/* 8007D984  7F E5 FB 78 */	mr r5, r31
/* 8007D988  4B FF FE D1 */	bl RwgCaptPoly__4dBgWFiR13dBgS_CaptPoly
lbl_8007D98C:
/* 8007D98C  80 7E 00 A4 */	lwz r3, 0xa4(r30)
/* 8007D990  A0 1C 00 04 */	lhz r0, 4(r28)
/* 8007D994  1C 00 00 06 */	mulli r0, r0, 6
/* 8007D998  7C 63 02 14 */	add r3, r3, r0
/* 8007D99C  A0 83 00 04 */	lhz r4, 4(r3)
/* 8007D9A0  28 04 FF FF */	cmplwi r4, 0xffff
/* 8007D9A4  41 82 00 48 */	beq lbl_8007D9EC
/* 8007D9A8  7F C3 F3 78 */	mr r3, r30
/* 8007D9AC  7F E5 FB 78 */	mr r5, r31
/* 8007D9B0  4B FF FE A9 */	bl RwgCaptPoly__4dBgWFiR13dBgS_CaptPoly
/* 8007D9B4  48 00 00 38 */	b lbl_8007D9EC
lbl_8007D9B8:
/* 8007D9B8  3B 60 00 00 */	li r27, 0
/* 8007D9BC  3B A0 00 00 */	li r29, 0
lbl_8007D9C0:
/* 8007D9C0  38 1D 00 04 */	addi r0, r29, 4
/* 8007D9C4  7C BC 02 2E */	lhzx r5, r28, r0
/* 8007D9C8  28 05 FF FF */	cmplwi r5, 0xffff
/* 8007D9CC  41 82 00 10 */	beq lbl_8007D9DC
/* 8007D9D0  7F C3 F3 78 */	mr r3, r30
/* 8007D9D4  7F E4 FB 78 */	mr r4, r31
/* 8007D9D8  4B FF FF 11 */	bl CaptPolyRp__4dBgWFR13dBgS_CaptPolyi
lbl_8007D9DC:
/* 8007D9DC  3B 7B 00 01 */	addi r27, r27, 1
/* 8007D9E0  2C 1B 00 08 */	cmpwi r27, 8
/* 8007D9E4  3B BD 00 02 */	addi r29, r29, 2
/* 8007D9E8  41 80 FF D8 */	blt lbl_8007D9C0
lbl_8007D9EC:
/* 8007D9EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8007D9F0  48 2E 48 31 */	bl _restgpr_27
/* 8007D9F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8007D9F8  7C 08 03 A6 */	mtlr r0
/* 8007D9FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8007DA00  4E 80 00 20 */	blr 
