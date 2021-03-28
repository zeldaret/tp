lbl_800B93F4:
/* 800B93F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B93F8  7C 08 02 A6 */	mflr r0
/* 800B93FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B9400  39 61 00 20 */	addi r11, r1, 0x20
/* 800B9404  48 2A 8D D9 */	bl _savegpr_29
/* 800B9408  7C 7F 1B 78 */	mr r31, r3
/* 800B940C  7C 9D 23 78 */	mr r29, r4
/* 800B9410  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B9414  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B9418  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800B941C  28 00 00 FF */	cmplwi r0, 0xff
/* 800B9420  41 82 01 48 */	beq lbl_800B9568
/* 800B9424  38 00 01 03 */	li r0, 0x103
/* 800B9428  B0 1F 2F DE */	sth r0, 0x2fde(r31)
/* 800B942C  38 00 00 00 */	li r0, 0
/* 800B9430  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800B9434  28 03 00 01 */	cmplwi r3, 1
/* 800B9438  41 82 00 0C */	beq lbl_800B9444
/* 800B943C  28 03 00 02 */	cmplwi r3, 2
/* 800B9440  40 82 00 08 */	bne lbl_800B9448
lbl_800B9444:
/* 800B9444  38 00 00 01 */	li r0, 1
lbl_800B9448:
/* 800B9448  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B944C  41 82 00 2C */	beq lbl_800B9478
/* 800B9450  7F E3 FB 78 */	mr r3, r31
/* 800B9454  38 80 02 61 */	li r4, 0x261
/* 800B9458  38 A0 00 02 */	li r5, 2
/* 800B945C  3C C0 80 39 */	lis r6, m__17daAlinkHIO_cut_c0@ha
/* 800B9460  38 C6 DE 8C */	addi r6, r6, m__17daAlinkHIO_cut_c0@l
/* 800B9464  4B FF 42 8D */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800B9468  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800B946C  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800B9470  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 800B9474  48 00 00 58 */	b lbl_800B94CC
lbl_800B9478:
/* 800B9478  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B947C  54 1E 01 CE */	rlwinm r30, r0, 0, 7, 7
/* 800B9480  7F E3 FB 78 */	mr r3, r31
/* 800B9484  38 80 02 55 */	li r4, 0x255
/* 800B9488  38 A0 00 02 */	li r5, 2
/* 800B948C  3C C0 80 39 */	lis r6, m__17daAlinkHIO_cut_c0@ha
/* 800B9490  38 C6 DE 8C */	addi r6, r6, m__17daAlinkHIO_cut_c0@l
/* 800B9494  4B FF 42 5D */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800B9498  28 1E 00 00 */	cmplwi r30, 0
/* 800B949C  41 82 00 0C */	beq lbl_800B94A8
/* 800B94A0  C0 02 93 1C */	lfs f0, lit_7448(r2)
/* 800B94A4  D0 1F 20 58 */	stfs f0, 0x2058(r31)
lbl_800B94A8:
/* 800B94A8  2C 1D 00 00 */	cmpwi r29, 0
/* 800B94AC  40 82 00 14 */	bne lbl_800B94C0
/* 800B94B0  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800B94B4  60 00 80 00 */	ori r0, r0, 0x8000
/* 800B94B8  90 1F 05 7C */	stw r0, 0x57c(r31)
/* 800B94BC  48 00 00 10 */	b lbl_800B94CC
lbl_800B94C0:
/* 800B94C0  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 800B94C4  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 800B94C8  90 1F 05 7C */	stw r0, 0x57c(r31)
lbl_800B94CC:
/* 800B94CC  7F E3 FB 78 */	mr r3, r31
/* 800B94D0  38 80 00 2D */	li r4, 0x2d
/* 800B94D4  4B FF 65 D5 */	bl setFacePriTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800B94D8  7F E3 FB 78 */	mr r3, r31
/* 800B94DC  38 80 01 5E */	li r4, 0x15e
/* 800B94E0  38 A0 00 01 */	li r5, 1
/* 800B94E4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800B94E8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800B94EC  4B FF 5F C5 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800B94F0  7F E3 FB 78 */	mr r3, r31
/* 800B94F4  48 05 C7 2D */	bl checkEventRun__9daAlink_cCFv
/* 800B94F8  2C 03 00 00 */	cmpwi r3, 0
/* 800B94FC  41 82 00 44 */	beq lbl_800B9540
/* 800B9500  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 800B9504  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 800B9508  38 63 01 1C */	addi r3, r3, 0x11c
/* 800B950C  4B FE 45 55 */	bl checkStageName__9daAlink_cFPCc
/* 800B9510  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B9514  41 82 00 2C */	beq lbl_800B9540
/* 800B9518  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800B951C  7C 00 07 75 */	extsb. r0, r0
/* 800B9520  40 82 00 20 */	bne lbl_800B9540
/* 800B9524  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800B9528  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800B952C  88 03 4E 0B */	lbz r0, 0x4e0b(r3)
/* 800B9530  7C 00 07 75 */	extsb. r0, r0
/* 800B9534  40 82 00 0C */	bne lbl_800B9540
/* 800B9538  C0 02 98 B8 */	lfs f0, lit_68266(r2)
/* 800B953C  D0 1F 20 54 */	stfs f0, 0x2054(r31)
lbl_800B9540:
/* 800B9540  88 1F 2F 94 */	lbz r0, 0x2f94(r31)
/* 800B9544  28 00 00 FF */	cmplwi r0, 0xff
/* 800B9548  40 82 00 0C */	bne lbl_800B9554
/* 800B954C  38 00 00 04 */	li r0, 4
/* 800B9550  98 1F 2F 96 */	stb r0, 0x2f96(r31)
lbl_800B9554:
/* 800B9554  88 1F 2F 95 */	lbz r0, 0x2f95(r31)
/* 800B9558  28 00 00 FF */	cmplwi r0, 0xff
/* 800B955C  40 82 00 0C */	bne lbl_800B9568
/* 800B9560  38 00 00 0A */	li r0, 0xa
/* 800B9564  98 1F 2F 97 */	stb r0, 0x2f97(r31)
lbl_800B9568:
/* 800B9568  39 61 00 20 */	addi r11, r1, 0x20
/* 800B956C  48 2A 8C BD */	bl _restgpr_29
/* 800B9570  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B9574  7C 08 03 A6 */	mtlr r0
/* 800B9578  38 21 00 20 */	addi r1, r1, 0x20
/* 800B957C  4E 80 00 20 */	blr 
