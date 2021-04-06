lbl_800C5484:
/* 800C5484  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800C5488  7C 08 02 A6 */	mflr r0
/* 800C548C  90 01 00 44 */	stw r0, 0x44(r1)
/* 800C5490  39 61 00 40 */	addi r11, r1, 0x40
/* 800C5494  48 29 CD 49 */	bl _savegpr_29
/* 800C5498  7C 7F 1B 78 */	mr r31, r3
/* 800C549C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 800C54A0  64 00 08 00 */	oris r0, r0, 0x800
/* 800C54A4  90 03 05 88 */	stw r0, 0x588(r3)
/* 800C54A8  80 83 27 EC */	lwz r4, 0x27ec(r3)
/* 800C54AC  28 04 00 00 */	cmplwi r4, 0
/* 800C54B0  41 82 00 48 */	beq lbl_800C54F8
/* 800C54B4  4B F5 52 5D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 800C54B8  7C 64 1B 78 */	mr r4, r3
/* 800C54BC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800C54C0  38 A0 00 05 */	li r5, 5
/* 800C54C4  38 C0 05 E8 */	li r6, 0x5e8
/* 800C54C8  38 E0 01 3C */	li r7, 0x13c
/* 800C54CC  48 1A B0 75 */	bl cLib_addCalcAngleS__FPsssss
/* 800C54D0  88 1F 2F 98 */	lbz r0, 0x2f98(r31)
/* 800C54D4  28 00 00 02 */	cmplwi r0, 2
/* 800C54D8  40 82 00 14 */	bne lbl_800C54EC
/* 800C54DC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800C54E0  38 03 40 00 */	addi r0, r3, 0x4000
/* 800C54E4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C54E8  48 00 00 10 */	b lbl_800C54F8
lbl_800C54EC:
/* 800C54EC  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800C54F0  38 03 C0 00 */	addi r0, r3, -16384
/* 800C54F4  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800C54F8:
/* 800C54F8  7F E3 FB 78 */	mr r3, r31
/* 800C54FC  48 00 BB 31 */	bl checkCutFinishJumpUp__9daAlink_cFv
/* 800C5500  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 800C5504  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800C5508  7C 00 1B 78 */	or r0, r0, r3
/* 800C550C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800C5510  3B BF 1F D0 */	addi r29, r31, 0x1fd0
/* 800C5514  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800C5518  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800C551C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C5520  7F E3 FB 78 */	mr r3, r31
/* 800C5524  38 81 00 14 */	addi r4, r1, 0x14
/* 800C5528  4B FE CA B1 */	bl getSlidePolygon__9daAlink_cFP8cM3dGPla
/* 800C552C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C5530  41 82 00 14 */	beq lbl_800C5544
/* 800C5534  38 7F 33 98 */	addi r3, r31, 0x3398
/* 800C5538  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C553C  C0 42 93 D8 */	lfs f2, lit_11470(r2)
/* 800C5540  48 1A B2 01 */	bl cLib_chaseF__FPfff
lbl_800C5544:
/* 800C5544  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800C5548  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800C554C  41 82 00 10 */	beq lbl_800C555C
/* 800C5550  7F E3 FB 78 */	mr r3, r31
/* 800C5554  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C5558  48 01 7A B1 */	bl setUpperGuardAnime__9daAlink_cFf
lbl_800C555C:
/* 800C555C  7F A3 EB 78 */	mr r3, r29
/* 800C5560  48 09 8F 6D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C5564  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C5568  41 82 00 74 */	beq lbl_800C55DC
/* 800C556C  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800C5570  28 00 00 49 */	cmplwi r0, 0x49
/* 800C5574  40 82 00 1C */	bne lbl_800C5590
/* 800C5578  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C557C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C5580  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800C5584  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 800C5588  4B F8 2B F5 */	bl cutEnd__16dEvent_manager_cFi
/* 800C558C  48 00 01 4C */	b lbl_800C56D8
lbl_800C5590:
/* 800C5590  83 DF 27 E0 */	lwz r30, 0x27e0(r31)
/* 800C5594  3B A0 00 01 */	li r29, 1
/* 800C5598  7F C3 F3 78 */	mr r3, r30
/* 800C559C  4B FA E2 49 */	bl LockonTruth__12dAttention_cFv
/* 800C55A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C55A4  40 82 00 14 */	bne lbl_800C55B8
/* 800C55A8  80 1E 03 34 */	lwz r0, 0x334(r30)
/* 800C55AC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800C55B0  40 82 00 08 */	bne lbl_800C55B8
/* 800C55B4  3B A0 00 00 */	li r29, 0
lbl_800C55B8:
/* 800C55B8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 800C55BC  40 82 00 10 */	bne lbl_800C55CC
/* 800C55C0  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800C55C4  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 800C55C8  90 1F 05 78 */	stw r0, 0x578(r31)
lbl_800C55CC:
/* 800C55CC  7F E3 FB 78 */	mr r3, r31
/* 800C55D0  38 80 00 00 */	li r4, 0
/* 800C55D4  4B FF 4A FD */	bl checkNextAction__9daAlink_cFi
/* 800C55D8  48 00 01 00 */	b lbl_800C56D8
lbl_800C55DC:
/* 800C55DC  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800C55E0  2C 00 00 00 */	cmpwi r0, 0
/* 800C55E4  41 82 00 38 */	beq lbl_800C561C
/* 800C55E8  7F E3 FB 78 */	mr r3, r31
/* 800C55EC  4B FE C5 3D */	bl checkNotJumpSinkLimit__9daAlink_cFv
/* 800C55F0  2C 03 00 00 */	cmpwi r3, 0
/* 800C55F4  40 82 00 28 */	bne lbl_800C561C
/* 800C55F8  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800C55FC  3C 60 80 39 */	lis r3, m__22daAlinkHIO_turnMove_c0@ha /* 0x8038DF70@ha */
/* 800C5600  38 63 DF 70 */	addi r3, r3, m__22daAlinkHIO_turnMove_c0@l /* 0x8038DF70@l */
/* 800C5604  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800C5608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C560C  40 81 00 10 */	ble lbl_800C561C
/* 800C5610  7F E3 FB 78 */	mr r3, r31
/* 800C5614  48 00 E4 C9 */	bl procCutFinishJumpUpInit__9daAlink_cFv
/* 800C5618  48 00 00 C0 */	b lbl_800C56D8
lbl_800C561C:
/* 800C561C  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800C5620  3C 60 80 39 */	lis r3, m__22daAlinkHIO_turnMove_c0@ha /* 0x8038DF70@ha */
/* 800C5624  38 63 DF 70 */	addi r3, r3, m__22daAlinkHIO_turnMove_c0@l /* 0x8038DF70@l */
/* 800C5628  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 800C562C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C5630  40 81 00 38 */	ble lbl_800C5668
/* 800C5634  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800C5638  60 00 00 04 */	ori r0, r0, 4
/* 800C563C  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800C5640  7F E3 FB 78 */	mr r3, r31
/* 800C5644  38 80 00 01 */	li r4, 1
/* 800C5648  4B FF 4A 89 */	bl checkNextAction__9daAlink_cFi
/* 800C564C  2C 03 00 00 */	cmpwi r3, 0
/* 800C5650  40 82 00 88 */	bne lbl_800C56D8
/* 800C5654  38 7F 33 98 */	addi r3, r31, 0x3398
/* 800C5658  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C565C  C0 42 97 B4 */	lfs f2, lit_52234(r2)
/* 800C5660  48 1A B0 E1 */	bl cLib_chaseF__FPfff
/* 800C5664  48 00 00 74 */	b lbl_800C56D8
lbl_800C5668:
/* 800C5668  7F A3 EB 78 */	mr r3, r29
/* 800C566C  C0 22 93 C8 */	lfs f1, lit_10286(r2)
/* 800C5670  48 26 2D BD */	bl checkPass__12J3DFrameCtrlFf
/* 800C5674  2C 03 00 00 */	cmpwi r3, 0
/* 800C5678  41 82 00 34 */	beq lbl_800C56AC
/* 800C567C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C5680  D0 21 00 08 */	stfs f1, 8(r1)
/* 800C5684  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800C5688  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800C568C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800C5690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800C5694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800C5698  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800C569C  38 80 00 01 */	li r4, 1
/* 800C56A0  38 A0 00 01 */	li r5, 1
/* 800C56A4  38 C1 00 08 */	addi r6, r1, 8
/* 800C56A8  4B FA A3 7D */	bl StartShock__12dVibration_cFii4cXyz
lbl_800C56AC:
/* 800C56AC  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 800C56B0  C0 02 93 C0 */	lfs f0, lit_10193(r2)
/* 800C56B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C56B8  40 80 00 10 */	bge lbl_800C56C8
/* 800C56BC  38 00 00 04 */	li r0, 4
/* 800C56C0  98 1F 2F 9D */	stb r0, 0x2f9d(r31)
/* 800C56C4  48 00 00 14 */	b lbl_800C56D8
lbl_800C56C8:
/* 800C56C8  38 7F 33 98 */	addi r3, r31, 0x3398
/* 800C56CC  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C56D0  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800C56D4  48 1A B0 6D */	bl cLib_chaseF__FPfff
lbl_800C56D8:
/* 800C56D8  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800C56DC  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800C56E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C56E4  38 60 00 01 */	li r3, 1
/* 800C56E8  39 61 00 40 */	addi r11, r1, 0x40
/* 800C56EC  48 29 CB 3D */	bl _restgpr_29
/* 800C56F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800C56F4  7C 08 03 A6 */	mtlr r0
/* 800C56F8  38 21 00 40 */	addi r1, r1, 0x40
/* 800C56FC  4E 80 00 20 */	blr 
