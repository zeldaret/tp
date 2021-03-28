lbl_80C981D8:
/* 80C981D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C981DC  7C 08 02 A6 */	mflr r0
/* 80C981E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C981E4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C981E8  4B 6C 9F EC */	b _savegpr_27
/* 80C981EC  7C 7F 1B 78 */	mr r31, r3
/* 80C981F0  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C981F4  38 63 89 F0 */	addi r3, r3, l_arcName@l
/* 80C981F8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C981FC  38 80 00 08 */	li r4, 8
/* 80C98200  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80C98204  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80C98208  3F C5 00 02 */	addis r30, r5, 2
/* 80C9820C  3B DE C2 F8 */	addi r30, r30, -15624
/* 80C98210  7F C5 F3 78 */	mr r5, r30
/* 80C98214  38 C0 00 80 */	li r6, 0x80
/* 80C98218  4B 3A 40 D4 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C9821C  3C 80 00 08 */	lis r4, 8
/* 80C98220  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80C98224  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80C98228  4B 37 CA 2C */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80C9822C  90 7F 05 68 */	stw r3, 0x568(r31)
/* 80C98230  80 1F 05 68 */	lwz r0, 0x568(r31)
/* 80C98234  28 00 00 00 */	cmplwi r0, 0
/* 80C98238  40 82 00 0C */	bne lbl_80C98244
/* 80C9823C  38 60 00 00 */	li r3, 0
/* 80C98240  48 00 02 68 */	b lbl_80C984A8
lbl_80C98244:
/* 80C98244  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C98248  38 63 89 F0 */	addi r3, r3, l_arcName@l
/* 80C9824C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C98250  38 80 00 05 */	li r4, 5
/* 80C98254  7F C5 F3 78 */	mr r5, r30
/* 80C98258  38 C0 00 80 */	li r6, 0x80
/* 80C9825C  4B 3A 40 90 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C98260  7C 7D 1B 78 */	mr r29, r3
/* 80C98264  38 60 00 1C */	li r3, 0x1c
/* 80C98268  4B 63 69 E4 */	b __nw__FUl
/* 80C9826C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C98270  41 82 00 20 */	beq lbl_80C98290
/* 80C98274  3C 80 80 CA */	lis r4, __vt__12J3DFrameCtrl@ha
/* 80C98278  38 04 8A 44 */	addi r0, r4, __vt__12J3DFrameCtrl@l
/* 80C9827C  90 1C 00 00 */	stw r0, 0(r28)
/* 80C98280  38 80 00 00 */	li r4, 0
/* 80C98284  4B 69 01 78 */	b init__12J3DFrameCtrlFs
/* 80C98288  38 00 00 00 */	li r0, 0
/* 80C9828C  90 1C 00 18 */	stw r0, 0x18(r28)
lbl_80C98290:
/* 80C98290  93 9F 05 6C */	stw r28, 0x56c(r31)
/* 80C98294  3B 80 00 01 */	li r28, 1
/* 80C98298  7F 9B E3 78 */	mr r27, r28
/* 80C9829C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C982A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C982A4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C982A8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C982AC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C982B0  7C 05 07 74 */	extsb r5, r0
/* 80C982B4  4B 39 D0 AC */	b isSwitch__10dSv_info_cCFii
/* 80C982B8  2C 03 00 00 */	cmpwi r3, 0
/* 80C982BC  40 82 00 2C */	bne lbl_80C982E8
/* 80C982C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C982C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C982C8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C982CC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C982D0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C982D4  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C982D8  4B 39 C6 E4 */	b isEventBit__11dSv_event_cCFUs
/* 80C982DC  2C 03 00 00 */	cmpwi r3, 0
/* 80C982E0  40 82 00 08 */	bne lbl_80C982E8
/* 80C982E4  3B 60 00 00 */	li r27, 0
lbl_80C982E8:
/* 80C982E8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80C982EC  40 82 00 2C */	bne lbl_80C98318
/* 80C982F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C982F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C982F8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C982FC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C98300  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C98304  A0 84 02 C4 */	lhz r4, 0x2c4(r4)
/* 80C98308  4B 39 C6 B4 */	b isEventBit__11dSv_event_cCFUs
/* 80C9830C  2C 03 00 00 */	cmpwi r3, 0
/* 80C98310  40 82 00 08 */	bne lbl_80C98318
/* 80C98314  3B 80 00 00 */	li r28, 0
lbl_80C98318:
/* 80C98318  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80C9831C  41 82 00 10 */	beq lbl_80C9832C
/* 80C98320  3C 60 80 CA */	lis r3, lit_3729@ha
/* 80C98324  C0 23 89 D8 */	lfs f1, lit_3729@l(r3)
/* 80C98328  48 00 00 0C */	b lbl_80C98334
lbl_80C9832C:
/* 80C9832C  3C 60 80 CA */	lis r3, lit_3730@ha
/* 80C98330  C0 23 89 DC */	lfs f1, lit_3730@l(r3)
lbl_80C98334:
/* 80C98334  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80C98338  28 03 00 00 */	cmplwi r3, 0
/* 80C9833C  41 82 00 28 */	beq lbl_80C98364
/* 80C98340  7F A4 EB 78 */	mr r4, r29
/* 80C98344  38 A0 00 00 */	li r5, 0
/* 80C98348  38 C0 00 00 */	li r6, 0
/* 80C9834C  38 E0 00 00 */	li r7, 0
/* 80C98350  39 00 FF FF */	li r8, -1
/* 80C98354  39 20 00 00 */	li r9, 0
/* 80C98358  4B 37 54 84 */	b init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80C9835C  2C 03 00 00 */	cmpwi r3, 0
/* 80C98360  40 82 00 0C */	bne lbl_80C9836C
lbl_80C98364:
/* 80C98364  38 60 00 00 */	li r3, 0
/* 80C98368  48 00 01 40 */	b lbl_80C984A8
lbl_80C9836C:
/* 80C9836C  3B 80 00 01 */	li r28, 1
/* 80C98370  7F 9B E3 78 */	mr r27, r28
/* 80C98374  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C98378  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C9837C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C98380  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C98384  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C98388  7C 05 07 74 */	extsb r5, r0
/* 80C9838C  4B 39 CF D4 */	b isSwitch__10dSv_info_cCFii
/* 80C98390  2C 03 00 00 */	cmpwi r3, 0
/* 80C98394  40 82 00 2C */	bne lbl_80C983C0
/* 80C98398  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C9839C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C983A0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C983A4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C983A8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C983AC  A0 84 02 D2 */	lhz r4, 0x2d2(r4)
/* 80C983B0  4B 39 C6 0C */	b isEventBit__11dSv_event_cCFUs
/* 80C983B4  2C 03 00 00 */	cmpwi r3, 0
/* 80C983B8  40 82 00 08 */	bne lbl_80C983C0
/* 80C983BC  3B 60 00 00 */	li r27, 0
lbl_80C983C0:
/* 80C983C0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80C983C4  40 82 00 2C */	bne lbl_80C983F0
/* 80C983C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C983CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C983D0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80C983D4  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 80C983D8  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 80C983DC  A0 84 02 C4 */	lhz r4, 0x2c4(r4)
/* 80C983E0  4B 39 C5 DC */	b isEventBit__11dSv_event_cCFUs
/* 80C983E4  2C 03 00 00 */	cmpwi r3, 0
/* 80C983E8  40 82 00 08 */	bne lbl_80C983F0
/* 80C983EC  3B 80 00 00 */	li r28, 0
lbl_80C983F0:
/* 80C983F0  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80C983F4  41 82 00 30 */	beq lbl_80C98424
/* 80C983F8  A8 1D 00 06 */	lha r0, 6(r29)
/* 80C983FC  3C 60 80 CA */	lis r3, lit_3732@ha
/* 80C98400  C8 23 89 E0 */	lfd f1, lit_3732@l(r3)
/* 80C98404  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C98408  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C9840C  3C 00 43 30 */	lis r0, 0x4330
/* 80C98410  90 01 00 08 */	stw r0, 8(r1)
/* 80C98414  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C98418  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C9841C  80 7F 05 6C */	lwz r3, 0x56c(r31)
/* 80C98420  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_80C98424:
/* 80C98424  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C98428  38 63 89 F0 */	addi r3, r3, l_arcName@l
/* 80C9842C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C98430  38 80 00 0B */	li r4, 0xb
/* 80C98434  7F C5 F3 78 */	mr r5, r30
/* 80C98438  38 C0 00 80 */	li r6, 0x80
/* 80C9843C  4B 3A 3E B0 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C98440  7C 64 1B 78 */	mr r4, r3
/* 80C98444  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80C98448  38 A0 00 01 */	li r5, 1
/* 80C9844C  38 DF 06 FC */	addi r6, r31, 0x6fc
/* 80C98450  4B 3E 1A E8 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C98454  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C98458  41 82 00 0C */	beq lbl_80C98464
/* 80C9845C  38 60 00 00 */	li r3, 0
/* 80C98460  48 00 00 48 */	b lbl_80C984A8
lbl_80C98464:
/* 80C98464  3C 60 80 CA */	lis r3, l_arcName@ha
/* 80C98468  38 63 89 F0 */	addi r3, r3, l_arcName@l
/* 80C9846C  80 63 00 00 */	lwz r3, 0(r3)
/* 80C98470  38 80 00 0C */	li r4, 0xc
/* 80C98474  7F C5 F3 78 */	mr r5, r30
/* 80C98478  38 C0 00 80 */	li r6, 0x80
/* 80C9847C  4B 3A 3E 70 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C98480  7C 64 1B 78 */	mr r4, r3
/* 80C98484  38 7F 06 3C */	addi r3, r31, 0x63c
/* 80C98488  38 A0 00 01 */	li r5, 1
/* 80C9848C  38 DF 06 FC */	addi r6, r31, 0x6fc
/* 80C98490  4B 3E 1A A8 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80C98494  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C98498  41 82 00 0C */	beq lbl_80C984A4
/* 80C9849C  38 60 00 00 */	li r3, 0
/* 80C984A0  48 00 00 08 */	b lbl_80C984A8
lbl_80C984A4:
/* 80C984A4  38 60 00 01 */	li r3, 1
lbl_80C984A8:
/* 80C984A8  39 61 00 30 */	addi r11, r1, 0x30
/* 80C984AC  4B 6C 9D 74 */	b _restgpr_27
/* 80C984B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C984B4  7C 08 03 A6 */	mtlr r0
/* 80C984B8  38 21 00 30 */	addi r1, r1, 0x30
/* 80C984BC  4E 80 00 20 */	blr 
