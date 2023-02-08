lbl_8008351C:
/* 8008351C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80083520  7C 08 02 A6 */	mflr r0
/* 80083524  90 01 00 24 */	stw r0, 0x24(r1)
/* 80083528  39 61 00 20 */	addi r11, r1, 0x20
/* 8008352C  48 2D EC A9 */	bl _savegpr_27
/* 80083530  7C 7B 1B 78 */	mr r27, r3
/* 80083534  7C FC 3B 78 */	mr r28, r7
/* 80083538  88 03 00 C4 */	lbz r0, 0xc4(r3)
/* 8008353C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80083540  40 82 00 80 */	bne lbl_800835C0
/* 80083544  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 80083548  41 82 00 78 */	beq lbl_800835C0
/* 8008354C  A0 04 00 00 */	lhz r0, 0(r4)
/* 80083550  80 9B 00 A0 */	lwz r4, 0xa0(r27)
/* 80083554  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80083558  1C 00 00 0A */	mulli r0, r0, 0xa
/* 8008355C  7F E4 02 2E */	lhzx r31, r4, r0
/* 80083560  7C 84 02 14 */	add r4, r4, r0
/* 80083564  A3 C4 00 02 */	lhz r30, 2(r4)
/* 80083568  A3 A4 00 04 */	lhz r29, 4(r4)
/* 8008356C  7F 84 E3 78 */	mr r4, r28
/* 80083570  7F E5 FB 78 */	mr r5, r31
/* 80083574  7F C6 F3 78 */	mr r6, r30
/* 80083578  7F A7 EB 78 */	mr r7, r29
/* 8008357C  4B FF FD 85 */	bl TransPosWork__6dBgWSvFP4cXyziii
/* 80083580  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80083584  41 82 00 3C */	beq lbl_800835C0
/* 80083588  7F 63 DB 78 */	mr r3, r27
/* 8008358C  7F 84 E3 78 */	mr r4, r28
/* 80083590  7F C5 F3 78 */	mr r5, r30
/* 80083594  7F A6 EB 78 */	mr r6, r29
/* 80083598  7F E7 FB 78 */	mr r7, r31
/* 8008359C  4B FF FD 65 */	bl TransPosWork__6dBgWSvFP4cXyziii
/* 800835A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800835A4  41 82 00 1C */	beq lbl_800835C0
/* 800835A8  7F 63 DB 78 */	mr r3, r27
/* 800835AC  7F 84 E3 78 */	mr r4, r28
/* 800835B0  7F A5 EB 78 */	mr r5, r29
/* 800835B4  7F E6 FB 78 */	mr r6, r31
/* 800835B8  7F C7 F3 78 */	mr r7, r30
/* 800835BC  4B FF FD 45 */	bl TransPosWork__6dBgWSvFP4cXyziii
lbl_800835C0:
/* 800835C0  39 61 00 20 */	addi r11, r1, 0x20
/* 800835C4  48 2D EC 5D */	bl _restgpr_27
/* 800835C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800835CC  7C 08 03 A6 */	mtlr r0
/* 800835D0  38 21 00 20 */	addi r1, r1, 0x20
/* 800835D4  4E 80 00 20 */	blr 
