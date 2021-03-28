lbl_8009C964:
/* 8009C964  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8009C968  7C 08 02 A6 */	mflr r0
/* 8009C96C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009C970  39 61 00 20 */	addi r11, r1, 0x20
/* 8009C974  48 2C 58 61 */	bl _savegpr_27
/* 8009C978  7C 7B 1B 78 */	mr r27, r3
/* 8009C97C  7C BC 2B 78 */	mr r28, r5
/* 8009C980  83 E4 00 6C */	lwz r31, 0x6c(r4)
/* 8009C984  83 C4 00 70 */	lwz r30, 0x70(r4)
/* 8009C988  28 1F 00 00 */	cmplwi r31, 0
/* 8009C98C  41 82 00 74 */	beq lbl_8009CA00
/* 8009C990  28 1E 00 00 */	cmplwi r30, 0
/* 8009C994  41 82 00 6C */	beq lbl_8009CA00
/* 8009C998  3B A0 00 00 */	li r29, 0
/* 8009C99C  48 00 00 54 */	b lbl_8009C9F0
lbl_8009C9A0:
/* 8009C9A0  7F C3 F3 78 */	mr r3, r30
/* 8009C9A4  7F A4 EB 78 */	mr r4, r29
/* 8009C9A8  48 24 21 51 */	bl getName__10JUTNameTabCFUs
/* 8009C9AC  28 03 00 00 */	cmplwi r3, 0
/* 8009C9B0  41 82 00 3C */	beq lbl_8009C9EC
/* 8009C9B4  7F 84 E3 78 */	mr r4, r28
/* 8009C9B8  48 2C BF DD */	bl strcmp
/* 8009C9BC  2C 03 00 00 */	cmpwi r3, 0
/* 8009C9C0  40 82 00 2C */	bne lbl_8009C9EC
/* 8009C9C4  80 7F 00 04 */	lwz r3, 4(r31)
/* 8009C9C8  57 A0 2A F4 */	rlwinm r0, r29, 5, 0xb, 0x1a
/* 8009C9CC  7C 03 02 14 */	add r0, r3, r0
/* 8009C9D0  90 1B 00 04 */	stw r0, 4(r27)
/* 8009C9D4  80 7B 00 04 */	lwz r3, 4(r27)
/* 8009C9D8  A8 03 00 1A */	lha r0, 0x1a(r3)
/* 8009C9DC  B0 1B 00 08 */	sth r0, 8(r27)
/* 8009C9E0  7F 63 DB 78 */	mr r3, r27
/* 8009C9E4  48 00 01 31 */	bl entry__12dEyeHL_mng_cFP8dEyeHL_c
/* 8009C9E8  48 00 00 28 */	b lbl_8009CA10
lbl_8009C9EC:
/* 8009C9EC  3B BD 00 01 */	addi r29, r29, 1
lbl_8009C9F0:
/* 8009C9F0  57 A3 04 3E */	clrlwi r3, r29, 0x10
/* 8009C9F4  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8009C9F8  7C 03 00 40 */	cmplw r3, r0
/* 8009C9FC  41 80 FF A4 */	blt lbl_8009C9A0
lbl_8009CA00:
/* 8009CA00  3C 60 80 38 */	lis r3, d_d_eye_hl__stringBase0@ha
/* 8009CA04  38 63 B1 00 */	addi r3, r3, d_d_eye_hl__stringBase0@l
/* 8009CA08  4C C6 31 82 */	crclr 6
/* 8009CA0C  4B F6 A2 01 */	bl OSReport_Error
lbl_8009CA10:
/* 8009CA10  39 61 00 20 */	addi r11, r1, 0x20
/* 8009CA14  48 2C 58 0D */	bl _restgpr_27
/* 8009CA18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8009CA1C  7C 08 03 A6 */	mtlr r0
/* 8009CA20  38 21 00 20 */	addi r1, r1, 0x20
/* 8009CA24  4E 80 00 20 */	blr 
