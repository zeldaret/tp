lbl_801F4724:
/* 801F4724  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801F4728  7C 08 02 A6 */	mflr r0
/* 801F472C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801F4730  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801F4734  7C 7F 1B 78 */	mr r31, r3
/* 801F4738  38 00 00 6E */	li r0, 0x6e
/* 801F473C  90 01 00 08 */	stw r0, 8(r1)
/* 801F4740  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801F4744  38 81 00 08 */	addi r4, r1, 8
/* 801F4748  38 A0 00 00 */	li r5, 0
/* 801F474C  38 C0 00 00 */	li r6, 0
/* 801F4750  38 E0 00 00 */	li r7, 0
/* 801F4754  C0 22 AA 58 */	lfs f1, lit_4179(r2)
/* 801F4758  FC 40 08 90 */	fmr f2, f1
/* 801F475C  C0 62 AA 78 */	lfs f3, lit_4879(r2)
/* 801F4760  FC 80 18 90 */	fmr f4, f3
/* 801F4764  39 00 00 00 */	li r8, 0
/* 801F4768  48 0B 72 1D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801F476C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 801F4770  C0 22 AA 48 */	lfs f1, lit_4175(r2)
/* 801F4774  4B FA 0B 2D */	bl setAlphaRate__16dSelect_cursor_cFf
/* 801F4778  7F E3 FB 78 */	mr r3, r31
/* 801F477C  38 80 04 CA */	li r4, 0x4ca
/* 801F4780  48 00 00 DD */	bl headerTxtSet__12dMenu_save_cFUs
/* 801F4784  88 1F 00 54 */	lbz r0, 0x54(r31)
/* 801F4788  54 00 10 3A */	slwi r0, r0, 2
/* 801F478C  7F E3 FB 78 */	mr r3, r31
/* 801F4790  3C 80 80 3C */	lis r4, SelOpenEndFrameTbl@ha /* 0x803BDFA8@ha */
/* 801F4794  38 84 DF A8 */	addi r4, r4, SelOpenEndFrameTbl@l /* 0x803BDFA8@l */
/* 801F4798  7C 84 00 2E */	lwzx r4, r4, r0
/* 801F479C  3C A0 80 3C */	lis r5, SelOpenStartFrameTbl@ha /* 0x803BDF9C@ha */
/* 801F47A0  38 A5 DF 9C */	addi r5, r5, SelOpenStartFrameTbl@l /* 0x803BDF9C@l */
/* 801F47A4  7C A5 00 2E */	lwzx r5, r5, r0
/* 801F47A8  48 00 0D 61 */	bl selectDataMoveAnmInitSet__12dMenu_save_cFii
/* 801F47AC  7F E3 FB 78 */	mr r3, r31
/* 801F47B0  38 80 08 33 */	li r4, 0x833
/* 801F47B4  38 A0 08 29 */	li r5, 0x829
/* 801F47B8  38 C0 00 00 */	li r6, 0
/* 801F47BC  48 00 0F 89 */	bl yesnoMenuMoveAnmInitSet__12dMenu_save_cFiiUc
/* 801F47C0  38 00 00 36 */	li r0, 0x36
/* 801F47C4  98 1F 01 B2 */	stb r0, 0x1b2(r31)
/* 801F47C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801F47CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801F47D0  7C 08 03 A6 */	mtlr r0
/* 801F47D4  38 21 00 20 */	addi r1, r1, 0x20
/* 801F47D8  4E 80 00 20 */	blr 
