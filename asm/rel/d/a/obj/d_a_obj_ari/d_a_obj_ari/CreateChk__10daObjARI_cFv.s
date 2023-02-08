lbl_80BA483C:
/* 80BA483C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA4840  7C 08 02 A6 */	mflr r0
/* 80BA4844  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA4848  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA484C  7C 7F 1B 78 */	mr r31, r3
/* 80BA4850  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BA4854  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80BA4858  7C 03 03 78 */	mr r3, r0
/* 80BA485C  28 00 00 0F */	cmplwi r0, 0xf
/* 80BA4860  40 82 00 08 */	bne lbl_80BA4868
/* 80BA4864  38 60 00 00 */	li r3, 0
lbl_80BA4868:
/* 80BA4868  88 1F 06 31 */	lbz r0, 0x631(r31)
/* 80BA486C  28 00 00 02 */	cmplwi r0, 2
/* 80BA4870  41 82 01 60 */	beq lbl_80BA49D0
/* 80BA4874  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA4878  41 82 00 6C */	beq lbl_80BA48E4
/* 80BA487C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA4880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA4884  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80BA4888  7F E3 FB 78 */	mr r3, r31
/* 80BA488C  3C 80 80 BA */	lis r4, l_musiya_num@ha /* 0x80BA54F8@ha */
/* 80BA4890  A0 04 54 F8 */	lhz r0, l_musiya_num@l(r4)  /* 0x80BA54F8@l */
/* 80BA4894  54 00 08 3C */	slwi r0, r0, 1
/* 80BA4898  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BA489C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BA48A0  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BA48A4  4B 49 01 19 */	bl isEventBit__11dSv_event_cCFUs
/* 80BA48A8  2C 03 00 00 */	cmpwi r3, 0
/* 80BA48AC  41 82 00 30 */	beq lbl_80BA48DC
/* 80BA48B0  7F E3 FB 78 */	mr r3, r31
/* 80BA48B4  3C 80 80 BA */	lis r4, l_musiya_num@ha /* 0x80BA54F8@ha */
/* 80BA48B8  38 84 54 F8 */	addi r4, r4, l_musiya_num@l /* 0x80BA54F8@l */
/* 80BA48BC  A0 04 00 02 */	lhz r0, 2(r4)
/* 80BA48C0  54 00 08 3C */	slwi r0, r0, 1
/* 80BA48C4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BA48C8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BA48CC  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BA48D0  4B 49 00 ED */	bl isEventBit__11dSv_event_cCFUs
/* 80BA48D4  2C 03 00 00 */	cmpwi r3, 0
/* 80BA48D8  40 82 00 F8 */	bne lbl_80BA49D0
lbl_80BA48DC:
/* 80BA48DC  38 60 00 00 */	li r3, 0
/* 80BA48E0  48 00 00 F4 */	b lbl_80BA49D4
lbl_80BA48E4:
/* 80BA48E4  3C 60 80 BA */	lis r3, d_a_obj_ari__stringBase0@ha /* 0x80BA550C@ha */
/* 80BA48E8  38 63 55 0C */	addi r3, r3, d_a_obj_ari__stringBase0@l /* 0x80BA550C@l */
/* 80BA48EC  38 63 00 06 */	addi r3, r3, 6
/* 80BA48F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA48F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA48F8  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80BA48FC  4B 7C 40 99 */	bl strcmp
/* 80BA4900  2C 03 00 00 */	cmpwi r3, 0
/* 80BA4904  40 82 00 CC */	bne lbl_80BA49D0
/* 80BA4908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA490C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA4910  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80BA4914  2C 00 00 03 */	cmpwi r0, 3
/* 80BA4918  40 82 00 B8 */	bne lbl_80BA49D0
/* 80BA491C  88 1F 06 30 */	lbz r0, 0x630(r31)
/* 80BA4920  3C 60 80 BA */	lis r3, l_ari_itemno@ha /* 0x80BA5410@ha */
/* 80BA4924  38 63 54 10 */	addi r3, r3, l_ari_itemno@l /* 0x80BA5410@l */
/* 80BA4928  7C 63 00 AE */	lbzx r3, r3, r0
/* 80BA492C  4B 63 56 11 */	bl isCatchNotGiveInsect__14dMenu_Insect_cFUc
/* 80BA4930  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BA4934  41 82 00 0C */	beq lbl_80BA4940
/* 80BA4938  38 60 00 00 */	li r3, 0
/* 80BA493C  48 00 00 98 */	b lbl_80BA49D4
lbl_80BA4940:
/* 80BA4940  88 1F 06 30 */	lbz r0, 0x630(r31)
/* 80BA4944  28 00 00 00 */	cmplwi r0, 0
/* 80BA4948  40 82 00 3C */	bne lbl_80BA4984
/* 80BA494C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA4950  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA4954  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BA4958  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80BA495C  3C 80 80 BA */	lis r4, l_musiya_num@ha /* 0x80BA54F8@ha */
/* 80BA4960  38 84 54 F8 */	addi r4, r4, l_musiya_num@l /* 0x80BA54F8@l */
/* 80BA4964  7C 04 02 2E */	lhzx r0, r4, r0
/* 80BA4968  54 00 08 3C */	slwi r0, r0, 1
/* 80BA496C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BA4970  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BA4974  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BA4978  4B 49 00 45 */	bl isEventBit__11dSv_event_cCFUs
/* 80BA497C  2C 03 00 00 */	cmpwi r3, 0
/* 80BA4980  41 82 00 48 */	beq lbl_80BA49C8
lbl_80BA4984:
/* 80BA4984  88 1F 06 30 */	lbz r0, 0x630(r31)
/* 80BA4988  28 00 00 01 */	cmplwi r0, 1
/* 80BA498C  40 82 00 44 */	bne lbl_80BA49D0
/* 80BA4990  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA4994  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA4998  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BA499C  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80BA49A0  3C 80 80 BA */	lis r4, l_musiya_num@ha /* 0x80BA54F8@ha */
/* 80BA49A4  38 84 54 F8 */	addi r4, r4, l_musiya_num@l /* 0x80BA54F8@l */
/* 80BA49A8  7C 04 02 2E */	lhzx r0, r4, r0
/* 80BA49AC  54 00 08 3C */	slwi r0, r0, 1
/* 80BA49B0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BA49B4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BA49B8  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BA49BC  4B 49 00 01 */	bl isEventBit__11dSv_event_cCFUs
/* 80BA49C0  2C 03 00 00 */	cmpwi r3, 0
/* 80BA49C4  40 82 00 0C */	bne lbl_80BA49D0
lbl_80BA49C8:
/* 80BA49C8  38 60 00 00 */	li r3, 0
/* 80BA49CC  48 00 00 08 */	b lbl_80BA49D4
lbl_80BA49D0:
/* 80BA49D0  38 60 00 01 */	li r3, 1
lbl_80BA49D4:
/* 80BA49D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA49D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA49DC  7C 08 03 A6 */	mtlr r0
/* 80BA49E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA49E4  4E 80 00 20 */	blr 
