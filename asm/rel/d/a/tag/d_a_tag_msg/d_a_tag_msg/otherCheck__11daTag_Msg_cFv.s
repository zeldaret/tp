lbl_8048FE18:
/* 8048FE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048FE1C  7C 08 02 A6 */	mflr r0
/* 8048FE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048FE24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048FE28  7C 7F 1B 78 */	mr r31, r3
/* 8048FE2C  88 03 05 DC */	lbz r0, 0x5dc(r3)
/* 8048FE30  28 00 00 00 */	cmplwi r0, 0
/* 8048FE34  41 82 00 7C */	beq lbl_8048FEB0
/* 8048FE38  A0 1F 05 E0 */	lhz r0, 0x5e0(r31)
/* 8048FE3C  28 00 0F FF */	cmplwi r0, 0xfff
/* 8048FE40  41 82 00 2C */	beq lbl_8048FE6C
/* 8048FE44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048FE48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048FE4C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8048FE50  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8048FE54  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8048FE58  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8048FE5C  7C 84 02 2E */	lhzx r4, r4, r0
/* 8048FE60  4B BA 4B 5D */	bl isEventBit__11dSv_event_cCFUs
/* 8048FE64  2C 03 00 00 */	cmpwi r3, 0
/* 8048FE68  41 82 00 40 */	beq lbl_8048FEA8
lbl_8048FE6C:
/* 8048FE6C  A0 1F 05 E2 */	lhz r0, 0x5e2(r31)
/* 8048FE70  28 00 0F FF */	cmplwi r0, 0xfff
/* 8048FE74  41 82 00 9C */	beq lbl_8048FF10
/* 8048FE78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048FE7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048FE80  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 8048FE84  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 8048FE88  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 8048FE8C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8048FE90  7C 84 02 2E */	lhzx r4, r4, r0
/* 8048FE94  4B BA 4B 29 */	bl isEventBit__11dSv_event_cCFUs
/* 8048FE98  2C 03 00 00 */	cmpwi r3, 0
/* 8048FE9C  41 82 00 74 */	beq lbl_8048FF10
/* 8048FEA0  38 60 00 00 */	li r3, 0
/* 8048FEA4  48 00 00 D4 */	b lbl_8048FF78
lbl_8048FEA8:
/* 8048FEA8  38 60 00 00 */	li r3, 0
/* 8048FEAC  48 00 00 CC */	b lbl_8048FF78
lbl_8048FEB0:
/* 8048FEB0  88 9F 05 DE */	lbz r4, 0x5de(r31)
/* 8048FEB4  28 04 00 FF */	cmplwi r4, 0xff
/* 8048FEB8  41 82 00 20 */	beq lbl_8048FED8
/* 8048FEBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048FEC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048FEC4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8048FEC8  7C 05 07 74 */	extsb r5, r0
/* 8048FECC  4B BA 54 95 */	bl isSwitch__10dSv_info_cCFii
/* 8048FED0  2C 03 00 00 */	cmpwi r3, 0
/* 8048FED4  41 82 00 34 */	beq lbl_8048FF08
lbl_8048FED8:
/* 8048FED8  88 9F 05 DF */	lbz r4, 0x5df(r31)
/* 8048FEDC  28 04 00 FF */	cmplwi r4, 0xff
/* 8048FEE0  41 82 00 30 */	beq lbl_8048FF10
/* 8048FEE4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048FEE8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048FEEC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8048FEF0  7C 05 07 74 */	extsb r5, r0
/* 8048FEF4  4B BA 54 6D */	bl isSwitch__10dSv_info_cCFii
/* 8048FEF8  2C 03 00 00 */	cmpwi r3, 0
/* 8048FEFC  41 82 00 14 */	beq lbl_8048FF10
/* 8048FF00  38 60 00 00 */	li r3, 0
/* 8048FF04  48 00 00 74 */	b lbl_8048FF78
lbl_8048FF08:
/* 8048FF08  38 60 00 00 */	li r3, 0
/* 8048FF0C  48 00 00 6C */	b lbl_8048FF78
lbl_8048FF10:
/* 8048FF10  88 1F 05 DD */	lbz r0, 0x5dd(r31)
/* 8048FF14  28 00 00 00 */	cmplwi r0, 0
/* 8048FF18  41 82 00 0C */	beq lbl_8048FF24
/* 8048FF1C  38 60 00 01 */	li r3, 1
/* 8048FF20  48 00 00 58 */	b lbl_8048FF78
lbl_8048FF24:
/* 8048FF24  7F E3 FB 78 */	mr r3, r31
/* 8048FF28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048FF2C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048FF30  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8048FF34  4B B8 A7 DD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8048FF38  38 03 7F FF */	addi r0, r3, 0x7fff
/* 8048FF3C  7C 04 07 34 */	extsh r4, r0
/* 8048FF40  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8048FF44  A8 03 04 DE */	lha r0, 0x4de(r3)
/* 8048FF48  7C 00 20 50 */	subf r0, r0, r4
/* 8048FF4C  7C 00 07 35 */	extsh. r0, r0
/* 8048FF50  40 80 00 0C */	bge lbl_8048FF5C
/* 8048FF54  7C 00 00 D0 */	neg r0, r0
/* 8048FF58  7C 00 07 34 */	extsh r0, r0
lbl_8048FF5C:
/* 8048FF5C  7C 05 07 34 */	extsh r5, r0
/* 8048FF60  38 00 10 00 */	li r0, 0x1000
/* 8048FF64  7C 04 FE 70 */	srawi r4, r0, 0x1f
/* 8048FF68  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 8048FF6C  7C 05 00 10 */	subfc r0, r5, r0
/* 8048FF70  7C 04 19 14 */	adde r0, r4, r3
/* 8048FF74  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_8048FF78:
/* 8048FF78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048FF7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048FF80  7C 08 03 A6 */	mtlr r0
/* 8048FF84  38 21 00 10 */	addi r1, r1, 0x10
/* 8048FF88  4E 80 00 20 */	blr 
