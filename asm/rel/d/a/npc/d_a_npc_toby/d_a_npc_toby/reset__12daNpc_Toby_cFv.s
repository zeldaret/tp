lbl_80B1F384:
/* 80B1F384  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B1F388  7C 08 02 A6 */	mflr r0
/* 80B1F38C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B1F390  39 61 00 30 */	addi r11, r1, 0x30
/* 80B1F394  4B 84 2E 44 */	b _savegpr_28
/* 80B1F398  7C 7F 1B 78 */	mr r31, r3
/* 80B1F39C  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha
/* 80B1F3A0  3B C3 49 E4 */	addi r30, r3, m__18daNpc_Toby_Param_c@l
/* 80B1F3A4  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80B1F3A8  38 1F 10 04 */	addi r0, r31, 0x1004
/* 80B1F3AC  7F A3 00 50 */	subf r29, r3, r0
/* 80B1F3B0  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80B1F3B4  28 03 00 00 */	cmplwi r3, 0
/* 80B1F3B8  41 82 00 08 */	beq lbl_80B1F3C0
/* 80B1F3BC  4B 62 63 A8 */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B1F3C0:
/* 80B1F3C0  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B1F3C4  38 80 00 00 */	li r4, 0
/* 80B1F3C8  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B1F3CC  7C A3 00 50 */	subf r5, r3, r0
/* 80B1F3D0  4B 4E 40 88 */	b memset
/* 80B1F3D4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B1F3D8  4B 62 64 C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B1F3DC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B1F3E0  4B 62 64 B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B1F3E4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B1F3E8  4B 62 62 EC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B1F3EC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B1F3F0  4B 62 62 E4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B1F3F4  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B1F3F8  4B 62 78 A0 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B1F3FC  38 A0 00 00 */	li r5, 0
/* 80B1F400  38 60 00 00 */	li r3, 0
/* 80B1F404  7C A4 2B 78 */	mr r4, r5
/* 80B1F408  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B1F40C  38 00 00 02 */	li r0, 2
/* 80B1F410  7C 09 03 A6 */	mtctr r0
lbl_80B1F414:
/* 80B1F414  7C DF 22 14 */	add r6, r31, r4
/* 80B1F418  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B1F41C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B1F420  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B1F424  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B1F428  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B1F42C  38 63 00 04 */	addi r3, r3, 4
/* 80B1F430  38 84 00 06 */	addi r4, r4, 6
/* 80B1F434  42 00 FF E0 */	bdnz lbl_80B1F414
/* 80B1F438  38 00 00 00 */	li r0, 0
/* 80B1F43C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B1F440  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B1F444  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B1F448  38 00 FF FF */	li r0, -1
/* 80B1F44C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B1F450  38 00 00 01 */	li r0, 1
/* 80B1F454  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B1F458  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B1F45C  4B 74 84 F8 */	b cM_rndF__Ff
/* 80B1F460  FC 00 08 1E */	fctiwz f0, f1
/* 80B1F464  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B1F468  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B1F46C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B1F470  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80B1F474  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B1F478  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B1F47C  3B 80 00 00 */	li r28, 0
/* 80B1F480  3B C0 00 00 */	li r30, 0
lbl_80B1F484:
/* 80B1F484  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 80B1F488  7C 7F 1A 14 */	add r3, r31, r3
/* 80B1F48C  4B 62 62 48 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B1F490  3B 9C 00 01 */	addi r28, r28, 1
/* 80B1F494  2C 1C 00 04 */	cmpwi r28, 4
/* 80B1F498  3B DE 00 08 */	addi r30, r30, 8
/* 80B1F49C  41 80 FF E8 */	blt lbl_80B1F484
/* 80B1F4A0  38 7F 0F A8 */	addi r3, r31, 0xfa8
/* 80B1F4A4  38 80 00 00 */	li r4, 0
/* 80B1F4A8  7F A5 EB 78 */	mr r5, r29
/* 80B1F4AC  4B 4E 3F AC */	b memset
/* 80B1F4B0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B1F4B4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80B1F4B8  28 00 00 FF */	cmplwi r0, 0xff
/* 80B1F4BC  41 82 00 28 */	beq lbl_80B1F4E4
/* 80B1F4C0  38 7F 0F C0 */	addi r3, r31, 0xfc0
/* 80B1F4C4  4B 62 67 7C */	b initialize__13daNpcT_Path_cFv
/* 80B1F4C8  38 7F 0F C0 */	addi r3, r31, 0xfc0
/* 80B1F4CC  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B1F4D0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B1F4D4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B1F4D8  7C 05 07 74 */	extsb r5, r0
/* 80B1F4DC  38 C0 00 00 */	li r6, 0
/* 80B1F4E0  4B 62 67 94 */	b setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80B1F4E4:
/* 80B1F4E4  38 60 00 00 */	li r3, 0
/* 80B1F4E8  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80B1F4EC  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80B1F4F0  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80B1F4F4  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80B1F4F8  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80B1F4FC  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80B1F500  2C 00 00 03 */	cmpwi r0, 3
/* 80B1F504  41 82 00 48 */	beq lbl_80B1F54C
/* 80B1F508  40 80 00 1C */	bge lbl_80B1F524
/* 80B1F50C  2C 00 00 01 */	cmpwi r0, 1
/* 80B1F510  41 82 00 2C */	beq lbl_80B1F53C
/* 80B1F514  40 80 00 30 */	bge lbl_80B1F544
/* 80B1F518  2C 00 00 00 */	cmpwi r0, 0
/* 80B1F51C  40 80 00 18 */	bge lbl_80B1F534
/* 80B1F520  48 00 00 58 */	b lbl_80B1F578
lbl_80B1F524:
/* 80B1F524  2C 00 00 05 */	cmpwi r0, 5
/* 80B1F528  41 82 00 40 */	beq lbl_80B1F568
/* 80B1F52C  40 80 00 4C */	bge lbl_80B1F578
/* 80B1F530  48 00 00 2C */	b lbl_80B1F55C
lbl_80B1F534:
/* 80B1F534  98 7F 00 FF */	stb r3, 0xff(r31)
/* 80B1F538  48 00 00 40 */	b lbl_80B1F578
lbl_80B1F53C:
/* 80B1F53C  98 7F 00 FF */	stb r3, 0xff(r31)
/* 80B1F540  48 00 00 38 */	b lbl_80B1F578
lbl_80B1F544:
/* 80B1F544  98 7F 00 FF */	stb r3, 0xff(r31)
/* 80B1F548  48 00 00 30 */	b lbl_80B1F578
lbl_80B1F54C:
/* 80B1F54C  38 00 00 01 */	li r0, 1
/* 80B1F550  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80B1F554  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80B1F558  48 00 00 20 */	b lbl_80B1F578
lbl_80B1F55C:
/* 80B1F55C  38 00 00 02 */	li r0, 2
/* 80B1F560  98 1F 00 FF */	stb r0, 0xff(r31)
/* 80B1F564  48 00 00 14 */	b lbl_80B1F578
lbl_80B1F568:
/* 80B1F568  38 00 00 01 */	li r0, 1
/* 80B1F56C  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 80B1F570  38 00 00 03 */	li r0, 3
/* 80B1F574  98 1F 00 FF */	stb r0, 0xff(r31)
lbl_80B1F578:
/* 80B1F578  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B1F57C  90 01 00 08 */	stw r0, 8(r1)
/* 80B1F580  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80B1F584  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B1F588  7F E3 FB 78 */	mr r3, r31
/* 80B1F58C  38 81 00 08 */	addi r4, r1, 8
/* 80B1F590  4B 62 B4 0C */	b setAngle__8daNpcT_cF5csXyz
/* 80B1F594  39 61 00 30 */	addi r11, r1, 0x30
/* 80B1F598  4B 84 2C 8C */	b _restgpr_28
/* 80B1F59C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B1F5A0  7C 08 03 A6 */	mtlr r0
/* 80B1F5A4  38 21 00 30 */	addi r1, r1, 0x30
/* 80B1F5A8  4E 80 00 20 */	blr 
