lbl_804E2258:
/* 804E2258  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E225C  7C 08 02 A6 */	mflr r0
/* 804E2260  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E2264  39 61 00 20 */	addi r11, r1, 0x20
/* 804E2268  4B E7 FF 71 */	bl _savegpr_28
/* 804E226C  7C 7F 1B 78 */	mr r31, r3
/* 804E2270  4B FF FB 29 */	bl getNowLevel__Fv
/* 804E2274  7C 7D 1B 78 */	mr r29, r3
/* 804E2278  7F E3 FB 78 */	mr r3, r31
/* 804E227C  4B FF FF 61 */	bl getDoorModelData__11daBdoorL1_cFv
/* 804E2280  7C 7E 1B 78 */	mr r30, r3
/* 804E2284  3C 60 11 00 */	lis r3, 0x1100 /* 0x11000084@ha */
/* 804E2288  38 A3 00 84 */	addi r5, r3, 0x0084 /* 0x11000084@l */
/* 804E228C  2C 1D 00 08 */	cmpwi r29, 8
/* 804E2290  40 82 00 08 */	bne lbl_804E2298
/* 804E2294  60 A5 02 00 */	ori r5, r5, 0x200
lbl_804E2298:
/* 804E2298  7F C3 F3 78 */	mr r3, r30
/* 804E229C  3C 80 00 08 */	lis r4, 8
/* 804E22A0  4B B3 29 B5 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804E22A4  90 7F 05 80 */	stw r3, 0x580(r31)
/* 804E22A8  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 804E22AC  28 00 00 00 */	cmplwi r0, 0
/* 804E22B0  40 82 00 0C */	bne lbl_804E22BC
/* 804E22B4  38 60 00 00 */	li r3, 0
/* 804E22B8  48 00 02 60 */	b lbl_804E2518
lbl_804E22BC:
/* 804E22BC  7F E3 FB 78 */	mr r3, r31
/* 804E22C0  4B FF FE 05 */	bl getDoorType__11daBdoorL1_cFv
/* 804E22C4  2C 03 00 00 */	cmpwi r3, 0
/* 804E22C8  40 82 00 30 */	bne lbl_804E22F8
/* 804E22CC  7F C3 F3 78 */	mr r3, r30
/* 804E22D0  3C 80 00 08 */	lis r4, 8
/* 804E22D4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 804E22D8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 804E22DC  4B B3 29 79 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 804E22E0  90 7F 05 84 */	stw r3, 0x584(r31)
/* 804E22E4  80 1F 05 84 */	lwz r0, 0x584(r31)
/* 804E22E8  28 00 00 00 */	cmplwi r0, 0
/* 804E22EC  40 82 00 14 */	bne lbl_804E2300
/* 804E22F0  38 60 00 00 */	li r3, 0
/* 804E22F4  48 00 02 24 */	b lbl_804E2518
lbl_804E22F8:
/* 804E22F8  38 00 00 00 */	li r0, 0
/* 804E22FC  90 1F 05 84 */	stw r0, 0x584(r31)
lbl_804E2300:
/* 804E2300  2C 1D 00 08 */	cmpwi r29, 8
/* 804E2304  40 82 00 AC */	bne lbl_804E23B0
/* 804E2308  7F E3 FB 78 */	mr r3, r31
/* 804E230C  4B FF FC 99 */	bl getArcName__11daBdoorL1_cFv
/* 804E2310  3C 80 80 4E */	lis r4, d_a_door_bossL1__stringBase0@ha /* 0x804E4ADC@ha */
/* 804E2314  38 84 4A DC */	addi r4, r4, d_a_door_bossL1__stringBase0@l /* 0x804E4ADC@l */
/* 804E2318  38 84 02 71 */	addi r4, r4, 0x271
/* 804E231C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E2320  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E2324  3C A5 00 02 */	addis r5, r5, 2
/* 804E2328  38 C0 00 80 */	li r6, 0x80
/* 804E232C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804E2330  4B B5 A0 4D */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804E2334  7C 7E 1B 78 */	mr r30, r3
/* 804E2338  38 60 00 18 */	li r3, 0x18
/* 804E233C  4B DE C9 11 */	bl __nw__FUl
/* 804E2340  7C 7D 1B 79 */	or. r29, r3, r3
/* 804E2344  41 82 00 20 */	beq lbl_804E2364
/* 804E2348  3C 80 80 4E */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x804E5098@ha */
/* 804E234C  38 04 50 98 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x804E5098@l */
/* 804E2350  90 1D 00 00 */	stw r0, 0(r29)
/* 804E2354  38 80 00 00 */	li r4, 0
/* 804E2358  4B E4 60 A5 */	bl init__12J3DFrameCtrlFs
/* 804E235C  38 00 00 00 */	li r0, 0
/* 804E2360  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_804E2364:
/* 804E2364  93 BF 05 8C */	stw r29, 0x58c(r31)
/* 804E2368  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 804E236C  28 03 00 00 */	cmplwi r3, 0
/* 804E2370  41 82 00 38 */	beq lbl_804E23A8
/* 804E2374  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 804E2378  80 84 00 04 */	lwz r4, 4(r4)
/* 804E237C  38 84 00 58 */	addi r4, r4, 0x58
/* 804E2380  7F C5 F3 78 */	mr r5, r30
/* 804E2384  38 C0 00 01 */	li r6, 1
/* 804E2388  38 E0 00 00 */	li r7, 0
/* 804E238C  3D 00 80 4E */	lis r8, lit_3861@ha /* 0x804E4A50@ha */
/* 804E2390  C0 28 4A 50 */	lfs f1, lit_3861@l(r8)  /* 0x804E4A50@l */
/* 804E2394  39 00 00 00 */	li r8, 0
/* 804E2398  39 20 FF FF */	li r9, -1
/* 804E239C  4B B2 B2 A1 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 804E23A0  2C 03 00 00 */	cmpwi r3, 0
/* 804E23A4  40 82 00 0C */	bne lbl_804E23B0
lbl_804E23A8:
/* 804E23A8  38 60 00 00 */	li r3, 0
/* 804E23AC  48 00 01 6C */	b lbl_804E2518
lbl_804E23B0:
/* 804E23B0  7F E3 FB 78 */	mr r3, r31
/* 804E23B4  4B FF FD 51 */	bl getOpenAnm__11daBdoorL1_cFv
/* 804E23B8  7C 7D 1B 78 */	mr r29, r3
/* 804E23BC  7F E3 FB 78 */	mr r3, r31
/* 804E23C0  4B FF FC A1 */	bl getAnmArcName__11daBdoorL1_cFv
/* 804E23C4  7F A4 EB 78 */	mr r4, r29
/* 804E23C8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E23CC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E23D0  3F C5 00 02 */	addis r30, r5, 2
/* 804E23D4  3B DE C2 F8 */	addi r30, r30, -15624
/* 804E23D8  7F C5 F3 78 */	mr r5, r30
/* 804E23DC  38 C0 00 80 */	li r6, 0x80
/* 804E23E0  4B B5 9F 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 804E23E4  7C 7C 1B 78 */	mr r28, r3
/* 804E23E8  38 60 00 1C */	li r3, 0x1c
/* 804E23EC  4B DE C8 61 */	bl __nw__FUl
/* 804E23F0  7C 7D 1B 79 */	or. r29, r3, r3
/* 804E23F4  41 82 00 20 */	beq lbl_804E2414
/* 804E23F8  3C 80 80 4E */	lis r4, __vt__12J3DFrameCtrl@ha /* 0x804E5098@ha */
/* 804E23FC  38 04 50 98 */	addi r0, r4, __vt__12J3DFrameCtrl@l /* 0x804E5098@l */
/* 804E2400  90 1D 00 00 */	stw r0, 0(r29)
/* 804E2404  38 80 00 00 */	li r4, 0
/* 804E2408  4B E4 5F F5 */	bl init__12J3DFrameCtrlFs
/* 804E240C  38 00 00 00 */	li r0, 0
/* 804E2410  90 1D 00 18 */	stw r0, 0x18(r29)
lbl_804E2414:
/* 804E2414  93 BF 05 88 */	stw r29, 0x588(r31)
/* 804E2418  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 804E241C  28 03 00 00 */	cmplwi r3, 0
/* 804E2420  41 82 00 30 */	beq lbl_804E2450
/* 804E2424  7F 84 E3 78 */	mr r4, r28
/* 804E2428  38 A0 00 01 */	li r5, 1
/* 804E242C  38 C0 00 00 */	li r6, 0
/* 804E2430  3C E0 80 4E */	lis r7, lit_3861@ha /* 0x804E4A50@ha */
/* 804E2434  C0 27 4A 50 */	lfs f1, lit_3861@l(r7)  /* 0x804E4A50@l */
/* 804E2438  38 E0 00 00 */	li r7, 0
/* 804E243C  39 00 FF FF */	li r8, -1
/* 804E2440  39 20 00 00 */	li r9, 0
/* 804E2444  4B B2 B3 99 */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 804E2448  2C 03 00 00 */	cmpwi r3, 0
/* 804E244C  40 82 00 0C */	bne lbl_804E2458
lbl_804E2450:
/* 804E2450  38 60 00 00 */	li r3, 0
/* 804E2454  48 00 00 C4 */	b lbl_804E2518
lbl_804E2458:
/* 804E2458  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 804E245C  80 83 00 04 */	lwz r4, 4(r3)
/* 804E2460  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 804E2464  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804E2468  4B B2 B5 65 */	bl entry__13mDoExt_bckAnmFP12J3DModelDataf
/* 804E246C  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 804E2470  81 83 00 00 */	lwz r12, 0(r3)
/* 804E2474  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804E2478  7D 89 03 A6 */	mtctr r12
/* 804E247C  4E 80 04 21 */	bctrl 
/* 804E2480  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 804E2484  28 03 00 00 */	cmplwi r3, 0
/* 804E2488  41 82 00 14 */	beq lbl_804E249C
/* 804E248C  81 83 00 00 */	lwz r12, 0(r3)
/* 804E2490  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804E2494  7D 89 03 A6 */	mtctr r12
/* 804E2498  4E 80 04 21 */	bctrl 
lbl_804E249C:
/* 804E249C  7F E3 FB 78 */	mr r3, r31
/* 804E24A0  48 00 00 D9 */	bl calcMtx__11daBdoorL1_cFv
/* 804E24A4  38 60 00 C0 */	li r3, 0xc0
/* 804E24A8  4B DE C7 A5 */	bl __nw__FUl
/* 804E24AC  7C 60 1B 79 */	or. r0, r3, r3
/* 804E24B0  41 82 00 0C */	beq lbl_804E24BC
/* 804E24B4  4B B9 94 BD */	bl __ct__4dBgWFv
/* 804E24B8  7C 60 1B 78 */	mr r0, r3
lbl_804E24BC:
/* 804E24BC  90 1F 05 90 */	stw r0, 0x590(r31)
/* 804E24C0  80 1F 05 90 */	lwz r0, 0x590(r31)
/* 804E24C4  28 00 00 00 */	cmplwi r0, 0
/* 804E24C8  41 82 00 44 */	beq lbl_804E250C
/* 804E24CC  7F E3 FB 78 */	mr r3, r31
/* 804E24D0  4B FF FC FD */	bl getDzb__11daBdoorL1_cFv
/* 804E24D4  7C 7D 1B 78 */	mr r29, r3
/* 804E24D8  7F E3 FB 78 */	mr r3, r31
/* 804E24DC  4B FF FC D1 */	bl getAlwaysArcName__11daBdoorL1_cFv
/* 804E24E0  7F A4 EB 78 */	mr r4, r29
/* 804E24E4  7F C5 F3 78 */	mr r5, r30
/* 804E24E8  38 C0 00 80 */	li r6, 0x80
/* 804E24EC  4B B5 9E 91 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804E24F0  7C 64 1B 78 */	mr r4, r3
/* 804E24F4  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 804E24F8  38 A0 00 01 */	li r5, 1
/* 804E24FC  38 DF 07 EC */	addi r6, r31, 0x7ec
/* 804E2500  4B B9 7A 39 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 804E2504  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E2508  41 82 00 0C */	beq lbl_804E2514
lbl_804E250C:
/* 804E250C  38 60 00 00 */	li r3, 0
/* 804E2510  48 00 00 08 */	b lbl_804E2518
lbl_804E2514:
/* 804E2514  38 60 00 01 */	li r3, 1
lbl_804E2518:
/* 804E2518  39 61 00 20 */	addi r11, r1, 0x20
/* 804E251C  4B E7 FD 09 */	bl _restgpr_28
/* 804E2520  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E2524  7C 08 03 A6 */	mtlr r0
/* 804E2528  38 21 00 20 */	addi r1, r1, 0x20
/* 804E252C  4E 80 00 20 */	blr 
