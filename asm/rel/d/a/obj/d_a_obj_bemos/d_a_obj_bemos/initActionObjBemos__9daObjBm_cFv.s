lbl_80BAF37C:
/* 80BAF37C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAF380  7C 08 02 A6 */	mflr r0
/* 80BAF384  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAF388  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAF38C  7C 7F 1B 78 */	mr r31, r3
/* 80BAF390  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80BAF394  28 03 00 00 */	cmplwi r3, 0
/* 80BAF398  41 82 00 1C */	beq lbl_80BAF3B4
/* 80BAF39C  4B 6B 8E 39 */	bl ChkUsed__9cBgW_BgIdCFv
/* 80BAF3A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BAF3A4  41 82 00 10 */	beq lbl_80BAF3B4
/* 80BAF3A8  38 00 00 01 */	li r0, 1
/* 80BAF3AC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BAF3B0  98 03 00 14 */	stb r0, 0x14(r3)
lbl_80BAF3B4:
/* 80BAF3B4  3C 60 80 BB */	lis r3, PPCallBack__9daObjBm_cFP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@ha /* 0x80BAE36C@ha */
/* 80BAF3B8  38 03 E3 6C */	addi r0, r3, PPCallBack__9daObjBm_cFP10fopAc_ac_cP10fopAc_ac_csQ29dBgW_Base13PushPullLabel@l /* 0x80BAE36C@l */
/* 80BAF3BC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80BAF3C0  90 03 00 10 */	stw r0, 0x10(r3)
/* 80BAF3C4  80 9F 00 B0 */	lwz r4, 0xb0(r31)
/* 80BAF3C8  54 80 47 3E */	rlwinm r0, r4, 8, 0x1c, 0x1f
/* 80BAF3CC  2C 00 00 01 */	cmpwi r0, 1
/* 80BAF3D0  41 82 00 50 */	beq lbl_80BAF420
/* 80BAF3D4  40 80 00 7C */	bge lbl_80BAF450
/* 80BAF3D8  2C 00 00 00 */	cmpwi r0, 0
/* 80BAF3DC  40 80 00 08 */	bge lbl_80BAF3E4
/* 80BAF3E0  48 00 00 70 */	b lbl_80BAF450
lbl_80BAF3E4:
/* 80BAF3E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAF3E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAF3EC  54 84 86 3E */	rlwinm r4, r4, 0x10, 0x18, 0x1f
/* 80BAF3F0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BAF3F4  7C 05 07 74 */	extsb r5, r0
/* 80BAF3F8  4B 48 5F 69 */	bl isSwitch__10dSv_info_cCFii
/* 80BAF3FC  2C 03 00 00 */	cmpwi r3, 0
/* 80BAF400  41 82 00 50 */	beq lbl_80BAF450
/* 80BAF404  38 00 00 04 */	li r0, 4
/* 80BAF408  90 1F 10 B4 */	stw r0, 0x10b4(r31)
/* 80BAF40C  7F E3 FB 78 */	mr r3, r31
/* 80BAF410  48 00 14 79 */	bl mode_wait__9daObjBm_cFv
/* 80BAF414  7F E3 FB 78 */	mr r3, r31
/* 80BAF418  48 00 19 A9 */	bl mode_dead_init__9daObjBm_cFv
/* 80BAF41C  48 00 00 34 */	b lbl_80BAF450
lbl_80BAF420:
/* 80BAF420  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAF424  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAF428  54 84 C6 3E */	rlwinm r4, r4, 0x18, 0x18, 0x1f
/* 80BAF42C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BAF430  7C 05 07 74 */	extsb r5, r0
/* 80BAF434  4B 48 5F 2D */	bl isSwitch__10dSv_info_cCFii
/* 80BAF438  2C 03 00 00 */	cmpwi r3, 0
/* 80BAF43C  41 82 00 14 */	beq lbl_80BAF450
/* 80BAF440  7F E3 FB 78 */	mr r3, r31
/* 80BAF444  48 00 14 45 */	bl mode_wait__9daObjBm_cFv
/* 80BAF448  7F E3 FB 78 */	mr r3, r31
/* 80BAF44C  48 00 19 75 */	bl mode_dead_init__9daObjBm_cFv
lbl_80BAF450:
/* 80BAF450  38 00 00 01 */	li r0, 1
/* 80BAF454  98 1F 0F EB */	stb r0, 0xfeb(r31)
/* 80BAF458  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAF45C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAF460  7C 08 03 A6 */	mtlr r0
/* 80BAF464  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAF468  4E 80 00 20 */	blr 
