lbl_804942CC:
/* 804942CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804942D0  7C 08 02 A6 */	mflr r0
/* 804942D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 804942D8  39 61 00 50 */	addi r11, r1, 0x50
/* 804942DC  4B EC DE E0 */	b _savegpr_21
/* 804942E0  7C 7E 1B 78 */	mr r30, r3
/* 804942E4  7C 9F 23 78 */	mr r31, r4
/* 804942E8  3A C0 00 00 */	li r22, 0
/* 804942EC  3A A0 00 00 */	li r21, 0
/* 804942F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804942F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804942F8  3B 43 00 9C */	addi r26, r3, 0x9c
/* 804942FC  3B 23 00 F8 */	addi r25, r3, 0xf8
/* 80494300  3B 03 00 EC */	addi r24, r3, 0xec
/* 80494304  3B 61 00 10 */	addi r27, r1, 0x10
/* 80494308  3B 81 00 0C */	addi r28, r1, 0xc
/* 8049430C  3B A1 00 08 */	addi r29, r1, 8
lbl_80494310:
/* 80494310  7F 43 D3 78 */	mr r3, r26
/* 80494314  38 95 00 0F */	addi r4, r21, 0xf
/* 80494318  38 A0 00 00 */	li r5, 0
/* 8049431C  4B B9 ED 14 */	b getItem__17dSv_player_item_cCFib
/* 80494320  98 7B 00 00 */	stb r3, 0(r27)
/* 80494324  7F 23 CB 78 */	mr r3, r25
/* 80494328  8A FB 00 00 */	lbz r23, 0(r27)
/* 8049432C  7E E4 BB 78 */	mr r4, r23
/* 80494330  4B B9 FD C8 */	b getBombNum__21dSv_player_item_max_cCFUc
/* 80494334  98 7C 00 00 */	stb r3, 0(r28)
/* 80494338  7F 03 C3 78 */	mr r3, r24
/* 8049433C  56 A4 06 3E */	clrlwi r4, r21, 0x18
/* 80494340  4B B9 FC 3C */	b getBombNum__24dSv_player_item_record_cCFUc
/* 80494344  98 7D 00 00 */	stb r3, 0(r29)
/* 80494348  28 17 00 FF */	cmplwi r23, 0xff
/* 8049434C  41 82 00 10 */	beq lbl_8049435C
/* 80494350  56 C3 06 3E */	clrlwi r3, r22, 0x18
/* 80494354  38 03 00 01 */	addi r0, r3, 1
/* 80494358  54 16 06 3E */	clrlwi r22, r0, 0x18
lbl_8049435C:
/* 8049435C  3A B5 00 01 */	addi r21, r21, 1
/* 80494360  2C 15 00 03 */	cmpwi r21, 3
/* 80494364  3B BD 00 01 */	addi r29, r29, 1
/* 80494368  3B 9C 00 01 */	addi r28, r28, 1
/* 8049436C  3B 7B 00 01 */	addi r27, r27, 1
/* 80494370  41 80 FF A0 */	blt lbl_80494310
/* 80494374  56 C0 06 3E */	clrlwi r0, r22, 0x18
/* 80494378  2C 00 00 02 */	cmpwi r0, 2
/* 8049437C  41 82 00 3C */	beq lbl_804943B8
/* 80494380  40 80 00 14 */	bge lbl_80494394
/* 80494384  2C 00 00 00 */	cmpwi r0, 0
/* 80494388  41 82 02 24 */	beq lbl_804945AC
/* 8049438C  40 80 00 14 */	bge lbl_804943A0
/* 80494390  48 00 02 1C */	b lbl_804945AC
lbl_80494394:
/* 80494394  2C 00 00 04 */	cmpwi r0, 4
/* 80494398  40 80 02 14 */	bge lbl_804945AC
/* 8049439C  48 00 00 B0 */	b lbl_8049444C
lbl_804943A0:
/* 804943A0  7F C3 F3 78 */	mr r3, r30
/* 804943A4  88 81 00 10 */	lbz r4, 0x10(r1)
/* 804943A8  7F E5 FB 78 */	mr r5, r31
/* 804943AC  4B FF FB 2D */	bl getBombItemNo__8daTbox_cFUcUc
/* 804943B0  7C 7F 1B 78 */	mr r31, r3
/* 804943B4  48 00 01 F8 */	b lbl_804945AC
lbl_804943B8:
/* 804943B8  88 61 00 08 */	lbz r3, 8(r1)
/* 804943BC  88 01 00 0C */	lbz r0, 0xc(r1)
/* 804943C0  7C 03 00 40 */	cmplw r3, r0
/* 804943C4  40 82 00 3C */	bne lbl_80494400
/* 804943C8  28 00 00 00 */	cmplwi r0, 0
/* 804943CC  41 82 00 34 */	beq lbl_80494400
/* 804943D0  88 01 00 09 */	lbz r0, 9(r1)
/* 804943D4  88 61 00 0D */	lbz r3, 0xd(r1)
/* 804943D8  7C 00 18 40 */	cmplw r0, r3
/* 804943DC  40 82 00 0C */	bne lbl_804943E8
/* 804943E0  28 03 00 00 */	cmplwi r3, 0
/* 804943E4  40 82 01 C8 */	bne lbl_804945AC
lbl_804943E8:
/* 804943E8  7F C3 F3 78 */	mr r3, r30
/* 804943EC  88 81 00 11 */	lbz r4, 0x11(r1)
/* 804943F0  7F E5 FB 78 */	mr r5, r31
/* 804943F4  4B FF FA E5 */	bl getBombItemNo__8daTbox_cFUcUc
/* 804943F8  7C 7F 1B 78 */	mr r31, r3
/* 804943FC  48 00 01 B0 */	b lbl_804945AC
lbl_80494400:
/* 80494400  88 01 00 09 */	lbz r0, 9(r1)
/* 80494404  88 61 00 0D */	lbz r3, 0xd(r1)
/* 80494408  7C 00 18 40 */	cmplw r0, r3
/* 8049440C  40 82 00 24 */	bne lbl_80494430
/* 80494410  28 03 00 00 */	cmplwi r3, 0
/* 80494414  41 82 00 1C */	beq lbl_80494430
/* 80494418  7F C3 F3 78 */	mr r3, r30
/* 8049441C  88 81 00 10 */	lbz r4, 0x10(r1)
/* 80494420  7F E5 FB 78 */	mr r5, r31
/* 80494424  4B FF FA B5 */	bl getBombItemNo__8daTbox_cFUcUc
/* 80494428  7C 7F 1B 78 */	mr r31, r3
/* 8049442C  48 00 01 80 */	b lbl_804945AC
lbl_80494430:
/* 80494430  7F C3 F3 78 */	mr r3, r30
/* 80494434  88 81 00 10 */	lbz r4, 0x10(r1)
/* 80494438  88 A1 00 11 */	lbz r5, 0x11(r1)
/* 8049443C  7F E6 FB 78 */	mr r6, r31
/* 80494440  4B FF FB A9 */	bl getBombItemNo2__8daTbox_cFUcUcUc
/* 80494444  7C 7F 1B 78 */	mr r31, r3
/* 80494448  48 00 01 64 */	b lbl_804945AC
lbl_8049444C:
/* 8049444C  88 61 00 08 */	lbz r3, 8(r1)
/* 80494450  88 01 00 0C */	lbz r0, 0xc(r1)
/* 80494454  7C 03 00 40 */	cmplw r3, r0
/* 80494458  40 82 00 A0 */	bne lbl_804944F8
/* 8049445C  28 00 00 00 */	cmplwi r0, 0
/* 80494460  41 82 00 98 */	beq lbl_804944F8
/* 80494464  88 01 00 09 */	lbz r0, 9(r1)
/* 80494468  88 61 00 0D */	lbz r3, 0xd(r1)
/* 8049446C  7C 00 18 40 */	cmplw r0, r3
/* 80494470  40 82 00 3C */	bne lbl_804944AC
/* 80494474  28 03 00 00 */	cmplwi r3, 0
/* 80494478  41 82 00 34 */	beq lbl_804944AC
/* 8049447C  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80494480  88 61 00 0E */	lbz r3, 0xe(r1)
/* 80494484  7C 00 18 40 */	cmplw r0, r3
/* 80494488  40 82 00 0C */	bne lbl_80494494
/* 8049448C  28 03 00 00 */	cmplwi r3, 0
/* 80494490  40 82 01 1C */	bne lbl_804945AC
lbl_80494494:
/* 80494494  7F C3 F3 78 */	mr r3, r30
/* 80494498  88 81 00 12 */	lbz r4, 0x12(r1)
/* 8049449C  7F E5 FB 78 */	mr r5, r31
/* 804944A0  4B FF FA 39 */	bl getBombItemNo__8daTbox_cFUcUc
/* 804944A4  7C 7F 1B 78 */	mr r31, r3
/* 804944A8  48 00 01 04 */	b lbl_804945AC
lbl_804944AC:
/* 804944AC  88 01 00 0A */	lbz r0, 0xa(r1)
/* 804944B0  88 61 00 0E */	lbz r3, 0xe(r1)
/* 804944B4  7C 00 18 40 */	cmplw r0, r3
/* 804944B8  40 82 00 24 */	bne lbl_804944DC
/* 804944BC  28 03 00 00 */	cmplwi r3, 0
/* 804944C0  41 82 00 1C */	beq lbl_804944DC
/* 804944C4  7F C3 F3 78 */	mr r3, r30
/* 804944C8  88 81 00 11 */	lbz r4, 0x11(r1)
/* 804944CC  7F E5 FB 78 */	mr r5, r31
/* 804944D0  4B FF FA 09 */	bl getBombItemNo__8daTbox_cFUcUc
/* 804944D4  7C 7F 1B 78 */	mr r31, r3
/* 804944D8  48 00 00 D4 */	b lbl_804945AC
lbl_804944DC:
/* 804944DC  7F C3 F3 78 */	mr r3, r30
/* 804944E0  88 81 00 11 */	lbz r4, 0x11(r1)
/* 804944E4  88 A1 00 12 */	lbz r5, 0x12(r1)
/* 804944E8  7F E6 FB 78 */	mr r6, r31
/* 804944EC  4B FF FA FD */	bl getBombItemNo2__8daTbox_cFUcUcUc
/* 804944F0  7C 7F 1B 78 */	mr r31, r3
/* 804944F4  48 00 00 B8 */	b lbl_804945AC
lbl_804944F8:
/* 804944F8  88 01 00 09 */	lbz r0, 9(r1)
/* 804944FC  88 61 00 0D */	lbz r3, 0xd(r1)
/* 80494500  7C 00 18 40 */	cmplw r0, r3
/* 80494504  40 82 00 58 */	bne lbl_8049455C
/* 80494508  28 03 00 00 */	cmplwi r3, 0
/* 8049450C  41 82 00 50 */	beq lbl_8049455C
/* 80494510  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80494514  88 61 00 0E */	lbz r3, 0xe(r1)
/* 80494518  7C 00 18 40 */	cmplw r0, r3
/* 8049451C  40 82 00 24 */	bne lbl_80494540
/* 80494520  28 03 00 00 */	cmplwi r3, 0
/* 80494524  41 82 00 1C */	beq lbl_80494540
/* 80494528  7F C3 F3 78 */	mr r3, r30
/* 8049452C  88 81 00 10 */	lbz r4, 0x10(r1)
/* 80494530  7F E5 FB 78 */	mr r5, r31
/* 80494534  4B FF F9 A5 */	bl getBombItemNo__8daTbox_cFUcUc
/* 80494538  7C 7F 1B 78 */	mr r31, r3
/* 8049453C  48 00 00 70 */	b lbl_804945AC
lbl_80494540:
/* 80494540  7F C3 F3 78 */	mr r3, r30
/* 80494544  88 81 00 10 */	lbz r4, 0x10(r1)
/* 80494548  88 A1 00 12 */	lbz r5, 0x12(r1)
/* 8049454C  7F E6 FB 78 */	mr r6, r31
/* 80494550  4B FF FA 99 */	bl getBombItemNo2__8daTbox_cFUcUcUc
/* 80494554  7C 7F 1B 78 */	mr r31, r3
/* 80494558  48 00 00 54 */	b lbl_804945AC
lbl_8049455C:
/* 8049455C  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80494560  88 61 00 0E */	lbz r3, 0xe(r1)
/* 80494564  7C 00 18 40 */	cmplw r0, r3
/* 80494568  40 82 00 28 */	bne lbl_80494590
/* 8049456C  28 03 00 00 */	cmplwi r3, 0
/* 80494570  41 82 00 20 */	beq lbl_80494590
/* 80494574  7F C3 F3 78 */	mr r3, r30
/* 80494578  88 81 00 10 */	lbz r4, 0x10(r1)
/* 8049457C  88 A1 00 11 */	lbz r5, 0x11(r1)
/* 80494580  7F E6 FB 78 */	mr r6, r31
/* 80494584  4B FF FA 65 */	bl getBombItemNo2__8daTbox_cFUcUcUc
/* 80494588  7C 7F 1B 78 */	mr r31, r3
/* 8049458C  48 00 00 20 */	b lbl_804945AC
lbl_80494590:
/* 80494590  7F C3 F3 78 */	mr r3, r30
/* 80494594  88 81 00 10 */	lbz r4, 0x10(r1)
/* 80494598  88 A1 00 11 */	lbz r5, 0x11(r1)
/* 8049459C  88 C1 00 12 */	lbz r6, 0x12(r1)
/* 804945A0  7F E7 FB 78 */	mr r7, r31
/* 804945A4  4B FF FB A1 */	bl getBombItemNo3__8daTbox_cFUcUcUcUc
/* 804945A8  7C 7F 1B 78 */	mr r31, r3
lbl_804945AC:
/* 804945AC  7F E3 FB 78 */	mr r3, r31
/* 804945B0  39 61 00 50 */	addi r11, r1, 0x50
/* 804945B4  4B EC DC 54 */	b _restgpr_21
/* 804945B8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804945BC  7C 08 03 A6 */	mtlr r0
/* 804945C0  38 21 00 50 */	addi r1, r1, 0x50
/* 804945C4  4E 80 00 20 */	blr 
