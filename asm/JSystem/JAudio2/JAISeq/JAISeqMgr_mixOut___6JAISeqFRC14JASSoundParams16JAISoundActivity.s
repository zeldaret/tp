lbl_802A14FC:
/* 802A14FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A1500  7C 08 02 A6 */	mflr r0
/* 802A1504  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A1508  39 61 00 20 */	addi r11, r1, 0x20
/* 802A150C  48 0C 0C D1 */	bl _savegpr_29
/* 802A1510  7C 7D 1B 78 */	mr r29, r3
/* 802A1514  7C 9E 23 78 */	mr r30, r4
/* 802A1518  7C BF 2B 78 */	mr r31, r5
/* 802A151C  88 05 00 00 */	lbz r0, 0(r5)
/* 802A1520  98 01 00 0C */	stb r0, 0xc(r1)
/* 802A1524  38 A1 00 0C */	addi r5, r1, 0xc
/* 802A1528  4B FF FA 69 */	bl prepare___6JAISeqFRC14JASSoundParams16JAISoundActivity
/* 802A152C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A1530  41 82 00 28 */	beq lbl_802A1558
/* 802A1534  88 1D 02 BD */	lbz r0, 0x2bd(r29)
/* 802A1538  28 00 00 01 */	cmplwi r0, 1
/* 802A153C  40 82 00 1C */	bne lbl_802A1558
/* 802A1540  88 1F 00 00 */	lbz r0, 0(r31)
/* 802A1544  98 01 00 08 */	stb r0, 8(r1)
/* 802A1548  7F A3 EB 78 */	mr r3, r29
/* 802A154C  7F C4 F3 78 */	mr r4, r30
/* 802A1550  38 A1 00 08 */	addi r5, r1, 8
/* 802A1554  4B FF FD F5 */	bl mixOut___6JAISeqFRC14JASSoundParams16JAISoundActivity
lbl_802A1558:
/* 802A1558  39 61 00 20 */	addi r11, r1, 0x20
/* 802A155C  48 0C 0C CD */	bl _restgpr_29
/* 802A1560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A1564  7C 08 03 A6 */	mtlr r0
/* 802A1568  38 21 00 20 */	addi r1, r1, 0x20
/* 802A156C  4E 80 00 20 */	blr 
