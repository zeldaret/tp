lbl_80BB7364:
/* 80BB7364  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB7368  7C 08 02 A6 */	mflr r0
/* 80BB736C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB7370  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB7374  4B 7A AE 65 */	bl _savegpr_28
/* 80BB7378  7C 7F 1B 78 */	mr r31, r3
/* 80BB737C  3C 80 80 BB */	lis r4, VIBMODE_POWER@ha /* 0x80BB7EB0@ha */
/* 80BB7380  3B C4 7E B0 */	addi r30, r4, VIBMODE_POWER@l /* 0x80BB7EB0@l */
/* 80BB7384  48 00 03 0D */	bl chkHitBombArrow__11daBkyRock_cFv
/* 80BB7388  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB738C  41 82 00 78 */	beq lbl_80BB7404
/* 80BB7390  7F E3 FB 78 */	mr r3, r31
/* 80BB7394  48 00 03 D9 */	bl initChangeModeBefore__11daBkyRock_cFv
/* 80BB7398  7F E3 FB 78 */	mr r3, r31
/* 80BB739C  38 80 00 04 */	li r4, 4
/* 80BB73A0  38 BE 00 1C */	addi r5, r30, 0x1c
/* 80BB73A4  48 00 08 75 */	bl callBombEmt__11daBkyRock_cFiPCUs
/* 80BB73A8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BB73AC  7C 03 07 74 */	extsb r3, r0
/* 80BB73B0  4B 47 5C BD */	bl dComIfGp_getReverb__Fi
/* 80BB73B4  7C 67 1B 78 */	mr r7, r3
/* 80BB73B8  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080286@ha */
/* 80BB73BC  38 03 02 86 */	addi r0, r3, 0x0286 /* 0x00080286@l */
/* 80BB73C0  90 01 00 08 */	stw r0, 8(r1)
/* 80BB73C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB73C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB73CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB73D0  38 81 00 08 */	addi r4, r1, 8
/* 80BB73D4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80BB73D8  38 C0 00 00 */	li r6, 0
/* 80BB73DC  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 80BB73E0  FC 40 08 90 */	fmr f2, f1
/* 80BB73E4  C0 7E 00 FC */	lfs f3, 0xfc(r30)
/* 80BB73E8  FC 80 18 90 */	fmr f4, f3
/* 80BB73EC  39 00 00 00 */	li r8, 0
/* 80BB73F0  4B 6F 45 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB73F4  38 00 00 01 */	li r0, 1
/* 80BB73F8  98 1F 05 78 */	stb r0, 0x578(r31)
/* 80BB73FC  7F E3 FB 78 */	mr r3, r31
/* 80BB7400  48 00 03 FD */	bl initChangeModeAfter__11daBkyRock_cFv
lbl_80BB7404:
/* 80BB7404  7F E3 FB 78 */	mr r3, r31
/* 80BB7408  4B FF FB 5D */	bl setModelMtx__11daBkyRock_cFv
/* 80BB740C  3B 80 00 00 */	li r28, 0
/* 80BB7410  3B C0 00 00 */	li r30, 0
/* 80BB7414  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB7418  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB741C  3B A3 23 3C */	addi r29, r3, 0x233c
lbl_80BB7420:
/* 80BB7420  7F A3 EB 78 */	mr r3, r29
/* 80BB7424  38 9E 05 EC */	addi r4, r30, 0x5ec
/* 80BB7428  7C 9F 22 14 */	add r4, r31, r4
/* 80BB742C  4B 6A D7 7D */	bl Set__4cCcSFP8cCcD_Obj
/* 80BB7430  3B 9C 00 01 */	addi r28, r28, 1
/* 80BB7434  2C 1C 00 02 */	cmpwi r28, 2
/* 80BB7438  3B DE 01 3C */	addi r30, r30, 0x13c
/* 80BB743C  41 80 FF E4 */	blt lbl_80BB7420
/* 80BB7440  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB7444  4B 7A AD E1 */	bl _restgpr_28
/* 80BB7448  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB744C  7C 08 03 A6 */	mtlr r0
/* 80BB7450  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB7454  4E 80 00 20 */	blr 
