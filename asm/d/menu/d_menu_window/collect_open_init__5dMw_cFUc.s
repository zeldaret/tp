lbl_801FA244:
/* 801FA244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FA248  7C 08 02 A6 */	mflr r0
/* 801FA24C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FA250  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801FA254  7C 7F 1B 78 */	mr r31, r3
/* 801FA258  38 80 00 03 */	li r4, 3
/* 801FA25C  98 83 01 44 */	stb r4, 0x144(r3)
/* 801FA260  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FA264  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FA268  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 801FA26C  98 03 00 BA */	stb r0, 0xba(r3)
/* 801FA270  98 83 00 B9 */	stb r4, 0xb9(r3)
/* 801FA274  38 00 00 5B */	li r0, 0x5b
/* 801FA278  90 01 00 08 */	stw r0, 8(r1)
/* 801FA27C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801FA280  38 81 00 08 */	addi r4, r1, 8
/* 801FA284  38 A0 00 00 */	li r5, 0
/* 801FA288  38 C0 00 00 */	li r6, 0
/* 801FA28C  38 E0 00 00 */	li r7, 0
/* 801FA290  C0 22 AA C4 */	lfs f1, lit_4386(r2)
/* 801FA294  FC 40 08 90 */	fmr f2, f1
/* 801FA298  C0 62 AA C8 */	lfs f3, lit_4387(r2)
/* 801FA29C  FC 80 18 90 */	fmr f4, f3
/* 801FA2A0  39 00 00 00 */	li r8, 0
/* 801FA2A4  48 0B 16 E1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801FA2A8  48 00 2B 61 */	bl dMw_fade_out__5dMw_cFv
/* 801FA2AC  7F E3 FB 78 */	mr r3, r31
/* 801FA2B0  48 00 1A D1 */	bl dMw_capture_create__5dMw_cFv
/* 801FA2B4  38 00 00 00 */	li r0, 0
/* 801FA2B8  98 1F 01 53 */	stb r0, 0x153(r31)
/* 801FA2BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801FA2C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FA2C4  7C 08 03 A6 */	mtlr r0
/* 801FA2C8  38 21 00 20 */	addi r1, r1, 0x20
/* 801FA2CC  4E 80 00 20 */	blr 
