lbl_80083244:
/* 80083244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80083248  7C 08 02 A6 */	mflr r0
/* 8008324C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80083250  39 61 00 20 */	addi r11, r1, 0x20
/* 80083254  48 2D EF 81 */	bl _savegpr_27
/* 80083258  7C 7B 1B 78 */	mr r27, r3
/* 8008325C  7C FC 3B 78 */	mr r28, r7
/* 80083260  88 03 00 C4 */	lbz r0, 0xc4(r3)
/* 80083264  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80083268  40 82 00 80 */	bne lbl_800832E8
/* 8008326C  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80083270  41 82 00 78 */	beq lbl_800832E8
/* 80083274  A0 04 00 00 */	lhz r0, 0(r4)
/* 80083278  80 9B 00 A0 */	lwz r4, 0xa0(r27)
/* 8008327C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80083280  1C 00 00 0A */	mulli r0, r0, 0xa
/* 80083284  7F E4 02 2E */	lhzx r31, r4, r0
/* 80083288  7C 84 02 14 */	add r4, r4, r0
/* 8008328C  A3 C4 00 02 */	lhz r30, 2(r4)
/* 80083290  A3 A4 00 04 */	lhz r29, 4(r4)
/* 80083294  7F 84 E3 78 */	mr r4, r28
/* 80083298  7F E5 FB 78 */	mr r5, r31
/* 8008329C  7F C6 F3 78 */	mr r6, r30
/* 800832A0  7F A7 EB 78 */	mr r7, r29
/* 800832A4  4B FF FD E9 */	bl CrrPosWork__6dBgWSvFP4cXyziii
/* 800832A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800832AC  41 82 00 3C */	beq lbl_800832E8
/* 800832B0  7F 63 DB 78 */	mr r3, r27
/* 800832B4  7F 84 E3 78 */	mr r4, r28
/* 800832B8  7F C5 F3 78 */	mr r5, r30
/* 800832BC  7F A6 EB 78 */	mr r6, r29
/* 800832C0  7F E7 FB 78 */	mr r7, r31
/* 800832C4  4B FF FD C9 */	bl CrrPosWork__6dBgWSvFP4cXyziii
/* 800832C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800832CC  41 82 00 1C */	beq lbl_800832E8
/* 800832D0  7F 63 DB 78 */	mr r3, r27
/* 800832D4  7F 84 E3 78 */	mr r4, r28
/* 800832D8  7F A5 EB 78 */	mr r5, r29
/* 800832DC  7F E6 FB 78 */	mr r6, r31
/* 800832E0  7F C7 F3 78 */	mr r7, r30
/* 800832E4  4B FF FD A9 */	bl CrrPosWork__6dBgWSvFP4cXyziii
lbl_800832E8:
/* 800832E8  39 61 00 20 */	addi r11, r1, 0x20
/* 800832EC  48 2D EF 35 */	bl _restgpr_27
/* 800832F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800832F4  7C 08 03 A6 */	mtlr r0
/* 800832F8  38 21 00 20 */	addi r1, r1, 0x20
/* 800832FC  4E 80 00 20 */	blr 
