lbl_809E219C:
/* 809E219C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809E21A0  7C 08 02 A6 */	mflr r0
/* 809E21A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 809E21A8  39 61 00 40 */	addi r11, r1, 0x40
/* 809E21AC  4B 98 00 25 */	bl _savegpr_26
/* 809E21B0  7C 7B 1B 78 */	mr r27, r3
/* 809E21B4  3C 60 80 9E */	lis r3, cNullVec__6Z2Calc@ha /* 0x809E3BF0@ha */
/* 809E21B8  3B C3 3B F0 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x809E3BF0@l */
/* 809E21BC  3B 80 00 00 */	li r28, 0
/* 809E21C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E21C4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E21C8  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 809E21CC  28 00 00 00 */	cmplwi r0, 0
/* 809E21D0  41 82 02 58 */	beq lbl_809E2428
/* 809E21D4  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 809E21D8  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809E21DC  28 00 00 01 */	cmplwi r0, 1
/* 809E21E0  41 82 00 0C */	beq lbl_809E21EC
/* 809E21E4  28 00 00 02 */	cmplwi r0, 2
/* 809E21E8  40 82 00 18 */	bne lbl_809E2200
lbl_809E21EC:
/* 809E21EC  88 1B 0E 18 */	lbz r0, 0xe18(r27)
/* 809E21F0  28 00 00 00 */	cmplwi r0, 0
/* 809E21F4  40 82 00 0C */	bne lbl_809E2200
/* 809E21F8  38 00 00 00 */	li r0, 0
/* 809E21FC  98 1B 09 ED */	stb r0, 0x9ed(r27)
lbl_809E2200:
/* 809E2200  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809E2204  28 00 00 01 */	cmplwi r0, 1
/* 809E2208  40 82 00 B0 */	bne lbl_809E22B8
/* 809E220C  80 7E 01 B0 */	lwz r3, 0x1b0(r30)
/* 809E2210  80 1E 01 B4 */	lwz r0, 0x1b4(r30)
/* 809E2214  90 61 00 1C */	stw r3, 0x1c(r1)
/* 809E2218  90 01 00 20 */	stw r0, 0x20(r1)
/* 809E221C  80 1E 01 B8 */	lwz r0, 0x1b8(r30)
/* 809E2220  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E2224  7F 63 DB 78 */	mr r3, r27
/* 809E2228  38 81 00 1C */	addi r4, r1, 0x1c
/* 809E222C  4B FF FC E5 */	bl chkAction__11daNpc_grR_cFM11daNpc_grR_cFPCvPvPv_i
/* 809E2230  2C 03 00 00 */	cmpwi r3, 0
/* 809E2234  41 82 00 1C */	beq lbl_809E2250
/* 809E2238  7F 63 DB 78 */	mr r3, r27
/* 809E223C  38 80 00 00 */	li r4, 0
/* 809E2240  39 9B 0D D4 */	addi r12, r27, 0xdd4
/* 809E2244  4B 97 FE 41 */	bl __ptmf_scall
/* 809E2248  60 00 00 00 */	nop 
/* 809E224C  48 00 00 64 */	b lbl_809E22B0
lbl_809E2250:
/* 809E2250  38 00 00 00 */	li r0, 0
/* 809E2254  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809E2258  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809E225C  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 809E2260  28 03 00 01 */	cmplwi r3, 1
/* 809E2264  41 82 00 0C */	beq lbl_809E2270
/* 809E2268  28 03 00 02 */	cmplwi r3, 2
/* 809E226C  40 82 00 08 */	bne lbl_809E2274
lbl_809E2270:
/* 809E2270  38 00 00 01 */	li r0, 1
lbl_809E2274:
/* 809E2274  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809E2278  41 82 00 14 */	beq lbl_809E228C
/* 809E227C  7F A3 EB 78 */	mr r3, r29
/* 809E2280  4B 66 65 71 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 809E2284  2C 03 00 00 */	cmpwi r3, 0
/* 809E2288  41 82 00 28 */	beq lbl_809E22B0
lbl_809E228C:
/* 809E228C  80 7E 01 BC */	lwz r3, 0x1bc(r30)
/* 809E2290  80 1E 01 C0 */	lwz r0, 0x1c0(r30)
/* 809E2294  90 61 00 10 */	stw r3, 0x10(r1)
/* 809E2298  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E229C  80 1E 01 C4 */	lwz r0, 0x1c4(r30)
/* 809E22A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 809E22A4  7F 63 DB 78 */	mr r3, r27
/* 809E22A8  38 81 00 10 */	addi r4, r1, 0x10
/* 809E22AC  4B FF FC 91 */	bl setAction__11daNpc_grR_cFM11daNpc_grR_cFPCvPvPv_i
lbl_809E22B0:
/* 809E22B0  3B 80 00 01 */	li r28, 1
/* 809E22B4  48 00 00 DC */	b lbl_809E2390
lbl_809E22B8:
/* 809E22B8  80 9B 0E 14 */	lwz r4, 0xe14(r27)
/* 809E22BC  3C 04 00 01 */	addis r0, r4, 1
/* 809E22C0  28 00 FF FF */	cmplwi r0, 0xffff
/* 809E22C4  41 82 00 14 */	beq lbl_809E22D8
/* 809E22C8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809E22CC  4B 66 14 21 */	bl setPtI_Id__14dEvt_control_cFUi
/* 809E22D0  38 00 FF FF */	li r0, -1
/* 809E22D4  90 1B 0E 14 */	stw r0, 0xe14(r27)
lbl_809E22D8:
/* 809E22D8  7F A3 EB 78 */	mr r3, r29
/* 809E22DC  80 9E 01 4C */	lwz r4, 0x14c(r30)
/* 809E22E0  38 A0 00 00 */	li r5, 0
/* 809E22E4  38 C0 00 00 */	li r6, 0
/* 809E22E8  4B 66 58 35 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809E22EC  7C 7A 1B 78 */	mr r26, r3
/* 809E22F0  2C 1A FF FF */	cmpwi r26, -1
/* 809E22F4  41 82 00 5C */	beq lbl_809E2350
/* 809E22F8  93 5B 09 2C */	stw r26, 0x92c(r27)
/* 809E22FC  7F A3 EB 78 */	mr r3, r29
/* 809E2300  7F 44 D3 78 */	mr r4, r26
/* 809E2304  38 BE 01 50 */	addi r5, r30, 0x150
/* 809E2308  38 C0 00 01 */	li r6, 1
/* 809E230C  38 E0 00 00 */	li r7, 0
/* 809E2310  39 00 00 00 */	li r8, 0
/* 809E2314  4B 66 5A FD */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809E2318  7C 60 1B 78 */	mr r0, r3
/* 809E231C  7F 63 DB 78 */	mr r3, r27
/* 809E2320  7F 44 D3 78 */	mr r4, r26
/* 809E2324  1C 00 00 0C */	mulli r0, r0, 0xc
/* 809E2328  39 9E 01 54 */	addi r12, r30, 0x154
/* 809E232C  7D 8C 02 14 */	add r12, r12, r0
/* 809E2330  4B 97 FD 55 */	bl __ptmf_scall
/* 809E2334  60 00 00 00 */	nop 
/* 809E2338  2C 03 00 00 */	cmpwi r3, 0
/* 809E233C  41 82 00 10 */	beq lbl_809E234C
/* 809E2340  7F A3 EB 78 */	mr r3, r29
/* 809E2344  7F 44 D3 78 */	mr r4, r26
/* 809E2348  4B 66 5E 35 */	bl cutEnd__16dEvent_manager_cFi
lbl_809E234C:
/* 809E234C  3B 80 00 01 */	li r28, 1
lbl_809E2350:
/* 809E2350  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 809E2354  28 00 00 02 */	cmplwi r0, 2
/* 809E2358  40 82 00 38 */	bne lbl_809E2390
/* 809E235C  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 809E2360  2C 04 FF FF */	cmpwi r4, -1
/* 809E2364  41 82 00 2C */	beq lbl_809E2390
/* 809E2368  7F A3 EB 78 */	mr r3, r29
/* 809E236C  4B 66 57 0D */	bl endCheck__16dEvent_manager_cFs
/* 809E2370  2C 03 00 00 */	cmpwi r3, 0
/* 809E2374  41 82 00 1C */	beq lbl_809E2390
/* 809E2378  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 809E237C  4B 66 00 ED */	bl reset__14dEvt_control_cFv
/* 809E2380  38 00 00 00 */	li r0, 0
/* 809E2384  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 809E2388  38 00 FF FF */	li r0, -1
/* 809E238C  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
lbl_809E2390:
/* 809E2390  83 5B 09 50 */	lwz r26, 0x950(r27)
/* 809E2394  7F 63 DB 78 */	mr r3, r27
/* 809E2398  38 81 00 0C */	addi r4, r1, 0xc
/* 809E239C  38 A1 00 08 */	addi r5, r1, 8
/* 809E23A0  7F 66 DB 78 */	mr r6, r27
/* 809E23A4  38 E0 00 00 */	li r7, 0
/* 809E23A8  4B 77 13 71 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 809E23AC  2C 03 00 00 */	cmpwi r3, 0
/* 809E23B0  41 82 00 58 */	beq lbl_809E2408
/* 809E23B4  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 809E23B8  28 00 00 00 */	cmplwi r0, 0
/* 809E23BC  40 82 00 A8 */	bne lbl_809E2464
/* 809E23C0  7F 63 DB 78 */	mr r3, r27
/* 809E23C4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 809E23C8  3C A0 80 9E */	lis r5, lit_4718@ha /* 0x809E3978@ha */
/* 809E23CC  C0 25 39 78 */	lfs f1, lit_4718@l(r5)  /* 0x809E3978@l */
/* 809E23D0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809E23D4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E23D8  7D 89 03 A6 */	mtctr r12
/* 809E23DC  4E 80 04 21 */	bctrl 
/* 809E23E0  7F 63 DB 78 */	mr r3, r27
/* 809E23E4  80 81 00 08 */	lwz r4, 8(r1)
/* 809E23E8  3C A0 80 9E */	lis r5, lit_4718@ha /* 0x809E3978@ha */
/* 809E23EC  C0 25 39 78 */	lfs f1, lit_4718@l(r5)  /* 0x809E3978@l */
/* 809E23F0  38 A0 00 00 */	li r5, 0
/* 809E23F4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 809E23F8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809E23FC  7D 89 03 A6 */	mtctr r12
/* 809E2400  4E 80 04 21 */	bctrl 
/* 809E2404  48 00 00 60 */	b lbl_809E2464
lbl_809E2408:
/* 809E2408  2C 1A 00 00 */	cmpwi r26, 0
/* 809E240C  41 82 00 58 */	beq lbl_809E2464
/* 809E2410  88 1B 09 EB */	lbz r0, 0x9eb(r27)
/* 809E2414  28 00 00 00 */	cmplwi r0, 0
/* 809E2418  40 82 00 4C */	bne lbl_809E2464
/* 809E241C  7F 63 DB 78 */	mr r3, r27
/* 809E2420  48 00 03 0D */	bl setExpressionTalkAfter__11daNpc_grR_cFv
/* 809E2424  48 00 00 40 */	b lbl_809E2464
lbl_809E2428:
/* 809E2428  38 00 00 00 */	li r0, 0
/* 809E242C  90 1B 09 50 */	stw r0, 0x950(r27)
/* 809E2430  80 1B 09 2C */	lwz r0, 0x92c(r27)
/* 809E2434  2C 00 FF FF */	cmpwi r0, -1
/* 809E2438  41 82 00 2C */	beq lbl_809E2464
/* 809E243C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809E2440  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809E2444  80 64 00 00 */	lwz r3, 0(r4)
/* 809E2448  80 04 00 04 */	lwz r0, 4(r4)
/* 809E244C  90 7B 0D D4 */	stw r3, 0xdd4(r27)
/* 809E2450  90 1B 0D D8 */	stw r0, 0xdd8(r27)
/* 809E2454  80 04 00 08 */	lwz r0, 8(r4)
/* 809E2458  90 1B 0D DC */	stw r0, 0xddc(r27)
/* 809E245C  38 00 FF FF */	li r0, -1
/* 809E2460  90 1B 09 2C */	stw r0, 0x92c(r27)
lbl_809E2464:
/* 809E2464  7F 83 E3 78 */	mr r3, r28
/* 809E2468  39 61 00 40 */	addi r11, r1, 0x40
/* 809E246C  4B 97 FD B1 */	bl _restgpr_26
/* 809E2470  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809E2474  7C 08 03 A6 */	mtlr r0
/* 809E2478  38 21 00 40 */	addi r1, r1, 0x40
/* 809E247C  4E 80 00 20 */	blr 
