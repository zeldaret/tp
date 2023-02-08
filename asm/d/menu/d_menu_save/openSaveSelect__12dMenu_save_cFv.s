lbl_801F3588:
/* 801F3588  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F358C  7C 08 02 A6 */	mflr r0
/* 801F3590  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F3594  39 61 00 20 */	addi r11, r1, 0x20
/* 801F3598  48 16 EC 41 */	bl _savegpr_28
/* 801F359C  7C 7F 1B 78 */	mr r31, r3
/* 801F35A0  48 00 13 89 */	bl headerTxtChangeAnm__12dMenu_save_cFv
/* 801F35A4  7C 7E 1B 78 */	mr r30, r3
/* 801F35A8  3B A0 00 01 */	li r29, 1
/* 801F35AC  88 1F 00 64 */	lbz r0, 0x64(r31)
/* 801F35B0  28 00 00 00 */	cmplwi r0, 0
/* 801F35B4  40 82 00 10 */	bne lbl_801F35C4
/* 801F35B8  88 1F 00 65 */	lbz r0, 0x65(r31)
/* 801F35BC  28 00 00 00 */	cmplwi r0, 0
/* 801F35C0  41 82 00 10 */	beq lbl_801F35D0
lbl_801F35C4:
/* 801F35C4  7F E3 FB 78 */	mr r3, r31
/* 801F35C8  48 00 1E 0D */	bl selectDataBaseMoveAnm__12dMenu_save_cFv
/* 801F35CC  7C 7D 1B 78 */	mr r29, r3
lbl_801F35D0:
/* 801F35D0  3B 80 00 01 */	li r28, 1
/* 801F35D4  88 1F 00 D2 */	lbz r0, 0xd2(r31)
/* 801F35D8  28 00 00 00 */	cmplwi r0, 0
/* 801F35DC  40 82 00 10 */	bne lbl_801F35EC
/* 801F35E0  88 1F 00 D3 */	lbz r0, 0xd3(r31)
/* 801F35E4  28 00 00 00 */	cmplwi r0, 0
/* 801F35E8  41 82 00 10 */	beq lbl_801F35F8
lbl_801F35EC:
/* 801F35EC  7F E3 FB 78 */	mr r3, r31
/* 801F35F0  48 00 29 95 */	bl errorMoveAnm__12dMenu_save_cFv
/* 801F35F4  7C 7C 1B 78 */	mr r28, r3
lbl_801F35F8:
/* 801F35F8  38 60 00 01 */	li r3, 1
/* 801F35FC  88 1F 00 9C */	lbz r0, 0x9c(r31)
/* 801F3600  28 00 00 00 */	cmplwi r0, 0
/* 801F3604  40 82 00 10 */	bne lbl_801F3614
/* 801F3608  88 1F 00 9D */	lbz r0, 0x9d(r31)
/* 801F360C  28 00 00 00 */	cmplwi r0, 0
/* 801F3610  41 82 00 0C */	beq lbl_801F361C
lbl_801F3614:
/* 801F3614  7F E3 FB 78 */	mr r3, r31
/* 801F3618  48 00 22 B1 */	bl yesnoMenuMoveAnm__12dMenu_save_cFv
lbl_801F361C:
/* 801F361C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801F3620  28 00 00 01 */	cmplwi r0, 1
/* 801F3624  40 82 00 78 */	bne lbl_801F369C
/* 801F3628  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 801F362C  28 00 00 01 */	cmplwi r0, 1
/* 801F3630  40 82 00 6C */	bne lbl_801F369C
/* 801F3634  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 801F3638  28 00 00 01 */	cmplwi r0, 1
/* 801F363C  40 82 00 60 */	bne lbl_801F369C
/* 801F3640  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801F3644  28 00 00 01 */	cmplwi r0, 1
/* 801F3648  40 82 00 54 */	bne lbl_801F369C
/* 801F364C  7F E3 FB 78 */	mr r3, r31
/* 801F3650  38 80 04 CA */	li r4, 0x4ca
/* 801F3654  48 00 12 09 */	bl headerTxtSet__12dMenu_save_cFUs
/* 801F3658  7F E3 FB 78 */	mr r3, r31
/* 801F365C  48 00 1E 65 */	bl saveSelectOpenAnmSet__12dMenu_save_cFv
/* 801F3660  38 00 00 A8 */	li r0, 0xa8
/* 801F3664  90 01 00 08 */	stw r0, 8(r1)
/* 801F3668  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F366C  38 81 00 08 */	addi r4, r1, 8
/* 801F3670  38 A0 00 00 */	li r5, 0
/* 801F3674  38 C0 00 00 */	li r6, 0
/* 801F3678  38 E0 00 00 */	li r7, 0
/* 801F367C  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F3680  FC 40 08 90 */	fmr f2, f1
/* 801F3684  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F3688  FC 80 18 90 */	fmr f4, f3
/* 801F368C  39 00 00 00 */	li r8, 0
/* 801F3690  48 0B 82 F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F3694  38 00 00 2F */	li r0, 0x2f
/* 801F3698  98 1F 01 B2 */	stb r0, 0x1b2(r31)
lbl_801F369C:
/* 801F369C  39 61 00 20 */	addi r11, r1, 0x20
/* 801F36A0  48 16 EB 85 */	bl _restgpr_28
/* 801F36A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F36A8  7C 08 03 A6 */	mtlr r0
/* 801F36AC  38 21 00 20 */	addi r1, r1, 0x20
/* 801F36B0  4E 80 00 20 */	blr 
