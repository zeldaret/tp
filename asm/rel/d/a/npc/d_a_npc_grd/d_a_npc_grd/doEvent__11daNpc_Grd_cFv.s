lbl_809D21B8:
/* 809D21B8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809D21BC  7C 08 02 A6 */	mflr r0
/* 809D21C0  90 01 00 44 */	stw r0, 0x44(r1)
/* 809D21C4  39 61 00 40 */	addi r11, r1, 0x40
/* 809D21C8  4B 99 00 09 */	bl _savegpr_26
/* 809D21CC  7C 7C 1B 78 */	mr r28, r3
/* 809D21D0  3C 60 80 9D */	lis r3, cNullVec__6Z2Calc@ha /* 0x809D3C14@ha */
/* 809D21D4  3B E3 3C 14 */	addi r31, r3, cNullVec__6Z2Calc@l /* 0x809D3C14@l */
/* 809D21D8  3B A0 00 00 */	li r29, 0
/* 809D21DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D21E0  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D21E4  88 1B 4F AD */	lbz r0, 0x4fad(r27)
/* 809D21E8  28 00 00 00 */	cmplwi r0, 0
/* 809D21EC  41 82 02 2C */	beq lbl_809D2418
/* 809D21F0  3B DB 4F F8 */	addi r30, r27, 0x4ff8
/* 809D21F4  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 809D21F8  28 00 00 01 */	cmplwi r0, 1
/* 809D21FC  41 82 00 0C */	beq lbl_809D2208
/* 809D2200  28 00 00 02 */	cmplwi r0, 2
/* 809D2204  40 82 00 0C */	bne lbl_809D2210
lbl_809D2208:
/* 809D2208  38 00 00 00 */	li r0, 0
/* 809D220C  98 1C 09 ED */	stb r0, 0x9ed(r28)
lbl_809D2210:
/* 809D2210  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 809D2214  28 00 00 01 */	cmplwi r0, 1
/* 809D2218  40 82 00 B0 */	bne lbl_809D22C8
/* 809D221C  80 7F 01 48 */	lwz r3, 0x148(r31)
/* 809D2220  80 1F 01 4C */	lwz r0, 0x14c(r31)
/* 809D2224  90 61 00 1C */	stw r3, 0x1c(r1)
/* 809D2228  90 01 00 20 */	stw r0, 0x20(r1)
/* 809D222C  80 1F 01 50 */	lwz r0, 0x150(r31)
/* 809D2230  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D2234  7F 83 E3 78 */	mr r3, r28
/* 809D2238  38 81 00 1C */	addi r4, r1, 0x1c
/* 809D223C  4B FF FD 15 */	bl chkAction__11daNpc_Grd_cFM11daNpc_Grd_cFPCvPvPv_i
/* 809D2240  2C 03 00 00 */	cmpwi r3, 0
/* 809D2244  41 82 00 1C */	beq lbl_809D2260
/* 809D2248  7F 83 E3 78 */	mr r3, r28
/* 809D224C  38 80 00 00 */	li r4, 0
/* 809D2250  39 9C 0D DC */	addi r12, r28, 0xddc
/* 809D2254  4B 98 FE 31 */	bl __ptmf_scall
/* 809D2258  60 00 00 00 */	nop 
/* 809D225C  48 00 00 64 */	b lbl_809D22C0
lbl_809D2260:
/* 809D2260  38 00 00 00 */	li r0, 0
/* 809D2264  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D2268  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D226C  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 809D2270  28 03 00 01 */	cmplwi r3, 1
/* 809D2274  41 82 00 0C */	beq lbl_809D2280
/* 809D2278  28 03 00 02 */	cmplwi r3, 2
/* 809D227C  40 82 00 08 */	bne lbl_809D2284
lbl_809D2280:
/* 809D2280  38 00 00 01 */	li r0, 1
lbl_809D2284:
/* 809D2284  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 809D2288  41 82 00 14 */	beq lbl_809D229C
/* 809D228C  7F C3 F3 78 */	mr r3, r30
/* 809D2290  4B 67 65 61 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 809D2294  2C 03 00 00 */	cmpwi r3, 0
/* 809D2298  41 82 00 28 */	beq lbl_809D22C0
lbl_809D229C:
/* 809D229C  80 7F 01 54 */	lwz r3, 0x154(r31)
/* 809D22A0  80 1F 01 58 */	lwz r0, 0x158(r31)
/* 809D22A4  90 61 00 10 */	stw r3, 0x10(r1)
/* 809D22A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D22AC  80 1F 01 5C */	lwz r0, 0x15c(r31)
/* 809D22B0  90 01 00 18 */	stw r0, 0x18(r1)
/* 809D22B4  7F 83 E3 78 */	mr r3, r28
/* 809D22B8  38 81 00 10 */	addi r4, r1, 0x10
/* 809D22BC  4B FF FC C1 */	bl setAction__11daNpc_Grd_cFM11daNpc_Grd_cFPCvPvPv_i
lbl_809D22C0:
/* 809D22C0  3B A0 00 01 */	li r29, 1
/* 809D22C4  48 00 00 BC */	b lbl_809D2380
lbl_809D22C8:
/* 809D22C8  7F C3 F3 78 */	mr r3, r30
/* 809D22CC  80 9F 00 F4 */	lwz r4, 0xf4(r31)
/* 809D22D0  38 A0 00 00 */	li r5, 0
/* 809D22D4  38 C0 00 00 */	li r6, 0
/* 809D22D8  4B 67 58 45 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 809D22DC  7C 7A 1B 78 */	mr r26, r3
/* 809D22E0  2C 1A FF FF */	cmpwi r26, -1
/* 809D22E4  41 82 00 5C */	beq lbl_809D2340
/* 809D22E8  93 5C 09 2C */	stw r26, 0x92c(r28)
/* 809D22EC  7F C3 F3 78 */	mr r3, r30
/* 809D22F0  7F 44 D3 78 */	mr r4, r26
/* 809D22F4  38 BF 00 F8 */	addi r5, r31, 0xf8
/* 809D22F8  38 C0 00 02 */	li r6, 2
/* 809D22FC  38 E0 00 00 */	li r7, 0
/* 809D2300  39 00 00 00 */	li r8, 0
/* 809D2304  4B 67 5B 0D */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 809D2308  7C 60 1B 78 */	mr r0, r3
/* 809D230C  7F 83 E3 78 */	mr r3, r28
/* 809D2310  7F 44 D3 78 */	mr r4, r26
/* 809D2314  1C 00 00 0C */	mulli r0, r0, 0xc
/* 809D2318  39 9F 01 0C */	addi r12, r31, 0x10c
/* 809D231C  7D 8C 02 14 */	add r12, r12, r0
/* 809D2320  4B 98 FD 65 */	bl __ptmf_scall
/* 809D2324  60 00 00 00 */	nop 
/* 809D2328  2C 03 00 00 */	cmpwi r3, 0
/* 809D232C  41 82 00 10 */	beq lbl_809D233C
/* 809D2330  7F C3 F3 78 */	mr r3, r30
/* 809D2334  7F 44 D3 78 */	mr r4, r26
/* 809D2338  4B 67 5E 45 */	bl cutEnd__16dEvent_manager_cFi
lbl_809D233C:
/* 809D233C  3B A0 00 01 */	li r29, 1
lbl_809D2340:
/* 809D2340  A0 1C 00 F8 */	lhz r0, 0xf8(r28)
/* 809D2344  28 00 00 02 */	cmplwi r0, 2
/* 809D2348  40 82 00 38 */	bne lbl_809D2380
/* 809D234C  A8 9C 09 D4 */	lha r4, 0x9d4(r28)
/* 809D2350  2C 04 FF FF */	cmpwi r4, -1
/* 809D2354  41 82 00 2C */	beq lbl_809D2380
/* 809D2358  7F C3 F3 78 */	mr r3, r30
/* 809D235C  4B 67 57 1D */	bl endCheck__16dEvent_manager_cFs
/* 809D2360  2C 03 00 00 */	cmpwi r3, 0
/* 809D2364  41 82 00 1C */	beq lbl_809D2380
/* 809D2368  38 7B 4E C8 */	addi r3, r27, 0x4ec8
/* 809D236C  4B 67 00 FD */	bl reset__14dEvt_control_cFv
/* 809D2370  38 00 00 00 */	li r0, 0
/* 809D2374  B0 1C 09 E6 */	sth r0, 0x9e6(r28)
/* 809D2378  38 00 FF FF */	li r0, -1
/* 809D237C  B0 1C 09 D4 */	sth r0, 0x9d4(r28)
lbl_809D2380:
/* 809D2380  83 5C 09 50 */	lwz r26, 0x950(r28)
/* 809D2384  7F 83 E3 78 */	mr r3, r28
/* 809D2388  38 81 00 0C */	addi r4, r1, 0xc
/* 809D238C  38 A1 00 08 */	addi r5, r1, 8
/* 809D2390  7F 86 E3 78 */	mr r6, r28
/* 809D2394  38 E0 00 00 */	li r7, 0
/* 809D2398  4B 78 13 81 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 809D239C  2C 03 00 00 */	cmpwi r3, 0
/* 809D23A0  41 82 00 58 */	beq lbl_809D23F8
/* 809D23A4  88 1C 09 EB */	lbz r0, 0x9eb(r28)
/* 809D23A8  28 00 00 00 */	cmplwi r0, 0
/* 809D23AC  40 82 00 A8 */	bne lbl_809D2454
/* 809D23B0  7F 83 E3 78 */	mr r3, r28
/* 809D23B4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 809D23B8  3C A0 80 9D */	lis r5, lit_4710@ha /* 0x809D3A94@ha */
/* 809D23BC  C0 25 3A 94 */	lfs f1, lit_4710@l(r5)  /* 0x809D3A94@l */
/* 809D23C0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809D23C4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809D23C8  7D 89 03 A6 */	mtctr r12
/* 809D23CC  4E 80 04 21 */	bctrl 
/* 809D23D0  7F 83 E3 78 */	mr r3, r28
/* 809D23D4  80 81 00 08 */	lwz r4, 8(r1)
/* 809D23D8  3C A0 80 9D */	lis r5, lit_4710@ha /* 0x809D3A94@ha */
/* 809D23DC  C0 25 3A 94 */	lfs f1, lit_4710@l(r5)  /* 0x809D3A94@l */
/* 809D23E0  38 A0 00 00 */	li r5, 0
/* 809D23E4  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 809D23E8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809D23EC  7D 89 03 A6 */	mtctr r12
/* 809D23F0  4E 80 04 21 */	bctrl 
/* 809D23F4  48 00 00 60 */	b lbl_809D2454
lbl_809D23F8:
/* 809D23F8  2C 1A 00 00 */	cmpwi r26, 0
/* 809D23FC  41 82 00 58 */	beq lbl_809D2454
/* 809D2400  88 1C 09 EB */	lbz r0, 0x9eb(r28)
/* 809D2404  28 00 00 00 */	cmplwi r0, 0
/* 809D2408  40 82 00 4C */	bne lbl_809D2454
/* 809D240C  7F 83 E3 78 */	mr r3, r28
/* 809D2410  48 00 03 21 */	bl setExpressionTalkAfter__11daNpc_Grd_cFv
/* 809D2414  48 00 00 40 */	b lbl_809D2454
lbl_809D2418:
/* 809D2418  38 00 00 00 */	li r0, 0
/* 809D241C  90 1C 09 50 */	stw r0, 0x950(r28)
/* 809D2420  80 1C 09 2C */	lwz r0, 0x92c(r28)
/* 809D2424  2C 00 FF FF */	cmpwi r0, -1
/* 809D2428  41 82 00 2C */	beq lbl_809D2454
/* 809D242C  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 809D2430  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 809D2434  80 64 00 00 */	lwz r3, 0(r4)
/* 809D2438  80 04 00 04 */	lwz r0, 4(r4)
/* 809D243C  90 7C 0D DC */	stw r3, 0xddc(r28)
/* 809D2440  90 1C 0D E0 */	stw r0, 0xde0(r28)
/* 809D2444  80 04 00 08 */	lwz r0, 8(r4)
/* 809D2448  90 1C 0D E4 */	stw r0, 0xde4(r28)
/* 809D244C  38 00 FF FF */	li r0, -1
/* 809D2450  90 1C 09 2C */	stw r0, 0x92c(r28)
lbl_809D2454:
/* 809D2454  7F A3 EB 78 */	mr r3, r29
/* 809D2458  39 61 00 40 */	addi r11, r1, 0x40
/* 809D245C  4B 98 FD C1 */	bl _restgpr_26
/* 809D2460  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809D2464  7C 08 03 A6 */	mtlr r0
/* 809D2468  38 21 00 40 */	addi r1, r1, 0x40
/* 809D246C  4E 80 00 20 */	blr 
