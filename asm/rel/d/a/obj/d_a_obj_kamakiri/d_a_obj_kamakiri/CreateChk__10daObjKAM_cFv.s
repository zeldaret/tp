lbl_80C378F4:
/* 80C378F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C378F8  7C 08 02 A6 */	mflr r0
/* 80C378FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C37900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C37904  7C 7F 1B 78 */	mr r31, r3
/* 80C37908  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C3790C  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80C37910  7C 03 03 78 */	mr r3, r0
/* 80C37914  28 00 00 0F */	cmplwi r0, 0xf
/* 80C37918  40 82 00 08 */	bne lbl_80C37920
/* 80C3791C  38 60 00 00 */	li r3, 0
lbl_80C37920:
/* 80C37920  88 1F 09 C0 */	lbz r0, 0x9c0(r31)
/* 80C37924  28 00 00 02 */	cmplwi r0, 2
/* 80C37928  41 82 01 60 */	beq lbl_80C37A88
/* 80C3792C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C37930  41 82 00 6C */	beq lbl_80C3799C
/* 80C37934  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C37938  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C3793C  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80C37940  7F E3 FB 78 */	mr r3, r31
/* 80C37944  3C 80 80 C4 */	lis r4, l_musiya_num@ha /* 0x80C384E4@ha */
/* 80C37948  A0 04 84 E4 */	lhz r0, l_musiya_num@l(r4)  /* 0x80C384E4@l */
/* 80C3794C  54 00 08 3C */	slwi r0, r0, 1
/* 80C37950  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C37954  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C37958  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C3795C  4B 3F D0 61 */	bl isEventBit__11dSv_event_cCFUs
/* 80C37960  2C 03 00 00 */	cmpwi r3, 0
/* 80C37964  41 82 00 30 */	beq lbl_80C37994
/* 80C37968  7F E3 FB 78 */	mr r3, r31
/* 80C3796C  3C 80 80 C4 */	lis r4, l_musiya_num@ha /* 0x80C384E4@ha */
/* 80C37970  38 84 84 E4 */	addi r4, r4, l_musiya_num@l /* 0x80C384E4@l */
/* 80C37974  A0 04 00 02 */	lhz r0, 2(r4)
/* 80C37978  54 00 08 3C */	slwi r0, r0, 1
/* 80C3797C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C37980  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C37984  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C37988  4B 3F D0 35 */	bl isEventBit__11dSv_event_cCFUs
/* 80C3798C  2C 03 00 00 */	cmpwi r3, 0
/* 80C37990  40 82 00 F8 */	bne lbl_80C37A88
lbl_80C37994:
/* 80C37994  38 60 00 00 */	li r3, 0
/* 80C37998  48 00 00 F4 */	b lbl_80C37A8C
lbl_80C3799C:
/* 80C3799C  3C 60 80 C4 */	lis r3, d_a_obj_kamakiri__stringBase0@ha /* 0x80C384FC@ha */
/* 80C379A0  38 63 84 FC */	addi r3, r3, d_a_obj_kamakiri__stringBase0@l /* 0x80C384FC@l */
/* 80C379A4  38 63 00 06 */	addi r3, r3, 6
/* 80C379A8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C379AC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C379B0  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80C379B4  4B 73 0F E1 */	bl strcmp
/* 80C379B8  2C 03 00 00 */	cmpwi r3, 0
/* 80C379BC  40 82 00 CC */	bne lbl_80C37A88
/* 80C379C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C379C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C379C8  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80C379CC  2C 00 00 03 */	cmpwi r0, 3
/* 80C379D0  40 82 00 B8 */	bne lbl_80C37A88
/* 80C379D4  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C379D8  3C 60 80 C4 */	lis r3, l_kam_itemno@ha /* 0x80C384BC@ha */
/* 80C379DC  38 63 84 BC */	addi r3, r3, l_kam_itemno@l /* 0x80C384BC@l */
/* 80C379E0  7C 63 00 AE */	lbzx r3, r3, r0
/* 80C379E4  4B 5A 25 59 */	bl isCatchNotGiveInsect__14dMenu_Insect_cFUc
/* 80C379E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C379EC  41 82 00 0C */	beq lbl_80C379F8
/* 80C379F0  38 60 00 00 */	li r3, 0
/* 80C379F4  48 00 00 98 */	b lbl_80C37A8C
lbl_80C379F8:
/* 80C379F8  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C379FC  28 00 00 00 */	cmplwi r0, 0
/* 80C37A00  40 82 00 3C */	bne lbl_80C37A3C
/* 80C37A04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C37A08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C37A0C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C37A10  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80C37A14  3C 80 80 C4 */	lis r4, l_musiya_num@ha /* 0x80C384E4@ha */
/* 80C37A18  38 84 84 E4 */	addi r4, r4, l_musiya_num@l /* 0x80C384E4@l */
/* 80C37A1C  7C 04 02 2E */	lhzx r0, r4, r0
/* 80C37A20  54 00 08 3C */	slwi r0, r0, 1
/* 80C37A24  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C37A28  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C37A2C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C37A30  4B 3F CF 8D */	bl isEventBit__11dSv_event_cCFUs
/* 80C37A34  2C 03 00 00 */	cmpwi r3, 0
/* 80C37A38  41 82 00 48 */	beq lbl_80C37A80
lbl_80C37A3C:
/* 80C37A3C  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C37A40  28 00 00 01 */	cmplwi r0, 1
/* 80C37A44  40 82 00 44 */	bne lbl_80C37A88
/* 80C37A48  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C37A4C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C37A50  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C37A54  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80C37A58  3C 80 80 C4 */	lis r4, l_musiya_num@ha /* 0x80C384E4@ha */
/* 80C37A5C  38 84 84 E4 */	addi r4, r4, l_musiya_num@l /* 0x80C384E4@l */
/* 80C37A60  7C 04 02 2E */	lhzx r0, r4, r0
/* 80C37A64  54 00 08 3C */	slwi r0, r0, 1
/* 80C37A68  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C37A6C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C37A70  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C37A74  4B 3F CF 49 */	bl isEventBit__11dSv_event_cCFUs
/* 80C37A78  2C 03 00 00 */	cmpwi r3, 0
/* 80C37A7C  40 82 00 0C */	bne lbl_80C37A88
lbl_80C37A80:
/* 80C37A80  38 60 00 00 */	li r3, 0
/* 80C37A84  48 00 00 08 */	b lbl_80C37A8C
lbl_80C37A88:
/* 80C37A88  38 60 00 01 */	li r3, 1
lbl_80C37A8C:
/* 80C37A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C37A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C37A94  7C 08 03 A6 */	mtlr r0
/* 80C37A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80C37A9C  4E 80 00 20 */	blr 
