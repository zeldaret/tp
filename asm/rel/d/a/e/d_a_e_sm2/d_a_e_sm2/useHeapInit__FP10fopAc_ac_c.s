lbl_8079C184:
/* 8079C184  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8079C188  7C 08 02 A6 */	mflr r0
/* 8079C18C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8079C190  39 61 00 30 */	addi r11, r1, 0x30
/* 8079C194  4B BC 60 49 */	bl _savegpr_29
/* 8079C198  7C 7F 1B 78 */	mr r31, r3
/* 8079C19C  38 60 00 58 */	li r3, 0x58
/* 8079C1A0  4B B3 2A AD */	bl __nw__FUl
/* 8079C1A4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8079C1A8  41 82 00 78 */	beq lbl_8079C220
/* 8079C1AC  3C 60 80 7A */	lis r3, d_a_e_sm2__stringBase0@ha /* 0x8079D718@ha */
/* 8079C1B0  38 63 D7 18 */	addi r3, r3, d_a_e_sm2__stringBase0@l /* 0x8079D718@l */
/* 8079C1B4  38 63 00 07 */	addi r3, r3, 7
/* 8079C1B8  38 80 00 08 */	li r4, 8
/* 8079C1BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079C1C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079C1C4  3C A5 00 02 */	addis r5, r5, 2
/* 8079C1C8  38 C0 00 80 */	li r6, 0x80
/* 8079C1CC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8079C1D0  4B 8A 01 1D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8079C1D4  7C 64 1B 78 */	mr r4, r3
/* 8079C1D8  38 1F 05 DC */	addi r0, r31, 0x5dc
/* 8079C1DC  90 01 00 08 */	stw r0, 8(r1)
/* 8079C1E0  38 00 00 00 */	li r0, 0
/* 8079C1E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8079C1E8  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000284@ha */
/* 8079C1EC  38 03 02 84 */	addi r0, r3, 0x0284 /* 0x11000284@l */
/* 8079C1F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8079C1F4  7F C3 F3 78 */	mr r3, r30
/* 8079C1F8  38 A0 00 00 */	li r5, 0
/* 8079C1FC  38 C0 00 00 */	li r6, 0
/* 8079C200  38 E0 00 00 */	li r7, 0
/* 8079C204  39 00 00 02 */	li r8, 2
/* 8079C208  3D 20 80 7A */	lis r9, lit_3792@ha /* 0x8079D5B8@ha */
/* 8079C20C  C0 29 D5 B8 */	lfs f1, lit_3792@l(r9)  /* 0x8079D5B8@l */
/* 8079C210  39 20 00 00 */	li r9, 0
/* 8079C214  39 40 FF FF */	li r10, -1
/* 8079C218  4B 87 45 B9 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8079C21C  7C 7E 1B 78 */	mr r30, r3
lbl_8079C220:
/* 8079C220  93 DF 05 BC */	stw r30, 0x5bc(r31)
/* 8079C224  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8079C228  28 03 00 00 */	cmplwi r3, 0
/* 8079C22C  41 82 00 10 */	beq lbl_8079C23C
/* 8079C230  80 83 00 04 */	lwz r4, 4(r3)
/* 8079C234  28 04 00 00 */	cmplwi r4, 0
/* 8079C238  40 82 00 0C */	bne lbl_8079C244
lbl_8079C23C:
/* 8079C23C  38 60 00 00 */	li r3, 0
/* 8079C240  48 00 01 E0 */	b lbl_8079C420
lbl_8079C244:
/* 8079C244  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8079C248  38 A0 00 01 */	li r5, 1
/* 8079C24C  4B 87 22 F1 */	bl create__21mDoExt_invisibleModelFP8J3DModelUc
/* 8079C250  2C 03 00 00 */	cmpwi r3, 0
/* 8079C254  40 82 00 0C */	bne lbl_8079C260
/* 8079C258  38 60 00 00 */	li r3, 0
/* 8079C25C  48 00 01 C4 */	b lbl_8079C420
lbl_8079C260:
/* 8079C260  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8079C264  80 63 00 04 */	lwz r3, 4(r3)
/* 8079C268  93 E3 00 14 */	stw r31, 0x14(r3)
/* 8079C26C  38 C0 00 00 */	li r6, 0
/* 8079C270  3C 60 80 7A */	lis r3, nodeCallBack__FP8J3DJointi@ha /* 0x80798C48@ha */
/* 8079C274  38 83 8C 48 */	addi r4, r3, nodeCallBack__FP8J3DJointi@l /* 0x80798C48@l */
/* 8079C278  48 00 00 28 */	b lbl_8079C2A0
lbl_8079C27C:
/* 8079C27C  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8079C280  28 00 00 01 */	cmplwi r0, 1
/* 8079C284  41 80 00 18 */	blt lbl_8079C29C
/* 8079C288  80 65 00 04 */	lwz r3, 4(r5)
/* 8079C28C  80 63 00 28 */	lwz r3, 0x28(r3)
/* 8079C290  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 8079C294  7C 63 00 2E */	lwzx r3, r3, r0
/* 8079C298  90 83 00 04 */	stw r4, 4(r3)
lbl_8079C29C:
/* 8079C29C  38 C6 00 01 */	addi r6, r6, 1
lbl_8079C2A0:
/* 8079C2A0  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8079C2A4  80 A3 00 04 */	lwz r5, 4(r3)
/* 8079C2A8  80 65 00 04 */	lwz r3, 4(r5)
/* 8079C2AC  A0 63 00 2C */	lhz r3, 0x2c(r3)
/* 8079C2B0  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 8079C2B4  7C 00 18 40 */	cmplw r0, r3
/* 8079C2B8  41 80 FF C4 */	blt lbl_8079C27C
/* 8079C2BC  38 60 00 18 */	li r3, 0x18
/* 8079C2C0  4B B3 29 8D */	bl __nw__FUl
/* 8079C2C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8079C2C8  41 82 00 20 */	beq lbl_8079C2E8
/* 8079C2CC  3C 80 80 7A */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x8079DB1C@ha */
/* 8079C2D0  38 04 DB 1C */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x8079DB1C@l */
/* 8079C2D4  90 1E 00 00 */	stw r0, 0(r30)
/* 8079C2D8  38 80 00 00 */	li r4, 0
/* 8079C2DC  4B B8 C1 21 */	bl init__12J3DFrameCtrlFs
/* 8079C2E0  38 00 00 00 */	li r0, 0
/* 8079C2E4  90 1E 00 14 */	stw r0, 0x14(r30)
lbl_8079C2E8:
/* 8079C2E8  93 DF 05 C8 */	stw r30, 0x5c8(r31)
/* 8079C2EC  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 8079C2F0  28 00 00 00 */	cmplwi r0, 0
/* 8079C2F4  40 82 00 0C */	bne lbl_8079C300
/* 8079C2F8  38 60 00 00 */	li r3, 0
/* 8079C2FC  48 00 01 24 */	b lbl_8079C420
lbl_8079C300:
/* 8079C300  3C 60 80 7A */	lis r3, d_a_e_sm2__stringBase0@ha /* 0x8079D718@ha */
/* 8079C304  38 63 D7 18 */	addi r3, r3, d_a_e_sm2__stringBase0@l /* 0x8079D718@l */
/* 8079C308  38 63 00 07 */	addi r3, r3, 7
/* 8079C30C  38 80 00 0B */	li r4, 0xb
/* 8079C310  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079C314  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079C318  3F A5 00 02 */	addis r29, r5, 2
/* 8079C31C  3B BD C2 F8 */	addi r29, r29, -15624
/* 8079C320  7F A5 EB 78 */	mr r5, r29
/* 8079C324  38 C0 00 80 */	li r6, 0x80
/* 8079C328  4B 89 FF C5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8079C32C  7C 65 1B 78 */	mr r5, r3
/* 8079C330  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8079C334  80 63 00 04 */	lwz r3, 4(r3)
/* 8079C338  80 83 00 04 */	lwz r4, 4(r3)
/* 8079C33C  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 8079C340  38 84 00 58 */	addi r4, r4, 0x58
/* 8079C344  38 C0 00 01 */	li r6, 1
/* 8079C348  38 E0 00 00 */	li r7, 0
/* 8079C34C  3D 00 80 7A */	lis r8, lit_3791@ha /* 0x8079D5B4@ha */
/* 8079C350  C0 28 D5 B4 */	lfs f1, lit_3791@l(r8)  /* 0x8079D5B4@l */
/* 8079C354  39 00 00 00 */	li r8, 0
/* 8079C358  39 20 FF FF */	li r9, -1
/* 8079C35C  4B 87 12 E1 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 8079C360  2C 03 00 00 */	cmpwi r3, 0
/* 8079C364  40 82 00 0C */	bne lbl_8079C370
/* 8079C368  38 60 00 00 */	li r3, 0
/* 8079C36C  48 00 00 B4 */	b lbl_8079C420
lbl_8079C370:
/* 8079C370  38 60 00 58 */	li r3, 0x58
/* 8079C374  4B B3 28 D9 */	bl __nw__FUl
/* 8079C378  7C 7E 1B 79 */	or. r30, r3, r3
/* 8079C37C  41 82 00 6C */	beq lbl_8079C3E8
/* 8079C380  3C 60 80 7A */	lis r3, d_a_e_sm2__stringBase0@ha /* 0x8079D718@ha */
/* 8079C384  38 63 D7 18 */	addi r3, r3, d_a_e_sm2__stringBase0@l /* 0x8079D718@l */
/* 8079C388  38 63 00 07 */	addi r3, r3, 7
/* 8079C38C  38 80 00 05 */	li r4, 5
/* 8079C390  7F A5 EB 78 */	mr r5, r29
/* 8079C394  38 C0 00 80 */	li r6, 0x80
/* 8079C398  4B 89 FF 55 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8079C39C  7C 64 1B 78 */	mr r4, r3
/* 8079C3A0  38 1F 05 DC */	addi r0, r31, 0x5dc
/* 8079C3A4  90 01 00 08 */	stw r0, 8(r1)
/* 8079C3A8  38 00 00 00 */	li r0, 0
/* 8079C3AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8079C3B0  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 8079C3B4  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x11000084@l */
/* 8079C3B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8079C3BC  7F C3 F3 78 */	mr r3, r30
/* 8079C3C0  38 A0 00 00 */	li r5, 0
/* 8079C3C4  38 C0 00 00 */	li r6, 0
/* 8079C3C8  38 E0 00 00 */	li r7, 0
/* 8079C3CC  39 00 00 00 */	li r8, 0
/* 8079C3D0  3D 20 80 7A */	lis r9, lit_3792@ha /* 0x8079D5B8@ha */
/* 8079C3D4  C0 29 D5 B8 */	lfs f1, lit_3792@l(r9)  /* 0x8079D5B8@l */
/* 8079C3D8  39 20 00 00 */	li r9, 0
/* 8079C3DC  39 40 FF FF */	li r10, -1
/* 8079C3E0  4B 87 43 F1 */	bl __ct__16mDoExt_McaMorfSOFP12J3DModelDataP25mDoExt_McaMorfCallBack1_cP25mDoExt_McaMorfCallBack2_cP15J3DAnmTransformifiiP10Z2CreatureUlUl
/* 8079C3E4  7C 7E 1B 78 */	mr r30, r3
lbl_8079C3E8:
/* 8079C3E8  93 DF 05 CC */	stw r30, 0x5cc(r31)
/* 8079C3EC  80 7F 05 CC */	lwz r3, 0x5cc(r31)
/* 8079C3F0  28 03 00 00 */	cmplwi r3, 0
/* 8079C3F4  41 82 00 10 */	beq lbl_8079C404
/* 8079C3F8  80 83 00 04 */	lwz r4, 4(r3)
/* 8079C3FC  28 04 00 00 */	cmplwi r4, 0
/* 8079C400  40 82 00 0C */	bne lbl_8079C40C
lbl_8079C404:
/* 8079C404  38 60 00 00 */	li r3, 0
/* 8079C408  48 00 00 18 */	b lbl_8079C420
lbl_8079C40C:
/* 8079C40C  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 8079C410  38 A0 00 01 */	li r5, 1
/* 8079C414  4B 87 21 29 */	bl create__21mDoExt_invisibleModelFP8J3DModelUc
/* 8079C418  30 03 FF FF */	addic r0, r3, -1
/* 8079C41C  7C 60 19 10 */	subfe r3, r0, r3
lbl_8079C420:
/* 8079C420  39 61 00 30 */	addi r11, r1, 0x30
/* 8079C424  4B BC 5E 05 */	bl _restgpr_29
/* 8079C428  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8079C42C  7C 08 03 A6 */	mtlr r0
/* 8079C430  38 21 00 30 */	addi r1, r1, 0x30
/* 8079C434  4E 80 00 20 */	blr 
