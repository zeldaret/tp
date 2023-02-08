lbl_809B228C:
/* 809B228C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B2290  7C 08 02 A6 */	mflr r0
/* 809B2294  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B2298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B229C  93 C1 00 08 */	stw r30, 8(r1)
/* 809B22A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 809B22A4  7C 9F 23 78 */	mr r31, r4
/* 809B22A8  41 82 01 6C */	beq lbl_809B2414
/* 809B22AC  3C 60 80 9C */	lis r3, __vt__13daNpc_Fairy_c@ha /* 0x809BA340@ha */
/* 809B22B0  38 03 A3 40 */	addi r0, r3, __vt__13daNpc_Fairy_c@l /* 0x809BA340@l */
/* 809B22B4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 809B22B8  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809B22BC  28 00 00 00 */	cmplwi r0, 0
/* 809B22C0  41 82 00 0C */	beq lbl_809B22CC
/* 809B22C4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 809B22C8  4B 65 F0 49 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809B22CC:
/* 809B22CC  7F C3 F3 78 */	mr r3, r30
/* 809B22D0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 809B22D4  54 00 10 3A */	slwi r0, r0, 2
/* 809B22D8  3C 80 80 9C */	lis r4, l_loadResPtrnList@ha /* 0x809B9604@ha */
/* 809B22DC  38 84 96 04 */	addi r4, r4, l_loadResPtrnList@l /* 0x809B9604@l */
/* 809B22E0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809B22E4  3C A0 80 9C */	lis r5, l_resNameList@ha /* 0x809B95F8@ha */
/* 809B22E8  38 A5 95 F8 */	addi r5, r5, l_resNameList@l /* 0x809B95F8@l */
/* 809B22EC  4B 79 61 C1 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 809B22F0  34 1E 0F F8 */	addic. r0, r30, 0xff8
/* 809B22F4  41 82 00 7C */	beq lbl_809B2370
/* 809B22F8  80 7E 0F F8 */	lwz r3, 0xff8(r30)
/* 809B22FC  28 03 00 00 */	cmplwi r3, 0
/* 809B2300  41 82 00 24 */	beq lbl_809B2324
/* 809B2304  41 82 00 18 */	beq lbl_809B231C
/* 809B2308  38 80 00 01 */	li r4, 1
/* 809B230C  81 83 00 00 */	lwz r12, 0(r3)
/* 809B2310  81 8C 00 08 */	lwz r12, 8(r12)
/* 809B2314  7D 89 03 A6 */	mtctr r12
/* 809B2318  4E 80 04 21 */	bctrl 
lbl_809B231C:
/* 809B231C  38 00 00 00 */	li r0, 0
/* 809B2320  90 1E 0F F8 */	stw r0, 0xff8(r30)
lbl_809B2324:
/* 809B2324  38 7E 10 38 */	addi r3, r30, 0x1038
/* 809B2328  38 80 FF FF */	li r4, -1
/* 809B232C  4B 90 E0 F5 */	bl __dt__10Z2CreatureFv
/* 809B2330  34 1E 10 1C */	addic. r0, r30, 0x101c
/* 809B2334  41 82 00 1C */	beq lbl_809B2350
/* 809B2338  28 00 00 00 */	cmplwi r0, 0
/* 809B233C  41 82 00 14 */	beq lbl_809B2350
/* 809B2340  41 82 00 10 */	beq lbl_809B2350
/* 809B2344  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BA334@ha */
/* 809B2348  38 03 A3 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BA334@l */
/* 809B234C  90 1E 10 1C */	stw r0, 0x101c(r30)
lbl_809B2350:
/* 809B2350  34 1E 10 04 */	addic. r0, r30, 0x1004
/* 809B2354  41 82 00 1C */	beq lbl_809B2370
/* 809B2358  28 00 00 00 */	cmplwi r0, 0
/* 809B235C  41 82 00 14 */	beq lbl_809B2370
/* 809B2360  41 82 00 10 */	beq lbl_809B2370
/* 809B2364  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BA334@ha */
/* 809B2368  38 03 A3 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BA334@l */
/* 809B236C  90 1E 10 04 */	stw r0, 0x1004(r30)
lbl_809B2370:
/* 809B2370  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 809B2374  41 82 00 84 */	beq lbl_809B23F8
/* 809B2378  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 809B237C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 809B2380  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 809B2384  38 03 00 2C */	addi r0, r3, 0x2c
/* 809B2388  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 809B238C  38 03 00 84 */	addi r0, r3, 0x84
/* 809B2390  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 809B2394  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 809B2398  41 82 00 54 */	beq lbl_809B23EC
/* 809B239C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 809B23A0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 809B23A4  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 809B23A8  38 03 00 58 */	addi r0, r3, 0x58
/* 809B23AC  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 809B23B0  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 809B23B4  41 82 00 10 */	beq lbl_809B23C4
/* 809B23B8  3C 60 80 9C */	lis r3, __vt__8cM3dGCyl@ha /* 0x809BA328@ha */
/* 809B23BC  38 03 A3 28 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x809BA328@l */
/* 809B23C0  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_809B23C4:
/* 809B23C4  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 809B23C8  41 82 00 24 */	beq lbl_809B23EC
/* 809B23CC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 809B23D0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 809B23D4  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 809B23D8  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 809B23DC  41 82 00 10 */	beq lbl_809B23EC
/* 809B23E0  3C 60 80 9C */	lis r3, __vt__8cM3dGAab@ha /* 0x809BA31C@ha */
/* 809B23E4  38 03 A3 1C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809BA31C@l */
/* 809B23E8  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_809B23EC:
/* 809B23EC  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 809B23F0  38 80 00 00 */	li r4, 0
/* 809B23F4  4B 6D 1C F1 */	bl __dt__12dCcD_GObjInfFv
lbl_809B23F8:
/* 809B23F8  7F C3 F3 78 */	mr r3, r30
/* 809B23FC  38 80 00 00 */	li r4, 0
/* 809B2400  48 00 5B D5 */	bl __dt__8daNpcT_cFv
/* 809B2404  7F E0 07 35 */	extsh. r0, r31
/* 809B2408  40 81 00 0C */	ble lbl_809B2414
/* 809B240C  7F C3 F3 78 */	mr r3, r30
/* 809B2410  4B 91 C9 2D */	bl __dl__FPv
lbl_809B2414:
/* 809B2414  7F C3 F3 78 */	mr r3, r30
/* 809B2418  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B241C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B2420  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B2424  7C 08 03 A6 */	mtlr r0
/* 809B2428  38 21 00 10 */	addi r1, r1, 0x10
/* 809B242C  4E 80 00 20 */	blr 
