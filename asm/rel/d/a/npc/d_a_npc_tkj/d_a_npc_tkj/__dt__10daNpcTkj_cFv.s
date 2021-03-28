lbl_8057372C:
/* 8057372C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80573730  7C 08 02 A6 */	mflr r0
/* 80573734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80573738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057373C  93 C1 00 08 */	stw r30, 8(r1)
/* 80573740  7C 7E 1B 79 */	or. r30, r3, r3
/* 80573744  7C 9F 23 78 */	mr r31, r4
/* 80573748  41 82 00 EC */	beq lbl_80573834
/* 8057374C  3C 60 80 57 */	lis r3, __vt__10daNpcTkj_c@ha
/* 80573750  38 03 68 EC */	addi r0, r3, __vt__10daNpcTkj_c@l
/* 80573754  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80573758  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 8057375C  28 00 00 00 */	cmplwi r0, 0
/* 80573760  41 82 00 0C */	beq lbl_8057376C
/* 80573764  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80573768  4B A9 DB A8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8057376C:
/* 8057376C  7F C3 F3 78 */	mr r3, r30
/* 80573770  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80573774  54 00 10 3A */	slwi r0, r0, 2
/* 80573778  3C 80 80 57 */	lis r4, l_loadResPtrnList@ha
/* 8057377C  38 84 66 F8 */	addi r4, r4, l_loadResPtrnList@l
/* 80573780  7C 84 00 2E */	lwzx r4, r4, r0
/* 80573784  3C A0 80 57 */	lis r5, l_resNameList@ha
/* 80573788  38 A5 66 EC */	addi r5, r5, l_resNameList@l
/* 8057378C  4B BD 4D 20 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80573790  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80573794  41 82 00 84 */	beq lbl_80573818
/* 80573798  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8057379C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 805737A0  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 805737A4  38 03 00 2C */	addi r0, r3, 0x2c
/* 805737A8  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 805737AC  38 03 00 84 */	addi r0, r3, 0x84
/* 805737B0  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 805737B4  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 805737B8  41 82 00 54 */	beq lbl_8057380C
/* 805737BC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 805737C0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 805737C4  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 805737C8  38 03 00 58 */	addi r0, r3, 0x58
/* 805737CC  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 805737D0  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 805737D4  41 82 00 10 */	beq lbl_805737E4
/* 805737D8  3C 60 80 57 */	lis r3, __vt__8cM3dGCyl@ha
/* 805737DC  38 03 68 E0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 805737E0  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_805737E4:
/* 805737E4  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 805737E8  41 82 00 24 */	beq lbl_8057380C
/* 805737EC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805737F0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805737F4  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 805737F8  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 805737FC  41 82 00 10 */	beq lbl_8057380C
/* 80573800  3C 60 80 57 */	lis r3, __vt__8cM3dGAab@ha
/* 80573804  38 03 68 D4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80573808  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_8057380C:
/* 8057380C  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80573810  38 80 00 00 */	li r4, 0
/* 80573814  4B B1 08 D0 */	b __dt__12dCcD_GObjInfFv
lbl_80573818:
/* 80573818  7F C3 F3 78 */	mr r3, r30
/* 8057381C  38 80 00 00 */	li r4, 0
/* 80573820  48 00 1B E5 */	bl __dt__8daNpcT_cFv
/* 80573824  7F E0 07 35 */	extsh. r0, r31
/* 80573828  40 81 00 0C */	ble lbl_80573834
/* 8057382C  7F C3 F3 78 */	mr r3, r30
/* 80573830  4B D5 B5 0C */	b __dl__FPv
lbl_80573834:
/* 80573834  7F C3 F3 78 */	mr r3, r30
/* 80573838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057383C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80573840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80573844  7C 08 03 A6 */	mtlr r0
/* 80573848  38 21 00 10 */	addi r1, r1, 0x10
/* 8057384C  4E 80 00 20 */	blr 
