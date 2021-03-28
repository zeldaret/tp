lbl_802D5410:
/* 802D5410  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802D5414  7C 08 02 A6 */	mflr r0
/* 802D5418  90 01 00 44 */	stw r0, 0x44(r1)
/* 802D541C  39 61 00 40 */	addi r11, r1, 0x40
/* 802D5420  48 08 CD B1 */	bl _savegpr_26
/* 802D5424  7C 7A 1B 78 */	mr r26, r3
/* 802D5428  7C 9B 23 78 */	mr r27, r4
/* 802D542C  7C BC 2B 78 */	mr r28, r5
/* 802D5430  3B A0 00 00 */	li r29, 0
/* 802D5434  7F 63 DB 78 */	mr r3, r27
/* 802D5438  48 09 37 AD */	bl strlen
/* 802D543C  7C 7F 1B 78 */	mr r31, r3
/* 802D5440  7F 63 DB 78 */	mr r3, r27
/* 802D5444  38 81 00 14 */	addi r4, r1, 0x14
/* 802D5448  48 07 3B 39 */	bl DVDOpenDir
/* 802D544C  2C 03 00 00 */	cmpwi r3, 0
/* 802D5450  41 82 00 B0 */	beq lbl_802D5500
/* 802D5454  7F DB FA 14 */	add r30, r27, r31
/* 802D5458  3B FE 00 01 */	addi r31, r30, 1
/* 802D545C  48 00 00 88 */	b lbl_802D54E4
lbl_802D5460:
/* 802D5460  80 01 00 0C */	lwz r0, 0xc(r1)
/* 802D5464  2C 00 00 00 */	cmpwi r0, 0
/* 802D5468  41 82 00 40 */	beq lbl_802D54A8
/* 802D546C  38 00 00 2F */	li r0, 0x2f
/* 802D5470  98 1E 00 00 */	stb r0, 0(r30)
/* 802D5474  7F E3 FB 78 */	mr r3, r31
/* 802D5478  80 81 00 10 */	lwz r4, 0x10(r1)
/* 802D547C  48 09 36 B1 */	bl strcpy
/* 802D5480  7F 43 D3 78 */	mr r3, r26
/* 802D5484  7F 64 DB 78 */	mr r4, r27
/* 802D5488  7F 85 E3 78 */	mr r5, r28
/* 802D548C  4B FF FF 85 */	bl findFile__12JKRFileCacheCFPcPCc
/* 802D5490  7C 7D 1B 78 */	mr r29, r3
/* 802D5494  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D5498  40 82 00 60 */	bne lbl_802D54F8
/* 802D549C  38 00 00 00 */	li r0, 0
/* 802D54A0  98 1E 00 00 */	stb r0, 0(r30)
/* 802D54A4  48 00 00 40 */	b lbl_802D54E4
lbl_802D54A8:
/* 802D54A8  7F 83 E3 78 */	mr r3, r28
/* 802D54AC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 802D54B0  48 09 34 E5 */	bl strcmp
/* 802D54B4  7C 60 00 34 */	cntlzw r0, r3
/* 802D54B8  54 1D D9 7E */	srwi r29, r0, 5
/* 802D54BC  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 802D54C0  41 82 00 24 */	beq lbl_802D54E4
/* 802D54C4  7F 63 DB 78 */	mr r3, r27
/* 802D54C8  3C 80 80 3A */	lis r4, JKRFileCache__stringBase0@ha
/* 802D54CC  38 84 D1 58 */	addi r4, r4, JKRFileCache__stringBase0@l
/* 802D54D0  48 09 35 ED */	bl strcat
/* 802D54D4  7F 63 DB 78 */	mr r3, r27
/* 802D54D8  7F 84 E3 78 */	mr r4, r28
/* 802D54DC  48 09 35 E1 */	bl strcat
/* 802D54E0  48 00 00 18 */	b lbl_802D54F8
lbl_802D54E4:
/* 802D54E4  38 61 00 14 */	addi r3, r1, 0x14
/* 802D54E8  38 81 00 08 */	addi r4, r1, 8
/* 802D54EC  48 07 3B 55 */	bl DVDReadDir
/* 802D54F0  2C 03 00 00 */	cmpwi r3, 0
/* 802D54F4  40 82 FF 6C */	bne lbl_802D5460
lbl_802D54F8:
/* 802D54F8  38 61 00 14 */	addi r3, r1, 0x14
/* 802D54FC  48 07 3B E9 */	bl DVDCloseDir
lbl_802D5500:
/* 802D5500  7F A3 EB 78 */	mr r3, r29
/* 802D5504  39 61 00 40 */	addi r11, r1, 0x40
/* 802D5508  48 08 CD 15 */	bl _restgpr_26
/* 802D550C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802D5510  7C 08 03 A6 */	mtlr r0
/* 802D5514  38 21 00 40 */	addi r1, r1, 0x40
/* 802D5518  4E 80 00 20 */	blr 
