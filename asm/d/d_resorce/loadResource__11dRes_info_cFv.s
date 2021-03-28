lbl_8003B30C:
/* 8003B30C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8003B310  7C 08 02 A6 */	mflr r0
/* 8003B314  90 01 00 54 */	stw r0, 0x54(r1)
/* 8003B318  39 61 00 50 */	addi r11, r1, 0x50
/* 8003B31C  48 32 6E 9D */	bl _savegpr_20
/* 8003B320  7C 7E 1B 78 */	mr r30, r3
/* 8003B324  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8003B328  80 63 00 44 */	lwz r3, 0x44(r3)
/* 8003B32C  82 83 00 08 */	lwz r20, 8(r3)
/* 8003B330  56 83 10 3A */	slwi r3, r20, 2
/* 8003B334  48 29 39 91 */	bl __nwa__FUl
/* 8003B338  90 7E 00 20 */	stw r3, 0x20(r30)
/* 8003B33C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8003B340  28 00 00 00 */	cmplwi r0, 0
/* 8003B344  40 82 00 24 */	bne lbl_8003B368
/* 8003B348  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha
/* 8003B34C  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l
/* 8003B350  38 63 00 2A */	addi r3, r3, 0x2a
/* 8003B354  7F C4 F3 78 */	mr r4, r30
/* 8003B358  4C C6 31 82 */	crclr 6
/* 8003B35C  4B FC B8 B1 */	bl OSReport_Error
/* 8003B360  38 60 FF FF */	li r3, -1
/* 8003B364  48 00 05 54 */	b lbl_8003B8B8
lbl_8003B368:
/* 8003B368  38 60 00 00 */	li r3, 0
/* 8003B36C  7C 60 1B 78 */	mr r0, r3
/* 8003B370  7E 89 03 A6 */	mtctr r20
/* 8003B374  2C 14 00 00 */	cmpwi r20, 0
/* 8003B378  40 81 00 14 */	ble lbl_8003B38C
lbl_8003B37C:
/* 8003B37C  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 8003B380  7C 04 19 2E */	stwx r0, r4, r3
/* 8003B384  38 63 00 04 */	addi r3, r3, 4
/* 8003B388  42 00 FF F4 */	bdnz lbl_8003B37C
lbl_8003B38C:
/* 8003B38C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8003B390  83 23 00 48 */	lwz r25, 0x48(r3)
/* 8003B394  3A A0 00 00 */	li r21, 0
/* 8003B398  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8003B39C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8003B3A0  3E E3 00 02 */	addis r23, r3, 2
/* 8003B3A4  3A F7 C2 F8 */	addi r23, r23, -15624
/* 8003B3A8  48 00 04 F8 */	b lbl_8003B8A0
lbl_8003B3AC:
/* 8003B3AC  83 B9 00 00 */	lwz r29, 0(r25)
/* 8003B3B0  83 99 00 0C */	lwz r28, 0xc(r25)
/* 8003B3B4  3A C0 00 00 */	li r22, 0
/* 8003B3B8  57 94 10 3A */	slwi r20, r28, 2
/* 8003B3BC  48 00 04 D0 */	b lbl_8003B88C
lbl_8003B3C0:
/* 8003B3C0  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8003B3C4  7F 84 E3 78 */	mr r4, r28
/* 8003B3C8  48 29 AE 95 */	bl getFileAttribute__10JKRArchiveCFUl
/* 8003B3CC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8003B3D0  41 82 04 B0 */	beq lbl_8003B880
/* 8003B3D4  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8003B3D8  7F 84 E3 78 */	mr r4, r28
/* 8003B3DC  48 29 A9 09 */	bl getIdxResource__10JKRArchiveFUl
/* 8003B3E0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003B3E4  40 82 00 3C */	bne lbl_8003B420
/* 8003B3E8  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8003B3EC  7F 84 E3 78 */	mr r4, r28
/* 8003B3F0  48 29 B2 95 */	bl findIdxResource__10JKRArchiveCFUl
/* 8003B3F4  80 03 00 04 */	lwz r0, 4(r3)
/* 8003B3F8  54 04 02 3E */	clrlwi r4, r0, 8
/* 8003B3FC  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8003B400  80 03 00 54 */	lwz r0, 0x54(r3)
/* 8003B404  3C 60 80 38 */	lis r3, d_d_resorce__stringBase0@ha
/* 8003B408  38 63 98 B8 */	addi r3, r3, d_d_resorce__stringBase0@l
/* 8003B40C  38 63 00 5A */	addi r3, r3, 0x5a
/* 8003B410  7C 80 22 14 */	add r4, r0, r4
/* 8003B414  4C C6 31 82 */	crclr 6
/* 8003B418  4B FC B7 F5 */	bl OSReport_Error
/* 8003B41C  48 00 04 5C */	b lbl_8003B878
lbl_8003B420:
/* 8003B420  3C 1D BE AE */	addis r0, r29, 0xbeae
/* 8003B424  28 00 43 20 */	cmplwi r0, 0x4320
/* 8003B428  40 82 00 78 */	bne lbl_8003B4A0
/* 8003B42C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8003B430  7F 84 E3 78 */	mr r4, r28
/* 8003B434  48 29 B2 51 */	bl findIdxResource__10JKRArchiveCFUl
/* 8003B438  7C 78 1B 78 */	mr r24, r3
/* 8003B43C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8003B440  80 63 00 54 */	lwz r3, 0x54(r3)
/* 8003B444  80 18 00 04 */	lwz r0, 4(r24)
/* 8003B448  54 00 02 3E */	clrlwi r0, r0, 8
/* 8003B44C  7F 43 02 14 */	add r26, r3, r0
/* 8003B450  7F 43 D3 78 */	mr r3, r26
/* 8003B454  48 32 D7 91 */	bl strlen
/* 8003B458  3B 63 FF FC */	addi r27, r3, -4
/* 8003B45C  38 61 00 08 */	addi r3, r1, 8
/* 8003B460  7F 44 D3 78 */	mr r4, r26
/* 8003B464  7F 65 DB 78 */	mr r5, r27
/* 8003B468  48 32 D6 81 */	bl strncpy
/* 8003B46C  38 00 00 00 */	li r0, 0
/* 8003B470  38 61 00 08 */	addi r3, r1, 8
/* 8003B474  7C 03 D9 AE */	stbx r0, r3, r27
/* 8003B478  80 6D 8D F4 */	lwz r3, sCurrentHeap__7JKRHeap(r13)
/* 8003B47C  48 29 33 C1 */	bl findFromRoot__7JKRHeapFPv
/* 8003B480  4B FD 38 D1 */	bl mDoExt_getGameHeap__Fv
/* 8003B484  7E E3 BB 78 */	mr r3, r23
/* 8003B488  38 81 00 08 */	addi r4, r1, 8
/* 8003B48C  7F E5 FB 78 */	mr r5, r31
/* 8003B490  80 D8 00 0C */	lwz r6, 0xc(r24)
/* 8003B494  38 E0 00 00 */	li r7, 0
/* 8003B498  48 00 10 4D */	bl setObjectRes__14dRes_control_cFPCcPvUlP7JKRHeap
/* 8003B49C  48 00 03 DC */	b lbl_8003B878
lbl_8003B4A0:
/* 8003B4A0  3C 1D BD B3 */	addis r0, r29, 0xbdb3
/* 8003B4A4  28 00 44 50 */	cmplwi r0, 0x4450
/* 8003B4A8  40 82 01 78 */	bne lbl_8003B620
/* 8003B4AC  3C 80 59 02 */	lis r4, 0x5902 /* 0x59020030@ha */
/* 8003B4B0  38 84 00 30 */	addi r4, r4, 0x0030 /* 0x59020030@l */
/* 8003B4B4  48 2F 92 09 */	bl load__22J3DModelLoaderDataBaseFPCvUl
/* 8003B4B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003B4BC  40 82 00 0C */	bne lbl_8003B4C8
/* 8003B4C0  38 60 FF FF */	li r3, -1
/* 8003B4C4  48 00 03 F4 */	b lbl_8003B8B8
lbl_8003B4C8:
/* 8003B4C8  3B 40 00 00 */	li r26, 0
/* 8003B4CC  48 00 01 00 */	b lbl_8003B5CC
lbl_8003B4D0:
/* 8003B4D0  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 8003B4D4  57 40 13 BA */	rlwinm r0, r26, 2, 0xe, 0x1d
/* 8003B4D8  7F 03 00 2E */	lwzx r24, r3, r0
/* 8003B4DC  7F 03 C3 78 */	mr r3, r24
/* 8003B4E0  81 98 00 00 */	lwz r12, 0(r24)
/* 8003B4E4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8003B4E8  7D 89 03 A6 */	mtctr r12
/* 8003B4EC  4E 80 04 21 */	bctrl 
/* 8003B4F0  38 60 00 F4 */	li r3, 0xf4
/* 8003B4F4  48 29 37 59 */	bl __nw__FUl
/* 8003B4F8  7C 7B 1B 79 */	or. r27, r3, r3
/* 8003B4FC  41 82 00 B8 */	beq lbl_8003B5B4
/* 8003B500  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 8003B504  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 8003B508  90 1B 00 00 */	stw r0, 0(r27)
/* 8003B50C  38 7B 00 04 */	addi r3, r27, 4
/* 8003B510  3C 80 80 04 */	lis r4, __ct__14J3DMatColorAnmFv@ha
/* 8003B514  38 84 B2 F4 */	addi r4, r4, __ct__14J3DMatColorAnmFv@l
/* 8003B518  3C A0 80 04 */	lis r5, __dt__14J3DMatColorAnmFv@ha
/* 8003B51C  38 A5 B2 B8 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l
/* 8003B520  38 C0 00 08 */	li r6, 8
/* 8003B524  38 E0 00 02 */	li r7, 2
/* 8003B528  48 32 68 39 */	bl __construct_array
/* 8003B52C  38 7B 00 14 */	addi r3, r27, 0x14
/* 8003B530  3C 80 80 04 */	lis r4, __ct__12J3DTexMtxAnmFv@ha
/* 8003B534  38 84 B2 A0 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l
/* 8003B538  3C A0 80 04 */	lis r5, __dt__12J3DTexMtxAnmFv@ha
/* 8003B53C  38 A5 B2 64 */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l
/* 8003B540  38 C0 00 08 */	li r6, 8
/* 8003B544  38 E0 00 08 */	li r7, 8
/* 8003B548  48 32 68 19 */	bl __construct_array
/* 8003B54C  38 7B 00 54 */	addi r3, r27, 0x54
/* 8003B550  3C 80 80 04 */	lis r4, __ct__11J3DTexNoAnmFv@ha
/* 8003B554  38 84 B2 40 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l
/* 8003B558  3C A0 80 04 */	lis r5, __dt__11J3DTexNoAnmFv@ha
/* 8003B55C  38 A5 B1 F8 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l
/* 8003B560  38 C0 00 0C */	li r6, 0xc
/* 8003B564  38 E0 00 08 */	li r7, 8
/* 8003B568  48 32 67 F9 */	bl __construct_array
/* 8003B56C  38 7B 00 B4 */	addi r3, r27, 0xb4
/* 8003B570  3C 80 80 04 */	lis r4, __ct__14J3DTevColorAnmFv@ha
/* 8003B574  38 84 B1 E0 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l
/* 8003B578  3C A0 80 04 */	lis r5, __dt__14J3DTevColorAnmFv@ha
/* 8003B57C  38 A5 B1 A4 */	addi r5, r5, __dt__14J3DTevColorAnmFv@l
/* 8003B580  38 C0 00 08 */	li r6, 8
/* 8003B584  38 E0 00 04 */	li r7, 4
/* 8003B588  48 32 67 D9 */	bl __construct_array
/* 8003B58C  38 7B 00 D4 */	addi r3, r27, 0xd4
/* 8003B590  3C 80 80 04 */	lis r4, __ct__15J3DTevKColorAnmFv@ha
/* 8003B594  38 84 B1 8C */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l
/* 8003B598  3C A0 80 04 */	lis r5, __dt__15J3DTevKColorAnmFv@ha
/* 8003B59C  38 A5 B1 50 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l
/* 8003B5A0  38 C0 00 08 */	li r6, 8
/* 8003B5A4  38 E0 00 04 */	li r7, 4
/* 8003B5A8  48 32 67 B9 */	bl __construct_array
/* 8003B5AC  7F 63 DB 78 */	mr r3, r27
/* 8003B5B0  48 2F 0D 71 */	bl initialize__14J3DMaterialAnmFv
lbl_8003B5B4:
/* 8003B5B4  28 1B 00 00 */	cmplwi r27, 0
/* 8003B5B8  40 82 00 0C */	bne lbl_8003B5C4
/* 8003B5BC  38 60 FF FF */	li r3, -1
/* 8003B5C0  48 00 02 F8 */	b lbl_8003B8B8
lbl_8003B5C4:
/* 8003B5C4  93 78 00 3C */	stw r27, 0x3c(r24)
/* 8003B5C8  3B 5A 00 01 */	addi r26, r26, 1
lbl_8003B5CC:
/* 8003B5CC  57 43 04 3E */	clrlwi r3, r26, 0x10
/* 8003B5D0  A0 1F 00 5C */	lhz r0, 0x5c(r31)
/* 8003B5D4  7C 03 00 40 */	cmplw r3, r0
/* 8003B5D8  41 80 FE F8 */	blt lbl_8003B4D0
/* 8003B5DC  7F E3 FB 78 */	mr r3, r31
/* 8003B5E0  4B FF F2 3D */	bl setAlpha__FP12J3DModelData
/* 8003B5E4  7F E3 FB 78 */	mr r3, r31
/* 8003B5E8  3C 80 00 04 */	lis r4, 4
/* 8003B5EC  48 2E A8 29 */	bl newSharedDisplayList__12J3DModelDataFUl
/* 8003B5F0  2C 03 00 00 */	cmpwi r3, 0
/* 8003B5F4  41 82 00 0C */	beq lbl_8003B600
/* 8003B5F8  38 60 FF FF */	li r3, -1
/* 8003B5FC  48 00 02 BC */	b lbl_8003B8B8
lbl_8003B600:
/* 8003B600  7F E3 FB 78 */	mr r3, r31
/* 8003B604  38 80 00 00 */	li r4, 0
/* 8003B608  3C A0 80 3A */	lis r5, j3dDefaultMtx@ha
/* 8003B60C  38 A5 1E 5C */	addi r5, r5, j3dDefaultMtx@l
/* 8003B610  48 2E A9 FD */	bl simpleCalcMaterial__12J3DModelDataFUsPA4_f
/* 8003B614  7F E3 FB 78 */	mr r3, r31
/* 8003B618  48 2E A9 7D */	bl makeSharedDL__12J3DModelDataFv
/* 8003B61C  48 00 02 5C */	b lbl_8003B878
lbl_8003B620:
/* 8003B620  28 00 44 52 */	cmplwi r0, 0x4452
/* 8003B624  41 82 00 24 */	beq lbl_8003B648
/* 8003B628  28 00 44 56 */	cmplwi r0, 0x4456
/* 8003B62C  41 82 00 1C */	beq lbl_8003B648
/* 8003B630  28 00 44 45 */	cmplwi r0, 0x4445
/* 8003B634  41 82 00 14 */	beq lbl_8003B648
/* 8003B638  28 00 57 52 */	cmplwi r0, 0x5752
/* 8003B63C  41 82 00 0C */	beq lbl_8003B648
/* 8003B640  28 00 57 45 */	cmplwi r0, 0x5745
/* 8003B644  40 82 00 20 */	bne lbl_8003B664
lbl_8003B648:
/* 8003B648  7F A3 EB 78 */	mr r3, r29
/* 8003B64C  7F E4 FB 78 */	mr r4, r31
/* 8003B650  4B FF F7 C5 */	bl loaderBasicBmd__11dRes_info_cFUlPv
/* 8003B654  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003B658  40 82 02 20 */	bne lbl_8003B878
/* 8003B65C  38 60 FF FF */	li r3, -1
/* 8003B660  48 00 02 58 */	b lbl_8003B8B8
lbl_8003B664:
/* 8003B664  28 00 44 47 */	cmplwi r0, 0x4447
/* 8003B668  40 82 00 5C */	bne lbl_8003B6C4
/* 8003B66C  3C 80 59 02 */	lis r4, 0x5902 /* 0x59020010@ha */
/* 8003B670  38 84 00 10 */	addi r4, r4, 0x0010 /* 0x59020010@l */
/* 8003B674  48 2F 90 49 */	bl load__22J3DModelLoaderDataBaseFPCvUl
/* 8003B678  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003B67C  40 82 00 0C */	bne lbl_8003B688
/* 8003B680  38 60 FF FF */	li r3, -1
/* 8003B684  48 00 02 34 */	b lbl_8003B8B8
lbl_8003B688:
/* 8003B688  7F F8 FB 78 */	mr r24, r31
/* 8003B68C  3C 80 00 04 */	lis r4, 4
/* 8003B690  48 2E A7 85 */	bl newSharedDisplayList__12J3DModelDataFUl
/* 8003B694  2C 03 00 00 */	cmpwi r3, 0
/* 8003B698  41 82 00 0C */	beq lbl_8003B6A4
/* 8003B69C  38 60 FF FF */	li r3, -1
/* 8003B6A0  48 00 02 18 */	b lbl_8003B8B8
lbl_8003B6A4:
/* 8003B6A4  7F 03 C3 78 */	mr r3, r24
/* 8003B6A8  38 80 00 00 */	li r4, 0
/* 8003B6AC  3C A0 80 3A */	lis r5, j3dDefaultMtx@ha
/* 8003B6B0  38 A5 1E 5C */	addi r5, r5, j3dDefaultMtx@l
/* 8003B6B4  48 2E A9 59 */	bl simpleCalcMaterial__12J3DModelDataFUsPA4_f
/* 8003B6B8  7F 03 C3 78 */	mr r3, r24
/* 8003B6BC  48 2E A8 D9 */	bl makeSharedDL__12J3DModelDataFv
/* 8003B6C0  48 00 01 B8 */	b lbl_8003B878
lbl_8003B6C4:
/* 8003B6C4  28 00 44 41 */	cmplwi r0, 0x4441
/* 8003B6C8  40 82 00 5C */	bne lbl_8003B724
/* 8003B6CC  3C 80 59 02 */	lis r4, 0x5902 /* 0x59020010@ha */
/* 8003B6D0  38 84 00 10 */	addi r4, r4, 0x0010 /* 0x59020010@l */
/* 8003B6D4  48 2F 8F E9 */	bl load__22J3DModelLoaderDataBaseFPCvUl
/* 8003B6D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003B6DC  40 82 00 0C */	bne lbl_8003B6E8
/* 8003B6E0  38 60 FF FF */	li r3, -1
/* 8003B6E4  48 00 01 D4 */	b lbl_8003B8B8
lbl_8003B6E8:
/* 8003B6E8  7F F8 FB 78 */	mr r24, r31
/* 8003B6EC  3C 80 00 04 */	lis r4, 4
/* 8003B6F0  48 2E A7 25 */	bl newSharedDisplayList__12J3DModelDataFUl
/* 8003B6F4  2C 03 00 00 */	cmpwi r3, 0
/* 8003B6F8  41 82 00 0C */	beq lbl_8003B704
/* 8003B6FC  38 60 FF FF */	li r3, -1
/* 8003B700  48 00 01 B8 */	b lbl_8003B8B8
lbl_8003B704:
/* 8003B704  7F 03 C3 78 */	mr r3, r24
/* 8003B708  38 80 00 00 */	li r4, 0
/* 8003B70C  3C A0 80 3A */	lis r5, j3dDefaultMtx@ha
/* 8003B710  38 A5 1E 5C */	addi r5, r5, j3dDefaultMtx@l
/* 8003B714  48 2E A8 F9 */	bl simpleCalcMaterial__12J3DModelDataFUsPA4_f
/* 8003B718  7F 03 C3 78 */	mr r3, r24
/* 8003B71C  48 2E A8 79 */	bl makeSharedDL__12J3DModelDataFv
/* 8003B720  48 00 01 58 */	b lbl_8003B878
lbl_8003B724:
/* 8003B724  3C 9D BD B4 */	addis r4, r29, 0xbdb4
/* 8003B728  28 04 53 20 */	cmplwi r4, 0x5320
/* 8003B72C  40 82 00 18 */	bne lbl_8003B744
/* 8003B730  48 2F 8A 01 */	bl load__24J3DClusterLoaderDataBaseFPCv
/* 8003B734  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003B738  40 82 01 40 */	bne lbl_8003B878
/* 8003B73C  38 60 FF FF */	li r3, -1
/* 8003B740  48 00 01 78 */	b lbl_8003B8B8
lbl_8003B744:
/* 8003B744  3C 1D BD BD */	addis r0, r29, 0xbdbd
/* 8003B748  28 00 4B 53 */	cmplwi r0, 0x4b53
/* 8003B74C  41 82 00 0C */	beq lbl_8003B758
/* 8003B750  28 00 4B 20 */	cmplwi r0, 0x4b20
/* 8003B754  40 82 00 90 */	bne lbl_8003B7E4
lbl_8003B758:
/* 8003B758  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8003B75C  3C 03 00 01 */	addis r0, r3, 1
/* 8003B760  28 00 FF FF */	cmplwi r0, 0xffff
/* 8003B764  41 82 00 0C */	beq lbl_8003B770
/* 8003B768  7F 03 FA 14 */	add r24, r3, r31
/* 8003B76C  48 00 00 08 */	b lbl_8003B774
lbl_8003B770:
/* 8003B770  3B 00 00 00 */	li r24, 0
lbl_8003B774:
/* 8003B774  38 60 00 2C */	li r3, 0x2c
/* 8003B778  48 29 34 D5 */	bl __nw__FUl
/* 8003B77C  7C 7A 1B 79 */	or. r26, r3, r3
/* 8003B780  41 82 00 40 */	beq lbl_8003B7C0
/* 8003B784  38 80 00 00 */	li r4, 0
/* 8003B788  38 A0 00 00 */	li r5, 0
/* 8003B78C  38 C0 00 00 */	li r6, 0
/* 8003B790  38 E0 00 00 */	li r7, 0
/* 8003B794  48 2E D6 AD */	bl __ct__15J3DAnmTransformFsPfPsPf
/* 8003B798  3C 60 80 3A */	lis r3, __vt__18J3DAnmTransformKey@ha
/* 8003B79C  38 03 7C 70 */	addi r0, r3, __vt__18J3DAnmTransformKey@l
/* 8003B7A0  90 1A 00 00 */	stw r0, 0(r26)
/* 8003B7A4  38 00 00 00 */	li r0, 0
/* 8003B7A8  90 1A 00 20 */	stw r0, 0x20(r26)
/* 8003B7AC  90 1A 00 24 */	stw r0, 0x24(r26)
/* 8003B7B0  3C 60 80 3A */	lis r3, __vt__18mDoExt_transAnmBas@ha
/* 8003B7B4  38 03 7C 5C */	addi r0, r3, __vt__18mDoExt_transAnmBas@l
/* 8003B7B8  90 1A 00 00 */	stw r0, 0(r26)
/* 8003B7BC  93 1A 00 28 */	stw r24, 0x28(r26)
lbl_8003B7C0:
/* 8003B7C0  28 1A 00 00 */	cmplwi r26, 0
/* 8003B7C4  40 82 00 0C */	bne lbl_8003B7D0
/* 8003B7C8  38 60 FF FF */	li r3, -1
/* 8003B7CC  48 00 00 EC */	b lbl_8003B8B8
lbl_8003B7D0:
/* 8003B7D0  7F 43 D3 78 */	mr r3, r26
/* 8003B7D4  7F E4 FB 78 */	mr r4, r31
/* 8003B7D8  48 2F C9 5D */	bl setResource__20J3DAnmLoaderDataBaseFP10J3DAnmBasePCv
/* 8003B7DC  7F 5F D3 78 */	mr r31, r26
/* 8003B7E0  48 00 00 98 */	b lbl_8003B878
lbl_8003B7E4:
/* 8003B7E4  3C 1D BD AC */	addis r0, r29, 0xbdac
/* 8003B7E8  28 00 50 20 */	cmplwi r0, 0x5020
/* 8003B7EC  41 82 00 44 */	beq lbl_8003B830
/* 8003B7F0  28 00 4B 20 */	cmplwi r0, 0x4b20
/* 8003B7F4  41 82 00 3C */	beq lbl_8003B830
/* 8003B7F8  3C 1D BD B0 */	addis r0, r29, 0xbdb0
/* 8003B7FC  28 00 4B 20 */	cmplwi r0, 0x4b20
/* 8003B800  41 82 00 30 */	beq lbl_8003B830
/* 8003B804  3C 1D BD AE */	addis r0, r29, 0xbdae
/* 8003B808  28 00 4B 20 */	cmplwi r0, 0x4b20
/* 8003B80C  41 82 00 24 */	beq lbl_8003B830
/* 8003B810  28 04 4B 20 */	cmplwi r4, 0x4b20
/* 8003B814  41 82 00 1C */	beq lbl_8003B830
/* 8003B818  3C 1D BD AA */	addis r0, r29, 0xbdaa
/* 8003B81C  28 00 41 20 */	cmplwi r0, 0x4120
/* 8003B820  41 82 00 10 */	beq lbl_8003B830
/* 8003B824  3C 1D BD A8 */	addis r0, r29, 0xbda8
/* 8003B828  28 00 41 20 */	cmplwi r0, 0x4120
/* 8003B82C  40 82 00 20 */	bne lbl_8003B84C
lbl_8003B830:
/* 8003B830  7F E3 FB 78 */	mr r3, r31
/* 8003B834  38 80 00 00 */	li r4, 0
/* 8003B838  48 2F C3 09 */	bl load__20J3DAnmLoaderDataBaseFPCv24J3DAnmLoaderDataBaseFlag
/* 8003B83C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8003B840  40 82 00 38 */	bne lbl_8003B878
/* 8003B844  38 60 FF FF */	li r3, -1
/* 8003B848  48 00 00 70 */	b lbl_8003B8B8
lbl_8003B84C:
/* 8003B84C  3C 1D BB A6 */	addis r0, r29, 0xbba6
/* 8003B850  28 00 42 20 */	cmplwi r0, 0x4220
/* 8003B854  40 82 00 10 */	bne lbl_8003B864
/* 8003B858  48 03 8D 21 */	bl ConvDzb__4cBgSFPv
/* 8003B85C  7C 7F 1B 78 */	mr r31, r3
/* 8003B860  48 00 00 18 */	b lbl_8003B878
lbl_8003B864:
/* 8003B864  3C 1D B4 BD */	addis r0, r29, 0xb4bd
/* 8003B868  28 00 4C 20 */	cmplwi r0, 0x4c20
/* 8003B86C  40 82 00 0C */	bne lbl_8003B878
/* 8003B870  48 04 2F 61 */	bl initKCollision__8dBgWKColFPv
/* 8003B874  7C 7F 1B 78 */	mr r31, r3
lbl_8003B878:
/* 8003B878  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 8003B87C  7F E3 A1 2E */	stwx r31, r3, r20
lbl_8003B880:
/* 8003B880  3B 9C 00 01 */	addi r28, r28, 1
/* 8003B884  3A 94 00 04 */	addi r20, r20, 4
/* 8003B888  3A D6 00 01 */	addi r22, r22, 1
lbl_8003B88C:
/* 8003B88C  A0 19 00 0A */	lhz r0, 0xa(r25)
/* 8003B890  7C 16 00 00 */	cmpw r22, r0
/* 8003B894  41 80 FB 2C */	blt lbl_8003B3C0
/* 8003B898  3B 39 00 10 */	addi r25, r25, 0x10
/* 8003B89C  3A B5 00 01 */	addi r21, r21, 1
lbl_8003B8A0:
/* 8003B8A0  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 8003B8A4  80 63 00 44 */	lwz r3, 0x44(r3)
/* 8003B8A8  80 03 00 00 */	lwz r0, 0(r3)
/* 8003B8AC  7C 15 00 00 */	cmpw r21, r0
/* 8003B8B0  41 80 FA FC */	blt lbl_8003B3AC
/* 8003B8B4  38 60 00 00 */	li r3, 0
lbl_8003B8B8:
/* 8003B8B8  39 61 00 50 */	addi r11, r1, 0x50
/* 8003B8BC  48 32 69 49 */	bl _restgpr_20
/* 8003B8C0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8003B8C4  7C 08 03 A6 */	mtlr r0
/* 8003B8C8  38 21 00 50 */	addi r1, r1, 0x50
/* 8003B8CC  4E 80 00 20 */	blr 
