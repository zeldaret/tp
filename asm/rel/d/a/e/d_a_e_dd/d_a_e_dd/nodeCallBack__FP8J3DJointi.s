lbl_806A2378:
/* 806A2378  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806A237C  7C 08 02 A6 */	mflr r0
/* 806A2380  90 01 00 24 */	stw r0, 0x24(r1)
/* 806A2384  39 61 00 20 */	addi r11, r1, 0x20
/* 806A2388  4B CB FE 55 */	bl _savegpr_29
/* 806A238C  2C 04 00 00 */	cmpwi r4, 0
/* 806A2390  40 82 01 A0 */	bne lbl_806A2530
/* 806A2394  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 806A2398  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 806A239C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 806A23A0  83 E3 00 38 */	lwz r31, 0x38(r3)
/* 806A23A4  83 DF 00 14 */	lwz r30, 0x14(r31)
/* 806A23A8  28 1E 00 00 */	cmplwi r30, 0
/* 806A23AC  41 82 01 84 */	beq lbl_806A2530
/* 806A23B0  2C 04 00 0A */	cmpwi r4, 0xa
/* 806A23B4  40 82 00 7C */	bne lbl_806A2430
/* 806A23B8  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 806A23BC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806A23C0  1F A4 00 30 */	mulli r29, r4, 0x30
/* 806A23C4  7C 60 EA 14 */	add r3, r0, r29
/* 806A23C8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806A23CC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806A23D0  80 84 00 00 */	lwz r4, 0(r4)
/* 806A23D4  4B CA 40 DD */	bl PSMTXCopy
/* 806A23D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A23DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A23E0  80 63 00 00 */	lwz r3, 0(r3)
/* 806A23E4  A8 9E 06 B8 */	lha r4, 0x6b8(r30)
/* 806A23E8  A8 1E 06 BC */	lha r0, 0x6bc(r30)
/* 806A23EC  7C 04 02 14 */	add r0, r4, r0
/* 806A23F0  7C 04 07 34 */	extsh r4, r0
/* 806A23F4  4B 96 A0 D9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 806A23F8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A23FC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A2400  80 63 00 00 */	lwz r3, 0(r3)
/* 806A2404  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 806A2408  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806A240C  7C 80 EA 14 */	add r4, r0, r29
/* 806A2410  4B CA 40 A1 */	bl PSMTXCopy
/* 806A2414  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A2418  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A241C  80 63 00 00 */	lwz r3, 0(r3)
/* 806A2420  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806A2424  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806A2428  4B CA 40 89 */	bl PSMTXCopy
/* 806A242C  48 00 01 04 */	b lbl_806A2530
lbl_806A2430:
/* 806A2430  2C 04 00 02 */	cmpwi r4, 2
/* 806A2434  41 82 00 0C */	beq lbl_806A2440
/* 806A2438  2C 04 00 03 */	cmpwi r4, 3
/* 806A243C  40 82 00 70 */	bne lbl_806A24AC
lbl_806A2440:
/* 806A2440  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 806A2444  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806A2448  1F A4 00 30 */	mulli r29, r4, 0x30
/* 806A244C  7C 60 EA 14 */	add r3, r0, r29
/* 806A2450  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806A2454  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806A2458  80 84 00 00 */	lwz r4, 0(r4)
/* 806A245C  4B CA 40 55 */	bl PSMTXCopy
/* 806A2460  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A2464  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A2468  80 63 00 00 */	lwz r3, 0(r3)
/* 806A246C  A8 9E 06 BC */	lha r4, 0x6bc(r30)
/* 806A2470  4B 96 9F C5 */	bl mDoMtx_YrotM__FPA4_fs
/* 806A2474  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A2478  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A247C  80 63 00 00 */	lwz r3, 0(r3)
/* 806A2480  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 806A2484  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806A2488  7C 80 EA 14 */	add r4, r0, r29
/* 806A248C  4B CA 40 25 */	bl PSMTXCopy
/* 806A2490  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A2494  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A2498  80 63 00 00 */	lwz r3, 0(r3)
/* 806A249C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806A24A0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806A24A4  4B CA 40 0D */	bl PSMTXCopy
/* 806A24A8  48 00 00 88 */	b lbl_806A2530
lbl_806A24AC:
/* 806A24AC  38 04 FF ED */	addi r0, r4, -19
/* 806A24B0  28 00 00 01 */	cmplwi r0, 1
/* 806A24B4  40 81 00 0C */	ble lbl_806A24C0
/* 806A24B8  2C 04 00 15 */	cmpwi r4, 0x15
/* 806A24BC  40 82 00 74 */	bne lbl_806A2530
lbl_806A24C0:
/* 806A24C0  80 7F 00 84 */	lwz r3, 0x84(r31)
/* 806A24C4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806A24C8  1F A4 00 30 */	mulli r29, r4, 0x30
/* 806A24CC  7C 60 EA 14 */	add r3, r0, r29
/* 806A24D0  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 806A24D4  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 806A24D8  80 84 00 00 */	lwz r4, 0(r4)
/* 806A24DC  4B CA 3F D5 */	bl PSMTXCopy
/* 806A24E0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A24E4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A24E8  80 63 00 00 */	lwz r3, 0(r3)
/* 806A24EC  A8 1E 06 BC */	lha r0, 0x6bc(r30)
/* 806A24F0  7C 00 00 D0 */	neg r0, r0
/* 806A24F4  7C 04 07 34 */	extsh r4, r0
/* 806A24F8  4B 96 9F 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 806A24FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A2500  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A2504  80 63 00 00 */	lwz r3, 0(r3)
/* 806A2508  80 9F 00 84 */	lwz r4, 0x84(r31)
/* 806A250C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806A2510  7C 80 EA 14 */	add r4, r0, r29
/* 806A2514  4B CA 3F 9D */	bl PSMTXCopy
/* 806A2518  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806A251C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806A2520  80 63 00 00 */	lwz r3, 0(r3)
/* 806A2524  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806A2528  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806A252C  4B CA 3F 85 */	bl PSMTXCopy
lbl_806A2530:
/* 806A2530  38 60 00 01 */	li r3, 1
/* 806A2534  39 61 00 20 */	addi r11, r1, 0x20
/* 806A2538  4B CB FC F1 */	bl _restgpr_29
/* 806A253C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806A2540  7C 08 03 A6 */	mtlr r0
/* 806A2544  38 21 00 20 */	addi r1, r1, 0x20
/* 806A2548  4E 80 00 20 */	blr 
