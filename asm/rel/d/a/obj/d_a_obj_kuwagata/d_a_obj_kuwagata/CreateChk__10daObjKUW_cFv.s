lbl_80C4C95C:
/* 80C4C95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C4C960  7C 08 02 A6 */	mflr r0
/* 80C4C964  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4C968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C4C96C  7C 7F 1B 78 */	mr r31, r3
/* 80C4C970  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C4C974  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80C4C978  7C 03 03 78 */	mr r3, r0
/* 80C4C97C  28 00 00 0F */	cmplwi r0, 0xf
/* 80C4C980  40 82 00 08 */	bne lbl_80C4C988
/* 80C4C984  38 60 00 00 */	li r3, 0
lbl_80C4C988:
/* 80C4C988  88 1F 09 C0 */	lbz r0, 0x9c0(r31)
/* 80C4C98C  28 00 00 02 */	cmplwi r0, 2
/* 80C4C990  41 82 01 60 */	beq lbl_80C4CAF0
/* 80C4C994  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C4C998  41 82 00 6C */	beq lbl_80C4CA04
/* 80C4C99C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4C9A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4C9A4  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80C4C9A8  7F E3 FB 78 */	mr r3, r31
/* 80C4C9AC  3C 80 80 C5 */	lis r4, l_musiya_num@ha
/* 80C4C9B0  A0 04 D5 74 */	lhz r0, l_musiya_num@l(r4)
/* 80C4C9B4  54 00 08 3C */	slwi r0, r0, 1
/* 80C4C9B8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C4C9BC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C4C9C0  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C4C9C4  4B 3E 7F F8 */	b isEventBit__11dSv_event_cCFUs
/* 80C4C9C8  2C 03 00 00 */	cmpwi r3, 0
/* 80C4C9CC  41 82 00 30 */	beq lbl_80C4C9FC
/* 80C4C9D0  7F E3 FB 78 */	mr r3, r31
/* 80C4C9D4  3C 80 80 C5 */	lis r4, l_musiya_num@ha
/* 80C4C9D8  38 84 D5 74 */	addi r4, r4, l_musiya_num@l
/* 80C4C9DC  A0 04 00 02 */	lhz r0, 2(r4)
/* 80C4C9E0  54 00 08 3C */	slwi r0, r0, 1
/* 80C4C9E4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C4C9E8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C4C9EC  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C4C9F0  4B 3E 7F CC */	b isEventBit__11dSv_event_cCFUs
/* 80C4C9F4  2C 03 00 00 */	cmpwi r3, 0
/* 80C4C9F8  40 82 00 F8 */	bne lbl_80C4CAF0
lbl_80C4C9FC:
/* 80C4C9FC  38 60 00 00 */	li r3, 0
/* 80C4CA00  48 00 00 F4 */	b lbl_80C4CAF4
lbl_80C4CA04:
/* 80C4CA04  3C 60 80 C5 */	lis r3, stringBase0@ha
/* 80C4CA08  38 63 D5 8C */	addi r3, r3, stringBase0@l
/* 80C4CA0C  38 63 00 06 */	addi r3, r3, 6
/* 80C4CA10  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C4CA14  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C4CA18  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80C4CA1C  4B 71 BF 78 */	b strcmp
/* 80C4CA20  2C 03 00 00 */	cmpwi r3, 0
/* 80C4CA24  40 82 00 CC */	bne lbl_80C4CAF0
/* 80C4CA28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4CA2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4CA30  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80C4CA34  2C 00 00 03 */	cmpwi r0, 3
/* 80C4CA38  40 82 00 B8 */	bne lbl_80C4CAF0
/* 80C4CA3C  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C4CA40  3C 60 80 C5 */	lis r3, l_kuw_itemno@ha
/* 80C4CA44  38 63 D5 48 */	addi r3, r3, l_kuw_itemno@l
/* 80C4CA48  7C 63 00 AE */	lbzx r3, r3, r0
/* 80C4CA4C  4B 58 D4 F0 */	b isCatchNotGiveInsect__14dMenu_Insect_cFUc
/* 80C4CA50  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C4CA54  41 82 00 0C */	beq lbl_80C4CA60
/* 80C4CA58  38 60 00 00 */	li r3, 0
/* 80C4CA5C  48 00 00 98 */	b lbl_80C4CAF4
lbl_80C4CA60:
/* 80C4CA60  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C4CA64  28 00 00 00 */	cmplwi r0, 0
/* 80C4CA68  40 82 00 3C */	bne lbl_80C4CAA4
/* 80C4CA6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4CA70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4CA74  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C4CA78  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80C4CA7C  3C 80 80 C5 */	lis r4, l_musiya_num@ha
/* 80C4CA80  38 84 D5 74 */	addi r4, r4, l_musiya_num@l
/* 80C4CA84  7C 04 02 2E */	lhzx r0, r4, r0
/* 80C4CA88  54 00 08 3C */	slwi r0, r0, 1
/* 80C4CA8C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C4CA90  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C4CA94  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C4CA98  4B 3E 7F 24 */	b isEventBit__11dSv_event_cCFUs
/* 80C4CA9C  2C 03 00 00 */	cmpwi r3, 0
/* 80C4CAA0  41 82 00 48 */	beq lbl_80C4CAE8
lbl_80C4CAA4:
/* 80C4CAA4  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C4CAA8  28 00 00 01 */	cmplwi r0, 1
/* 80C4CAAC  40 82 00 44 */	bne lbl_80C4CAF0
/* 80C4CAB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C4CAB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C4CAB8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C4CABC  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80C4CAC0  3C 80 80 C5 */	lis r4, l_musiya_num@ha
/* 80C4CAC4  38 84 D5 74 */	addi r4, r4, l_musiya_num@l
/* 80C4CAC8  7C 04 02 2E */	lhzx r0, r4, r0
/* 80C4CACC  54 00 08 3C */	slwi r0, r0, 1
/* 80C4CAD0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C4CAD4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C4CAD8  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C4CADC  4B 3E 7E E0 */	b isEventBit__11dSv_event_cCFUs
/* 80C4CAE0  2C 03 00 00 */	cmpwi r3, 0
/* 80C4CAE4  40 82 00 0C */	bne lbl_80C4CAF0
lbl_80C4CAE8:
/* 80C4CAE8  38 60 00 00 */	li r3, 0
/* 80C4CAEC  48 00 00 08 */	b lbl_80C4CAF4
lbl_80C4CAF0:
/* 80C4CAF0  38 60 00 01 */	li r3, 1
lbl_80C4CAF4:
/* 80C4CAF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C4CAF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C4CAFC  7C 08 03 A6 */	mtlr r0
/* 80C4CB00  38 21 00 10 */	addi r1, r1, 0x10
/* 80C4CB04  4E 80 00 20 */	blr 
