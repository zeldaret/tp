lbl_8013F1F0:
/* 8013F1F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013F1F4  7C 08 02 A6 */	mflr r0
/* 8013F1F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013F1FC  39 61 00 30 */	addi r11, r1, 0x30
/* 8013F200  48 22 2F DD */	bl _savegpr_29
/* 8013F204  7C 7F 1B 78 */	mr r31, r3
/* 8013F208  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 8013F20C  A8 03 30 12 */	lha r0, 0x3012(r3)
/* 8013F210  2C 00 00 00 */	cmpwi r0, 0
/* 8013F214  41 82 00 0C */	beq lbl_8013F220
/* 8013F218  83 BF 28 10 */	lwz r29, 0x2810(r31)
/* 8013F21C  48 00 00 08 */	b lbl_8013F224
lbl_8013F220:
/* 8013F220  3B A0 00 00 */	li r29, 0
lbl_8013F224:
/* 8013F224  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8013F228  2C 00 00 01 */	cmpwi r0, 1
/* 8013F22C  40 82 00 10 */	bne lbl_8013F23C
/* 8013F230  48 04 24 11 */	bl dCam_getBody__Fv
/* 8013F234  38 80 00 03 */	li r4, 3
/* 8013F238  48 02 3D F1 */	bl SetTrimTypeForce__9dCamera_cFl
lbl_8013F23C:
/* 8013F23C  38 00 00 04 */	li r0, 4
/* 8013F240  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 8013F244  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 8013F248  60 00 02 00 */	ori r0, r0, 0x200
/* 8013F24C  90 1F 05 8C */	stw r0, 0x58c(r31)
/* 8013F250  C0 1F 37 C8 */	lfs f0, 0x37c8(r31)
/* 8013F254  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8013F258  C0 1F 37 CC */	lfs f0, 0x37cc(r31)
/* 8013F25C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8013F260  C0 1F 37 D0 */	lfs f0, 0x37d0(r31)
/* 8013F264  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8013F268  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013F26C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013F270  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8013F274  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 8013F278  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8013F27C  54 05 DF FE */	rlwinm r5, r0, 0x1b, 0x1f, 0x1f
/* 8013F280  38 DF 37 C8 */	addi r6, r31, 0x37c8
/* 8013F284  38 E0 00 00 */	li r7, 0
/* 8013F288  39 00 00 00 */	li r8, 0
/* 8013F28C  39 20 00 00 */	li r9, 0
/* 8013F290  39 40 00 00 */	li r10, 0
/* 8013F294  4B F3 64 E1 */	bl MoveBgCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyzbb
/* 8013F298  38 61 00 08 */	addi r3, r1, 8
/* 8013F29C  38 9F 37 C8 */	addi r4, r31, 0x37c8
/* 8013F2A0  38 A1 00 14 */	addi r5, r1, 0x14
/* 8013F2A4  48 12 78 91 */	bl __mi__4cXyzCFRC3Vec
/* 8013F2A8  38 7F 37 D4 */	addi r3, r31, 0x37d4
/* 8013F2AC  38 81 00 08 */	addi r4, r1, 8
/* 8013F2B0  7C 65 1B 78 */	mr r5, r3
/* 8013F2B4  48 20 7D DD */	bl PSVECAdd
/* 8013F2B8  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 8013F2BC  2C 00 00 00 */	cmpwi r0, 0
/* 8013F2C0  41 82 00 60 */	beq lbl_8013F320
/* 8013F2C4  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8013F2C8  C0 02 92 9C */	lfs f0, lit_5944(r2)
/* 8013F2CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013F2D0  4C 41 13 82 */	cror 2, 1, 2
/* 8013F2D4  40 82 00 40 */	bne lbl_8013F314
/* 8013F2D8  7F E3 FB 78 */	mr r3, r31
/* 8013F2DC  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8013F2E0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 8013F2E4  38 A0 00 FF */	li r5, 0xff
/* 8013F2E8  38 C0 00 00 */	li r6, 0
/* 8013F2EC  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8013F2F0  81 8C 01 7C */	lwz r12, 0x17c(r12)
/* 8013F2F4  7D 89 03 A6 */	mtctr r12
/* 8013F2F8  4E 80 04 21 */	bctrl 
/* 8013F2FC  28 1D 00 00 */	cmplwi r29, 0
/* 8013F300  41 82 00 14 */	beq lbl_8013F314
/* 8013F304  38 00 00 01 */	li r0, 1
/* 8013F308  98 1D 05 6A */	stb r0, 0x56a(r29)
/* 8013F30C  38 7F 28 0C */	addi r3, r31, 0x280c
/* 8013F310  48 01 F9 ED */	bl clearData__16daPy_actorKeep_cFv
lbl_8013F314:
/* 8013F314  7F E3 FB 78 */	mr r3, r31
/* 8013F318  4B FE 46 99 */	bl setWolfDigEffect__9daAlink_cFv
/* 8013F31C  48 00 01 70 */	b lbl_8013F48C
lbl_8013F320:
/* 8013F320  7F C3 F3 78 */	mr r3, r30
/* 8013F324  48 01 F1 A9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013F328  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013F32C  41 82 00 A4 */	beq lbl_8013F3D0
/* 8013F330  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 8013F334  2C 00 00 01 */	cmpwi r0, 1
/* 8013F338  40 82 00 30 */	bne lbl_8013F368
/* 8013F33C  7F E3 FB 78 */	mr r3, r31
/* 8013F340  38 80 00 69 */	li r4, 0x69
/* 8013F344  3C A0 80 39 */	lis r5, m__21daAlinkHIO_wlChain_c0@ha /* 0x8038F858@ha */
/* 8013F348  38 A5 F8 58 */	addi r5, r5, m__21daAlinkHIO_wlChain_c0@l /* 0x8038F858@l */
/* 8013F34C  38 A5 00 28 */	addi r5, r5, 0x28
/* 8013F350  4B FE A4 F9 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013F354  38 00 00 01 */	li r0, 1
/* 8013F358  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8013F35C  7F E3 FB 78 */	mr r3, r31
/* 8013F360  4B FE 46 51 */	bl setWolfDigEffect__9daAlink_cFv
/* 8013F364  48 00 01 28 */	b lbl_8013F48C
lbl_8013F368:
/* 8013F368  80 7F 28 10 */	lwz r3, 0x2810(r31)
/* 8013F36C  28 03 00 00 */	cmplwi r3, 0
/* 8013F370  41 82 00 2C */	beq lbl_8013F39C
/* 8013F374  A8 1F 30 0A */	lha r0, 0x300a(r31)
/* 8013F378  2C 00 00 90 */	cmpwi r0, 0x90
/* 8013F37C  40 82 00 10 */	bne lbl_8013F38C
/* 8013F380  38 00 00 02 */	li r0, 2
/* 8013F384  98 03 09 3C */	stb r0, 0x93c(r3)
/* 8013F388  48 00 00 14 */	b lbl_8013F39C
lbl_8013F38C:
/* 8013F38C  2C 00 00 A9 */	cmpwi r0, 0xa9
/* 8013F390  40 82 00 0C */	bne lbl_8013F39C
/* 8013F394  38 00 00 02 */	li r0, 2
/* 8013F398  98 03 09 41 */	stb r0, 0x941(r3)
lbl_8013F39C:
/* 8013F39C  7F E3 FB 78 */	mr r3, r31
/* 8013F3A0  4B FD 68 81 */	bl checkEventRun__9daAlink_cCFv
/* 8013F3A4  2C 03 00 00 */	cmpwi r3, 0
/* 8013F3A8  41 82 00 1C */	beq lbl_8013F3C4
/* 8013F3AC  A8 1F 30 14 */	lha r0, 0x3014(r31)
/* 8013F3B0  2C 00 00 00 */	cmpwi r0, 0
/* 8013F3B4  41 82 00 10 */	beq lbl_8013F3C4
/* 8013F3B8  7F E3 FB 78 */	mr r3, r31
/* 8013F3BC  4B FD 88 D5 */	bl resetSpecialEvent__9daAlink_cFv
/* 8013F3C0  48 00 00 CC */	b lbl_8013F48C
lbl_8013F3C4:
/* 8013F3C4  7F E3 FB 78 */	mr r3, r31
/* 8013F3C8  4B FE DD E1 */	bl procWolfWaitInit__9daAlink_cFv
/* 8013F3CC  48 00 00 C0 */	b lbl_8013F48C
lbl_8013F3D0:
/* 8013F3D0  7F C3 F3 78 */	mr r3, r30
/* 8013F3D4  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 8013F3D8  48 1E 90 55 */	bl checkPass__12J3DFrameCtrlFf
/* 8013F3DC  2C 03 00 00 */	cmpwi r3, 0
/* 8013F3E0  41 82 00 1C */	beq lbl_8013F3FC
/* 8013F3E4  28 1D 00 00 */	cmplwi r29, 0
/* 8013F3E8  41 82 00 14 */	beq lbl_8013F3FC
/* 8013F3EC  38 00 00 01 */	li r0, 1
/* 8013F3F0  98 1D 05 6A */	stb r0, 0x56a(r29)
/* 8013F3F4  38 7F 28 0C */	addi r3, r31, 0x280c
/* 8013F3F8  48 01 F9 05 */	bl clearData__16daPy_actorKeep_cFv
lbl_8013F3FC:
/* 8013F3FC  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 8013F400  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 8013F404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013F408  4C 41 13 82 */	cror 2, 1, 2
/* 8013F40C  40 82 00 80 */	bne lbl_8013F48C
/* 8013F410  C0 02 94 EC */	lfs f0, lit_19382(r2)
/* 8013F414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013F418  4C 40 13 82 */	cror 2, 0, 2
/* 8013F41C  40 82 00 70 */	bne lbl_8013F48C
/* 8013F420  A8 1F 30 08 */	lha r0, 0x3008(r31)
/* 8013F424  2C 00 00 00 */	cmpwi r0, 0
/* 8013F428  40 82 00 28 */	bne lbl_8013F450
/* 8013F42C  38 00 00 01 */	li r0, 1
/* 8013F430  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 8013F434  7F E3 FB 78 */	mr r3, r31
/* 8013F438  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002000B@ha */
/* 8013F43C  38 84 00 0B */	addi r4, r4, 0x000B /* 0x0002000B@l */
/* 8013F440  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 8013F444  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8013F448  7D 89 03 A6 */	mtctr r12
/* 8013F44C  4E 80 04 21 */	bctrl 
lbl_8013F450:
/* 8013F450  7F E3 FB 78 */	mr r3, r31
/* 8013F454  4B FE 45 5D */	bl setWolfDigEffect__9daAlink_cFv
/* 8013F458  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8013F45C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8013F460  41 82 00 2C */	beq lbl_8013F48C
/* 8013F464  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 8013F468  80 03 08 90 */	lwz r0, 0x890(r3)
/* 8013F46C  64 00 00 02 */	oris r0, r0, 2
/* 8013F470  90 03 08 90 */	stw r0, 0x890(r3)
/* 8013F474  C0 1F 37 C8 */	lfs f0, 0x37c8(r31)
/* 8013F478  D0 03 09 C4 */	stfs f0, 0x9c4(r3)
/* 8013F47C  C0 1F 37 CC */	lfs f0, 0x37cc(r31)
/* 8013F480  D0 03 09 C8 */	stfs f0, 0x9c8(r3)
/* 8013F484  C0 1F 37 D0 */	lfs f0, 0x37d0(r31)
/* 8013F488  D0 03 09 CC */	stfs f0, 0x9cc(r3)
lbl_8013F48C:
/* 8013F48C  38 60 00 01 */	li r3, 1
/* 8013F490  39 61 00 30 */	addi r11, r1, 0x30
/* 8013F494  48 22 2D 95 */	bl _restgpr_29
/* 8013F498  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8013F49C  7C 08 03 A6 */	mtlr r0
/* 8013F4A0  38 21 00 30 */	addi r1, r1, 0x30
/* 8013F4A4  4E 80 00 20 */	blr 
