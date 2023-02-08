lbl_8054B36C:
/* 8054B36C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B370  7C 08 02 A6 */	mflr r0
/* 8054B374  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B378  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054B37C  93 C1 00 08 */	stw r30, 8(r1)
/* 8054B380  7C 7E 1B 79 */	or. r30, r3, r3
/* 8054B384  7C 9F 23 78 */	mr r31, r4
/* 8054B388  41 82 01 44 */	beq lbl_8054B4CC
/* 8054B38C  3C 60 80 55 */	lis r3, __vt__15daNpc_Kakashi_c@ha /* 0x8054F0C8@ha */
/* 8054B390  38 03 F0 C8 */	addi r0, r3, __vt__15daNpc_Kakashi_c@l /* 0x8054F0C8@l */
/* 8054B394  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 8054B398  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 8054B39C  28 00 00 00 */	cmplwi r0, 0
/* 8054B3A0  41 82 00 14 */	beq lbl_8054B3B4
/* 8054B3A4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8054B3A8  4B AC 5F 69 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
/* 8054B3AC  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 8054B3B0  4B D7 2C 49 */	bl deleteObject__14Z2SoundObjBaseFv
lbl_8054B3B4:
/* 8054B3B4  7F C3 F3 78 */	mr r3, r30
/* 8054B3B8  88 1E 13 48 */	lbz r0, 0x1348(r30)
/* 8054B3BC  54 00 10 3A */	slwi r0, r0, 2
/* 8054B3C0  3C 80 80 55 */	lis r4, l_loadResPtrnList@ha /* 0x8054EE88@ha */
/* 8054B3C4  38 84 EE 88 */	addi r4, r4, l_loadResPtrnList@l /* 0x8054EE88@l */
/* 8054B3C8  7C 84 00 2E */	lwzx r4, r4, r0
/* 8054B3CC  3C A0 80 55 */	lis r5, l_resNameList@ha /* 0x8054EE7C@ha */
/* 8054B3D0  38 A5 EE 7C */	addi r5, r5, l_resNameList@l /* 0x8054EE7C@l */
/* 8054B3D4  4B BF D0 D9 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 8054B3D8  38 7E 13 64 */	addi r3, r30, 0x1364
/* 8054B3DC  3C 80 80 55 */	lis r4, __dt__5csXyzFv@ha /* 0x8054DED8@ha */
/* 8054B3E0  38 84 DE D8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8054DED8@l */
/* 8054B3E4  38 A0 00 06 */	li r5, 6
/* 8054B3E8  38 C0 00 03 */	li r6, 3
/* 8054B3EC  4B E1 68 FD */	bl __destroy_arr
/* 8054B3F0  38 7E 0F A0 */	addi r3, r30, 0xfa0
/* 8054B3F4  3C 80 80 55 */	lis r4, __dt__8dCcD_SphFv@ha /* 0x8054DE0C@ha */
/* 8054B3F8  38 84 DE 0C */	addi r4, r4, __dt__8dCcD_SphFv@l /* 0x8054DE0C@l */
/* 8054B3FC  38 A0 01 38 */	li r5, 0x138
/* 8054B400  38 C0 00 03 */	li r6, 3
/* 8054B404  4B E1 68 E5 */	bl __destroy_arr
/* 8054B408  34 1E 0E 64 */	addic. r0, r30, 0xe64
/* 8054B40C  41 82 00 84 */	beq lbl_8054B490
/* 8054B410  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8054B414  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8054B418  90 7E 0E A0 */	stw r3, 0xea0(r30)
/* 8054B41C  38 03 00 2C */	addi r0, r3, 0x2c
/* 8054B420  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 8054B424  38 03 00 84 */	addi r0, r3, 0x84
/* 8054B428  90 1E 0F 9C */	stw r0, 0xf9c(r30)
/* 8054B42C  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 8054B430  41 82 00 54 */	beq lbl_8054B484
/* 8054B434  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8054B438  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8054B43C  90 7E 0F 84 */	stw r3, 0xf84(r30)
/* 8054B440  38 03 00 58 */	addi r0, r3, 0x58
/* 8054B444  90 1E 0F 9C */	stw r0, 0xf9c(r30)
/* 8054B448  34 1E 0F 88 */	addic. r0, r30, 0xf88
/* 8054B44C  41 82 00 10 */	beq lbl_8054B45C
/* 8054B450  3C 60 80 55 */	lis r3, __vt__8cM3dGCyl@ha /* 0x8054F0BC@ha */
/* 8054B454  38 03 F0 BC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8054F0BC@l */
/* 8054B458  90 1E 0F 9C */	stw r0, 0xf9c(r30)
lbl_8054B45C:
/* 8054B45C  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 8054B460  41 82 00 24 */	beq lbl_8054B484
/* 8054B464  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8054B468  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8054B46C  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 8054B470  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 8054B474  41 82 00 10 */	beq lbl_8054B484
/* 8054B478  3C 60 80 55 */	lis r3, __vt__8cM3dGAab@ha /* 0x8054F0B0@ha */
/* 8054B47C  38 03 F0 B0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8054F0B0@l */
/* 8054B480  90 1E 0F 80 */	stw r0, 0xf80(r30)
lbl_8054B484:
/* 8054B484  38 7E 0E 64 */	addi r3, r30, 0xe64
/* 8054B488  38 80 00 00 */	li r4, 0
/* 8054B48C  4B B3 8C 59 */	bl __dt__12dCcD_GObjInfFv
lbl_8054B490:
/* 8054B490  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 8054B494  41 82 00 1C */	beq lbl_8054B4B0
/* 8054B498  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha /* 0x803CAD10@ha */
/* 8054B49C  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l /* 0x803CAD10@l */
/* 8054B4A0  90 1E 0E 54 */	stw r0, 0xe54(r30)
/* 8054B4A4  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 8054B4A8  38 80 00 00 */	li r4, 0
/* 8054B4AC  4B D7 2A 9D */	bl __dt__14Z2SoundObjBaseFv
lbl_8054B4B0:
/* 8054B4B0  7F C3 F3 78 */	mr r3, r30
/* 8054B4B4  38 80 00 00 */	li r4, 0
/* 8054B4B8  48 00 25 91 */	bl __dt__8daNpcT_cFv
/* 8054B4BC  7F E0 07 35 */	extsh. r0, r31
/* 8054B4C0  40 81 00 0C */	ble lbl_8054B4CC
/* 8054B4C4  7F C3 F3 78 */	mr r3, r30
/* 8054B4C8  4B D8 38 75 */	bl __dl__FPv
lbl_8054B4CC:
/* 8054B4CC  7F C3 F3 78 */	mr r3, r30
/* 8054B4D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054B4D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054B4D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B4DC  7C 08 03 A6 */	mtlr r0
/* 8054B4E0  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B4E4  4E 80 00 20 */	blr 
