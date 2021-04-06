lbl_80D1AFC8:
/* 80D1AFC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1AFCC  7C 08 02 A6 */	mflr r0
/* 80D1AFD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1AFD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1AFD8  7C 7F 1B 78 */	mr r31, r3
/* 80D1AFDC  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80D1AFE0  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80D1AFE4  7C 03 03 78 */	mr r3, r0
/* 80D1AFE8  28 00 00 0F */	cmplwi r0, 0xf
/* 80D1AFEC  40 82 00 08 */	bne lbl_80D1AFF4
/* 80D1AFF0  38 60 00 00 */	li r3, 0
lbl_80D1AFF4:
/* 80D1AFF4  88 1F 07 5C */	lbz r0, 0x75c(r31)
/* 80D1AFF8  28 00 00 02 */	cmplwi r0, 2
/* 80D1AFFC  41 82 01 60 */	beq lbl_80D1B15C
/* 80D1B000  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D1B004  41 82 00 6C */	beq lbl_80D1B070
/* 80D1B008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1B00C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1B010  3B E3 07 F0 */	addi r31, r3, 0x7f0
/* 80D1B014  7F E3 FB 78 */	mr r3, r31
/* 80D1B018  3C 80 80 D2 */	lis r4, l_musiya_num@ha /* 0x80D1B7E0@ha */
/* 80D1B01C  A0 04 B7 E0 */	lhz r0, l_musiya_num@l(r4)  /* 0x80D1B7E0@l */
/* 80D1B020  54 00 08 3C */	slwi r0, r0, 1
/* 80D1B024  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D1B028  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D1B02C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D1B030  4B 31 99 8D */	bl isEventBit__11dSv_event_cCFUs
/* 80D1B034  2C 03 00 00 */	cmpwi r3, 0
/* 80D1B038  41 82 00 30 */	beq lbl_80D1B068
/* 80D1B03C  7F E3 FB 78 */	mr r3, r31
/* 80D1B040  3C 80 80 D2 */	lis r4, l_musiya_num@ha /* 0x80D1B7E0@ha */
/* 80D1B044  38 84 B7 E0 */	addi r4, r4, l_musiya_num@l /* 0x80D1B7E0@l */
/* 80D1B048  A0 04 00 02 */	lhz r0, 2(r4)
/* 80D1B04C  54 00 08 3C */	slwi r0, r0, 1
/* 80D1B050  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D1B054  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D1B058  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D1B05C  4B 31 99 61 */	bl isEventBit__11dSv_event_cCFUs
/* 80D1B060  2C 03 00 00 */	cmpwi r3, 0
/* 80D1B064  40 82 00 F8 */	bne lbl_80D1B15C
lbl_80D1B068:
/* 80D1B068  38 60 00 00 */	li r3, 0
/* 80D1B06C  48 00 00 F4 */	b lbl_80D1B160
lbl_80D1B070:
/* 80D1B070  3C 60 80 D2 */	lis r3, d_a_obj_tombo__stringBase0@ha /* 0x80D1B7E8@ha */
/* 80D1B074  38 63 B7 E8 */	addi r3, r3, d_a_obj_tombo__stringBase0@l /* 0x80D1B7E8@l */
/* 80D1B078  38 63 00 06 */	addi r3, r3, 6
/* 80D1B07C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1B080  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1B084  38 84 4E 00 */	addi r4, r4, 0x4e00
/* 80D1B088  4B 64 D9 0D */	bl strcmp
/* 80D1B08C  2C 03 00 00 */	cmpwi r3, 0
/* 80D1B090  40 82 00 CC */	bne lbl_80D1B15C
/* 80D1B094  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1B098  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1B09C  88 03 4E 0A */	lbz r0, 0x4e0a(r3)
/* 80D1B0A0  2C 00 00 03 */	cmpwi r0, 3
/* 80D1B0A4  40 82 00 B8 */	bne lbl_80D1B15C
/* 80D1B0A8  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80D1B0AC  3C 60 80 D2 */	lis r3, l_tom_itemno@ha /* 0x80D1B6E0@ha */
/* 80D1B0B0  38 63 B6 E0 */	addi r3, r3, l_tom_itemno@l /* 0x80D1B6E0@l */
/* 80D1B0B4  7C 63 00 AE */	lbzx r3, r3, r0
/* 80D1B0B8  4B 4B EE 85 */	bl isCatchNotGiveInsect__14dMenu_Insect_cFUc
/* 80D1B0BC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D1B0C0  41 82 00 0C */	beq lbl_80D1B0CC
/* 80D1B0C4  38 60 00 00 */	li r3, 0
/* 80D1B0C8  48 00 00 98 */	b lbl_80D1B160
lbl_80D1B0CC:
/* 80D1B0CC  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80D1B0D0  28 00 00 00 */	cmplwi r0, 0
/* 80D1B0D4  40 82 00 3C */	bne lbl_80D1B110
/* 80D1B0D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1B0DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1B0E0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D1B0E4  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80D1B0E8  3C 80 80 D2 */	lis r4, l_musiya_num@ha /* 0x80D1B7E0@ha */
/* 80D1B0EC  38 84 B7 E0 */	addi r4, r4, l_musiya_num@l /* 0x80D1B7E0@l */
/* 80D1B0F0  7C 04 02 2E */	lhzx r0, r4, r0
/* 80D1B0F4  54 00 08 3C */	slwi r0, r0, 1
/* 80D1B0F8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D1B0FC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D1B100  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D1B104  4B 31 98 B9 */	bl isEventBit__11dSv_event_cCFUs
/* 80D1B108  2C 03 00 00 */	cmpwi r3, 0
/* 80D1B10C  41 82 00 48 */	beq lbl_80D1B154
lbl_80D1B110:
/* 80D1B110  88 1F 05 81 */	lbz r0, 0x581(r31)
/* 80D1B114  28 00 00 01 */	cmplwi r0, 1
/* 80D1B118  40 82 00 44 */	bne lbl_80D1B15C
/* 80D1B11C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D1B120  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D1B124  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D1B128  54 00 0D FC */	rlwinm r0, r0, 1, 0x17, 0x1e
/* 80D1B12C  3C 80 80 D2 */	lis r4, l_musiya_num@ha /* 0x80D1B7E0@ha */
/* 80D1B130  38 84 B7 E0 */	addi r4, r4, l_musiya_num@l /* 0x80D1B7E0@l */
/* 80D1B134  7C 04 02 2E */	lhzx r0, r4, r0
/* 80D1B138  54 00 08 3C */	slwi r0, r0, 1
/* 80D1B13C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D1B140  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D1B144  7C 84 02 2E */	lhzx r4, r4, r0
/* 80D1B148  4B 31 98 75 */	bl isEventBit__11dSv_event_cCFUs
/* 80D1B14C  2C 03 00 00 */	cmpwi r3, 0
/* 80D1B150  40 82 00 0C */	bne lbl_80D1B15C
lbl_80D1B154:
/* 80D1B154  38 60 00 00 */	li r3, 0
/* 80D1B158  48 00 00 08 */	b lbl_80D1B160
lbl_80D1B15C:
/* 80D1B15C  38 60 00 01 */	li r3, 1
lbl_80D1B160:
/* 80D1B160  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1B164  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1B168  7C 08 03 A6 */	mtlr r0
/* 80D1B16C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1B170  4E 80 00 20 */	blr 
