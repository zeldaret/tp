lbl_80AC042C:
/* 80AC042C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC0430  7C 08 02 A6 */	mflr r0
/* 80AC0434  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC0438  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC043C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC0440  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC0444  7C 9F 23 78 */	mr r31, r4
/* 80AC0448  41 82 01 14 */	beq lbl_80AC055C
/* 80AC044C  3C 60 80 AC */	lis r3, __vt__12daNpc_Saru_c@ha
/* 80AC0450  38 03 4F 10 */	addi r0, r3, __vt__12daNpc_Saru_c@l
/* 80AC0454  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AC0458  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AC045C  28 03 00 00 */	cmplwi r3, 0
/* 80AC0460  41 82 00 08 */	beq lbl_80AC0468
/* 80AC0464  4B 55 0E AC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AC0468:
/* 80AC0468  7F C3 F3 78 */	mr r3, r30
/* 80AC046C  88 1E 0F 88 */	lbz r0, 0xf88(r30)
/* 80AC0470  54 00 10 3A */	slwi r0, r0, 2
/* 80AC0474  3C 80 80 AC */	lis r4, l_loadResPtrnList@ha
/* 80AC0478  38 84 47 10 */	addi r4, r4, l_loadResPtrnList@l
/* 80AC047C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AC0480  3C A0 80 AC */	lis r5, l_resNameList@ha
/* 80AC0484  38 A5 46 FC */	addi r5, r5, l_resNameList@l
/* 80AC0488  4B 68 80 24 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80AC048C  34 1E 0F 94 */	addic. r0, r30, 0xf94
/* 80AC0490  41 82 00 10 */	beq lbl_80AC04A0
/* 80AC0494  3C 60 80 AC */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80AC0498  38 03 4F 04 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80AC049C  90 1E 0F B8 */	stw r0, 0xfb8(r30)
lbl_80AC04A0:
/* 80AC04A0  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80AC04A4  3C 80 80 AC */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80AC04A8  38 84 36 84 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80AC04AC  38 A0 00 08 */	li r5, 8
/* 80AC04B0  38 C0 00 01 */	li r6, 1
/* 80AC04B4  4B 8A 18 34 */	b __destroy_arr
/* 80AC04B8  34 1E 0E 4C */	addic. r0, r30, 0xe4c
/* 80AC04BC  41 82 00 84 */	beq lbl_80AC0540
/* 80AC04C0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80AC04C4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80AC04C8  90 7E 0E 88 */	stw r3, 0xe88(r30)
/* 80AC04CC  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AC04D0  90 1E 0F 6C */	stw r0, 0xf6c(r30)
/* 80AC04D4  38 03 00 84 */	addi r0, r3, 0x84
/* 80AC04D8  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 80AC04DC  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80AC04E0  41 82 00 54 */	beq lbl_80AC0534
/* 80AC04E4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80AC04E8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80AC04EC  90 7E 0F 6C */	stw r3, 0xf6c(r30)
/* 80AC04F0  38 03 00 58 */	addi r0, r3, 0x58
/* 80AC04F4  90 1E 0F 84 */	stw r0, 0xf84(r30)
/* 80AC04F8  34 1E 0F 70 */	addic. r0, r30, 0xf70
/* 80AC04FC  41 82 00 10 */	beq lbl_80AC050C
/* 80AC0500  3C 60 80 AC */	lis r3, __vt__8cM3dGCyl@ha
/* 80AC0504  38 03 4E F8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80AC0508  90 1E 0F 84 */	stw r0, 0xf84(r30)
lbl_80AC050C:
/* 80AC050C  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80AC0510  41 82 00 24 */	beq lbl_80AC0534
/* 80AC0514  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80AC0518  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80AC051C  90 1E 0F 6C */	stw r0, 0xf6c(r30)
/* 80AC0520  34 1E 0F 50 */	addic. r0, r30, 0xf50
/* 80AC0524  41 82 00 10 */	beq lbl_80AC0534
/* 80AC0528  3C 60 80 AC */	lis r3, __vt__8cM3dGAab@ha
/* 80AC052C  38 03 4E EC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80AC0530  90 1E 0F 68 */	stw r0, 0xf68(r30)
lbl_80AC0534:
/* 80AC0534  38 7E 0E 4C */	addi r3, r30, 0xe4c
/* 80AC0538  38 80 00 00 */	li r4, 0
/* 80AC053C  4B 5C 3B A8 */	b __dt__12dCcD_GObjInfFv
lbl_80AC0540:
/* 80AC0540  7F C3 F3 78 */	mr r3, r30
/* 80AC0544  38 80 00 00 */	li r4, 0
/* 80AC0548  48 00 2D 3D */	bl __dt__8daNpcT_cFv
/* 80AC054C  7F E0 07 35 */	extsh. r0, r31
/* 80AC0550  40 81 00 0C */	ble lbl_80AC055C
/* 80AC0554  7F C3 F3 78 */	mr r3, r30
/* 80AC0558  4B 80 E7 E4 */	b __dl__FPv
lbl_80AC055C:
/* 80AC055C  7F C3 F3 78 */	mr r3, r30
/* 80AC0560  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC0564  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC0568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC056C  7C 08 03 A6 */	mtlr r0
/* 80AC0570  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC0574  4E 80 00 20 */	blr 
