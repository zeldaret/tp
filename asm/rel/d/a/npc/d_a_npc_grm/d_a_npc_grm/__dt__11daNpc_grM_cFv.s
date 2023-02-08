lbl_809D406C:
/* 809D406C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D4070  7C 08 02 A6 */	mflr r0
/* 809D4074  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D4078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D407C  93 C1 00 08 */	stw r30, 8(r1)
/* 809D4080  7C 7E 1B 79 */	or. r30, r3, r3
/* 809D4084  7C 9F 23 78 */	mr r31, r4
/* 809D4088  41 82 00 F0 */	beq lbl_809D4178
/* 809D408C  3C 80 80 9D */	lis r4, __vt__11daNpc_grM_c@ha /* 0x809D7210@ha */
/* 809D4090  38 04 72 10 */	addi r0, r4, __vt__11daNpc_grM_c@l /* 0x809D7210@l */
/* 809D4094  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809D4098  4B 7C 64 CD */	bl deleteObject__13dShopSystem_cFv
/* 809D409C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809D40A0  28 00 00 00 */	cmplwi r0, 0
/* 809D40A4  41 82 00 0C */	beq lbl_809D40B0
/* 809D40A8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809D40AC  4B 63 D2 65 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809D40B0:
/* 809D40B0  7F C3 F3 78 */	mr r3, r30
/* 809D40B4  88 1E 10 BC */	lbz r0, 0x10bc(r30)
/* 809D40B8  54 00 10 3A */	slwi r0, r0, 2
/* 809D40BC  3C 80 80 9D */	lis r4, l_loadResPtrnList@ha /* 0x809D6EE4@ha */
/* 809D40C0  38 84 6E E4 */	addi r4, r4, l_loadResPtrnList@l /* 0x809D6EE4@l */
/* 809D40C4  7C 84 00 2E */	lwzx r4, r4, r0
/* 809D40C8  3C A0 80 9D */	lis r5, l_resNameList@ha /* 0x809D6ED4@ha */
/* 809D40CC  38 A5 6E D4 */	addi r5, r5, l_resNameList@l /* 0x809D6ED4@l */
/* 809D40D0  4B 77 43 DD */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 809D40D4  34 1E 0F 80 */	addic. r0, r30, 0xf80
/* 809D40D8  41 82 00 84 */	beq lbl_809D415C
/* 809D40DC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 809D40E0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 809D40E4  90 7E 0F BC */	stw r3, 0xfbc(r30)
/* 809D40E8  38 03 00 2C */	addi r0, r3, 0x2c
/* 809D40EC  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 809D40F0  38 03 00 84 */	addi r0, r3, 0x84
/* 809D40F4  90 1E 10 B8 */	stw r0, 0x10b8(r30)
/* 809D40F8  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 809D40FC  41 82 00 54 */	beq lbl_809D4150
/* 809D4100  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 809D4104  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 809D4108  90 7E 10 A0 */	stw r3, 0x10a0(r30)
/* 809D410C  38 03 00 58 */	addi r0, r3, 0x58
/* 809D4110  90 1E 10 B8 */	stw r0, 0x10b8(r30)
/* 809D4114  34 1E 10 A4 */	addic. r0, r30, 0x10a4
/* 809D4118  41 82 00 10 */	beq lbl_809D4128
/* 809D411C  3C 60 80 9D */	lis r3, __vt__8cM3dGCyl@ha /* 0x809D7204@ha */
/* 809D4120  38 03 72 04 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x809D7204@l */
/* 809D4124  90 1E 10 B8 */	stw r0, 0x10b8(r30)
lbl_809D4128:
/* 809D4128  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 809D412C  41 82 00 24 */	beq lbl_809D4150
/* 809D4130  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 809D4134  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 809D4138  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 809D413C  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 809D4140  41 82 00 10 */	beq lbl_809D4150
/* 809D4144  3C 60 80 9D */	lis r3, __vt__8cM3dGAab@ha /* 0x809D71F8@ha */
/* 809D4148  38 03 71 F8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809D71F8@l */
/* 809D414C  90 1E 10 9C */	stw r0, 0x109c(r30)
lbl_809D4150:
/* 809D4150  38 7E 0F 80 */	addi r3, r30, 0xf80
/* 809D4154  38 80 00 00 */	li r4, 0
/* 809D4158  4B 6A FF 8D */	bl __dt__12dCcD_GObjInfFv
lbl_809D415C:
/* 809D415C  7F C3 F3 78 */	mr r3, r30
/* 809D4160  38 80 00 00 */	li r4, 0
/* 809D4164  4B 7C 33 81 */	bl __dt__13dShopSystem_cFv
/* 809D4168  7F E0 07 35 */	extsh. r0, r31
/* 809D416C  40 81 00 0C */	ble lbl_809D4178
/* 809D4170  7F C3 F3 78 */	mr r3, r30
/* 809D4174  4B 8F AB C9 */	bl __dl__FPv
lbl_809D4178:
/* 809D4178  7F C3 F3 78 */	mr r3, r30
/* 809D417C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D4180  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D4184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D4188  7C 08 03 A6 */	mtlr r0
/* 809D418C  38 21 00 10 */	addi r1, r1, 0x10
/* 809D4190  4E 80 00 20 */	blr 
