lbl_80A1470C:
/* 80A1470C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A14710  7C 08 02 A6 */	mflr r0
/* 80A14714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A14718  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1471C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A14720  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A14724  7C 9F 23 78 */	mr r31, r4
/* 80A14728  41 82 01 14 */	beq lbl_80A1483C
/* 80A1472C  3C 60 80 A2 */	lis r3, __vt__13daNpc_Jagar_c@ha /* 0x80A1AD08@ha */
/* 80A14730  38 03 AD 08 */	addi r0, r3, __vt__13daNpc_Jagar_c@l /* 0x80A1AD08@l */
/* 80A14734  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80A14738  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80A1473C  28 03 00 00 */	cmplwi r3, 0
/* 80A14740  41 82 00 08 */	beq lbl_80A14748
/* 80A14744  4B 5F CB CD */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80A14748:
/* 80A14748  7F C3 F3 78 */	mr r3, r30
/* 80A1474C  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80A14750  54 00 10 3A */	slwi r0, r0, 2
/* 80A14754  3C 80 80 A2 */	lis r4, l_loadResPtrnList@ha /* 0x80A1A5DC@ha */
/* 80A14758  38 84 A5 DC */	addi r4, r4, l_loadResPtrnList@l /* 0x80A1A5DC@l */
/* 80A1475C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A14760  3C A0 80 A2 */	lis r5, l_resNameList@ha /* 0x80A1A5B8@ha */
/* 80A14764  38 A5 A5 B8 */	addi r5, r5, l_resNameList@l /* 0x80A1A5B8@l */
/* 80A14768  4B 73 3D 45 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80A1476C  34 1E 0F AC */	addic. r0, r30, 0xfac
/* 80A14770  41 82 00 10 */	beq lbl_80A14780
/* 80A14774  3C 60 80 A2 */	lis r3, __vt__13daNpcT_Path_c@ha /* 0x80A1ACFC@ha */
/* 80A14778  38 03 AC FC */	addi r0, r3, __vt__13daNpcT_Path_c@l /* 0x80A1ACFC@l */
/* 80A1477C  90 1E 0F D0 */	stw r0, 0xfd0(r30)
lbl_80A14780:
/* 80A14780  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 80A14784  3C 80 80 A2 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80A19428@ha */
/* 80A14788  38 84 94 28 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80A19428@l */
/* 80A1478C  38 A0 00 08 */	li r5, 8
/* 80A14790  38 C0 00 05 */	li r6, 5
/* 80A14794  4B 94 D5 55 */	bl __destroy_arr
/* 80A14798  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80A1479C  41 82 00 84 */	beq lbl_80A14820
/* 80A147A0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A147A4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A147A8  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80A147AC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A147B0  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80A147B4  38 03 00 84 */	addi r0, r3, 0x84
/* 80A147B8  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80A147BC  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A147C0  41 82 00 54 */	beq lbl_80A14814
/* 80A147C4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A147C8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A147CC  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80A147D0  38 03 00 58 */	addi r0, r3, 0x58
/* 80A147D4  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80A147D8  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80A147DC  41 82 00 10 */	beq lbl_80A147EC
/* 80A147E0  3C 60 80 A2 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A1ACF0@ha */
/* 80A147E4  38 03 AC F0 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A1ACF0@l */
/* 80A147E8  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80A147EC:
/* 80A147EC  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A147F0  41 82 00 24 */	beq lbl_80A14814
/* 80A147F4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A147F8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A147FC  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80A14800  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80A14804  41 82 00 10 */	beq lbl_80A14814
/* 80A14808  3C 60 80 A2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A1ACE4@ha */
/* 80A1480C  38 03 AC E4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A1ACE4@l */
/* 80A14810  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80A14814:
/* 80A14814  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80A14818  38 80 00 00 */	li r4, 0
/* 80A1481C  4B 66 F8 C9 */	bl __dt__12dCcD_GObjInfFv
lbl_80A14820:
/* 80A14820  7F C3 F3 78 */	mr r3, r30
/* 80A14824  38 80 00 00 */	li r4, 0
/* 80A14828  48 00 48 01 */	bl __dt__8daNpcT_cFv
/* 80A1482C  7F E0 07 35 */	extsh. r0, r31
/* 80A14830  40 81 00 0C */	ble lbl_80A1483C
/* 80A14834  7F C3 F3 78 */	mr r3, r30
/* 80A14838  4B 8B A5 05 */	bl __dl__FPv
lbl_80A1483C:
/* 80A1483C  7F C3 F3 78 */	mr r3, r30
/* 80A14840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A14844  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A14848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1484C  7C 08 03 A6 */	mtlr r0
/* 80A14850  38 21 00 10 */	addi r1, r1, 0x10
/* 80A14854  4E 80 00 20 */	blr 
