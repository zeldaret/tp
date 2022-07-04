lbl_80529520:
/* 80529520  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80529524  7C 08 02 A6 */	mflr r0
/* 80529528  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052952C  39 61 00 30 */	addi r11, r1, 0x30
/* 80529530  4B E3 8C AD */	bl _savegpr_29
/* 80529534  7C 7D 1B 78 */	mr r29, r3
/* 80529538  3C 60 80 53 */	lis r3, lit_3874@ha /* 0x80529894@ha */
/* 8052953C  3B C3 98 94 */	addi r30, r3, lit_3874@l /* 0x80529894@l */
/* 80529540  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 80529544  3B E3 CA 54 */	addi r31, r3, g_env_light@l /* 0x8042CA54@l */
/* 80529548  38 00 00 00 */	li r0, 0
/* 8052954C  98 1D 05 70 */	stb r0, 0x570(r29)
/* 80529550  38 00 00 01 */	li r0, 1
/* 80529554  98 1D 05 70 */	stb r0, 0x570(r29)
/* 80529558  A0 1D 05 6C */	lhz r0, 0x56c(r29)
/* 8052955C  28 00 0F FF */	cmplwi r0, 0xfff
/* 80529560  41 82 00 38 */	beq lbl_80529598
/* 80529564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80529568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8052956C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80529570  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 80529574  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80529578  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 8052957C  7C 84 02 2E */	lhzx r4, r4, r0
/* 80529580  4B B0 B4 3D */	bl isEventBit__11dSv_event_cCFUs
/* 80529584  2C 03 00 00 */	cmpwi r3, 0
/* 80529588  40 82 00 44 */	bne lbl_805295CC
/* 8052958C  38 00 00 00 */	li r0, 0
/* 80529590  98 1D 05 70 */	stb r0, 0x570(r29)
/* 80529594  48 00 00 38 */	b lbl_805295CC
lbl_80529598:
/* 80529598  88 9D 05 72 */	lbz r4, 0x572(r29)
/* 8052959C  28 04 00 FF */	cmplwi r4, 0xff
/* 805295A0  41 82 00 2C */	beq lbl_805295CC
/* 805295A4  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 805295A8  88 A3 0D 64 */	lbz r5, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 805295AC  7C A5 07 74 */	extsb r5, r5
/* 805295B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805295B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805295B8  4B B0 BD A9 */	bl isSwitch__10dSv_info_cCFii
/* 805295BC  2C 03 00 00 */	cmpwi r3, 0
/* 805295C0  40 82 00 0C */	bne lbl_805295CC
/* 805295C4  38 00 00 00 */	li r0, 0
/* 805295C8  98 1D 05 70 */	stb r0, 0x570(r29)
lbl_805295CC:
/* 805295CC  A0 1D 05 6E */	lhz r0, 0x56e(r29)
/* 805295D0  28 00 0F FF */	cmplwi r0, 0xfff
/* 805295D4  41 82 00 38 */	beq lbl_8052960C
/* 805295D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805295DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805295E0  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805295E4  54 00 0B FC */	rlwinm r0, r0, 1, 0xf, 0x1e
/* 805295E8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 805295EC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 805295F0  7C 84 02 2E */	lhzx r4, r4, r0
/* 805295F4  4B B0 B3 C9 */	bl isEventBit__11dSv_event_cCFUs
/* 805295F8  2C 03 00 00 */	cmpwi r3, 0
/* 805295FC  41 82 00 44 */	beq lbl_80529640
/* 80529600  38 00 00 00 */	li r0, 0
/* 80529604  98 1D 05 70 */	stb r0, 0x570(r29)
/* 80529608  48 00 00 38 */	b lbl_80529640
lbl_8052960C:
/* 8052960C  88 9D 05 73 */	lbz r4, 0x573(r29)
/* 80529610  28 04 00 FF */	cmplwi r4, 0xff
/* 80529614  41 82 00 2C */	beq lbl_80529640
/* 80529618  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8052961C  88 A3 0D 64 */	lbz r5, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 80529620  7C A5 07 74 */	extsb r5, r5
/* 80529624  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80529628  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8052962C  4B B0 BD 35 */	bl isSwitch__10dSv_info_cCFii
/* 80529630  2C 03 00 00 */	cmpwi r3, 0
/* 80529634  41 82 00 0C */	beq lbl_80529640
/* 80529638  38 00 00 00 */	li r0, 0
/* 8052963C  98 1D 05 70 */	stb r0, 0x570(r29)
lbl_80529640:
/* 80529640  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80529644  28 00 00 00 */	cmplwi r0, 0
/* 80529648  40 82 00 0C */	bne lbl_80529654
/* 8052964C  38 60 00 01 */	li r3, 1
/* 80529650  48 00 01 30 */	b lbl_80529780
lbl_80529654:
/* 80529654  88 1D 05 71 */	lbz r0, 0x571(r29)
/* 80529658  28 00 00 00 */	cmplwi r0, 0
/* 8052965C  40 82 00 50 */	bne lbl_805296AC
/* 80529660  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 80529664  28 00 00 1F */	cmplwi r0, 0x1f
/* 80529668  41 82 00 3C */	beq lbl_805296A4
/* 8052966C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80529670  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80529674  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 80529678  D0 1F 12 44 */	stfs f0, 0x1244(r31)
/* 8052967C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80529680  C8 3E 00 18 */	lfd f1, 0x18(r30)
/* 80529684  90 01 00 0C */	stw r0, 0xc(r1)
/* 80529688  3C 00 43 30 */	lis r0, 0x4330
/* 8052968C  90 01 00 08 */	stw r0, 8(r1)
/* 80529690  C8 01 00 08 */	lfd f0, 8(r1)
/* 80529694  EC 00 08 28 */	fsubs f0, f0, f1
/* 80529698  EC 02 00 32 */	fmuls f0, f2, f0
/* 8052969C  D0 1F 12 44 */	stfs f0, 0x1244(r31)
/* 805296A0  D0 03 00 34 */	stfs f0, 0x34(r3)
lbl_805296A4:
/* 805296A4  38 00 00 01 */	li r0, 1
/* 805296A8  98 1D 05 71 */	stb r0, 0x571(r29)
lbl_805296AC:
/* 805296AC  38 00 00 01 */	li r0, 1
/* 805296B0  98 1F 12 FB */	stb r0, 0x12fb(r31)
/* 805296B4  88 1D 05 69 */	lbz r0, 0x569(r29)
/* 805296B8  28 00 00 1F */	cmplwi r0, 0x1f
/* 805296BC  41 82 00 20 */	beq lbl_805296DC
/* 805296C0  4B C7 63 51 */	bl dKy_getdaytime_hour__Fv
/* 805296C4  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805296C8  88 1D 05 69 */	lbz r0, 0x569(r29)
/* 805296CC  7C 00 18 40 */	cmplw r0, r3
/* 805296D0  40 82 00 0C */	bne lbl_805296DC
/* 805296D4  38 60 00 01 */	li r3, 1
/* 805296D8  48 00 00 A8 */	b lbl_80529780
lbl_805296DC:
/* 805296DC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805296E0  88 1D 05 6A */	lbz r0, 0x56a(r29)
/* 805296E4  C8 3E 00 18 */	lfd f1, 0x18(r30)
/* 805296E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805296EC  3C 00 43 30 */	lis r0, 0x4330
/* 805296F0  90 01 00 08 */	stw r0, 8(r1)
/* 805296F4  C8 01 00 08 */	lfd f0, 8(r1)
/* 805296F8  EC 20 08 28 */	fsubs f1, f0, f1
/* 805296FC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80529700  EC 01 00 24 */	fdivs f0, f1, f0
/* 80529704  EC 22 00 32 */	fmuls f1, f2, f0
/* 80529708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8052970C  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80529710  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80529714  D0 1F 12 44 */	stfs f0, 0x1244(r31)
/* 80529718  A0 1D 00 38 */	lhz r0, 0x38(r29)
/* 8052971C  B0 1F 12 BE */	sth r0, 0x12be(r31)
/* 80529720  EC 20 08 2A */	fadds f1, f0, f1
/* 80529724  D0 3F 12 44 */	stfs f1, 0x1244(r31)
/* 80529728  4B E3 89 85 */	bl __cvt_fp2unsigned
/* 8052972C  C8 3E 00 18 */	lfd f1, 0x18(r30)
/* 80529730  90 61 00 14 */	stw r3, 0x14(r1)
/* 80529734  3C 00 43 30 */	lis r0, 0x4330
/* 80529738  90 01 00 10 */	stw r0, 0x10(r1)
/* 8052973C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80529740  EC 20 08 28 */	fsubs f1, f0, f1
/* 80529744  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80529748  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052974C  4C 41 13 82 */	cror 2, 1, 2
/* 80529750  40 82 00 1C */	bne lbl_8052976C
/* 80529754  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80529758  D0 1F 12 44 */	stfs f0, 0x1244(r31)
/* 8052975C  A0 7F 12 BE */	lhz r3, 0x12be(r31)
/* 80529760  38 03 00 01 */	addi r0, r3, 1
/* 80529764  B0 1F 12 BE */	sth r0, 0x12be(r31)
/* 80529768  48 00 00 ED */	bl dKankyo_DayProc__Fv
lbl_8052976C:
/* 8052976C  C0 1F 12 44 */	lfs f0, 0x1244(r31)
/* 80529770  D0 1D 00 34 */	stfs f0, 0x34(r29)
/* 80529774  A0 1F 12 BE */	lhz r0, 0x12be(r31)
/* 80529778  B0 1D 00 38 */	sth r0, 0x38(r29)
/* 8052977C  38 60 00 01 */	li r3, 1
lbl_80529780:
/* 80529780  39 61 00 30 */	addi r11, r1, 0x30
/* 80529784  4B E3 8A A5 */	bl _restgpr_29
/* 80529788  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052978C  7C 08 03 A6 */	mtlr r0
/* 80529790  38 21 00 30 */	addi r1, r1, 0x30
/* 80529794  4E 80 00 20 */	blr 
