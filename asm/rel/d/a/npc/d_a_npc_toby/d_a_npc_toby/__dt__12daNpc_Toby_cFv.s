lbl_80B1E64C:
/* 80B1E64C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1E650  7C 08 02 A6 */	mflr r0
/* 80B1E654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1E658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1E65C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B1E660  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B1E664  7C 9F 23 78 */	mr r31, r4
/* 80B1E668  41 82 01 14 */	beq lbl_80B1E77C
/* 80B1E66C  3C 60 80 B2 */	lis r3, __vt__12daNpc_Toby_c@ha /* 0x80B25768@ha */
/* 80B1E670  38 03 57 68 */	addi r0, r3, __vt__12daNpc_Toby_c@l /* 0x80B25768@l */
/* 80B1E674  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B1E678  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B1E67C  28 03 00 00 */	cmplwi r3, 0
/* 80B1E680  41 82 00 08 */	beq lbl_80B1E688
/* 80B1E684  4B 4F 2C 8D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B1E688:
/* 80B1E688  7F C3 F3 78 */	mr r3, r30
/* 80B1E68C  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80B1E690  54 00 10 3A */	slwi r0, r0, 2
/* 80B1E694  3C 80 80 B2 */	lis r4, l_loadResPtrnList@ha /* 0x80B24CFC@ha */
/* 80B1E698  38 84 4C FC */	addi r4, r4, l_loadResPtrnList@l /* 0x80B24CFC@l */
/* 80B1E69C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B1E6A0  3C A0 80 B2 */	lis r5, l_resNameList@ha /* 0x80B24CB8@ha */
/* 80B1E6A4  38 A5 4C B8 */	addi r5, r5, l_resNameList@l /* 0x80B24CB8@l */
/* 80B1E6A8  4B 62 9E 05 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80B1E6AC  34 1E 0F C0 */	addic. r0, r30, 0xfc0
/* 80B1E6B0  41 82 00 10 */	beq lbl_80B1E6C0
/* 80B1E6B4  3C 60 80 B2 */	lis r3, __vt__13daNpcT_Path_c@ha /* 0x80B2575C@ha */
/* 80B1E6B8  38 03 57 5C */	addi r0, r3, __vt__13daNpcT_Path_c@l /* 0x80B2575C@l */
/* 80B1E6BC  90 1E 0F E4 */	stw r0, 0xfe4(r30)
lbl_80B1E6C0:
/* 80B1E6C0  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 80B1E6C4  3C 80 80 B2 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha /* 0x80B23B28@ha */
/* 80B1E6C8  38 84 3B 28 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l /* 0x80B23B28@l */
/* 80B1E6CC  38 A0 00 08 */	li r5, 8
/* 80B1E6D0  38 C0 00 04 */	li r6, 4
/* 80B1E6D4  4B 84 36 15 */	bl __destroy_arr
/* 80B1E6D8  34 1E 0E 48 */	addic. r0, r30, 0xe48
/* 80B1E6DC  41 82 00 84 */	beq lbl_80B1E760
/* 80B1E6E0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B1E6E4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B1E6E8  90 7E 0E 84 */	stw r3, 0xe84(r30)
/* 80B1E6EC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B1E6F0  90 1E 0F 68 */	stw r0, 0xf68(r30)
/* 80B1E6F4  38 03 00 84 */	addi r0, r3, 0x84
/* 80B1E6F8  90 1E 0F 80 */	stw r0, 0xf80(r30)
/* 80B1E6FC  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 80B1E700  41 82 00 54 */	beq lbl_80B1E754
/* 80B1E704  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B1E708  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B1E70C  90 7E 0F 68 */	stw r3, 0xf68(r30)
/* 80B1E710  38 03 00 58 */	addi r0, r3, 0x58
/* 80B1E714  90 1E 0F 80 */	stw r0, 0xf80(r30)
/* 80B1E718  34 1E 0F 6C */	addic. r0, r30, 0xf6c
/* 80B1E71C  41 82 00 10 */	beq lbl_80B1E72C
/* 80B1E720  3C 60 80 B2 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B25750@ha */
/* 80B1E724  38 03 57 50 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B25750@l */
/* 80B1E728  90 1E 0F 80 */	stw r0, 0xf80(r30)
lbl_80B1E72C:
/* 80B1E72C  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 80B1E730  41 82 00 24 */	beq lbl_80B1E754
/* 80B1E734  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B1E738  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B1E73C  90 1E 0F 68 */	stw r0, 0xf68(r30)
/* 80B1E740  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 80B1E744  41 82 00 10 */	beq lbl_80B1E754
/* 80B1E748  3C 60 80 B2 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B25744@ha */
/* 80B1E74C  38 03 57 44 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B25744@l */
/* 80B1E750  90 1E 0F 64 */	stw r0, 0xf64(r30)
lbl_80B1E754:
/* 80B1E754  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80B1E758  38 80 00 00 */	li r4, 0
/* 80B1E75C  4B 56 59 89 */	bl __dt__12dCcD_GObjInfFv
lbl_80B1E760:
/* 80B1E760  7F C3 F3 78 */	mr r3, r30
/* 80B1E764  38 80 00 00 */	li r4, 0
/* 80B1E768  48 00 4F C1 */	bl __dt__8daNpcT_cFv
/* 80B1E76C  7F E0 07 35 */	extsh. r0, r31
/* 80B1E770  40 81 00 0C */	ble lbl_80B1E77C
/* 80B1E774  7F C3 F3 78 */	mr r3, r30
/* 80B1E778  4B 7B 05 C5 */	bl __dl__FPv
lbl_80B1E77C:
/* 80B1E77C  7F C3 F3 78 */	mr r3, r30
/* 80B1E780  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1E784  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B1E788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1E78C  7C 08 03 A6 */	mtlr r0
/* 80B1E790  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1E794  4E 80 00 20 */	blr 
