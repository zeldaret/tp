lbl_80D0AD9C:
/* 80D0AD9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0ADA0  7C 08 02 A6 */	mflr r0
/* 80D0ADA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0ADA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0ADAC  7C 7F 1B 78 */	mr r31, r3
/* 80D0ADB0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D0ADB4  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80D0ADB8  7C 03 03 78 */	mr r3, r0
/* 80D0ADBC  28 00 00 0F */	cmplwi r0, 0xf
/* 80D0ADC0  40 82 00 08 */	bne lbl_80D0ADC8
/* 80D0ADC4  38 60 00 00 */	li r3, 0
lbl_80D0ADC8:
/* 80D0ADC8  88 1F 06 24 */	lbz r0, 0x624(r31)
/* 80D0ADCC  28 00 00 02 */	cmplwi r0, 2
/* 80D0ADD0  41 82 01 60 */	beq lbl_80D0AF30
/* 80D0ADD4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0ADD8  41 82 00 6C */	beq lbl_80D0AE44
/* 80D0ADDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0ADE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0ADE4  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80D0ADE8  7F E3 FB 78 */	mr r3, r31
/* 80D0ADEC  3C 80 80 D1 */	lis r4, l_musiya_num@ha /* 0x80D0B9D0@ha */
/* 80D0ADF0  A0 04 B9 D0 */	lhz r0, l_musiya_num@l(r4)  /* 0x80D0B9D0@l */
/* 80D0ADF4  54 00 08 3C */	slwi r0, r0, 1
/* 80D0ADF8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D0ADFC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D0AE00  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D0AE04  4B 32 9B B9 */	bl isEventBit__11dSv_event_cCFUs
/* 80D0AE08  2C 03 00 00 */	cmpwi r3, 0
/* 80D0AE0C  41 82 00 30 */	beq lbl_80D0AE3C
/* 80D0AE10  7F E3 FB 78 */	mr r3, r31
/* 80D0AE14  3C 80 80 D1 */	lis r4, l_musiya_num@ha /* 0x80D0B9D0@ha */
/* 80D0AE18  38 84 B9 D0 */	addi r4, r4, l_musiya_num@l /* 0x80D0B9D0@l */
/* 80D0AE1C  A0 04 00 02 */	lhz r0, 2(r4)
/* 80D0AE20  54 00 08 3C */	slwi r0, r0, 1
/* 80D0AE24  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D0AE28  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D0AE2C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D0AE30  4B 32 9B 8D */	bl isEventBit__11dSv_event_cCFUs
/* 80D0AE34  2C 03 00 00 */	cmpwi r3, 0
/* 80D0AE38  40 82 00 F8 */	bne lbl_80D0AF30
lbl_80D0AE3C:
/* 80D0AE3C  38 60 00 00 */	li r3, 0
/* 80D0AE40  48 00 00 F4 */	b lbl_80D0AF34
lbl_80D0AE44:
/* 80D0AE44  3C 60 80 D1 */	lis r3, d_a_obj_ten__stringBase0@ha /* 0x80D0B9E4@ha */
/* 80D0AE48  38 63 B9 E4 */	addi r3, r3, d_a_obj_ten__stringBase0@l /* 0x80D0B9E4@l */
/* 80D0AE4C  38 63 00 06 */	addi r3, r3, 6
/* 80D0AE50  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0AE54  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0AE58  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80D0AE5C  4B 65 DB 39 */	bl strcmp
/* 80D0AE60  2C 03 00 00 */	cmpwi r3, 0
/* 80D0AE64  40 82 00 CC */	bne lbl_80D0AF30
/* 80D0AE68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0AE6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0AE70  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80D0AE74  2C 00 00 03 */	cmpwi r0, 3
/* 80D0AE78  40 82 00 B8 */	bne lbl_80D0AF30
/* 80D0AE7C  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80D0AE80  3C 60 80 D1 */	lis r3, l_ten_itemno@ha /* 0x80D0B8F4@ha */
/* 80D0AE84  38 63 B8 F4 */	addi r3, r3, l_ten_itemno@l /* 0x80D0B8F4@l */
/* 80D0AE88  7C 63 00 AE */	lbzx r3, r3, r0
/* 80D0AE8C  4B 4C F0 B1 */	bl isCatchNotGiveInsect__14dMenu_Insect_cFUc
/* 80D0AE90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D0AE94  41 82 00 0C */	beq lbl_80D0AEA0
/* 80D0AE98  38 60 00 00 */	li r3, 0
/* 80D0AE9C  48 00 00 98 */	b lbl_80D0AF34
lbl_80D0AEA0:
/* 80D0AEA0  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80D0AEA4  28 00 00 00 */	cmplwi r0, 0
/* 80D0AEA8  40 82 00 3C */	bne lbl_80D0AEE4
/* 80D0AEAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0AEB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0AEB4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D0AEB8  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80D0AEBC  3C 80 80 D1 */	lis r4, l_musiya_num@ha /* 0x80D0B9D0@ha */
/* 80D0AEC0  38 84 B9 D0 */	addi r4, r4, l_musiya_num@l /* 0x80D0B9D0@l */
/* 80D0AEC4  7C 04 02 2E */	lhzx r0, r4, r0
/* 80D0AEC8  54 00 08 3C */	slwi r0, r0, 1
/* 80D0AECC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D0AED0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D0AED4  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D0AED8  4B 32 9A E5 */	bl isEventBit__11dSv_event_cCFUs
/* 80D0AEDC  2C 03 00 00 */	cmpwi r3, 0
/* 80D0AEE0  41 82 00 48 */	beq lbl_80D0AF28
lbl_80D0AEE4:
/* 80D0AEE4  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80D0AEE8  28 00 00 01 */	cmplwi r0, 1
/* 80D0AEEC  40 82 00 44 */	bne lbl_80D0AF30
/* 80D0AEF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D0AEF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0AEF8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D0AEFC  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80D0AF00  3C 80 80 D1 */	lis r4, l_musiya_num@ha /* 0x80D0B9D0@ha */
/* 80D0AF04  38 84 B9 D0 */	addi r4, r4, l_musiya_num@l /* 0x80D0B9D0@l */
/* 80D0AF08  7C 04 02 2E */	lhzx r0, r4, r0
/* 80D0AF0C  54 00 08 3C */	slwi r0, r0, 1
/* 80D0AF10  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D0AF14  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D0AF18  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D0AF1C  4B 32 9A A1 */	bl isEventBit__11dSv_event_cCFUs
/* 80D0AF20  2C 03 00 00 */	cmpwi r3, 0
/* 80D0AF24  40 82 00 0C */	bne lbl_80D0AF30
lbl_80D0AF28:
/* 80D0AF28  38 60 00 00 */	li r3, 0
/* 80D0AF2C  48 00 00 08 */	b lbl_80D0AF34
lbl_80D0AF30:
/* 80D0AF30  38 60 00 01 */	li r3, 1
lbl_80D0AF34:
/* 80D0AF34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0AF38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0AF3C  7C 08 03 A6 */	mtlr r0
/* 80D0AF40  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0AF44  4E 80 00 20 */	blr 
