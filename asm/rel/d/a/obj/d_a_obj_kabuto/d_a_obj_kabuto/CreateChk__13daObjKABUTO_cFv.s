lbl_80C2D578:
/* 80C2D578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2D57C  7C 08 02 A6 */	mflr r0
/* 80C2D580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2D584  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2D588  7C 7F 1B 78 */	mr r31, r3
/* 80C2D58C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C2D590  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80C2D594  7C 03 03 78 */	mr r3, r0
/* 80C2D598  28 00 00 0F */	cmplwi r0, 0xf
/* 80C2D59C  40 82 00 08 */	bne lbl_80C2D5A4
/* 80C2D5A0  38 60 00 00 */	li r3, 0
lbl_80C2D5A4:
/* 80C2D5A4  88 1F 07 36 */	lbz r0, 0x736(r31)
/* 80C2D5A8  28 00 00 02 */	cmplwi r0, 2
/* 80C2D5AC  41 82 01 60 */	beq lbl_80C2D70C
/* 80C2D5B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2D5B4  41 82 00 6C */	beq lbl_80C2D620
/* 80C2D5B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2D5BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2D5C0  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80C2D5C4  7F E3 FB 78 */	mr r3, r31
/* 80C2D5C8  3C 80 80 C3 */	lis r4, l_musiya_num@ha /* 0x80C2E200@ha */
/* 80C2D5CC  A0 04 E2 00 */	lhz r0, l_musiya_num@l(r4)  /* 0x80C2E200@l */
/* 80C2D5D0  54 00 08 3C */	slwi r0, r0, 1
/* 80C2D5D4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C2D5D8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C2D5DC  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C2D5E0  4B 40 73 DD */	bl isEventBit__11dSv_event_cCFUs
/* 80C2D5E4  2C 03 00 00 */	cmpwi r3, 0
/* 80C2D5E8  41 82 00 30 */	beq lbl_80C2D618
/* 80C2D5EC  7F E3 FB 78 */	mr r3, r31
/* 80C2D5F0  3C 80 80 C3 */	lis r4, l_musiya_num@ha /* 0x80C2E200@ha */
/* 80C2D5F4  38 84 E2 00 */	addi r4, r4, l_musiya_num@l /* 0x80C2E200@l */
/* 80C2D5F8  A0 04 00 02 */	lhz r0, 2(r4)
/* 80C2D5FC  54 00 08 3C */	slwi r0, r0, 1
/* 80C2D600  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C2D604  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C2D608  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C2D60C  4B 40 73 B1 */	bl isEventBit__11dSv_event_cCFUs
/* 80C2D610  2C 03 00 00 */	cmpwi r3, 0
/* 80C2D614  40 82 00 F8 */	bne lbl_80C2D70C
lbl_80C2D618:
/* 80C2D618  38 60 00 00 */	li r3, 0
/* 80C2D61C  48 00 00 F4 */	b lbl_80C2D710
lbl_80C2D620:
/* 80C2D620  3C 60 80 C3 */	lis r3, d_a_obj_kabuto__stringBase0@ha /* 0x80C2E218@ha */
/* 80C2D624  38 63 E2 18 */	addi r3, r3, d_a_obj_kabuto__stringBase0@l /* 0x80C2E218@l */
/* 80C2D628  38 63 00 06 */	addi r3, r3, 6
/* 80C2D62C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2D630  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2D634  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80C2D638  4B 73 B3 5D */	bl strcmp
/* 80C2D63C  2C 03 00 00 */	cmpwi r3, 0
/* 80C2D640  40 82 00 CC */	bne lbl_80C2D70C
/* 80C2D644  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2D648  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2D64C  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80C2D650  2C 00 00 03 */	cmpwi r0, 3
/* 80C2D654  40 82 00 B8 */	bne lbl_80C2D70C
/* 80C2D658  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C2D65C  3C 60 80 C3 */	lis r3, l_kab_itemno@ha /* 0x80C2E1E0@ha */
/* 80C2D660  38 63 E1 E0 */	addi r3, r3, l_kab_itemno@l /* 0x80C2E1E0@l */
/* 80C2D664  7C 63 00 AE */	lbzx r3, r3, r0
/* 80C2D668  4B 5A C8 D5 */	bl isCatchNotGiveInsect__14dMenu_Insect_cFUc
/* 80C2D66C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C2D670  41 82 00 0C */	beq lbl_80C2D67C
/* 80C2D674  38 60 00 00 */	li r3, 0
/* 80C2D678  48 00 00 98 */	b lbl_80C2D710
lbl_80C2D67C:
/* 80C2D67C  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C2D680  28 00 00 00 */	cmplwi r0, 0
/* 80C2D684  40 82 00 3C */	bne lbl_80C2D6C0
/* 80C2D688  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2D68C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2D690  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C2D694  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80C2D698  3C 80 80 C3 */	lis r4, l_musiya_num@ha /* 0x80C2E200@ha */
/* 80C2D69C  38 84 E2 00 */	addi r4, r4, l_musiya_num@l /* 0x80C2E200@l */
/* 80C2D6A0  7C 04 02 2E */	lhzx r0, r4, r0
/* 80C2D6A4  54 00 08 3C */	slwi r0, r0, 1
/* 80C2D6A8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C2D6AC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C2D6B0  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C2D6B4  4B 40 73 09 */	bl isEventBit__11dSv_event_cCFUs
/* 80C2D6B8  2C 03 00 00 */	cmpwi r3, 0
/* 80C2D6BC  41 82 00 48 */	beq lbl_80C2D704
lbl_80C2D6C0:
/* 80C2D6C0  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80C2D6C4  28 00 00 01 */	cmplwi r0, 1
/* 80C2D6C8  40 82 00 44 */	bne lbl_80C2D70C
/* 80C2D6CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C2D6D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C2D6D4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C2D6D8  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80C2D6DC  3C 80 80 C3 */	lis r4, l_musiya_num@ha /* 0x80C2E200@ha */
/* 80C2D6E0  38 84 E2 00 */	addi r4, r4, l_musiya_num@l /* 0x80C2E200@l */
/* 80C2D6E4  7C 04 02 2E */	lhzx r0, r4, r0
/* 80C2D6E8  54 00 08 3C */	slwi r0, r0, 1
/* 80C2D6EC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C2D6F0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C2D6F4  7C 84 02 2E */	lhzx r4, r4, r0
/* 80C2D6F8  4B 40 72 C5 */	bl isEventBit__11dSv_event_cCFUs
/* 80C2D6FC  2C 03 00 00 */	cmpwi r3, 0
/* 80C2D700  40 82 00 0C */	bne lbl_80C2D70C
lbl_80C2D704:
/* 80C2D704  38 60 00 00 */	li r3, 0
/* 80C2D708  48 00 00 08 */	b lbl_80C2D710
lbl_80C2D70C:
/* 80C2D70C  38 60 00 01 */	li r3, 1
lbl_80C2D710:
/* 80C2D710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C2D714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2D718  7C 08 03 A6 */	mtlr r0
/* 80C2D71C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2D720  4E 80 00 20 */	blr 
