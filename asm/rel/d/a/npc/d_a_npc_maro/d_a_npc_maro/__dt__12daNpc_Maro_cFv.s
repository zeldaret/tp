lbl_8055B58C:
/* 8055B58C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B590  7C 08 02 A6 */	mflr r0
/* 8055B594  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055B59C  93 C1 00 08 */	stw r30, 8(r1)
/* 8055B5A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8055B5A4  7C 9F 23 78 */	mr r31, r4
/* 8055B5A8  41 82 01 1C */	beq lbl_8055B6C4
/* 8055B5AC  3C 80 80 56 */	lis r4, __vt__12daNpc_Maro_c@ha /* 0x80565CA4@ha */
/* 8055B5B0  38 04 5C A4 */	addi r0, r4, __vt__12daNpc_Maro_c@l /* 0x80565CA4@l */
/* 8055B5B4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 8055B5B8  4B C3 EF AD */	bl deleteObject__13dShopSystem_cFv
/* 8055B5BC  80 7E 10 BC */	lwz r3, 0x10bc(r30)
/* 8055B5C0  3C 03 00 01 */	addis r0, r3, 1
/* 8055B5C4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8055B5C8  41 82 00 0C */	beq lbl_8055B5D4
/* 8055B5CC  38 60 00 00 */	li r3, 0
/* 8055B5D0  4B AD 41 CD */	bl dComIfG_TimerDeleteRequest__Fi
lbl_8055B5D4:
/* 8055B5D4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8055B5D8  28 03 00 00 */	cmplwi r3, 0
/* 8055B5DC  41 82 00 08 */	beq lbl_8055B5E4
/* 8055B5E0  4B AB 5D 31 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8055B5E4:
/* 8055B5E4  7F C3 F3 78 */	mr r3, r30
/* 8055B5E8  88 1E 10 C0 */	lbz r0, 0x10c0(r30)
/* 8055B5EC  54 00 10 3A */	slwi r0, r0, 2
/* 8055B5F0  3C 80 80 56 */	lis r4, l_loadResPtrnList@ha /* 0x80565080@ha */
/* 8055B5F4  38 84 50 80 */	addi r4, r4, l_loadResPtrnList@l /* 0x80565080@l */
/* 8055B5F8  7C 84 00 2E */	lwzx r4, r4, r0
/* 8055B5FC  3C A0 80 56 */	lis r5, l_resNameList@ha /* 0x80565044@ha */
/* 8055B600  38 A5 50 44 */	addi r5, r5, l_resNameList@l /* 0x80565044@l */
/* 8055B604  4B BE CE A9 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 8055B608  38 7E 10 C4 */	addi r3, r30, 0x10c4
/* 8055B60C  3C 80 80 56 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80563880@ha */
/* 8055B610  38 84 38 80 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80563880@l */
/* 8055B614  38 A0 00 08 */	li r5, 8
/* 8055B618  38 C0 00 09 */	li r6, 9
/* 8055B61C  4B E0 66 CD */	bl __destroy_arr
/* 8055B620  34 1E 0F 80 */	addic. r0, r30, 0xf80
/* 8055B624  41 82 00 84 */	beq lbl_8055B6A8
/* 8055B628  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8055B62C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8055B630  90 7E 0F BC */	stw r3, 0xfbc(r30)
/* 8055B634  38 03 00 2C */	addi r0, r3, 0x2c
/* 8055B638  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 8055B63C  38 03 00 84 */	addi r0, r3, 0x84
/* 8055B640  90 1E 10 B8 */	stw r0, 0x10b8(r30)
/* 8055B644  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 8055B648  41 82 00 54 */	beq lbl_8055B69C
/* 8055B64C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8055B650  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8055B654  90 7E 10 A0 */	stw r3, 0x10a0(r30)
/* 8055B658  38 03 00 58 */	addi r0, r3, 0x58
/* 8055B65C  90 1E 10 B8 */	stw r0, 0x10b8(r30)
/* 8055B660  34 1E 10 A4 */	addic. r0, r30, 0x10a4
/* 8055B664  41 82 00 10 */	beq lbl_8055B674
/* 8055B668  3C 60 80 56 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80565C98@ha */
/* 8055B66C  38 03 5C 98 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80565C98@l */
/* 8055B670  90 1E 10 B8 */	stw r0, 0x10b8(r30)
lbl_8055B674:
/* 8055B674  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 8055B678  41 82 00 24 */	beq lbl_8055B69C
/* 8055B67C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8055B680  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8055B684  90 1E 10 A0 */	stw r0, 0x10a0(r30)
/* 8055B688  34 1E 10 84 */	addic. r0, r30, 0x1084
/* 8055B68C  41 82 00 10 */	beq lbl_8055B69C
/* 8055B690  3C 60 80 56 */	lis r3, __vt__8cM3dGAab@ha /* 0x80565C8C@ha */
/* 8055B694  38 03 5C 8C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80565C8C@l */
/* 8055B698  90 1E 10 9C */	stw r0, 0x109c(r30)
lbl_8055B69C:
/* 8055B69C  38 7E 0F 80 */	addi r3, r30, 0xf80
/* 8055B6A0  38 80 00 00 */	li r4, 0
/* 8055B6A4  4B B2 8A 41 */	bl __dt__12dCcD_GObjInfFv
lbl_8055B6A8:
/* 8055B6A8  7F C3 F3 78 */	mr r3, r30
/* 8055B6AC  38 80 00 00 */	li r4, 0
/* 8055B6B0  4B C3 BE 35 */	bl __dt__13dShopSystem_cFv
/* 8055B6B4  7F E0 07 35 */	extsh. r0, r31
/* 8055B6B8  40 81 00 0C */	ble lbl_8055B6C4
/* 8055B6BC  7F C3 F3 78 */	mr r3, r30
/* 8055B6C0  4B D7 36 7D */	bl __dl__FPv
lbl_8055B6C4:
/* 8055B6C4  7F C3 F3 78 */	mr r3, r30
/* 8055B6C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055B6CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8055B6D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B6D4  7C 08 03 A6 */	mtlr r0
/* 8055B6D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B6DC  4E 80 00 20 */	blr 
