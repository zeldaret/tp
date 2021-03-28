lbl_80C3BAAC:
/* 80C3BAAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3BAB0  7C 08 02 A6 */	mflr r0
/* 80C3BAB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3BAB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C3BABC  7C 7F 1B 78 */	mr r31, r3
/* 80C3BAC0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C3BAC4  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80C3BAC8  7C 03 03 78 */	mr r3, r0
/* 80C3BACC  28 00 00 0F */	cmplwi r0, 0xf
/* 80C3BAD0  40 82 00 08 */	bne lbl_80C3BAD8
/* 80C3BAD4  38 60 00 00 */	li r3, 0
lbl_80C3BAD8:
/* 80C3BAD8  88 1F 08 08 */	lbz r0, 0x808(r31)
/* 80C3BADC  28 00 00 02 */	cmplwi r0, 2
/* 80C3BAE0  41 82 01 60 */	beq lbl_80C3BC40
/* 80C3BAE4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3BAE8  41 82 00 6C */	beq lbl_80C3BB54
/* 80C3BAEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3BAF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3BAF4  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80C3BAF8  7F E3 FB 78 */	mr r3, r31
/* 80C3BAFC  3C 80 80 C4 */	lis r4, l_musiya_num@ha
/* 80C3BB00  A0 04 C7 54 */	lhz r0, l_musiya_num@l(r4)
/* 80C3BB04  54 00 08 3C */	slwi r0, r0, 1
/* 80C3BB08  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C3BB0C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C3BB10  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C3BB14  4B 3F 8E A8 */	b isEventBit__11dSv_event_cCFUs
/* 80C3BB18  2C 03 00 00 */	cmpwi r3, 0
/* 80C3BB1C  41 82 00 30 */	beq lbl_80C3BB4C
/* 80C3BB20  7F E3 FB 78 */	mr r3, r31
/* 80C3BB24  3C 80 80 C4 */	lis r4, l_musiya_num@ha
/* 80C3BB28  38 84 C7 54 */	addi r4, r4, l_musiya_num@l
/* 80C3BB2C  A0 04 00 02 */	lhz r0, 2(r4)
/* 80C3BB30  54 00 08 3C */	slwi r0, r0, 1
/* 80C3BB34  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C3BB38  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C3BB3C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C3BB40  4B 3F 8E 7C */	b isEventBit__11dSv_event_cCFUs
/* 80C3BB44  2C 03 00 00 */	cmpwi r3, 0
/* 80C3BB48  40 82 00 F8 */	bne lbl_80C3BC40
lbl_80C3BB4C:
/* 80C3BB4C  38 60 00 00 */	li r3, 0
/* 80C3BB50  48 00 00 F4 */	b lbl_80C3BC44
lbl_80C3BB54:
/* 80C3BB54  3C 60 80 C4 */	lis r3, stringBase0@ha
/* 80C3BB58  38 63 C7 64 */	addi r3, r3, stringBase0@l
/* 80C3BB5C  38 63 00 04 */	addi r3, r3, 4
/* 80C3BB60  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C3BB64  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C3BB68  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80C3BB6C  4B 72 CE 28 */	b strcmp
/* 80C3BB70  2C 03 00 00 */	cmpwi r3, 0
/* 80C3BB74  40 82 00 CC */	bne lbl_80C3BC40
/* 80C3BB78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3BB7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3BB80  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80C3BB84  2C 00 00 03 */	cmpwi r0, 3
/* 80C3BB88  40 82 00 B8 */	bne lbl_80C3BC40
/* 80C3BB8C  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C3BB90  3C 60 80 C4 */	lis r3, l_kat_itemno@ha
/* 80C3BB94  38 63 C6 78 */	addi r3, r3, l_kat_itemno@l
/* 80C3BB98  7C 63 00 AE */	lbzx r3, r3, r0
/* 80C3BB9C  4B 59 E3 A0 */	b isCatchNotGiveInsect__14dMenu_Insect_cFUc
/* 80C3BBA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C3BBA4  41 82 00 0C */	beq lbl_80C3BBB0
/* 80C3BBA8  38 60 00 00 */	li r3, 0
/* 80C3BBAC  48 00 00 98 */	b lbl_80C3BC44
lbl_80C3BBB0:
/* 80C3BBB0  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C3BBB4  28 00 00 00 */	cmplwi r0, 0
/* 80C3BBB8  40 82 00 3C */	bne lbl_80C3BBF4
/* 80C3BBBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3BBC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3BBC4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C3BBC8  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80C3BBCC  3C 80 80 C4 */	lis r4, l_musiya_num@ha
/* 80C3BBD0  38 84 C7 54 */	addi r4, r4, l_musiya_num@l
/* 80C3BBD4  7C 04 02 2E */	lhzx r0, r4, r0
/* 80C3BBD8  54 00 08 3C */	slwi r0, r0, 1
/* 80C3BBDC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C3BBE0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C3BBE4  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C3BBE8  4B 3F 8D D4 */	b isEventBit__11dSv_event_cCFUs
/* 80C3BBEC  2C 03 00 00 */	cmpwi r3, 0
/* 80C3BBF0  41 82 00 48 */	beq lbl_80C3BC38
lbl_80C3BBF4:
/* 80C3BBF4  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C3BBF8  28 00 00 01 */	cmplwi r0, 1
/* 80C3BBFC  40 82 00 44 */	bne lbl_80C3BC40
/* 80C3BC00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3BC04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C3BC08  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C3BC0C  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80C3BC10  3C 80 80 C4 */	lis r4, l_musiya_num@ha
/* 80C3BC14  38 84 C7 54 */	addi r4, r4, l_musiya_num@l
/* 80C3BC18  7C 04 02 2E */	lhzx r0, r4, r0
/* 80C3BC1C  54 00 08 3C */	slwi r0, r0, 1
/* 80C3BC20  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C3BC24  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C3BC28  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C3BC2C  4B 3F 8D 90 */	b isEventBit__11dSv_event_cCFUs
/* 80C3BC30  2C 03 00 00 */	cmpwi r3, 0
/* 80C3BC34  40 82 00 0C */	bne lbl_80C3BC40
lbl_80C3BC38:
/* 80C3BC38  38 60 00 00 */	li r3, 0
/* 80C3BC3C  48 00 00 08 */	b lbl_80C3BC44
lbl_80C3BC40:
/* 80C3BC40  38 60 00 01 */	li r3, 1
lbl_80C3BC44:
/* 80C3BC44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C3BC48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3BC4C  7C 08 03 A6 */	mtlr r0
/* 80C3BC50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3BC54  4E 80 00 20 */	blr 
