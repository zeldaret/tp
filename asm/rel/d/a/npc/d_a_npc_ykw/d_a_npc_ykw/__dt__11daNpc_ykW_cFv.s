lbl_80B5EF0C:
/* 80B5EF0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5EF10  7C 08 02 A6 */	mflr r0
/* 80B5EF14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5EF18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5EF1C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B5EF20  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B5EF24  7C 9F 23 78 */	mr r31, r4
/* 80B5EF28  41 82 01 40 */	beq lbl_80B5F068
/* 80B5EF2C  3C 60 80 B7 */	lis r3, __vt__11daNpc_ykW_c@ha /* 0x80B68C90@ha */
/* 80B5EF30  38 03 8C 90 */	addi r0, r3, __vt__11daNpc_ykW_c@l /* 0x80B68C90@l */
/* 80B5EF34  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B5EF38  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80B5EF3C  28 00 00 00 */	cmplwi r0, 0
/* 80B5EF40  41 82 00 0C */	beq lbl_80B5EF4C
/* 80B5EF44  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B5EF48  4B 4B 23 C9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B5EF4C:
/* 80B5EF4C  7F C3 F3 78 */	mr r3, r30
/* 80B5EF50  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B5EF54  54 00 10 3A */	slwi r0, r0, 2
/* 80B5EF58  3C 80 80 B6 */	lis r4, l_loadResPtrnList@ha /* 0x80B67FDC@ha */
/* 80B5EF5C  38 84 7F DC */	addi r4, r4, l_loadResPtrnList@l /* 0x80B67FDC@l */
/* 80B5EF60  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B5EF64  3C A0 80 B6 */	lis r5, l_resNameList@ha /* 0x80B67FB8@ha */
/* 80B5EF68  38 A5 7F B8 */	addi r5, r5, l_resNameList@l /* 0x80B67FB8@l */
/* 80B5EF6C  4B 5E 95 41 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80B5EF70  88 1E 10 6A */	lbz r0, 0x106a(r30)
/* 80B5EF74  28 00 00 00 */	cmplwi r0, 0
/* 80B5EF78  41 82 00 18 */	beq lbl_80B5EF90
/* 80B5EF7C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B5EF80  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B5EF84  80 63 00 00 */	lwz r3, 0(r3)
/* 80B5EF88  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B5EF8C  4B 75 08 F9 */	bl subBgmStop__8Z2SeqMgrFv
lbl_80B5EF90:
/* 80B5EF90  38 60 00 55 */	li r3, 0x55
/* 80B5EF94  4B 5E DB 99 */	bl daNpcT_offTmpBit__FUl
/* 80B5EF98  34 1E 0F AC */	addic. r0, r30, 0xfac
/* 80B5EF9C  41 82 00 10 */	beq lbl_80B5EFAC
/* 80B5EFA0  3C 60 80 B7 */	lis r3, __vt__13daNpcT_Path_c@ha /* 0x80B68C84@ha */
/* 80B5EFA4  38 03 8C 84 */	addi r0, r3, __vt__13daNpcT_Path_c@l /* 0x80B68C84@l */
/* 80B5EFA8  90 1E 0F D0 */	stw r0, 0xfd0(r30)
lbl_80B5EFAC:
/* 80B5EFAC  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 80B5EFB0  3C 80 80 B6 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80B66C74@ha */
/* 80B5EFB4  38 84 6C 74 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80B66C74@l */
/* 80B5EFB8  38 A0 00 08 */	li r5, 8
/* 80B5EFBC  38 C0 00 05 */	li r6, 5
/* 80B5EFC0  4B 80 2D 29 */	bl __destroy_arr
/* 80B5EFC4  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80B5EFC8  41 82 00 84 */	beq lbl_80B5F04C
/* 80B5EFCC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B5EFD0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B5EFD4  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80B5EFD8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B5EFDC  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B5EFE0  38 03 00 84 */	addi r0, r3, 0x84
/* 80B5EFE4  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B5EFE8  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B5EFEC  41 82 00 54 */	beq lbl_80B5F040
/* 80B5EFF0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B5EFF4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B5EFF8  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80B5EFFC  38 03 00 58 */	addi r0, r3, 0x58
/* 80B5F000  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B5F004  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80B5F008  41 82 00 10 */	beq lbl_80B5F018
/* 80B5F00C  3C 60 80 B7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B68C78@ha */
/* 80B5F010  38 03 8C 78 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B68C78@l */
/* 80B5F014  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80B5F018:
/* 80B5F018  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B5F01C  41 82 00 24 */	beq lbl_80B5F040
/* 80B5F020  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B5F024  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B5F028  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B5F02C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B5F030  41 82 00 10 */	beq lbl_80B5F040
/* 80B5F034  3C 60 80 B7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B68C6C@ha */
/* 80B5F038  38 03 8C 6C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B68C6C@l */
/* 80B5F03C  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80B5F040:
/* 80B5F040  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B5F044  38 80 00 00 */	li r4, 0
/* 80B5F048  4B 52 50 9D */	bl __dt__12dCcD_GObjInfFv
lbl_80B5F04C:
/* 80B5F04C  7F C3 F3 78 */	mr r3, r30
/* 80B5F050  38 80 00 00 */	li r4, 0
/* 80B5F054  48 00 78 21 */	bl __dt__8daNpcT_cFv
/* 80B5F058  7F E0 07 35 */	extsh. r0, r31
/* 80B5F05C  40 81 00 0C */	ble lbl_80B5F068
/* 80B5F060  7F C3 F3 78 */	mr r3, r30
/* 80B5F064  4B 76 FC D9 */	bl __dl__FPv
lbl_80B5F068:
/* 80B5F068  7F C3 F3 78 */	mr r3, r30
/* 80B5F06C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5F070  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B5F074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5F078  7C 08 03 A6 */	mtlr r0
/* 80B5F07C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5F080  4E 80 00 20 */	blr 
