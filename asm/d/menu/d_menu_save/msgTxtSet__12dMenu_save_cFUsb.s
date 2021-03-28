lbl_801F34BC:
/* 801F34BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F34C0  7C 08 02 A6 */	mflr r0
/* 801F34C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F34C8  39 61 00 20 */	addi r11, r1, 0x20
/* 801F34CC  48 16 ED 11 */	bl _savegpr_29
/* 801F34D0  7C 7D 1B 78 */	mr r29, r3
/* 801F34D4  7C 9E 23 78 */	mr r30, r4
/* 801F34D8  7C BF 2B 78 */	mr r31, r5
/* 801F34DC  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 801F34E0  28 04 FF FF */	cmplwi r4, 0xffff
/* 801F34E4  41 82 00 84 */	beq lbl_801F3568
/* 801F34E8  80 7D 21 8C */	lwz r3, 0x218c(r29)
/* 801F34EC  28 03 00 00 */	cmplwi r3, 0
/* 801F34F0  40 82 00 0C */	bne lbl_801F34FC
/* 801F34F4  38 60 00 00 */	li r3, 0
/* 801F34F8  48 00 00 50 */	b lbl_801F3548
lbl_801F34FC:
/* 801F34FC  88 1D 21 90 */	lbz r0, 0x2190(r29)
/* 801F3500  28 00 00 01 */	cmplwi r0, 1
/* 801F3504  40 82 00 30 */	bne lbl_801F3534
/* 801F3508  38 A0 00 01 */	li r5, 1
/* 801F350C  88 1D 01 B6 */	lbz r0, 0x1b6(r29)
/* 801F3510  7C 00 00 34 */	cntlzw r0, r0
/* 801F3514  54 06 DE 3E */	rlwinm r6, r0, 0x1b, 0x18, 0x1f
/* 801F3518  38 E0 00 FF */	li r7, 0xff
/* 801F351C  7F E8 FB 78 */	mr r8, r31
/* 801F3520  48 04 B0 39 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
/* 801F3524  38 00 00 1E */	li r0, 0x1e
/* 801F3528  80 9D 21 8C */	lwz r4, 0x218c(r29)
/* 801F352C  B0 04 00 5E */	sth r0, 0x5e(r4)
/* 801F3530  48 00 00 18 */	b lbl_801F3548
lbl_801F3534:
/* 801F3534  38 A0 00 00 */	li r5, 0
/* 801F3538  38 C0 00 00 */	li r6, 0
/* 801F353C  38 E0 00 FF */	li r7, 0xff
/* 801F3540  39 00 00 01 */	li r8, 1
/* 801F3544  48 04 B0 15 */	bl openExplain__17dMsgScrnExplain_cFUlUcUcUcb
lbl_801F3548:
/* 801F3548  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801F354C  40 82 00 1C */	bne lbl_801F3568
/* 801F3550  9B FD 21 9C */	stb r31, 0x219c(r29)
/* 801F3554  B3 DD 21 92 */	sth r30, 0x2192(r29)
/* 801F3558  88 1D 01 B2 */	lbz r0, 0x1b2(r29)
/* 801F355C  98 1D 21 94 */	stb r0, 0x2194(r29)
/* 801F3560  38 00 00 2A */	li r0, 0x2a
/* 801F3564  98 1D 01 B2 */	stb r0, 0x1b2(r29)
lbl_801F3568:
/* 801F3568  38 00 00 00 */	li r0, 0
/* 801F356C  98 1D 01 B9 */	stb r0, 0x1b9(r29)
/* 801F3570  39 61 00 20 */	addi r11, r1, 0x20
/* 801F3574  48 16 EC B5 */	bl _restgpr_29
/* 801F3578  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F357C  7C 08 03 A6 */	mtlr r0
/* 801F3580  38 21 00 20 */	addi r1, r1, 0x20
/* 801F3584  4E 80 00 20 */	blr 
