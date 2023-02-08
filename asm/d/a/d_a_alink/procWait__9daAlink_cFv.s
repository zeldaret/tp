lbl_800C3504:
/* 800C3504  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C3508  7C 08 02 A6 */	mflr r0
/* 800C350C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C3510  39 61 00 20 */	addi r11, r1, 0x20
/* 800C3514  48 29 EC C9 */	bl _savegpr_29
/* 800C3518  7C 7E 1B 78 */	mr r30, r3
/* 800C351C  38 80 00 1A */	li r4, 0x1a
/* 800C3520  4B FE 90 39 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800C3524  7C 7D 1B 78 */	mr r29, r3
/* 800C3528  7F C3 F3 78 */	mr r3, r30
/* 800C352C  38 80 00 00 */	li r4, 0
/* 800C3530  4B FF 6B A1 */	bl checkNextAction__9daAlink_cFi
/* 800C3534  2C 03 00 00 */	cmpwi r3, 0
/* 800C3538  40 82 01 78 */	bne lbl_800C36B0
/* 800C353C  7F C3 F3 78 */	mr r3, r30
/* 800C3540  4B FF 34 F1 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 800C3544  2C 03 00 00 */	cmpwi r3, 0
/* 800C3548  40 82 01 68 */	bne lbl_800C36B0
/* 800C354C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800C3550  C0 42 94 78 */	lfs f2, lit_15460(r2)
/* 800C3554  A8 7E 2F E6 */	lha r3, 0x2fe6(r30)
/* 800C3558  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800C355C  7C 03 00 50 */	subf r0, r3, r0
/* 800C3560  7C 00 07 34 */	extsh r0, r0
/* 800C3564  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800C3568  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800C356C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800C3570  3C 00 43 30 */	lis r0, 0x4330
/* 800C3574  90 01 00 08 */	stw r0, 8(r1)
/* 800C3578  C8 01 00 08 */	lfd f0, 8(r1)
/* 800C357C  EC 00 08 28 */	fsubs f0, f0, f1
/* 800C3580  EC 02 00 32 */	fmuls f0, f2, f0
/* 800C3584  D0 1E 33 F0 */	stfs f0, 0x33f0(r30)
/* 800C3588  7F E3 FB 78 */	mr r3, r31
/* 800C358C  48 09 AF 41 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C3590  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C3594  40 82 00 28 */	bne lbl_800C35BC
/* 800C3598  7F C3 F3 78 */	mr r3, r30
/* 800C359C  48 01 98 55 */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800C35A0  2C 03 00 00 */	cmpwi r3, 0
/* 800C35A4  40 82 00 18 */	bne lbl_800C35BC
/* 800C35A8  7F C3 F3 78 */	mr r3, r30
/* 800C35AC  38 80 00 1B */	li r4, 0x1b
/* 800C35B0  4B FE 8F A9 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800C35B4  2C 03 00 00 */	cmpwi r3, 0
/* 800C35B8  40 82 00 68 */	bne lbl_800C3620
lbl_800C35BC:
/* 800C35BC  7F C3 F3 78 */	mr r3, r30
/* 800C35C0  4B FE FE 25 */	bl checkRestHPAnime__9daAlink_cFv
/* 800C35C4  2C 03 00 00 */	cmpwi r3, 0
/* 800C35C8  41 82 00 20 */	beq lbl_800C35E8
/* 800C35CC  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 800C35D0  A8 1E 2F E6 */	lha r0, 0x2fe6(r30)
/* 800C35D4  7C 03 00 00 */	cmpw r3, r0
/* 800C35D8  40 82 00 10 */	bne lbl_800C35E8
/* 800C35DC  7F C3 F3 78 */	mr r3, r30
/* 800C35E0  4B FF FC 45 */	bl procTiredWaitInit__9daAlink_cFv
/* 800C35E4  48 00 00 D0 */	b lbl_800C36B4
lbl_800C35E8:
/* 800C35E8  7F C3 F3 78 */	mr r3, r30
/* 800C35EC  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C35F0  4B FE A8 25 */	bl setBlendMoveAnime__9daAlink_cFf
/* 800C35F4  2C 1D 00 00 */	cmpwi r29, 0
/* 800C35F8  41 82 00 4C */	beq lbl_800C3644
/* 800C35FC  7F C3 F3 78 */	mr r3, r30
/* 800C3600  38 80 00 1A */	li r4, 0x1a
/* 800C3604  4B FE 8F 55 */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800C3608  2C 03 00 00 */	cmpwi r3, 0
/* 800C360C  40 82 00 38 */	bne lbl_800C3644
/* 800C3610  7F C3 F3 78 */	mr r3, r30
/* 800C3614  38 80 00 1B */	li r4, 0x1b
/* 800C3618  4B FE 99 69 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800C361C  48 00 00 28 */	b lbl_800C3644
lbl_800C3620:
/* 800C3620  7F E3 FB 78 */	mr r3, r31
/* 800C3624  C0 22 92 E0 */	lfs f1, lit_6845(r2)
/* 800C3628  48 26 4E 05 */	bl checkPass__12J3DFrameCtrlFf
/* 800C362C  2C 03 00 00 */	cmpwi r3, 0
/* 800C3630  41 82 00 14 */	beq lbl_800C3644
/* 800C3634  38 00 00 04 */	li r0, 4
/* 800C3638  98 1E 2F 92 */	stb r0, 0x2f92(r30)
/* 800C363C  38 00 00 0A */	li r0, 0xa
/* 800C3640  98 1E 2F 93 */	stb r0, 0x2f93(r30)
lbl_800C3644:
/* 800C3644  7F C3 F3 78 */	mr r3, r30
/* 800C3648  4B FF 11 6D */	bl checkServiceWaitMode__9daAlink_cFv
/* 800C364C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C3650  41 82 00 58 */	beq lbl_800C36A8
/* 800C3654  7F C3 F3 78 */	mr r3, r30
/* 800C3658  38 80 00 19 */	li r4, 0x19
/* 800C365C  4B FE 8E FD */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800C3660  2C 03 00 00 */	cmpwi r3, 0
/* 800C3664  41 82 00 44 */	beq lbl_800C36A8
/* 800C3668  A8 7E 30 CA */	lha r3, 0x30ca(r30)
/* 800C366C  2C 03 00 00 */	cmpwi r3, 0
/* 800C3670  41 82 00 0C */	beq lbl_800C367C
/* 800C3674  38 03 FF FF */	addi r0, r3, -1
/* 800C3678  B0 1E 30 CA */	sth r0, 0x30ca(r30)
lbl_800C367C:
/* 800C367C  A8 1E 30 CA */	lha r0, 0x30ca(r30)
/* 800C3680  2C 00 00 00 */	cmpwi r0, 0
/* 800C3684  40 82 00 2C */	bne lbl_800C36B0
/* 800C3688  7F E3 FB 78 */	mr r3, r31
/* 800C368C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C3690  48 26 4D 9D */	bl checkPass__12J3DFrameCtrlFf
/* 800C3694  2C 03 00 00 */	cmpwi r3, 0
/* 800C3698  41 82 00 18 */	beq lbl_800C36B0
/* 800C369C  7F C3 F3 78 */	mr r3, r30
/* 800C36A0  4B FF F9 F9 */	bl procServiceWaitInit__9daAlink_cFv
/* 800C36A4  48 00 00 0C */	b lbl_800C36B0
lbl_800C36A8:
/* 800C36A8  7F C3 F3 78 */	mr r3, r30
/* 800C36AC  4B FF 01 99 */	bl initServiceWaitTime__9daAlink_cFv
lbl_800C36B0:
/* 800C36B0  38 60 00 01 */	li r3, 1
lbl_800C36B4:
/* 800C36B4  39 61 00 20 */	addi r11, r1, 0x20
/* 800C36B8  48 29 EB 71 */	bl _restgpr_29
/* 800C36BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C36C0  7C 08 03 A6 */	mtlr r0
/* 800C36C4  38 21 00 20 */	addi r1, r1, 0x20
/* 800C36C8  4E 80 00 20 */	blr 
