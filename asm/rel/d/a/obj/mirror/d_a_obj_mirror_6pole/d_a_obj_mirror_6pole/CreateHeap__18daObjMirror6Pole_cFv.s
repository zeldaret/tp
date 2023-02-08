lbl_80C95F70:
/* 80C95F70  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C95F74  7C 08 02 A6 */	mflr r0
/* 80C95F78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C95F7C  39 61 00 20 */	addi r11, r1, 0x20
/* 80C95F80  4B 6C C2 59 */	bl _savegpr_28
/* 80C95F84  7C 7D 1B 78 */	mr r29, r3
/* 80C95F88  3C 60 80 C9 */	lis r3, l_arcName@ha /* 0x80C9654C@ha */
/* 80C95F8C  38 63 65 4C */	addi r3, r3, l_arcName@l /* 0x80C9654C@l */
/* 80C95F90  80 63 00 00 */	lwz r3, 0(r3)
/* 80C95F94  38 80 00 07 */	li r4, 7
/* 80C95F98  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C95F9C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C95FA0  3F 85 00 02 */	addis r28, r5, 2
/* 80C95FA4  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80C95FA8  7F 85 E3 78 */	mr r5, r28
/* 80C95FAC  38 C0 00 80 */	li r6, 0x80
/* 80C95FB0  4B 3A 63 3D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C95FB4  3C 80 00 08 */	lis r4, 8
/* 80C95FB8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C95FBC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C95FC0  4B 37 EC 95 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C95FC4  90 7D 05 68 */	stw r3, 0x568(r29)
/* 80C95FC8  80 1D 05 68 */	lwz r0, 0x568(r29)
/* 80C95FCC  28 00 00 00 */	cmplwi r0, 0
/* 80C95FD0  40 82 00 0C */	bne lbl_80C95FDC
/* 80C95FD4  38 60 00 00 */	li r3, 0
/* 80C95FD8  48 00 01 E8 */	b lbl_80C961C0
lbl_80C95FDC:
/* 80C95FDC  3C 60 80 C9 */	lis r3, l_arcName@ha /* 0x80C9654C@ha */
/* 80C95FE0  38 63 65 4C */	addi r3, r3, l_arcName@l /* 0x80C9654C@l */
/* 80C95FE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C95FE8  38 80 00 04 */	li r4, 4
/* 80C95FEC  7F 85 E3 78 */	mr r5, r28
/* 80C95FF0  38 C0 00 80 */	li r6, 0x80
/* 80C95FF4  4B 3A 62 F9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C95FF8  7C 7E 1B 78 */	mr r30, r3
/* 80C95FFC  38 60 00 1C */	li r3, 0x1c
/* 80C96000  4B 63 8C 4D */	bl __nw__FUl
/* 80C96004  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C96008  41 82 00 20 */	beq lbl_80C96028
/* 80C9600C  3C 80 80 C9 */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x80C96600@ha */
/* 80C96010  38 04 66 00 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x80C96600@l */
/* 80C96014  90 1F 00 00 */	stw r0, 0(r31)
/* 80C96018  38 80 00 00 */	li r4, 0
/* 80C9601C  4B 69 23 E1 */	bl init__12J3DFrameCtrlFs
/* 80C96020  38 00 00 00 */	li r0, 0
/* 80C96024  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80C96028:
/* 80C96028  93 FD 05 6C */	stw r31, 0x56c(r29)
/* 80C9602C  3B E0 00 01 */	li r31, 1
/* 80C96030  7F FC FB 78 */	mr r28, r31
/* 80C96034  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C96038  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C9603C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C96040  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C96044  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C96048  7C 05 07 74 */	extsb r5, r0
/* 80C9604C  4B 39 F3 15 */	bl isSwitch__10dSv_info_cCFii
/* 80C96050  2C 03 00 00 */	cmpwi r3, 0
/* 80C96054  40 82 00 2C */	bne lbl_80C96080
/* 80C96058  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9605C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C96060  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C96064  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C96068  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C9606C  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C96070  4B 39 E9 4D */	bl isEventBit__11dSv_event_cCFUs
/* 80C96074  2C 03 00 00 */	cmpwi r3, 0
/* 80C96078  40 82 00 08 */	bne lbl_80C96080
/* 80C9607C  3B 80 00 00 */	li r28, 0
lbl_80C96080:
/* 80C96080  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80C96084  40 82 00 2C */	bne lbl_80C960B0
/* 80C96088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C9608C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C96090  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C96094  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C96098  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C9609C  A0 84 02 C4 */	lhz r4, 0x2c4(r4)
/* 80C960A0  4B 39 E9 1D */	bl isEventBit__11dSv_event_cCFUs
/* 80C960A4  2C 03 00 00 */	cmpwi r3, 0
/* 80C960A8  40 82 00 08 */	bne lbl_80C960B0
/* 80C960AC  3B E0 00 00 */	li r31, 0
lbl_80C960B0:
/* 80C960B0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80C960B4  41 82 00 10 */	beq lbl_80C960C4
/* 80C960B8  3C 60 80 C9 */	lis r3, lit_3755@ha /* 0x80C96514@ha */
/* 80C960BC  C0 23 65 14 */	lfs f1, lit_3755@l(r3)  /* 0x80C96514@l */
/* 80C960C0  48 00 00 0C */	b lbl_80C960CC
lbl_80C960C4:
/* 80C960C4  3C 60 80 C9 */	lis r3, lit_3630@ha /* 0x80C96510@ha */
/* 80C960C8  C0 23 65 10 */	lfs f1, lit_3630@l(r3)  /* 0x80C96510@l */
lbl_80C960CC:
/* 80C960CC  80 7D 05 6C */	lwz r3, 0x56c(r29)
/* 80C960D0  28 03 00 00 */	cmplwi r3, 0
/* 80C960D4  41 82 00 28 */	beq lbl_80C960FC
/* 80C960D8  7F C4 F3 78 */	mr r4, r30
/* 80C960DC  38 A0 00 00 */	li r5, 0
/* 80C960E0  38 C0 00 00 */	li r6, 0
/* 80C960E4  38 E0 00 00 */	li r7, 0
/* 80C960E8  39 00 FF FF */	li r8, -1
/* 80C960EC  39 20 00 00 */	li r9, 0
/* 80C960F0  4B 37 76 ED */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C960F4  2C 03 00 00 */	cmpwi r3, 0
/* 80C960F8  40 82 00 0C */	bne lbl_80C96104
lbl_80C960FC:
/* 80C960FC  38 60 00 00 */	li r3, 0
/* 80C96100  48 00 00 C0 */	b lbl_80C961C0
lbl_80C96104:
/* 80C96104  3B E0 00 01 */	li r31, 1
/* 80C96108  7F FC FB 78 */	mr r28, r31
/* 80C9610C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C96110  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C96114  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80C96118  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C9611C  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80C96120  7C 05 07 74 */	extsb r5, r0
/* 80C96124  4B 39 F2 3D */	bl isSwitch__10dSv_info_cCFii
/* 80C96128  2C 03 00 00 */	cmpwi r3, 0
/* 80C9612C  40 82 00 2C */	bne lbl_80C96158
/* 80C96130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C96134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C96138  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C9613C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C96140  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C96144  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C96148  4B 39 E8 75 */	bl isEventBit__11dSv_event_cCFUs
/* 80C9614C  2C 03 00 00 */	cmpwi r3, 0
/* 80C96150  40 82 00 08 */	bne lbl_80C96158
/* 80C96154  3B 80 00 00 */	li r28, 0
lbl_80C96158:
/* 80C96158  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80C9615C  40 82 00 2C */	bne lbl_80C96188
/* 80C96160  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C96164  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C96168  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C9616C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80C96170  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80C96174  A0 84 02 C4 */	lhz r4, 0x2c4(r4)
/* 80C96178  4B 39 E8 45 */	bl isEventBit__11dSv_event_cCFUs
/* 80C9617C  2C 03 00 00 */	cmpwi r3, 0
/* 80C96180  40 82 00 08 */	bne lbl_80C96188
/* 80C96184  3B E0 00 00 */	li r31, 0
lbl_80C96188:
/* 80C96188  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80C9618C  41 82 00 30 */	beq lbl_80C961BC
/* 80C96190  A8 1E 00 06 */	lha r0, 6(r30)
/* 80C96194  3C 60 80 C9 */	lis r3, lit_3757@ha /* 0x80C96518@ha */
/* 80C96198  C8 23 65 18 */	lfd f1, lit_3757@l(r3)  /* 0x80C96518@l */
/* 80C9619C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C961A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C961A4  3C 00 43 30 */	lis r0, 0x4330
/* 80C961A8  90 01 00 08 */	stw r0, 8(r1)
/* 80C961AC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C961B0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C961B4  80 7D 05 6C */	lwz r3, 0x56c(r29)
/* 80C961B8  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_80C961BC:
/* 80C961BC  38 60 00 01 */	li r3, 1
lbl_80C961C0:
/* 80C961C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80C961C4  4B 6C C0 61 */	bl _restgpr_28
/* 80C961C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C961CC  7C 08 03 A6 */	mtlr r0
/* 80C961D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80C961D4  4E 80 00 20 */	blr 
