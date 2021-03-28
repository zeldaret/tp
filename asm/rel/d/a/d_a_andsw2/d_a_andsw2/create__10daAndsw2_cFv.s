lbl_804D6120:
/* 804D6120  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D6124  7C 08 02 A6 */	mflr r0
/* 804D6128  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D612C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D6130  93 C1 00 08 */	stw r30, 8(r1)
/* 804D6134  7C 7E 1B 78 */	mr r30, r3
/* 804D6138  4B FF FC CD */	bl getSwbit__10daAndsw2_cFv
/* 804D613C  54 7F 06 3E */	clrlwi r31, r3, 0x18
/* 804D6140  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 804D6144  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 804D6148  40 82 00 20 */	bne lbl_804D6168
/* 804D614C  28 1E 00 00 */	cmplwi r30, 0
/* 804D6150  41 82 00 0C */	beq lbl_804D615C
/* 804D6154  7F C3 F3 78 */	mr r3, r30
/* 804D6158  4B B4 2A 0C */	b __ct__10fopAc_ac_cFv
lbl_804D615C:
/* 804D615C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 804D6160  60 00 00 08 */	ori r0, r0, 8
/* 804D6164  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_804D6168:
/* 804D6168  7F C3 F3 78 */	mr r3, r30
/* 804D616C  4B FF FC B1 */	bl getType__10daAndsw2_cFv
/* 804D6170  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804D6174  28 00 00 06 */	cmplwi r0, 6
/* 804D6178  41 81 01 F4 */	bgt lbl_804D636C
/* 804D617C  3C 60 80 4D */	lis r3, lit_3821@ha
/* 804D6180  38 63 6A C8 */	addi r3, r3, lit_3821@l
/* 804D6184  54 00 10 3A */	slwi r0, r0, 2
/* 804D6188  7C 03 00 2E */	lwzx r0, r3, r0
/* 804D618C  7C 09 03 A6 */	mtctr r0
/* 804D6190  4E 80 04 20 */	bctr 
lbl_804D6194:
/* 804D6194  2C 1F 00 FF */	cmpwi r31, 0xff
/* 804D6198  41 82 00 24 */	beq lbl_804D61BC
/* 804D619C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D61A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D61A4  7F E4 FB 78 */	mr r4, r31
/* 804D61A8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804D61AC  7C 05 07 74 */	extsb r5, r0
/* 804D61B0  4B B5 F1 B0 */	b isSwitch__10dSv_info_cCFii
/* 804D61B4  2C 03 00 00 */	cmpwi r3, 0
/* 804D61B8  41 82 00 10 */	beq lbl_804D61C8
lbl_804D61BC:
/* 804D61BC  38 00 00 05 */	li r0, 5
/* 804D61C0  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 804D61C4  48 00 00 0C */	b lbl_804D61D0
lbl_804D61C8:
/* 804D61C8  38 00 00 00 */	li r0, 0
/* 804D61CC  98 1E 05 6C */	stb r0, 0x56c(r30)
lbl_804D61D0:
/* 804D61D0  7F C3 F3 78 */	mr r3, r30
/* 804D61D4  4B FF FC 25 */	bl getEventNo__10daAndsw2_cFv
/* 804D61D8  7C 65 1B 78 */	mr r5, r3
/* 804D61DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D61E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D61E4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804D61E8  7F C4 F3 78 */	mr r4, r30
/* 804D61EC  4B B7 14 AC */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 804D61F0  B0 7E 05 6A */	sth r3, 0x56a(r30)
/* 804D61F4  48 00 01 80 */	b lbl_804D6374
lbl_804D61F8:
/* 804D61F8  2C 1F 00 FF */	cmpwi r31, 0xff
/* 804D61FC  40 82 00 10 */	bne lbl_804D620C
/* 804D6200  38 00 00 05 */	li r0, 5
/* 804D6204  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 804D6208  48 00 00 38 */	b lbl_804D6240
lbl_804D620C:
/* 804D620C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D6210  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D6214  7F E4 FB 78 */	mr r4, r31
/* 804D6218  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804D621C  7C 05 07 74 */	extsb r5, r0
/* 804D6220  4B B5 F1 40 */	b isSwitch__10dSv_info_cCFii
/* 804D6224  2C 03 00 00 */	cmpwi r3, 0
/* 804D6228  41 82 00 10 */	beq lbl_804D6238
/* 804D622C  38 00 00 04 */	li r0, 4
/* 804D6230  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 804D6234  48 00 00 0C */	b lbl_804D6240
lbl_804D6238:
/* 804D6238  38 00 00 00 */	li r0, 0
/* 804D623C  98 1E 05 6C */	stb r0, 0x56c(r30)
lbl_804D6240:
/* 804D6240  7F C3 F3 78 */	mr r3, r30
/* 804D6244  4B FF FB B5 */	bl getEventNo__10daAndsw2_cFv
/* 804D6248  7C 65 1B 78 */	mr r5, r3
/* 804D624C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D6250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D6254  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804D6258  7F C4 F3 78 */	mr r4, r30
/* 804D625C  4B B7 14 3C */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 804D6260  B0 7E 05 6A */	sth r3, 0x56a(r30)
/* 804D6264  48 00 01 10 */	b lbl_804D6374
lbl_804D6268:
/* 804D6268  2C 1F 00 FF */	cmpwi r31, 0xff
/* 804D626C  41 82 00 24 */	beq lbl_804D6290
/* 804D6270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D6274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D6278  7F E4 FB 78 */	mr r4, r31
/* 804D627C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804D6280  7C 05 07 74 */	extsb r5, r0
/* 804D6284  4B B5 F0 DC */	b isSwitch__10dSv_info_cCFii
/* 804D6288  2C 03 00 00 */	cmpwi r3, 0
/* 804D628C  41 82 00 10 */	beq lbl_804D629C
lbl_804D6290:
/* 804D6290  38 00 00 05 */	li r0, 5
/* 804D6294  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 804D6298  48 00 00 0C */	b lbl_804D62A4
lbl_804D629C:
/* 804D629C  38 00 00 00 */	li r0, 0
/* 804D62A0  98 1E 05 6C */	stb r0, 0x56c(r30)
lbl_804D62A4:
/* 804D62A4  7F C3 F3 78 */	mr r3, r30
/* 804D62A8  4B FF FB 51 */	bl getEventNo__10daAndsw2_cFv
/* 804D62AC  7C 65 1B 78 */	mr r5, r3
/* 804D62B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D62B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D62B8  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804D62BC  7F C4 F3 78 */	mr r4, r30
/* 804D62C0  4B B7 13 D8 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 804D62C4  B0 7E 05 6A */	sth r3, 0x56a(r30)
/* 804D62C8  48 00 00 AC */	b lbl_804D6374
lbl_804D62CC:
/* 804D62CC  2C 1F 00 FF */	cmpwi r31, 0xff
/* 804D62D0  41 82 00 24 */	beq lbl_804D62F4
/* 804D62D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D62D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D62DC  7F E4 FB 78 */	mr r4, r31
/* 804D62E0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 804D62E4  7C 05 07 74 */	extsb r5, r0
/* 804D62E8  4B B5 F0 78 */	b isSwitch__10dSv_info_cCFii
/* 804D62EC  2C 03 00 00 */	cmpwi r3, 0
/* 804D62F0  41 82 00 10 */	beq lbl_804D6300
lbl_804D62F4:
/* 804D62F4  38 00 00 04 */	li r0, 4
/* 804D62F8  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 804D62FC  48 00 00 0C */	b lbl_804D6308
lbl_804D6300:
/* 804D6300  38 00 00 00 */	li r0, 0
/* 804D6304  98 1E 05 6C */	stb r0, 0x56c(r30)
lbl_804D6308:
/* 804D6308  7F C3 F3 78 */	mr r3, r30
/* 804D630C  4B FF FA ED */	bl getEventNo__10daAndsw2_cFv
/* 804D6310  7C 65 1B 78 */	mr r5, r3
/* 804D6314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D6318  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D631C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804D6320  7F C4 F3 78 */	mr r4, r30
/* 804D6324  4B B7 13 74 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 804D6328  B0 7E 05 6A */	sth r3, 0x56a(r30)
/* 804D632C  48 00 00 48 */	b lbl_804D6374
lbl_804D6330:
/* 804D6330  38 00 00 00 */	li r0, 0
/* 804D6334  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 804D6338  48 00 00 3C */	b lbl_804D6374
lbl_804D633C:
/* 804D633C  38 00 00 00 */	li r0, 0
/* 804D6340  98 1E 05 6C */	stb r0, 0x56c(r30)
/* 804D6344  7F C3 F3 78 */	mr r3, r30
/* 804D6348  4B FF FA B1 */	bl getEventNo__10daAndsw2_cFv
/* 804D634C  7C 65 1B 78 */	mr r5, r3
/* 804D6350  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D6354  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D6358  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 804D635C  7F C4 F3 78 */	mr r4, r30
/* 804D6360  4B B7 13 38 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cUc
/* 804D6364  B0 7E 05 6A */	sth r3, 0x56a(r30)
/* 804D6368  48 00 00 0C */	b lbl_804D6374
lbl_804D636C:
/* 804D636C  38 00 00 05 */	li r0, 5
/* 804D6370  98 1E 05 6C */	stb r0, 0x56c(r30)
lbl_804D6374:
/* 804D6374  38 00 00 00 */	li r0, 0
/* 804D6378  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 804D637C  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 804D6380  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 804D6384  B0 1E 04 DC */	sth r0, 0x4dc(r30)
/* 804D6388  38 60 00 04 */	li r3, 4
/* 804D638C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D6390  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D6394  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D6398  7C 08 03 A6 */	mtlr r0
/* 804D639C  38 21 00 10 */	addi r1, r1, 0x10
/* 804D63A0  4E 80 00 20 */	blr 
