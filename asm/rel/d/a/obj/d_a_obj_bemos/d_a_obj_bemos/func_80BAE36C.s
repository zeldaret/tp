lbl_80BAE36C:
/* 80BAE36C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BAE370  7C 08 02 A6 */	mflr r0
/* 80BAE374  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BAE378  39 61 00 20 */	addi r11, r1, 0x20
/* 80BAE37C  4B 7B 3E 58 */	b _savegpr_27
/* 80BAE380  7C 7F 1B 78 */	mr r31, r3
/* 80BAE384  7C BB 2B 78 */	mr r27, r5
/* 80BAE388  7C DC 33 78 */	mr r28, r6
/* 80BAE38C  54 DD 07 BF */	clrlwi. r29, r6, 0x1e
/* 80BAE390  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BAE394  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80BAE398  54 1E 47 3E */	rlwinm r30, r0, 8, 0x1c, 0x1f
/* 80BAE39C  41 82 00 F0 */	beq lbl_80BAE48C
/* 80BAE3A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BAE3A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BAE3A8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BAE3AC  7C 05 07 74 */	extsb r5, r0
/* 80BAE3B0  4B 48 6F B0 */	b isSwitch__10dSv_info_cCFii
/* 80BAE3B4  2C 03 00 00 */	cmpwi r3, 0
/* 80BAE3B8  40 82 00 D4 */	bne lbl_80BAE48C
/* 80BAE3BC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80BAE3C0  57 A0 07 BD */	rlwinm. r0, r29, 0, 0x1e, 0x1e
/* 80BAE3C4  7F 63 07 34 */	extsh r3, r27
/* 80BAE3C8  41 82 00 08 */	beq lbl_80BAE3D0
/* 80BAE3CC  38 63 80 00 */	addi r3, r3, -32768
lbl_80BAE3D0:
/* 80BAE3D0  7C 60 07 34 */	extsh r0, r3
/* 80BAE3D4  7C 04 00 50 */	subf r0, r4, r0
/* 80BAE3D8  7C 00 07 34 */	extsh r0, r0
/* 80BAE3DC  93 9F 10 C0 */	stw r28, 0x10c0(r31)
/* 80BAE3E0  2C 00 E0 00 */	cmpwi r0, -8192
/* 80BAE3E4  41 80 00 14 */	blt lbl_80BAE3F8
/* 80BAE3E8  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80BAE3EC  40 80 00 0C */	bge lbl_80BAE3F8
/* 80BAE3F0  38 E0 00 00 */	li r7, 0
/* 80BAE3F4  48 00 00 38 */	b lbl_80BAE42C
lbl_80BAE3F8:
/* 80BAE3F8  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80BAE3FC  41 80 00 14 */	blt lbl_80BAE410
/* 80BAE400  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80BAE404  40 80 00 0C */	bge lbl_80BAE410
/* 80BAE408  38 E0 00 01 */	li r7, 1
/* 80BAE40C  48 00 00 20 */	b lbl_80BAE42C
lbl_80BAE410:
/* 80BAE410  2C 00 60 00 */	cmpwi r0, 0x6000
/* 80BAE414  40 80 00 0C */	bge lbl_80BAE420
/* 80BAE418  2C 00 A0 00 */	cmpwi r0, -24576
/* 80BAE41C  40 80 00 0C */	bge lbl_80BAE428
lbl_80BAE420:
/* 80BAE420  38 E0 00 02 */	li r7, 2
/* 80BAE424  48 00 00 08 */	b lbl_80BAE42C
lbl_80BAE428:
/* 80BAE428  38 E0 00 03 */	li r7, 3
lbl_80BAE42C:
/* 80BAE42C  28 1E 00 00 */	cmplwi r30, 0
/* 80BAE430  40 82 00 10 */	bne lbl_80BAE440
/* 80BAE434  40 82 00 58 */	bne lbl_80BAE48C
/* 80BAE438  2C 07 00 00 */	cmpwi r7, 0
/* 80BAE43C  40 82 00 50 */	bne lbl_80BAE48C
lbl_80BAE440:
/* 80BAE440  39 00 00 00 */	li r8, 0
/* 80BAE444  38 60 00 00 */	li r3, 0
/* 80BAE448  7C 64 1B 78 */	mr r4, r3
/* 80BAE44C  38 00 00 04 */	li r0, 4
/* 80BAE450  7C 09 03 A6 */	mtctr r0
lbl_80BAE454:
/* 80BAE454  7C 08 38 00 */	cmpw r8, r7
/* 80BAE458  40 82 00 18 */	bne lbl_80BAE470
/* 80BAE45C  38 C3 10 C4 */	addi r6, r3, 0x10c4
/* 80BAE460  7C BF 32 AE */	lhax r5, r31, r6
/* 80BAE464  38 05 00 01 */	addi r0, r5, 1
/* 80BAE468  7C 1F 33 2E */	sthx r0, r31, r6
/* 80BAE46C  48 00 00 0C */	b lbl_80BAE478
lbl_80BAE470:
/* 80BAE470  38 03 10 C4 */	addi r0, r3, 0x10c4
/* 80BAE474  7C 9F 03 2E */	sthx r4, r31, r0
lbl_80BAE478:
/* 80BAE478  39 08 00 01 */	addi r8, r8, 1
/* 80BAE47C  38 63 00 02 */	addi r3, r3, 2
/* 80BAE480  42 00 FF D4 */	bdnz lbl_80BAE454
/* 80BAE484  38 00 00 01 */	li r0, 1
/* 80BAE488  98 1F 10 D2 */	stb r0, 0x10d2(r31)
lbl_80BAE48C:
/* 80BAE48C  7F E3 FB 78 */	mr r3, r31
/* 80BAE490  39 61 00 20 */	addi r11, r1, 0x20
/* 80BAE494  4B 7B 3D 8C */	b _restgpr_27
/* 80BAE498  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BAE49C  7C 08 03 A6 */	mtlr r0
/* 80BAE4A0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BAE4A4  4E 80 00 20 */	blr 
