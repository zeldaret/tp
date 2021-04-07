lbl_80BCBE70:
/* 80BCBE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCBE74  7C 08 02 A6 */	mflr r0
/* 80BCBE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCBE7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCBE80  7C 7F 1B 78 */	mr r31, r3
/* 80BCBE84  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BCBE88  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80BCBE8C  7C 03 03 78 */	mr r3, r0
/* 80BCBE90  28 00 00 0F */	cmplwi r0, 0xf
/* 80BCBE94  40 82 00 08 */	bne lbl_80BCBE9C
/* 80BCBE98  38 60 00 00 */	li r3, 0
lbl_80BCBE9C:
/* 80BCBE9C  88 1F 09 C8 */	lbz r0, 0x9c8(r31)
/* 80BCBEA0  28 00 00 02 */	cmplwi r0, 2
/* 80BCBEA4  41 82 01 60 */	beq lbl_80BCC004
/* 80BCBEA8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCBEAC  41 82 00 6C */	beq lbl_80BCBF18
/* 80BCBEB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCBEB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCBEB8  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80BCBEBC  7F E3 FB 78 */	mr r3, r31
/* 80BCBEC0  3C 80 80 BD */	lis r4, l_musiya_num@ha /* 0x80BCC670@ha */
/* 80BCBEC4  A0 04 C6 70 */	lhz r0, l_musiya_num@l(r4)  /* 0x80BCC670@l */
/* 80BCBEC8  54 00 08 3C */	slwi r0, r0, 1
/* 80BCBECC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BCBED0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BCBED4  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BCBED8  4B 46 8A E5 */	bl isEventBit__11dSv_event_cCFUs
/* 80BCBEDC  2C 03 00 00 */	cmpwi r3, 0
/* 80BCBEE0  41 82 00 30 */	beq lbl_80BCBF10
/* 80BCBEE4  7F E3 FB 78 */	mr r3, r31
/* 80BCBEE8  3C 80 80 BD */	lis r4, l_musiya_num@ha /* 0x80BCC670@ha */
/* 80BCBEEC  38 84 C6 70 */	addi r4, r4, l_musiya_num@l /* 0x80BCC670@l */
/* 80BCBEF0  A0 04 00 02 */	lhz r0, 2(r4)
/* 80BCBEF4  54 00 08 3C */	slwi r0, r0, 1
/* 80BCBEF8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BCBEFC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BCBF00  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BCBF04  4B 46 8A B9 */	bl isEventBit__11dSv_event_cCFUs
/* 80BCBF08  2C 03 00 00 */	cmpwi r3, 0
/* 80BCBF0C  40 82 00 F8 */	bne lbl_80BCC004
lbl_80BCBF10:
/* 80BCBF10  38 60 00 00 */	li r3, 0
/* 80BCBF14  48 00 00 F4 */	b lbl_80BCC008
lbl_80BCBF18:
/* 80BCBF18  3C 60 80 BD */	lis r3, d_a_obj_cho__stringBase0@ha /* 0x80BCC678@ha */
/* 80BCBF1C  38 63 C6 78 */	addi r3, r3, d_a_obj_cho__stringBase0@l /* 0x80BCC678@l */
/* 80BCBF20  38 63 00 06 */	addi r3, r3, 6
/* 80BCBF24  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCBF28  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCBF2C  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80BCBF30  4B 79 CA 65 */	bl strcmp
/* 80BCBF34  2C 03 00 00 */	cmpwi r3, 0
/* 80BCBF38  40 82 00 CC */	bne lbl_80BCC004
/* 80BCBF3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCBF40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCBF44  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80BCBF48  2C 00 00 03 */	cmpwi r0, 3
/* 80BCBF4C  40 82 00 B8 */	bne lbl_80BCC004
/* 80BCBF50  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80BCBF54  3C 60 80 BD */	lis r3, l_cho_itemno@ha /* 0x80BCC630@ha */
/* 80BCBF58  38 63 C6 30 */	addi r3, r3, l_cho_itemno@l /* 0x80BCC630@l */
/* 80BCBF5C  7C 63 00 AE */	lbzx r3, r3, r0
/* 80BCBF60  4B 60 DF DD */	bl isCatchNotGiveInsect__14dMenu_Insect_cFUc
/* 80BCBF64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BCBF68  41 82 00 0C */	beq lbl_80BCBF74
/* 80BCBF6C  38 60 00 00 */	li r3, 0
/* 80BCBF70  48 00 00 98 */	b lbl_80BCC008
lbl_80BCBF74:
/* 80BCBF74  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80BCBF78  28 00 00 00 */	cmplwi r0, 0
/* 80BCBF7C  40 82 00 3C */	bne lbl_80BCBFB8
/* 80BCBF80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCBF84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCBF88  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BCBF8C  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80BCBF90  3C 80 80 BD */	lis r4, l_musiya_num@ha /* 0x80BCC670@ha */
/* 80BCBF94  38 84 C6 70 */	addi r4, r4, l_musiya_num@l /* 0x80BCC670@l */
/* 80BCBF98  7C 04 02 2E */	lhzx r0, r4, r0
/* 80BCBF9C  54 00 08 3C */	slwi r0, r0, 1
/* 80BCBFA0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BCBFA4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BCBFA8  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BCBFAC  4B 46 8A 11 */	bl isEventBit__11dSv_event_cCFUs
/* 80BCBFB0  2C 03 00 00 */	cmpwi r3, 0
/* 80BCBFB4  41 82 00 48 */	beq lbl_80BCBFFC
lbl_80BCBFB8:
/* 80BCBFB8  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80BCBFBC  28 00 00 01 */	cmplwi r0, 1
/* 80BCBFC0  40 82 00 44 */	bne lbl_80BCC004
/* 80BCBFC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCBFC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCBFCC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80BCBFD0  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80BCBFD4  3C 80 80 BD */	lis r4, l_musiya_num@ha /* 0x80BCC670@ha */
/* 80BCBFD8  38 84 C6 70 */	addi r4, r4, l_musiya_num@l /* 0x80BCC670@l */
/* 80BCBFDC  7C 04 02 2E */	lhzx r0, r4, r0
/* 80BCBFE0  54 00 08 3C */	slwi r0, r0, 1
/* 80BCBFE4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80BCBFE8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80BCBFEC  7C 84 02 2E */	lhzx r4, r4, r0
/* 80BCBFF0  4B 46 89 CD */	bl isEventBit__11dSv_event_cCFUs
/* 80BCBFF4  2C 03 00 00 */	cmpwi r3, 0
/* 80BCBFF8  40 82 00 0C */	bne lbl_80BCC004
lbl_80BCBFFC:
/* 80BCBFFC  38 60 00 00 */	li r3, 0
/* 80BCC000  48 00 00 08 */	b lbl_80BCC008
lbl_80BCC004:
/* 80BCC004  38 60 00 01 */	li r3, 1
lbl_80BCC008:
/* 80BCC008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCC00C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCC010  7C 08 03 A6 */	mtlr r0
/* 80BCC014  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCC018  4E 80 00 20 */	blr 
