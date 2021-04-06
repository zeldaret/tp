lbl_801F43F8:
/* 801F43F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801F43FC  7C 08 02 A6 */	mflr r0
/* 801F4400  90 01 00 34 */	stw r0, 0x34(r1)
/* 801F4404  39 61 00 30 */	addi r11, r1, 0x30
/* 801F4408  48 16 DD CD */	bl _savegpr_27
/* 801F440C  7C 7F 1B 78 */	mr r31, r3
/* 801F4410  38 00 00 AD */	li r0, 0xad
/* 801F4414  90 01 00 08 */	stw r0, 8(r1)
/* 801F4418  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F441C  38 81 00 08 */	addi r4, r1, 8
/* 801F4420  38 A0 00 00 */	li r5, 0
/* 801F4424  38 C0 00 00 */	li r6, 0
/* 801F4428  38 E0 00 00 */	li r7, 0
/* 801F442C  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F4430  FC 40 08 90 */	fmr f2, f1
/* 801F4434  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F4438  FC 80 18 90 */	fmr f4, f3
/* 801F443C  39 00 00 00 */	li r8, 0
/* 801F4440  48 0B 80 CD */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F4444  7F E3 FB 78 */	mr r3, r31
/* 801F4448  48 00 04 E1 */	bl headerTxtChangeAnm__12dMenu_save_cFv
/* 801F444C  7C 7B 1B 78 */	mr r27, r3
/* 801F4450  7F E3 FB 78 */	mr r3, r31
/* 801F4454  48 00 11 AD */	bl selectDataMoveAnm__12dMenu_save_cFv
/* 801F4458  7C 7C 1B 78 */	mr r28, r3
/* 801F445C  7F E3 FB 78 */	mr r3, r31
/* 801F4460  88 9F 00 54 */	lbz r4, 0x54(r31)
/* 801F4464  48 00 1F 2D */	bl selectWakuAlpahAnm__12dMenu_save_cFUc
/* 801F4468  7C 7D 1B 78 */	mr r29, r3
/* 801F446C  7F E3 FB 78 */	mr r3, r31
/* 801F4470  48 00 1E 09 */	bl ketteiTxtDispAnm__12dMenu_save_cFv
/* 801F4474  7C 7E 1B 78 */	mr r30, r3
/* 801F4478  7F E3 FB 78 */	mr r3, r31
/* 801F447C  48 00 1C A5 */	bl modoruTxtDispAnm__12dMenu_save_cFv
/* 801F4480  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 801F4484  88 84 00 3D */	lbz r4, 0x3d(r4)
/* 801F4488  30 04 FF FF */	addic r0, r4, -1
/* 801F448C  7C 00 21 10 */	subfe r0, r0, r4
/* 801F4490  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 801F4494  57 60 06 3E */	clrlwi r0, r27, 0x18
/* 801F4498  28 00 00 01 */	cmplwi r0, 1
/* 801F449C  40 82 00 5C */	bne lbl_801F44F8
/* 801F44A0  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801F44A4  28 00 00 01 */	cmplwi r0, 1
/* 801F44A8  40 82 00 50 */	bne lbl_801F44F8
/* 801F44AC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801F44B0  28 00 00 01 */	cmplwi r0, 1
/* 801F44B4  40 82 00 44 */	bne lbl_801F44F8
/* 801F44B8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F44BC  28 00 00 01 */	cmplwi r0, 1
/* 801F44C0  40 82 00 38 */	bne lbl_801F44F8
/* 801F44C4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F44C8  28 00 00 01 */	cmplwi r0, 1
/* 801F44CC  40 82 00 2C */	bne lbl_801F44F8
/* 801F44D0  28 04 00 01 */	cmplwi r4, 1
/* 801F44D4  40 82 00 24 */	bne lbl_801F44F8
/* 801F44D8  3C 60 80 43 */	lis r3, g_msHIO@ha /* 0x8042E84C@ha */
/* 801F44DC  38 63 E8 4C */	addi r3, r3, g_msHIO@l /* 0x8042E84C@l */
/* 801F44E0  88 03 00 06 */	lbz r0, 6(r3)
/* 801F44E4  98 1F 01 BD */	stb r0, 0x1bd(r31)
/* 801F44E8  7F E3 FB 78 */	mr r3, r31
/* 801F44EC  4B FF E3 55 */	bl dataWrite__12dMenu_save_cFv
/* 801F44F0  38 00 00 1F */	li r0, 0x1f
/* 801F44F4  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F44F8:
/* 801F44F8  39 61 00 30 */	addi r11, r1, 0x30
/* 801F44FC  48 16 DD 25 */	bl _restgpr_27
/* 801F4500  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801F4504  7C 08 03 A6 */	mtlr r0
/* 801F4508  38 21 00 30 */	addi r1, r1, 0x30
/* 801F450C  4E 80 00 20 */	blr 
