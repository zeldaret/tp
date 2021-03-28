lbl_80CEDB2C:
/* 80CEDB2C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CEDB30  7C 08 02 A6 */	mflr r0
/* 80CEDB34  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CEDB38  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80CEDB3C  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80CEDB40  7C 7F 1B 78 */	mr r31, r3
/* 80CEDB44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEDB48  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80CEDB4C  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80CEDB50  88 1F 09 4D */	lbz r0, 0x94d(r31)
/* 80CEDB54  54 00 08 3C */	slwi r0, r0, 1
/* 80CEDB58  7C 9F 02 14 */	add r4, r31, r0
/* 80CEDB5C  A8 84 09 44 */	lha r4, 0x944(r4)
/* 80CEDB60  4B 35 9F 18 */	b endCheck__16dEvent_manager_cFs
/* 80CEDB64  2C 03 00 00 */	cmpwi r3, 0
/* 80CEDB68  41 82 00 4C */	beq lbl_80CEDBB4
/* 80CEDB6C  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80CEDB70  4B 35 48 F8 */	b reset__14dEvt_control_cFv
/* 80CEDB74  88 1F 09 3D */	lbz r0, 0x93d(r31)
/* 80CEDB78  28 00 00 03 */	cmplwi r0, 3
/* 80CEDB7C  40 82 00 2C */	bne lbl_80CEDBA8
/* 80CEDB80  38 00 00 04 */	li r0, 4
/* 80CEDB84  98 1F 09 3C */	stb r0, 0x93c(r31)
/* 80CEDB88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEDB8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEDB90  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CEDB94  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CEDB98  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CEDB9C  7C 05 07 74 */	extsb r5, r0
/* 80CEDBA0  4B 34 76 60 */	b onSwitch__10dSv_info_cFii
/* 80CEDBA4  48 00 04 8C */	b lbl_80CEE030
lbl_80CEDBA8:
/* 80CEDBA8  38 00 00 00 */	li r0, 0
/* 80CEDBAC  98 1F 09 3C */	stb r0, 0x93c(r31)
/* 80CEDBB0  48 00 04 80 */	b lbl_80CEE030
lbl_80CEDBB4:
/* 80CEDBB4  88 1F 09 3D */	lbz r0, 0x93d(r31)
/* 80CEDBB8  2C 00 00 02 */	cmpwi r0, 2
/* 80CEDBBC  41 82 01 80 */	beq lbl_80CEDD3C
/* 80CEDBC0  40 80 00 10 */	bge lbl_80CEDBD0
/* 80CEDBC4  2C 00 00 01 */	cmpwi r0, 1
/* 80CEDBC8  40 80 00 14 */	bge lbl_80CEDBDC
/* 80CEDBCC  48 00 04 4C */	b lbl_80CEE018
lbl_80CEDBD0:
/* 80CEDBD0  2C 00 00 04 */	cmpwi r0, 4
/* 80CEDBD4  40 80 04 44 */	bge lbl_80CEE018
/* 80CEDBD8  48 00 02 70 */	b lbl_80CEDE48
lbl_80CEDBDC:
/* 80CEDBDC  38 7F 09 54 */	addi r3, r31, 0x954
/* 80CEDBE0  48 00 13 69 */	bl func_80CEEF48
/* 80CEDBE4  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80CEDBE8  40 82 00 0C */	bne lbl_80CEDBF4
/* 80CEDBEC  7F E3 FB 78 */	mr r3, r31
/* 80CEDBF0  48 00 05 59 */	bl hint_action1__14daObjStopper_cFv
lbl_80CEDBF4:
/* 80CEDBF4  A8 1F 09 7E */	lha r0, 0x97e(r31)
/* 80CEDBF8  2C 00 00 00 */	cmpwi r0, 0
/* 80CEDBFC  40 82 00 B4 */	bne lbl_80CEDCB0
/* 80CEDC00  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEDC04  7C 04 07 74 */	extsb r4, r0
/* 80CEDC08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEDC0C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80CEDC10  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CEDC14  38 1F 09 84 */	addi r0, r31, 0x984
/* 80CEDC18  90 01 00 08 */	stw r0, 8(r1)
/* 80CEDC1C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CEDC20  38 00 00 00 */	li r0, 0
/* 80CEDC24  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CEDC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEDC2C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CEDC30  38 80 00 00 */	li r4, 0
/* 80CEDC34  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000835D@ha */
/* 80CEDC38  38 A5 83 5D */	addi r5, r5, 0x835D /* 0x0000835D@l */
/* 80CEDC3C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80CEDC40  38 E0 00 00 */	li r7, 0
/* 80CEDC44  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 80CEDC48  39 20 00 00 */	li r9, 0
/* 80CEDC4C  39 40 00 FF */	li r10, 0xff
/* 80CEDC50  3D 60 80 CF */	lis r11, lit_3877@ha
/* 80CEDC54  C0 2B EF B8 */	lfs f1, lit_3877@l(r11)
/* 80CEDC58  4B 35 EE 38 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CEDC5C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEDC60  7C 04 07 74 */	extsb r4, r0
/* 80CEDC64  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CEDC68  38 1F 09 98 */	addi r0, r31, 0x998
/* 80CEDC6C  90 01 00 08 */	stw r0, 8(r1)
/* 80CEDC70  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CEDC74  38 00 00 00 */	li r0, 0
/* 80CEDC78  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CEDC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEDC80  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CEDC84  38 80 00 00 */	li r4, 0
/* 80CEDC88  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000835E@ha */
/* 80CEDC8C  38 A5 83 5E */	addi r5, r5, 0x835E /* 0x0000835E@l */
/* 80CEDC90  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80CEDC94  38 E0 00 00 */	li r7, 0
/* 80CEDC98  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 80CEDC9C  39 20 00 00 */	li r9, 0
/* 80CEDCA0  39 40 00 FF */	li r10, 0xff
/* 80CEDCA4  3D 60 80 CF */	lis r11, lit_3877@ha
/* 80CEDCA8  C0 2B EF B8 */	lfs f1, lit_3877@l(r11)
/* 80CEDCAC  4B 35 ED E4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80CEDCB0:
/* 80CEDCB0  A8 1F 09 E8 */	lha r0, 0x9e8(r31)
/* 80CEDCB4  2C 00 00 00 */	cmpwi r0, 0
/* 80CEDCB8  40 82 00 58 */	bne lbl_80CEDD10
/* 80CEDCBC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEDCC0  7C 03 07 74 */	extsb r3, r0
/* 80CEDCC4  4B 33 F3 A8 */	b dComIfGp_getReverb__Fi
/* 80CEDCC8  7C 67 1B 78 */	mr r7, r3
/* 80CEDCCC  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800DF@ha */
/* 80CEDCD0  38 03 00 DF */	addi r0, r3, 0x00DF /* 0x000800DF@l */
/* 80CEDCD4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80CEDCD8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CEDCDC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CEDCE0  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEDCE4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CEDCE8  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEDCEC  38 C0 00 00 */	li r6, 0
/* 80CEDCF0  3D 00 80 CF */	lis r8, lit_3877@ha
/* 80CEDCF4  C0 28 EF B8 */	lfs f1, lit_3877@l(r8)
/* 80CEDCF8  FC 40 08 90 */	fmr f2, f1
/* 80CEDCFC  3D 00 80 CF */	lis r8, lit_4025@ha
/* 80CEDD00  C0 68 EF D0 */	lfs f3, lit_4025@l(r8)
/* 80CEDD04  FC 80 18 90 */	fmr f4, f3
/* 80CEDD08  39 00 00 00 */	li r8, 0
/* 80CEDD0C  4B 5B DC 78 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEDD10:
/* 80CEDD10  A8 7F 09 E8 */	lha r3, 0x9e8(r31)
/* 80CEDD14  2C 03 00 00 */	cmpwi r3, 0
/* 80CEDD18  41 80 00 0C */	blt lbl_80CEDD24
/* 80CEDD1C  38 03 FF FF */	addi r0, r3, -1
/* 80CEDD20  B0 1F 09 E8 */	sth r0, 0x9e8(r31)
lbl_80CEDD24:
/* 80CEDD24  A8 7F 09 7E */	lha r3, 0x97e(r31)
/* 80CEDD28  2C 03 00 00 */	cmpwi r3, 0
/* 80CEDD2C  41 80 02 EC */	blt lbl_80CEE018
/* 80CEDD30  38 03 FF FF */	addi r0, r3, -1
/* 80CEDD34  B0 1F 09 7E */	sth r0, 0x97e(r31)
/* 80CEDD38  48 00 02 E0 */	b lbl_80CEE018
lbl_80CEDD3C:
/* 80CEDD3C  38 7F 09 54 */	addi r3, r31, 0x954
/* 80CEDD40  48 00 12 09 */	bl func_80CEEF48
/* 80CEDD44  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80CEDD48  40 82 00 0C */	bne lbl_80CEDD54
/* 80CEDD4C  7F E3 FB 78 */	mr r3, r31
/* 80CEDD50  48 00 08 81 */	bl hint_action2__14daObjStopper_cFv
lbl_80CEDD54:
/* 80CEDD54  A8 1F 09 80 */	lha r0, 0x980(r31)
/* 80CEDD58  2C 00 00 00 */	cmpwi r0, 0
/* 80CEDD5C  40 82 00 60 */	bne lbl_80CEDDBC
/* 80CEDD60  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEDD64  7C 04 07 74 */	extsb r4, r0
/* 80CEDD68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEDD6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CEDD70  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80CEDD74  38 1F 09 AC */	addi r0, r31, 0x9ac
/* 80CEDD78  90 01 00 08 */	stw r0, 8(r1)
/* 80CEDD7C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CEDD80  38 00 00 00 */	li r0, 0
/* 80CEDD84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CEDD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEDD8C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CEDD90  38 80 00 00 */	li r4, 0
/* 80CEDD94  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000835F@ha */
/* 80CEDD98  38 A5 83 5F */	addi r5, r5, 0x835F /* 0x0000835F@l */
/* 80CEDD9C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80CEDDA0  38 E0 00 00 */	li r7, 0
/* 80CEDDA4  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 80CEDDA8  39 20 00 00 */	li r9, 0
/* 80CEDDAC  39 40 00 FF */	li r10, 0xff
/* 80CEDDB0  3D 60 80 CF */	lis r11, lit_3877@ha
/* 80CEDDB4  C0 2B EF B8 */	lfs f1, lit_3877@l(r11)
/* 80CEDDB8  4B 35 EC D8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80CEDDBC:
/* 80CEDDBC  A8 1F 09 EA */	lha r0, 0x9ea(r31)
/* 80CEDDC0  2C 00 00 00 */	cmpwi r0, 0
/* 80CEDDC4  40 82 00 58 */	bne lbl_80CEDE1C
/* 80CEDDC8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEDDCC  7C 03 07 74 */	extsb r3, r0
/* 80CEDDD0  4B 33 F2 9C */	b dComIfGp_getReverb__Fi
/* 80CEDDD4  7C 67 1B 78 */	mr r7, r3
/* 80CEDDD8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800DF@ha */
/* 80CEDDDC  38 03 00 DF */	addi r0, r3, 0x00DF /* 0x000800DF@l */
/* 80CEDDE0  90 01 00 28 */	stw r0, 0x28(r1)
/* 80CEDDE4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CEDDE8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CEDDEC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEDDF0  38 81 00 28 */	addi r4, r1, 0x28
/* 80CEDDF4  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEDDF8  38 C0 00 00 */	li r6, 0
/* 80CEDDFC  3D 00 80 CF */	lis r8, lit_3877@ha
/* 80CEDE00  C0 28 EF B8 */	lfs f1, lit_3877@l(r8)
/* 80CEDE04  FC 40 08 90 */	fmr f2, f1
/* 80CEDE08  3D 00 80 CF */	lis r8, lit_4025@ha
/* 80CEDE0C  C0 68 EF D0 */	lfs f3, lit_4025@l(r8)
/* 80CEDE10  FC 80 18 90 */	fmr f4, f3
/* 80CEDE14  39 00 00 00 */	li r8, 0
/* 80CEDE18  4B 5B DB 6C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEDE1C:
/* 80CEDE1C  A8 7F 09 EA */	lha r3, 0x9ea(r31)
/* 80CEDE20  2C 03 00 00 */	cmpwi r3, 0
/* 80CEDE24  41 80 00 0C */	blt lbl_80CEDE30
/* 80CEDE28  38 03 FF FF */	addi r0, r3, -1
/* 80CEDE2C  B0 1F 09 EA */	sth r0, 0x9ea(r31)
lbl_80CEDE30:
/* 80CEDE30  A8 7F 09 80 */	lha r3, 0x980(r31)
/* 80CEDE34  2C 03 00 00 */	cmpwi r3, 0
/* 80CEDE38  41 80 01 E0 */	blt lbl_80CEE018
/* 80CEDE3C  38 03 FF FF */	addi r0, r3, -1
/* 80CEDE40  B0 1F 09 80 */	sth r0, 0x980(r31)
/* 80CEDE44  48 00 01 D4 */	b lbl_80CEE018
lbl_80CEDE48:
/* 80CEDE48  38 7F 09 54 */	addi r3, r31, 0x954
/* 80CEDE4C  48 00 10 FD */	bl func_80CEEF48
/* 80CEDE50  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80CEDE54  40 82 00 0C */	bne lbl_80CEDE60
/* 80CEDE58  7F E3 FB 78 */	mr r3, r31
/* 80CEDE5C  48 00 0B CD */	bl hint_action3__14daObjStopper_cFv
lbl_80CEDE60:
/* 80CEDE60  A8 1F 09 82 */	lha r0, 0x982(r31)
/* 80CEDE64  2C 00 00 00 */	cmpwi r0, 0
/* 80CEDE68  40 82 00 B4 */	bne lbl_80CEDF1C
/* 80CEDE6C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEDE70  7C 04 07 74 */	extsb r4, r0
/* 80CEDE74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CEDE78  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80CEDE7C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CEDE80  38 1F 09 C0 */	addi r0, r31, 0x9c0
/* 80CEDE84  90 01 00 08 */	stw r0, 8(r1)
/* 80CEDE88  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CEDE8C  38 00 00 00 */	li r0, 0
/* 80CEDE90  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CEDE94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEDE98  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CEDE9C  38 80 00 00 */	li r4, 0
/* 80CEDEA0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008360@ha */
/* 80CEDEA4  38 A5 83 60 */	addi r5, r5, 0x8360 /* 0x00008360@l */
/* 80CEDEA8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80CEDEAC  38 E0 00 00 */	li r7, 0
/* 80CEDEB0  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 80CEDEB4  39 20 00 00 */	li r9, 0
/* 80CEDEB8  39 40 00 FF */	li r10, 0xff
/* 80CEDEBC  3D 60 80 CF */	lis r11, lit_3877@ha
/* 80CEDEC0  C0 2B EF B8 */	lfs f1, lit_3877@l(r11)
/* 80CEDEC4  4B 35 EB CC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80CEDEC8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEDECC  7C 04 07 74 */	extsb r4, r0
/* 80CEDED0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80CEDED4  38 1F 09 D4 */	addi r0, r31, 0x9d4
/* 80CEDED8  90 01 00 08 */	stw r0, 8(r1)
/* 80CEDEDC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80CEDEE0  38 00 00 00 */	li r0, 0
/* 80CEDEE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CEDEE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEDEEC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CEDEF0  38 80 00 00 */	li r4, 0
/* 80CEDEF4  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008361@ha */
/* 80CEDEF8  38 A5 83 61 */	addi r5, r5, 0x8361 /* 0x00008361@l */
/* 80CEDEFC  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80CEDF00  38 E0 00 00 */	li r7, 0
/* 80CEDF04  39 1F 04 B4 */	addi r8, r31, 0x4b4
/* 80CEDF08  39 20 00 00 */	li r9, 0
/* 80CEDF0C  39 40 00 FF */	li r10, 0xff
/* 80CEDF10  3D 60 80 CF */	lis r11, lit_3877@ha
/* 80CEDF14  C0 2B EF B8 */	lfs f1, lit_3877@l(r11)
/* 80CEDF18  4B 35 EB 78 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_80CEDF1C:
/* 80CEDF1C  A8 1F 09 EC */	lha r0, 0x9ec(r31)
/* 80CEDF20  2C 00 00 00 */	cmpwi r0, 0
/* 80CEDF24  40 82 00 58 */	bne lbl_80CEDF7C
/* 80CEDF28  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEDF2C  7C 03 07 74 */	extsb r3, r0
/* 80CEDF30  4B 33 F1 3C */	b dComIfGp_getReverb__Fi
/* 80CEDF34  7C 67 1B 78 */	mr r7, r3
/* 80CEDF38  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800E0@ha */
/* 80CEDF3C  38 03 00 E0 */	addi r0, r3, 0x00E0 /* 0x000800E0@l */
/* 80CEDF40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CEDF44  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CEDF48  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CEDF4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEDF50  38 81 00 24 */	addi r4, r1, 0x24
/* 80CEDF54  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEDF58  38 C0 00 00 */	li r6, 0
/* 80CEDF5C  3D 00 80 CF */	lis r8, lit_3877@ha
/* 80CEDF60  C0 28 EF B8 */	lfs f1, lit_3877@l(r8)
/* 80CEDF64  FC 40 08 90 */	fmr f2, f1
/* 80CEDF68  3D 00 80 CF */	lis r8, lit_4025@ha
/* 80CEDF6C  C0 68 EF D0 */	lfs f3, lit_4025@l(r8)
/* 80CEDF70  FC 80 18 90 */	fmr f4, f3
/* 80CEDF74  39 00 00 00 */	li r8, 0
/* 80CEDF78  4B 5B DA 0C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEDF7C:
/* 80CEDF7C  A8 1F 09 EE */	lha r0, 0x9ee(r31)
/* 80CEDF80  2C 00 00 00 */	cmpwi r0, 0
/* 80CEDF84  40 82 00 58 */	bne lbl_80CEDFDC
/* 80CEDF88  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80CEDF8C  7C 03 07 74 */	extsb r3, r0
/* 80CEDF90  4B 33 F0 DC */	b dComIfGp_getReverb__Fi
/* 80CEDF94  7C 67 1B 78 */	mr r7, r3
/* 80CEDF98  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800E2@ha */
/* 80CEDF9C  38 03 00 E2 */	addi r0, r3, 0x00E2 /* 0x000800E2@l */
/* 80CEDFA0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80CEDFA4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80CEDFA8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80CEDFAC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CEDFB0  38 81 00 20 */	addi r4, r1, 0x20
/* 80CEDFB4  38 BF 05 38 */	addi r5, r31, 0x538
/* 80CEDFB8  38 C0 00 00 */	li r6, 0
/* 80CEDFBC  3D 00 80 CF */	lis r8, lit_3877@ha
/* 80CEDFC0  C0 28 EF B8 */	lfs f1, lit_3877@l(r8)
/* 80CEDFC4  FC 40 08 90 */	fmr f2, f1
/* 80CEDFC8  3D 00 80 CF */	lis r8, lit_4025@ha
/* 80CEDFCC  C0 68 EF D0 */	lfs f3, lit_4025@l(r8)
/* 80CEDFD0  FC 80 18 90 */	fmr f4, f3
/* 80CEDFD4  39 00 00 00 */	li r8, 0
/* 80CEDFD8  4B 5B D9 AC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80CEDFDC:
/* 80CEDFDC  A8 7F 09 EC */	lha r3, 0x9ec(r31)
/* 80CEDFE0  2C 03 00 00 */	cmpwi r3, 0
/* 80CEDFE4  41 80 00 0C */	blt lbl_80CEDFF0
/* 80CEDFE8  38 03 FF FF */	addi r0, r3, -1
/* 80CEDFEC  B0 1F 09 EC */	sth r0, 0x9ec(r31)
lbl_80CEDFF0:
/* 80CEDFF0  A8 7F 09 EE */	lha r3, 0x9ee(r31)
/* 80CEDFF4  2C 03 00 00 */	cmpwi r3, 0
/* 80CEDFF8  41 80 00 0C */	blt lbl_80CEE004
/* 80CEDFFC  38 03 FF FF */	addi r0, r3, -1
/* 80CEE000  B0 1F 09 EE */	sth r0, 0x9ee(r31)
lbl_80CEE004:
/* 80CEE004  A8 7F 09 82 */	lha r3, 0x982(r31)
/* 80CEE008  2C 03 00 00 */	cmpwi r3, 0
/* 80CEE00C  41 80 00 0C */	blt lbl_80CEE018
/* 80CEE010  38 03 FF FF */	addi r0, r3, -1
/* 80CEE014  B0 1F 09 82 */	sth r0, 0x982(r31)
lbl_80CEE018:
/* 80CEE018  A8 7F 09 60 */	lha r3, 0x960(r31)
/* 80CEE01C  38 03 00 01 */	addi r0, r3, 1
/* 80CEE020  B0 1F 09 60 */	sth r0, 0x960(r31)
/* 80CEE024  A8 7F 09 7C */	lha r3, 0x97c(r31)
/* 80CEE028  38 03 00 01 */	addi r0, r3, 1
/* 80CEE02C  B0 1F 09 7C */	sth r0, 0x97c(r31)
lbl_80CEE030:
/* 80CEE030  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80CEE034  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80CEE038  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CEE03C  7C 08 03 A6 */	mtlr r0
/* 80CEE040  38 21 00 40 */	addi r1, r1, 0x40
/* 80CEE044  4E 80 00 20 */	blr 
