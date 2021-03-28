lbl_80B267AC:
/* 80B267AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B267B0  7C 08 02 A6 */	mflr r0
/* 80B267B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B267B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B267BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B267C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B267C4  7C 9F 23 78 */	mr r31, r4
/* 80B267C8  41 82 01 14 */	beq lbl_80B268DC
/* 80B267CC  3C 60 80 B3 */	lis r3, __vt__11daNpc_Uri_c@ha
/* 80B267D0  38 03 DC 3C */	addi r0, r3, __vt__11daNpc_Uri_c@l
/* 80B267D4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B267D8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B267DC  28 03 00 00 */	cmplwi r3, 0
/* 80B267E0  41 82 00 08 */	beq lbl_80B267E8
/* 80B267E4  4B 4E AB 2C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B267E8:
/* 80B267E8  7F C3 F3 78 */	mr r3, r30
/* 80B267EC  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80B267F0  54 00 10 3A */	slwi r0, r0, 2
/* 80B267F4  3C 80 80 B3 */	lis r4, l_loadResPtrnList@ha
/* 80B267F8  38 84 D1 08 */	addi r4, r4, l_loadResPtrnList@l
/* 80B267FC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B26800  3C A0 80 B3 */	lis r5, l_resNameList@ha
/* 80B26804  38 A5 D0 D0 */	addi r5, r5, l_resNameList@l
/* 80B26808  4B 62 1C A4 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80B2680C  34 1E 0F 98 */	addic. r0, r30, 0xf98
/* 80B26810  41 82 00 10 */	beq lbl_80B26820
/* 80B26814  3C 60 80 B3 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80B26818  38 03 DC 30 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80B2681C  90 1E 0F BC */	stw r0, 0xfbc(r30)
lbl_80B26820:
/* 80B26820  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 80B26824  3C 80 80 B3 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80B26828  38 84 BF 08 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 80B2682C  38 A0 00 08 */	li r5, 8
/* 80B26830  38 C0 00 02 */	li r6, 2
/* 80B26834  4B 83 B4 B4 */	b __destroy_arr
/* 80B26838  34 1E 0E 48 */	addic. r0, r30, 0xe48
/* 80B2683C  41 82 00 84 */	beq lbl_80B268C0
/* 80B26840  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B26844  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B26848  90 7E 0E 84 */	stw r3, 0xe84(r30)
/* 80B2684C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B26850  90 1E 0F 68 */	stw r0, 0xf68(r30)
/* 80B26854  38 03 00 84 */	addi r0, r3, 0x84
/* 80B26858  90 1E 0F 80 */	stw r0, 0xf80(r30)
/* 80B2685C  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 80B26860  41 82 00 54 */	beq lbl_80B268B4
/* 80B26864  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B26868  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B2686C  90 7E 0F 68 */	stw r3, 0xf68(r30)
/* 80B26870  38 03 00 58 */	addi r0, r3, 0x58
/* 80B26874  90 1E 0F 80 */	stw r0, 0xf80(r30)
/* 80B26878  34 1E 0F 6C */	addic. r0, r30, 0xf6c
/* 80B2687C  41 82 00 10 */	beq lbl_80B2688C
/* 80B26880  3C 60 80 B3 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B26884  38 03 DC 24 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B26888  90 1E 0F 80 */	stw r0, 0xf80(r30)
lbl_80B2688C:
/* 80B2688C  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 80B26890  41 82 00 24 */	beq lbl_80B268B4
/* 80B26894  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B26898  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B2689C  90 1E 0F 68 */	stw r0, 0xf68(r30)
/* 80B268A0  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 80B268A4  41 82 00 10 */	beq lbl_80B268B4
/* 80B268A8  3C 60 80 B3 */	lis r3, __vt__8cM3dGAab@ha
/* 80B268AC  38 03 DC 18 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B268B0  90 1E 0F 64 */	stw r0, 0xf64(r30)
lbl_80B268B4:
/* 80B268B4  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80B268B8  38 80 00 00 */	li r4, 0
/* 80B268BC  4B 55 D8 28 */	b __dt__12dCcD_GObjInfFv
lbl_80B268C0:
/* 80B268C0  7F C3 F3 78 */	mr r3, r30
/* 80B268C4  38 80 00 00 */	li r4, 0
/* 80B268C8  48 00 52 41 */	bl __dt__8daNpcT_cFv
/* 80B268CC  7F E0 07 35 */	extsh. r0, r31
/* 80B268D0  40 81 00 0C */	ble lbl_80B268DC
/* 80B268D4  7F C3 F3 78 */	mr r3, r30
/* 80B268D8  4B 7A 84 64 */	b __dl__FPv
lbl_80B268DC:
/* 80B268DC  7F C3 F3 78 */	mr r3, r30
/* 80B268E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B268E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B268E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B268EC  7C 08 03 A6 */	mtlr r0
/* 80B268F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B268F4  4E 80 00 20 */	blr 
