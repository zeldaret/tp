lbl_80553FEC:
/* 80553FEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80553FF0  7C 08 02 A6 */	mflr r0
/* 80553FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80553FF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80553FFC  93 C1 00 08 */	stw r30, 8(r1)
/* 80554000  7C 7E 1B 79 */	or. r30, r3, r3
/* 80554004  7C 9F 23 78 */	mr r31, r4
/* 80554008  41 82 01 14 */	beq lbl_8055411C
/* 8055400C  3C 60 80 56 */	lis r3, __vt__13daNpc_Kolin_c@ha
/* 80554010  38 03 B2 F4 */	addi r0, r3, __vt__13daNpc_Kolin_c@l
/* 80554014  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80554018  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 8055401C  28 03 00 00 */	cmplwi r3, 0
/* 80554020  41 82 00 08 */	beq lbl_80554028
/* 80554024  4B AB D2 EC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80554028:
/* 80554028  7F C3 F3 78 */	mr r3, r30
/* 8055402C  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80554030  54 00 10 3A */	slwi r0, r0, 2
/* 80554034  3C 80 80 56 */	lis r4, l_loadResPtrnList@ha
/* 80554038  38 84 A9 88 */	addi r4, r4, l_loadResPtrnList@l
/* 8055403C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80554040  3C A0 80 56 */	lis r5, l_resNameList@ha
/* 80554044  38 A5 A9 48 */	addi r5, r5, l_resNameList@l
/* 80554048  4B BF 44 64 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 8055404C  34 1E 0F B0 */	addic. r0, r30, 0xfb0
/* 80554050  41 82 00 10 */	beq lbl_80554060
/* 80554054  3C 60 80 56 */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80554058  38 03 B2 E8 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 8055405C  90 1E 0F D4 */	stw r0, 0xfd4(r30)
lbl_80554060:
/* 80554060  38 7E 0F 88 */	addi r3, r30, 0xf88
/* 80554064  3C 80 80 56 */	lis r4, __dt__18daNpcT_ActorMngr_cFv@ha
/* 80554068  38 84 95 B4 */	addi r4, r4, __dt__18daNpcT_ActorMngr_cFv@l
/* 8055406C  38 A0 00 08 */	li r5, 8
/* 80554070  38 C0 00 05 */	li r6, 5
/* 80554074  4B E0 DC 74 */	b __destroy_arr
/* 80554078  34 1E 0E 48 */	addic. r0, r30, 0xe48
/* 8055407C  41 82 00 84 */	beq lbl_80554100
/* 80554080  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80554084  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80554088  90 7E 0E 84 */	stw r3, 0xe84(r30)
/* 8055408C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80554090  90 1E 0F 68 */	stw r0, 0xf68(r30)
/* 80554094  38 03 00 84 */	addi r0, r3, 0x84
/* 80554098  90 1E 0F 80 */	stw r0, 0xf80(r30)
/* 8055409C  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 805540A0  41 82 00 54 */	beq lbl_805540F4
/* 805540A4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 805540A8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 805540AC  90 7E 0F 68 */	stw r3, 0xf68(r30)
/* 805540B0  38 03 00 58 */	addi r0, r3, 0x58
/* 805540B4  90 1E 0F 80 */	stw r0, 0xf80(r30)
/* 805540B8  34 1E 0F 6C */	addic. r0, r30, 0xf6c
/* 805540BC  41 82 00 10 */	beq lbl_805540CC
/* 805540C0  3C 60 80 56 */	lis r3, __vt__8cM3dGCyl@ha
/* 805540C4  38 03 B2 DC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 805540C8  90 1E 0F 80 */	stw r0, 0xf80(r30)
lbl_805540CC:
/* 805540CC  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 805540D0  41 82 00 24 */	beq lbl_805540F4
/* 805540D4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805540D8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805540DC  90 1E 0F 68 */	stw r0, 0xf68(r30)
/* 805540E0  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 805540E4  41 82 00 10 */	beq lbl_805540F4
/* 805540E8  3C 60 80 56 */	lis r3, __vt__8cM3dGAab@ha
/* 805540EC  38 03 B2 D0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805540F0  90 1E 0F 64 */	stw r0, 0xf64(r30)
lbl_805540F4:
/* 805540F4  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 805540F8  38 80 00 00 */	li r4, 0
/* 805540FC  4B B2 FF E8 */	b __dt__12dCcD_GObjInfFv
lbl_80554100:
/* 80554100  7F C3 F3 78 */	mr r3, r30
/* 80554104  38 80 00 00 */	li r4, 0
/* 80554108  48 00 50 AD */	bl __dt__8daNpcT_cFv
/* 8055410C  7F E0 07 35 */	extsh. r0, r31
/* 80554110  40 81 00 0C */	ble lbl_8055411C
/* 80554114  7F C3 F3 78 */	mr r3, r30
/* 80554118  4B D7 AC 24 */	b __dl__FPv
lbl_8055411C:
/* 8055411C  7F C3 F3 78 */	mr r3, r30
/* 80554120  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80554124  83 C1 00 08 */	lwz r30, 8(r1)
/* 80554128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055412C  7C 08 03 A6 */	mtlr r0
/* 80554130  38 21 00 10 */	addi r1, r1, 0x10
/* 80554134  4E 80 00 20 */	blr 
