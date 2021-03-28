lbl_809466D8:
/* 809466D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809466DC  7C 08 02 A6 */	mflr r0
/* 809466E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 809466E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809466E8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809466EC  7C 7E 1B 78 */	mr r30, r3
/* 809466F0  3C 60 80 95 */	lis r3, struct_8094B24C+0x0@ha
/* 809466F4  38 83 B2 4C */	addi r4, r3, struct_8094B24C+0x0@l
/* 809466F8  38 64 01 00 */	addi r3, r4, 0x100
/* 809466FC  38 84 01 09 */	addi r4, r4, 0x109
/* 80946700  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80946704  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80946708  3C A5 00 02 */	addis r5, r5, 2
/* 8094670C  38 C0 00 80 */	li r6, 0x80
/* 80946710  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80946714  4B 6F 5C 68 */	b getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80946718  7C 7F 1B 78 */	mr r31, r3
/* 8094671C  38 60 00 58 */	li r3, 0x58
/* 80946720  4B 98 85 2C */	b __nw__FUl
/* 80946724  7C 60 1B 79 */	or. r0, r3, r3
/* 80946728  41 82 00 4C */	beq lbl_80946774
/* 8094672C  38 1E 05 90 */	addi r0, r30, 0x590
/* 80946730  90 01 00 08 */	stw r0, 8(r1)
/* 80946734  3C 00 00 08 */	lis r0, 8
/* 80946738  90 01 00 0C */	stw r0, 0xc(r1)
/* 8094673C  3C 80 11 02 */	lis r4, 0x1102 /* 0x11020084@ha */
/* 80946740  38 04 00 84 */	addi r0, r4, 0x0084 /* 0x11020084@l */
/* 80946744  90 01 00 10 */	stw r0, 0x10(r1)
/* 80946748  7F E4 FB 78 */	mr r4, r31
/* 8094674C  38 A0 00 00 */	li r5, 0
/* 80946750  38 C0 00 00 */	li r6, 0
/* 80946754  38 E0 00 00 */	li r7, 0
/* 80946758  39 00 FF FF */	li r8, -1
/* 8094675C  3D 20 80 95 */	lis r9, lit_4270@ha
/* 80946760  C0 29 B1 FC */	lfs f1, lit_4270@l(r9)
/* 80946764  39 20 00 00 */	li r9, 0
/* 80946768  39 40 FF FF */	li r10, -1
/* 8094676C  4B 6C A0 64 */	b __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 80946770  7C 60 1B 78 */	mr r0, r3
lbl_80946774:
/* 80946774  90 1E 05 74 */	stw r0, 0x574(r30)
/* 80946778  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 8094677C  28 03 00 00 */	cmplwi r3, 0
/* 80946780  41 82 00 1C */	beq lbl_8094679C
/* 80946784  80 03 00 04 */	lwz r0, 4(r3)
/* 80946788  28 00 00 00 */	cmplwi r0, 0
/* 8094678C  40 82 00 10 */	bne lbl_8094679C
/* 80946790  4B 6C AB 80 */	b stopZelAnime__16mDoExt_McaMorfSOFv
/* 80946794  38 00 00 00 */	li r0, 0
/* 80946798  90 1E 05 74 */	stw r0, 0x574(r30)
lbl_8094679C:
/* 8094679C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 809467A0  28 00 00 00 */	cmplwi r0, 0
/* 809467A4  40 82 00 0C */	bne lbl_809467B0
/* 809467A8  38 60 00 00 */	li r3, 0
/* 809467AC  48 00 00 A8 */	b lbl_80946854
lbl_809467B0:
/* 809467B0  38 A0 00 00 */	li r5, 0
/* 809467B4  3C 60 80 94 */	lis r3, jntNodeCallBack__FP8J3DJointi@ha
/* 809467B8  38 83 5C 8C */	addi r4, r3, jntNodeCallBack__FP8J3DJointi@l
/* 809467BC  48 00 00 18 */	b lbl_809467D4
lbl_809467C0:
/* 809467C0  80 7F 00 28 */	lwz r3, 0x28(r31)
/* 809467C4  54 A0 13 BA */	rlwinm r0, r5, 2, 0xe, 0x1d
/* 809467C8  7C 63 00 2E */	lwzx r3, r3, r0
/* 809467CC  90 83 00 04 */	stw r4, 4(r3)
/* 809467D0  38 A5 00 01 */	addi r5, r5, 1
lbl_809467D4:
/* 809467D4  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 809467D8  A0 1F 00 2C */	lhz r0, 0x2c(r31)
/* 809467DC  7C 03 00 40 */	cmplw r3, r0
/* 809467E0  41 80 FF E0 */	blt lbl_809467C0
/* 809467E4  38 00 00 07 */	li r0, 7
/* 809467E8  B0 1E 09 16 */	sth r0, 0x916(r30)
/* 809467EC  38 00 00 00 */	li r0, 0
/* 809467F0  B0 1E 09 14 */	sth r0, 0x914(r30)
/* 809467F4  B0 1E 09 18 */	sth r0, 0x918(r30)
/* 809467F8  B0 1E 09 1A */	sth r0, 0x91a(r30)
/* 809467FC  98 1E 09 36 */	stb r0, 0x936(r30)
/* 80946800  7F C3 F3 78 */	mr r3, r30
/* 80946804  88 1E 09 36 */	lbz r0, 0x936(r30)
/* 80946808  54 00 10 3A */	slwi r0, r0, 2
/* 8094680C  3C 80 80 95 */	lis r4, l_btpFileNameTBL@ha
/* 80946810  38 84 B7 DC */	addi r4, r4, l_btpFileNameTBL@l
/* 80946814  7C 84 00 2E */	lwzx r4, r4, r0
/* 80946818  48 00 31 31 */	bl getTexPtrnAnm__8daMyna_cFPc
/* 8094681C  7C 64 1B 79 */	or. r4, r3, r3
/* 80946820  41 82 00 30 */	beq lbl_80946850
/* 80946824  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80946828  80 63 00 04 */	lwz r3, 4(r3)
/* 8094682C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80946830  7F C3 F3 78 */	mr r3, r30
/* 80946834  3C C0 80 95 */	lis r6, lit_4270@ha
/* 80946838  C0 26 B1 FC */	lfs f1, lit_4270@l(r6)
/* 8094683C  38 C0 00 02 */	li r6, 2
/* 80946840  48 00 30 79 */	bl setBtpAnm__8daMyna_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80946844  A0 1E 09 14 */	lhz r0, 0x914(r30)
/* 80946848  60 00 00 44 */	ori r0, r0, 0x44
/* 8094684C  B0 1E 09 14 */	sth r0, 0x914(r30)
lbl_80946850:
/* 80946850  38 60 00 01 */	li r3, 1
lbl_80946854:
/* 80946854  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80946858  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8094685C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80946860  7C 08 03 A6 */	mtlr r0
/* 80946864  38 21 00 20 */	addi r1, r1, 0x20
/* 80946868  4E 80 00 20 */	blr 
