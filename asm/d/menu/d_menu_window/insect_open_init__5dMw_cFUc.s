lbl_801FA964:
/* 801FA964  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801FA968  7C 08 02 A6 */	mflr r0
/* 801FA96C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801FA970  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801FA974  7C 7F 1B 78 */	mr r31, r3
/* 801FA978  38 80 00 0A */	li r4, 0xa
/* 801FA97C  98 83 01 44 */	stb r4, 0x144(r3)
/* 801FA980  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801FA984  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801FA988  88 03 00 B9 */	lbz r0, 0xb9(r3)
/* 801FA98C  98 03 00 BA */	stb r0, 0xba(r3)
/* 801FA990  98 83 00 B9 */	stb r4, 0xb9(r3)
/* 801FA994  38 00 00 A4 */	li r0, 0xa4
/* 801FA998  90 01 00 08 */	stw r0, 8(r1)
/* 801FA99C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801FA9A0  38 81 00 08 */	addi r4, r1, 8
/* 801FA9A4  38 A0 00 00 */	li r5, 0
/* 801FA9A8  38 C0 00 00 */	li r6, 0
/* 801FA9AC  38 E0 00 00 */	li r7, 0
/* 801FA9B0  C0 22 AA C4 */	lfs f1, lit_4386(r2)
/* 801FA9B4  FC 40 08 90 */	fmr f2, f1
/* 801FA9B8  C0 62 AA C8 */	lfs f3, lit_4387(r2)
/* 801FA9BC  FC 80 18 90 */	fmr f4, f3
/* 801FA9C0  39 00 00 00 */	li r8, 0
/* 801FA9C4  48 0B 0F C1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801FA9C8  48 00 24 41 */	bl dMw_fade_out__5dMw_cFv
/* 801FA9CC  7F E3 FB 78 */	mr r3, r31
/* 801FA9D0  48 00 13 B1 */	bl dMw_capture_create__5dMw_cFv
/* 801FA9D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801FA9D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801FA9DC  7C 08 03 A6 */	mtlr r0
/* 801FA9E0  38 21 00 20 */	addi r1, r1, 0x20
/* 801FA9E4  4E 80 00 20 */	blr 
