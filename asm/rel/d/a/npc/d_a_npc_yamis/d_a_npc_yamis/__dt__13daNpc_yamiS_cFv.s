lbl_80B4656C:
/* 80B4656C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B46570  7C 08 02 A6 */	mflr r0
/* 80B46574  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B46578  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4657C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B46580  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B46584  7C 9F 23 78 */	mr r31, r4
/* 80B46588  41 82 01 00 */	beq lbl_80B46688
/* 80B4658C  3C 60 80 B5 */	lis r3, __vt__13daNpc_yamiS_c@ha
/* 80B46590  38 03 99 FC */	addi r0, r3, __vt__13daNpc_yamiS_c@l
/* 80B46594  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B46598  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80B4659C  28 00 00 00 */	cmplwi r0, 0
/* 80B465A0  41 82 00 0C */	beq lbl_80B465AC
/* 80B465A4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B465A8  4B 4C AD 68 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B465AC:
/* 80B465AC  7F C3 F3 78 */	mr r3, r30
/* 80B465B0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B465B4  54 00 10 3A */	slwi r0, r0, 2
/* 80B465B8  3C 80 80 B5 */	lis r4, l_loadResPtrnList@ha
/* 80B465BC  38 84 97 EC */	addi r4, r4, l_loadResPtrnList@l
/* 80B465C0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B465C4  3C A0 80 B5 */	lis r5, l_resNameList@ha
/* 80B465C8  38 A5 97 E0 */	addi r5, r5, l_resNameList@l
/* 80B465CC  4B 60 1E E0 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80B465D0  34 1E 0F 9C */	addic. r0, r30, 0xf9c
/* 80B465D4  41 82 00 10 */	beq lbl_80B465E4
/* 80B465D8  3C 60 80 B5 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80B465DC  38 03 99 F0 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80B465E0  90 1E 0F C0 */	stw r0, 0xfc0(r30)
lbl_80B465E4:
/* 80B465E4  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80B465E8  41 82 00 84 */	beq lbl_80B4666C
/* 80B465EC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B465F0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B465F4  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80B465F8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B465FC  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B46600  38 03 00 84 */	addi r0, r3, 0x84
/* 80B46604  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B46608  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B4660C  41 82 00 54 */	beq lbl_80B46660
/* 80B46610  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B46614  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B46618  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80B4661C  38 03 00 58 */	addi r0, r3, 0x58
/* 80B46620  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B46624  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80B46628  41 82 00 10 */	beq lbl_80B46638
/* 80B4662C  3C 60 80 B5 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B46630  38 03 99 E4 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B46634  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80B46638:
/* 80B46638  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B4663C  41 82 00 24 */	beq lbl_80B46660
/* 80B46640  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B46644  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B46648  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B4664C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B46650  41 82 00 10 */	beq lbl_80B46660
/* 80B46654  3C 60 80 B5 */	lis r3, __vt__8cM3dGAab@ha
/* 80B46658  38 03 99 D8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B4665C  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80B46660:
/* 80B46660  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B46664  38 80 00 00 */	li r4, 0
/* 80B46668  4B 53 DA 7C */	b __dt__12dCcD_GObjInfFv
lbl_80B4666C:
/* 80B4666C  7F C3 F3 78 */	mr r3, r30
/* 80B46670  38 80 00 00 */	li r4, 0
/* 80B46674  48 00 1D F1 */	bl __dt__8daNpcT_cFv
/* 80B46678  7F E0 07 35 */	extsh. r0, r31
/* 80B4667C  40 81 00 0C */	ble lbl_80B46688
/* 80B46680  7F C3 F3 78 */	mr r3, r30
/* 80B46684  4B 78 86 B8 */	b __dl__FPv
lbl_80B46688:
/* 80B46688  7F C3 F3 78 */	mr r3, r30
/* 80B4668C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B46690  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B46694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B46698  7C 08 03 A6 */	mtlr r0
/* 80B4669C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B466A0  4E 80 00 20 */	blr 
