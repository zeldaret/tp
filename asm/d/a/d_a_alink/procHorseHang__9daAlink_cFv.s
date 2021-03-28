lbl_800F3580:
/* 800F3580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F3584  7C 08 02 A6 */	mflr r0
/* 800F3588  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F358C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F3590  93 C1 00 08 */	stw r30, 8(r1)
/* 800F3594  7C 7F 1B 78 */	mr r31, r3
/* 800F3598  4B FF 9F 45 */	bl setSyncHorsePos__9daAlink_cFv
/* 800F359C  2C 03 00 00 */	cmpwi r3, 0
/* 800F35A0  40 82 00 0C */	bne lbl_800F35AC
/* 800F35A4  38 60 00 01 */	li r3, 1
/* 800F35A8  48 00 01 24 */	b lbl_800F36CC
lbl_800F35AC:
/* 800F35AC  7F E3 FB 78 */	mr r3, r31
/* 800F35B0  4B FF A7 BD */	bl checkHorseSpecialProc__9daAlink_cFv
/* 800F35B4  2C 03 00 00 */	cmpwi r3, 0
/* 800F35B8  41 82 00 30 */	beq lbl_800F35E8
/* 800F35BC  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800F35C0  74 00 41 80 */	andis. r0, r0, 0x4180
/* 800F35C4  41 82 00 14 */	beq lbl_800F35D8
/* 800F35C8  88 1F 2F AB */	lbz r0, 0x2fab(r31)
/* 800F35CC  60 00 00 03 */	ori r0, r0, 3
/* 800F35D0  98 1F 2F AB */	stb r0, 0x2fab(r31)
/* 800F35D4  48 00 00 0C */	b lbl_800F35E0
lbl_800F35D8:
/* 800F35D8  7F E3 FB 78 */	mr r3, r31
/* 800F35DC  4B FF BD 81 */	bl boarForceGetOff__9daAlink_cFv
lbl_800F35E0:
/* 800F35E0  38 60 00 01 */	li r3, 1
/* 800F35E4  48 00 00 E8 */	b lbl_800F36CC
lbl_800F35E8:
/* 800F35E8  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 800F35EC  7F C3 F3 78 */	mr r3, r30
/* 800F35F0  48 06 AE DD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F35F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F35F8  41 82 00 50 */	beq lbl_800F3648
/* 800F35FC  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800F3600  2C 00 00 00 */	cmpwi r0, 0
/* 800F3604  40 82 00 38 */	bne lbl_800F363C
/* 800F3608  38 00 00 01 */	li r0, 1
/* 800F360C  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800F3610  7F E3 FB 78 */	mr r3, r31
/* 800F3614  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100AC@ha */
/* 800F3618  38 84 00 AC */	addi r4, r4, 0x00AC /* 0x000100AC@l */
/* 800F361C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800F3620  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800F3624  7D 89 03 A6 */	mtctr r12
/* 800F3628  4E 80 04 21 */	bctrl 
/* 800F362C  7F E3 FB 78 */	mr r3, r31
/* 800F3630  80 9F 32 CC */	lwz r4, 0x32cc(r31)
/* 800F3634  4B FB 99 4D */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F3638  48 00 00 90 */	b lbl_800F36C8
lbl_800F363C:
/* 800F363C  7F E3 FB 78 */	mr r3, r31
/* 800F3640  4B FF BE 11 */	bl checkNextActionHorse__9daAlink_cFv
/* 800F3644  48 00 00 84 */	b lbl_800F36C8
lbl_800F3648:
/* 800F3648  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800F364C  2C 00 00 00 */	cmpwi r0, 0
/* 800F3650  40 82 00 54 */	bne lbl_800F36A4
/* 800F3654  7F C3 F3 78 */	mr r3, r30
/* 800F3658  C0 22 93 74 */	lfs f1, lit_8502(r2)
/* 800F365C  48 23 4D D1 */	bl checkPass__12J3DFrameCtrlFf
/* 800F3660  2C 03 00 00 */	cmpwi r3, 0
/* 800F3664  41 82 00 18 */	beq lbl_800F367C
/* 800F3668  88 7F 2F AB */	lbz r3, 0x2fab(r31)
/* 800F366C  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800F3670  7C 60 00 78 */	andc r0, r3, r0
/* 800F3674  98 1F 2F AB */	stb r0, 0x2fab(r31)
/* 800F3678  48 00 00 50 */	b lbl_800F36C8
lbl_800F367C:
/* 800F367C  7F C3 F3 78 */	mr r3, r30
/* 800F3680  C0 22 93 80 */	lfs f1, lit_8780(r2)
/* 800F3684  48 23 4D A9 */	bl checkPass__12J3DFrameCtrlFf
/* 800F3688  2C 03 00 00 */	cmpwi r3, 0
/* 800F368C  41 82 00 3C */	beq lbl_800F36C8
/* 800F3690  88 7F 2F AB */	lbz r3, 0x2fab(r31)
/* 800F3694  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 800F3698  7C 60 03 78 */	or r0, r3, r0
/* 800F369C  98 1F 2F AB */	stb r0, 0x2fab(r31)
/* 800F36A0  48 00 00 28 */	b lbl_800F36C8
lbl_800F36A4:
/* 800F36A4  7F C3 F3 78 */	mr r3, r30
/* 800F36A8  C0 22 93 74 */	lfs f1, lit_8502(r2)
/* 800F36AC  48 23 4D 81 */	bl checkPass__12J3DFrameCtrlFf
/* 800F36B0  2C 03 00 00 */	cmpwi r3, 0
/* 800F36B4  41 82 00 14 */	beq lbl_800F36C8
/* 800F36B8  88 7F 2F AB */	lbz r3, 0x2fab(r31)
/* 800F36BC  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 800F36C0  7C 60 03 78 */	or r0, r3, r0
/* 800F36C4  98 1F 2F AB */	stb r0, 0x2fab(r31)
lbl_800F36C8:
/* 800F36C8  38 60 00 01 */	li r3, 1
lbl_800F36CC:
/* 800F36CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F36D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F36D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F36D8  7C 08 03 A6 */	mtlr r0
/* 800F36DC  38 21 00 10 */	addi r1, r1, 0x10
/* 800F36E0  4E 80 00 20 */	blr 
