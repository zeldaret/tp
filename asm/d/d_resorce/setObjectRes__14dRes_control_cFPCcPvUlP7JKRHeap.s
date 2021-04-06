lbl_8003C4E4:
/* 8003C4E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8003C4E8  7C 08 02 A6 */	mflr r0
/* 8003C4EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8003C4F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8003C4F4  48 32 5C DD */	bl _savegpr_26
/* 8003C4F8  7C 7A 1B 78 */	mr r26, r3
/* 8003C4FC  7C 9B 23 78 */	mr r27, r4
/* 8003C500  7C BC 2B 78 */	mr r28, r5
/* 8003C504  7C DD 33 78 */	mr r29, r6
/* 8003C508  7C FE 3B 78 */	mr r30, r7
/* 8003C50C  7F 63 DB 78 */	mr r3, r27
/* 8003C510  7F 44 D3 78 */	mr r4, r26
/* 8003C514  38 A0 00 80 */	li r5, 0x80
/* 8003C518  3C C0 80 38 */	lis r6, d_d_resorce__stringBase0@ha /* 0x803798B8@ha */
/* 8003C51C  38 C6 98 B8 */	addi r6, r6, d_d_resorce__stringBase0@l /* 0x803798B8@l */
/* 8003C520  38 C6 03 1E */	addi r6, r6, 0x31e
/* 8003C524  38 E0 00 00 */	li r7, 0
/* 8003C528  39 00 00 00 */	li r8, 0
/* 8003C52C  4B FF FB 4D */	bl setRes__14dRes_control_cFPCcP11dRes_info_ciPCcUcP7JKRHeap
/* 8003C530  2C 03 00 00 */	cmpwi r3, 0
/* 8003C534  40 82 00 0C */	bne lbl_8003C540
/* 8003C538  38 60 00 00 */	li r3, 0
/* 8003C53C  48 00 00 68 */	b lbl_8003C5A4
lbl_8003C540:
/* 8003C540  38 60 00 70 */	li r3, 0x70
/* 8003C544  48 29 27 09 */	bl __nw__FUl
/* 8003C548  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003C54C  41 82 00 18 */	beq lbl_8003C564
/* 8003C550  7F 84 E3 78 */	mr r4, r28
/* 8003C554  7F A5 EB 78 */	mr r5, r29
/* 8003C558  38 C0 00 00 */	li r6, 0
/* 8003C55C  48 29 A5 11 */	bl __ct__13JKRMemArchiveFPvUl15JKRMemBreakFlag
/* 8003C560  7C 7F 1B 78 */	mr r31, r3
lbl_8003C564:
/* 8003C564  28 1F 00 00 */	cmplwi r31, 0
/* 8003C568  41 82 00 10 */	beq lbl_8003C578
/* 8003C56C  88 1F 00 30 */	lbz r0, 0x30(r31)
/* 8003C570  28 00 00 00 */	cmplwi r0, 0
/* 8003C574  40 82 00 0C */	bne lbl_8003C580
lbl_8003C578:
/* 8003C578  38 60 00 00 */	li r3, 0
/* 8003C57C  48 00 00 28 */	b lbl_8003C5A4
lbl_8003C580:
/* 8003C580  7F 63 DB 78 */	mr r3, r27
/* 8003C584  7F 44 D3 78 */	mr r4, r26
/* 8003C588  38 A0 00 80 */	li r5, 0x80
/* 8003C58C  4B FF FC 59 */	bl getResInfo__14dRes_control_cFPCcP11dRes_info_ci
/* 8003C590  7F E4 FB 78 */	mr r4, r31
/* 8003C594  7F C5 F3 78 */	mr r5, r30
/* 8003C598  4B FF F5 2D */	bl setRes__11dRes_info_cFP10JKRArchiveP7JKRHeap
/* 8003C59C  7C 60 00 34 */	cntlzw r0, r3
/* 8003C5A0  54 03 D9 7E */	srwi r3, r0, 5
lbl_8003C5A4:
/* 8003C5A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8003C5A8  48 32 5C 75 */	bl _restgpr_26
/* 8003C5AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8003C5B0  7C 08 03 A6 */	mtlr r0
/* 8003C5B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8003C5B8  4E 80 00 20 */	blr 
