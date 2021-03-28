lbl_80AC2368:
/* 80AC2368  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AC236C  7C 08 02 A6 */	mflr r0
/* 80AC2370  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AC2374  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC2378  4B 89 FE 5C */	b _savegpr_27
/* 80AC237C  7C 7D 1B 78 */	mr r29, r3
/* 80AC2380  7C 9B 23 78 */	mr r27, r4
/* 80AC2384  3B E0 00 00 */	li r31, 0
/* 80AC2388  3B C0 FF FF */	li r30, -1
/* 80AC238C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AC2390  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AC2394  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80AC2398  7F 83 E3 78 */	mr r3, r28
/* 80AC239C  3C A0 80 AC */	lis r5, struct_80AC4654+0x0@ha
/* 80AC23A0  38 A5 46 54 */	addi r5, r5, struct_80AC4654+0x0@l
/* 80AC23A4  38 A5 00 42 */	addi r5, r5, 0x42
/* 80AC23A8  38 C0 00 03 */	li r6, 3
/* 80AC23AC  4B 58 5D 40 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AC23B0  28 03 00 00 */	cmplwi r3, 0
/* 80AC23B4  41 82 00 08 */	beq lbl_80AC23BC
/* 80AC23B8  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80AC23BC:
/* 80AC23BC  7F 83 E3 78 */	mr r3, r28
/* 80AC23C0  7F 64 DB 78 */	mr r4, r27
/* 80AC23C4  4B 58 59 88 */	b getIsAddvance__16dEvent_manager_cFi
/* 80AC23C8  2C 03 00 00 */	cmpwi r3, 0
/* 80AC23CC  41 82 00 F0 */	beq lbl_80AC24BC
/* 80AC23D0  2C 1E 00 01 */	cmpwi r30, 1
/* 80AC23D4  41 82 00 78 */	beq lbl_80AC244C
/* 80AC23D8  40 80 00 E4 */	bge lbl_80AC24BC
/* 80AC23DC  2C 1E 00 00 */	cmpwi r30, 0
/* 80AC23E0  40 80 00 08 */	bge lbl_80AC23E8
/* 80AC23E4  48 00 00 D8 */	b lbl_80AC24BC
lbl_80AC23E8:
/* 80AC23E8  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80AC23EC  2C 00 00 00 */	cmpwi r0, 0
/* 80AC23F0  41 82 00 28 */	beq lbl_80AC2418
/* 80AC23F4  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80AC23F8  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80AC23FC  4B 68 34 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2400  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80AC2404  38 00 00 00 */	li r0, 0
/* 80AC2408  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80AC240C  3C 60 80 AC */	lis r3, lit_4231@ha
/* 80AC2410  C0 03 45 AC */	lfs f0, lit_4231@l(r3)
/* 80AC2414  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80AC2418:
/* 80AC2418  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80AC241C  2C 00 00 09 */	cmpwi r0, 9
/* 80AC2420  41 82 00 9C */	beq lbl_80AC24BC
/* 80AC2424  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80AC2428  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80AC242C  4B 68 34 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2430  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80AC2434  38 00 00 09 */	li r0, 9
/* 80AC2438  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80AC243C  3C 60 80 AC */	lis r3, lit_4231@ha
/* 80AC2440  C0 03 45 AC */	lfs f0, lit_4231@l(r3)
/* 80AC2444  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80AC2448  48 00 00 74 */	b lbl_80AC24BC
lbl_80AC244C:
/* 80AC244C  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80AC2450  2C 00 00 00 */	cmpwi r0, 0
/* 80AC2454  41 82 00 28 */	beq lbl_80AC247C
/* 80AC2458  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80AC245C  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80AC2460  4B 68 34 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2464  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80AC2468  38 00 00 00 */	li r0, 0
/* 80AC246C  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80AC2470  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC2474  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC2478  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80AC247C:
/* 80AC247C  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80AC2480  2C 00 00 0A */	cmpwi r0, 0xa
/* 80AC2484  41 82 00 28 */	beq lbl_80AC24AC
/* 80AC2488  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80AC248C  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80AC2490  4B 68 34 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC2494  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80AC2498  38 00 00 0A */	li r0, 0xa
/* 80AC249C  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80AC24A0  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC24A4  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC24A8  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80AC24AC:
/* 80AC24AC  A8 7D 04 B6 */	lha r3, 0x4b6(r29)
/* 80AC24B0  3C 63 00 01 */	addis r3, r3, 1
/* 80AC24B4  38 03 80 00 */	addi r0, r3, -32768
/* 80AC24B8  B0 1D 0D C8 */	sth r0, 0xdc8(r29)
lbl_80AC24BC:
/* 80AC24BC  2C 1E 00 01 */	cmpwi r30, 1
/* 80AC24C0  41 82 00 54 */	beq lbl_80AC2514
/* 80AC24C4  40 80 00 B8 */	bge lbl_80AC257C
/* 80AC24C8  2C 1E 00 00 */	cmpwi r30, 0
/* 80AC24CC  40 80 00 08 */	bge lbl_80AC24D4
/* 80AC24D0  48 00 00 AC */	b lbl_80AC257C
lbl_80AC24D4:
/* 80AC24D4  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80AC24D8  2C 00 00 00 */	cmpwi r0, 0
/* 80AC24DC  41 82 00 28 */	beq lbl_80AC2504
/* 80AC24E0  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80AC24E4  4B 68 32 18 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AC24E8  38 00 00 00 */	li r0, 0
/* 80AC24EC  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80AC24F0  3C 60 80 AC */	lis r3, lit_4231@ha
/* 80AC24F4  C0 03 45 AC */	lfs f0, lit_4231@l(r3)
/* 80AC24F8  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80AC24FC  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80AC2500  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80AC2504:
/* 80AC2504  38 00 00 00 */	li r0, 0
/* 80AC2508  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80AC250C  3B E0 00 01 */	li r31, 1
/* 80AC2510  48 00 00 6C */	b lbl_80AC257C
lbl_80AC2514:
/* 80AC2514  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80AC2518  2C 00 00 00 */	cmpwi r0, 0
/* 80AC251C  41 82 00 28 */	beq lbl_80AC2544
/* 80AC2520  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80AC2524  4B 68 31 D8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80AC2528  38 00 00 00 */	li r0, 0
/* 80AC252C  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80AC2530  3C 60 80 AC */	lis r3, lit_4231@ha
/* 80AC2534  C0 03 45 AC */	lfs f0, lit_4231@l(r3)
/* 80AC2538  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80AC253C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80AC2540  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80AC2544:
/* 80AC2544  38 00 00 00 */	li r0, 0
/* 80AC2548  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80AC254C  A8 9D 0D C8 */	lha r4, 0xdc8(r29)
/* 80AC2550  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80AC2554  7C 04 00 00 */	cmpw r4, r0
/* 80AC2558  40 82 00 0C */	bne lbl_80AC2564
/* 80AC255C  3B E0 00 01 */	li r31, 1
/* 80AC2560  48 00 00 1C */	b lbl_80AC257C
lbl_80AC2564:
/* 80AC2564  7F A3 EB 78 */	mr r3, r29
/* 80AC2568  38 A0 FF FF */	li r5, -1
/* 80AC256C  38 C0 FF FF */	li r6, -1
/* 80AC2570  38 E0 00 14 */	li r7, 0x14
/* 80AC2574  39 00 00 00 */	li r8, 0
/* 80AC2578  4B 68 90 D0 */	b step__8daNpcT_cFsiiii
lbl_80AC257C:
/* 80AC257C  7F E3 FB 78 */	mr r3, r31
/* 80AC2580  39 61 00 20 */	addi r11, r1, 0x20
/* 80AC2584  4B 89 FC 9C */	b _restgpr_27
/* 80AC2588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AC258C  7C 08 03 A6 */	mtlr r0
/* 80AC2590  38 21 00 20 */	addi r1, r1, 0x20
/* 80AC2594  4E 80 00 20 */	blr 
