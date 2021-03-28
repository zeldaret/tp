lbl_80AC216C:
/* 80AC216C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AC2170  7C 08 02 A6 */	mflr r0
/* 80AC2174  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AC2178  39 61 00 40 */	addi r11, r1, 0x40
/* 80AC217C  4B 8A 00 50 */	b _savegpr_25
/* 80AC2180  7C 7D 1B 78 */	mr r29, r3
/* 80AC2184  7C 99 23 78 */	mr r25, r4
/* 80AC2188  3C 60 80 AC */	lis r3, m__18daNpc_Saru_Param_c@ha
/* 80AC218C  3B E3 44 F8 */	addi r31, r3, m__18daNpc_Saru_Param_c@l
/* 80AC2190  3B C0 00 00 */	li r30, 0
/* 80AC2194  3B 60 FF FF */	li r27, -1
/* 80AC2198  3B 40 00 00 */	li r26, 0
/* 80AC219C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AC21A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AC21A4  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80AC21A8  7F 83 E3 78 */	mr r3, r28
/* 80AC21AC  3C A0 80 AC */	lis r5, struct_80AC4654+0x0@ha
/* 80AC21B0  38 A5 46 54 */	addi r5, r5, struct_80AC4654+0x0@l
/* 80AC21B4  38 A5 00 42 */	addi r5, r5, 0x42
/* 80AC21B8  38 C0 00 03 */	li r6, 3
/* 80AC21BC  4B 58 5F 30 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AC21C0  28 03 00 00 */	cmplwi r3, 0
/* 80AC21C4  41 82 00 08 */	beq lbl_80AC21CC
/* 80AC21C8  83 63 00 00 */	lwz r27, 0(r3)
lbl_80AC21CC:
/* 80AC21CC  7F 83 E3 78 */	mr r3, r28
/* 80AC21D0  7F 24 CB 78 */	mr r4, r25
/* 80AC21D4  3C A0 80 AC */	lis r5, struct_80AC4654+0x0@ha
/* 80AC21D8  38 A5 46 54 */	addi r5, r5, struct_80AC4654+0x0@l
/* 80AC21DC  38 A5 00 46 */	addi r5, r5, 0x46
/* 80AC21E0  38 C0 00 03 */	li r6, 3
/* 80AC21E4  4B 58 5F 08 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80AC21E8  28 03 00 00 */	cmplwi r3, 0
/* 80AC21EC  41 82 00 08 */	beq lbl_80AC21F4
/* 80AC21F0  83 43 00 00 */	lwz r26, 0(r3)
lbl_80AC21F4:
/* 80AC21F4  7F 83 E3 78 */	mr r3, r28
/* 80AC21F8  7F 24 CB 78 */	mr r4, r25
/* 80AC21FC  4B 58 5B 50 */	b getIsAddvance__16dEvent_manager_cFi
/* 80AC2200  2C 03 00 00 */	cmpwi r3, 0
/* 80AC2204  41 82 00 68 */	beq lbl_80AC226C
/* 80AC2208  2C 1B 00 01 */	cmpwi r27, 1
/* 80AC220C  41 82 00 18 */	beq lbl_80AC2224
/* 80AC2210  40 80 00 08 */	bge lbl_80AC2218
/* 80AC2214  48 00 00 58 */	b lbl_80AC226C
lbl_80AC2218:
/* 80AC2218  2C 1B 00 03 */	cmpwi r27, 3
/* 80AC221C  40 80 00 50 */	bge lbl_80AC226C
/* 80AC2220  48 00 00 38 */	b lbl_80AC2258
lbl_80AC2224:
/* 80AC2224  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80AC2228  2C 00 00 07 */	cmpwi r0, 7
/* 80AC222C  41 82 00 24 */	beq lbl_80AC2250
/* 80AC2230  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80AC2234  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80AC2238  4B 68 36 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC223C  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80AC2240  38 00 00 07 */	li r0, 7
/* 80AC2244  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80AC2248  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 80AC224C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80AC2250:
/* 80AC2250  93 5D 0D C4 */	stw r26, 0xdc4(r29)
/* 80AC2254  48 00 00 18 */	b lbl_80AC226C
lbl_80AC2258:
/* 80AC2258  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80AC225C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80AC2260  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80AC2264  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80AC2268  D0 1D 05 00 */	stfs f0, 0x500(r29)
lbl_80AC226C:
/* 80AC226C  2C 1B 00 01 */	cmpwi r27, 1
/* 80AC2270  41 82 00 28 */	beq lbl_80AC2298
/* 80AC2274  40 80 00 10 */	bge lbl_80AC2284
/* 80AC2278  2C 1B 00 00 */	cmpwi r27, 0
/* 80AC227C  40 80 00 14 */	bge lbl_80AC2290
/* 80AC2280  48 00 00 CC */	b lbl_80AC234C
lbl_80AC2284:
/* 80AC2284  2C 1B 00 03 */	cmpwi r27, 3
/* 80AC2288  40 80 00 C4 */	bge lbl_80AC234C
/* 80AC228C  48 00 00 BC */	b lbl_80AC2348
lbl_80AC2290:
/* 80AC2290  3B C0 00 01 */	li r30, 1
/* 80AC2294  48 00 00 B8 */	b lbl_80AC234C
lbl_80AC2298:
/* 80AC2298  38 7D 0D C4 */	addi r3, r29, 0xdc4
/* 80AC229C  48 00 20 29 */	bl func_80AC42C4
/* 80AC22A0  2C 03 00 00 */	cmpwi r3, 0
/* 80AC22A4  40 82 00 08 */	bne lbl_80AC22AC
/* 80AC22A8  3B C0 00 01 */	li r30, 1
lbl_80AC22AC:
/* 80AC22AC  80 7D 0F 94 */	lwz r3, 0xf94(r29)
/* 80AC22B0  80 83 00 08 */	lwz r4, 8(r3)
/* 80AC22B4  80 64 00 14 */	lwz r3, 0x14(r4)
/* 80AC22B8  80 04 00 18 */	lwz r0, 0x18(r4)
/* 80AC22BC  90 61 00 08 */	stw r3, 8(r1)
/* 80AC22C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AC22C4  80 04 00 1C */	lwz r0, 0x1c(r4)
/* 80AC22C8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AC22CC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80AC22D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AC22D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80AC22D8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AC22DC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80AC22E0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AC22E4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80AC22E8  38 81 00 14 */	addi r4, r1, 0x14
/* 80AC22EC  4B 88 50 B0 */	b PSVECSquareDistance
/* 80AC22F0  C0 1F 01 50 */	lfs f0, 0x150(r31)
/* 80AC22F4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80AC22F8  40 80 00 48 */	bge lbl_80AC2340
/* 80AC22FC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80AC2300  38 81 00 14 */	addi r4, r1, 0x14
/* 80AC2304  4B 7A E9 00 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80AC2308  7C 64 1B 78 */	mr r4, r3
/* 80AC230C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80AC2310  38 A0 00 04 */	li r5, 4
/* 80AC2314  38 C0 08 00 */	li r6, 0x800
/* 80AC2318  4B 7A E2 F0 */	b cLib_addCalcAngleS2__FPssss
/* 80AC231C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80AC2320  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80AC2324  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80AC2328  B0 1D 0D 7A */	sth r0, 0xd7a(r29)
/* 80AC232C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80AC2330  C0 3F 01 54 */	lfs f1, 0x154(r31)
/* 80AC2334  C0 5F 01 58 */	lfs f2, 0x158(r31)
/* 80AC2338  4B 7A E4 08 */	b cLib_chaseF__FPfff
/* 80AC233C  48 00 00 10 */	b lbl_80AC234C
lbl_80AC2340:
/* 80AC2340  3B C0 00 01 */	li r30, 1
/* 80AC2344  48 00 00 08 */	b lbl_80AC234C
lbl_80AC2348:
/* 80AC2348  3B C0 00 01 */	li r30, 1
lbl_80AC234C:
/* 80AC234C  7F C3 F3 78 */	mr r3, r30
/* 80AC2350  39 61 00 40 */	addi r11, r1, 0x40
/* 80AC2354  4B 89 FE C4 */	b _restgpr_25
/* 80AC2358  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AC235C  7C 08 03 A6 */	mtlr r0
/* 80AC2360  38 21 00 40 */	addi r1, r1, 0x40
/* 80AC2364  4E 80 00 20 */	blr 
