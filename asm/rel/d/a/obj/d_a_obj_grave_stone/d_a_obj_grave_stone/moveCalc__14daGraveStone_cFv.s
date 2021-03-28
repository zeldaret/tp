lbl_80C1266C:
/* 80C1266C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C12670  7C 08 02 A6 */	mflr r0
/* 80C12674  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C12678  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C1267C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80C12680  7C 7E 1B 78 */	mr r30, r3
/* 80C12684  3C 60 80 C1 */	lis r3, mCcDObjInfo__14daGraveStone_c@ha
/* 80C12688  3B E3 32 50 */	addi r31, r3, mCcDObjInfo__14daGraveStone_c@l
/* 80C1268C  38 7E 0A E8 */	addi r3, r30, 0xae8
/* 80C12690  48 00 0B 8D */	bl func_80C1321C
/* 80C12694  7C 60 07 35 */	extsh. r0, r3
/* 80C12698  41 82 02 68 */	beq lbl_80C12900
/* 80C1269C  7F C3 F3 78 */	mr r3, r30
/* 80C126A0  38 9E 07 84 */	addi r4, r30, 0x784
/* 80C126A4  4B 40 80 28 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80C126A8  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80C126AC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C126B0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C126B4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C126B8  4B 46 43 F4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C126BC  80 1E 06 88 */	lwz r0, 0x688(r30)
/* 80C126C0  90 1E 09 3C */	stw r0, 0x93c(r30)
/* 80C126C4  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 80C126C8  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80C126CC  80 1E 06 90 */	lwz r0, 0x690(r30)
/* 80C126D0  90 1E 09 44 */	stw r0, 0x944(r30)
/* 80C126D4  88 1E 06 94 */	lbz r0, 0x694(r30)
/* 80C126D8  98 1E 09 48 */	stb r0, 0x948(r30)
/* 80C126DC  A0 1E 06 9C */	lhz r0, 0x69c(r30)
/* 80C126E0  B0 1E 09 50 */	sth r0, 0x950(r30)
/* 80C126E4  A0 1E 06 9E */	lhz r0, 0x69e(r30)
/* 80C126E8  B0 1E 09 52 */	sth r0, 0x952(r30)
/* 80C126EC  80 1E 06 A0 */	lwz r0, 0x6a0(r30)
/* 80C126F0  90 1E 09 54 */	stw r0, 0x954(r30)
/* 80C126F4  80 1E 06 A4 */	lwz r0, 0x6a4(r30)
/* 80C126F8  90 1E 09 58 */	stw r0, 0x958(r30)
/* 80C126FC  C0 1E 06 AC */	lfs f0, 0x6ac(r30)
/* 80C12700  D0 1E 09 60 */	stfs f0, 0x960(r30)
/* 80C12704  C0 1E 06 B0 */	lfs f0, 0x6b0(r30)
/* 80C12708  D0 1E 09 64 */	stfs f0, 0x964(r30)
/* 80C1270C  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 80C12710  D0 1E 09 68 */	stfs f0, 0x968(r30)
/* 80C12714  80 1E 06 B8 */	lwz r0, 0x6b8(r30)
/* 80C12718  90 1E 09 6C */	stw r0, 0x96c(r30)
/* 80C1271C  C0 1E 06 BC */	lfs f0, 0x6bc(r30)
/* 80C12720  D0 1E 09 70 */	stfs f0, 0x970(r30)
/* 80C12724  80 1E 06 C0 */	lwz r0, 0x6c0(r30)
/* 80C12728  90 1E 09 74 */	stw r0, 0x974(r30)
/* 80C1272C  C0 1E 06 44 */	lfs f0, 0x644(r30)
/* 80C12730  FC 20 00 50 */	fneg f1, f0
/* 80C12734  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80C12738  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C1273C  41 82 00 14 */	beq lbl_80C12750
/* 80C12740  7F C3 F3 78 */	mr r3, r30
/* 80C12744  48 00 02 F5 */	bl setEnvTevColor__14daGraveStone_cFv
/* 80C12748  7F C3 F3 78 */	mr r3, r30
/* 80C1274C  48 00 03 49 */	bl setRoomNo__14daGraveStone_cFv
lbl_80C12750:
/* 80C12750  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C12754  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80C12758  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C1275C  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80C12760  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C12764  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80C12768  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80C1276C  38 63 00 24 */	addi r3, r3, 0x24
/* 80C12770  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C12774  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C12778  4B 73 3D 38 */	b PSMTXCopy
/* 80C1277C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80C12780  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C12784  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C12788  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C1278C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C12790  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80C12794  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C12798  40 81 00 10 */	ble lbl_80C127A8
/* 80C1279C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80C127A0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C127A4  48 00 00 0C */	b lbl_80C127B0
lbl_80C127A8:
/* 80C127A8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80C127AC  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_80C127B0:
/* 80C127B0  4B 3F A5 18 */	b push__14mDoMtx_stack_cFv
/* 80C127B4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C127B8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C127BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C127C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C127C4  38 81 00 0C */	addi r4, r1, 0xc
/* 80C127C8  38 BE 09 7C */	addi r5, r30, 0x97c
/* 80C127CC  4B 73 45 A0 */	b PSMTXMultVec
/* 80C127D0  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80C127D4  B0 1E 09 88 */	sth r0, 0x988(r30)
/* 80C127D8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C127DC  B0 1E 09 8A */	sth r0, 0x98a(r30)
/* 80C127E0  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80C127E4  B0 1E 09 8C */	sth r0, 0x98c(r30)
/* 80C127E8  38 00 00 01 */	li r0, 1
/* 80C127EC  98 1E 09 78 */	stb r0, 0x978(r30)
/* 80C127F0  4B 3F A5 24 */	b pop__14mDoMtx_stack_cFv
/* 80C127F4  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80C127F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C127FC  4B 3F A4 CC */	b push__14mDoMtx_stack_cFv
/* 80C12800  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C12804  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C12808  38 81 00 0C */	addi r4, r1, 0xc
/* 80C1280C  38 BE 09 D8 */	addi r5, r30, 0x9d8
/* 80C12810  4B 73 45 5C */	b PSMTXMultVec
/* 80C12814  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80C12818  B0 1E 09 E4 */	sth r0, 0x9e4(r30)
/* 80C1281C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C12820  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80C12824  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80C12828  B0 1E 09 E8 */	sth r0, 0x9e8(r30)
/* 80C1282C  38 00 00 01 */	li r0, 1
/* 80C12830  98 1E 09 D4 */	stb r0, 0x9d4(r30)
/* 80C12834  4B 3F A4 E0 */	b pop__14mDoMtx_stack_cFv
/* 80C12838  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80C1283C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C12840  4B 3F A4 88 */	b push__14mDoMtx_stack_cFv
/* 80C12844  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C12848  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C1284C  38 81 00 0C */	addi r4, r1, 0xc
/* 80C12850  38 BE 0A 34 */	addi r5, r30, 0xa34
/* 80C12854  4B 73 45 18 */	b PSMTXMultVec
/* 80C12858  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80C1285C  B0 1E 0A 40 */	sth r0, 0xa40(r30)
/* 80C12860  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C12864  B0 1E 0A 42 */	sth r0, 0xa42(r30)
/* 80C12868  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80C1286C  B0 1E 0A 44 */	sth r0, 0xa44(r30)
/* 80C12870  38 00 00 01 */	li r0, 1
/* 80C12874  98 1E 0A 30 */	stb r0, 0xa30(r30)
/* 80C12878  4B 3F A4 9C */	b pop__14mDoMtx_stack_cFv
/* 80C1287C  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80C12880  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C12884  4B 3F A4 44 */	b push__14mDoMtx_stack_cFv
/* 80C12888  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C1288C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C12890  38 81 00 0C */	addi r4, r1, 0xc
/* 80C12894  38 BE 0A 90 */	addi r5, r30, 0xa90
/* 80C12898  4B 73 44 D4 */	b PSMTXMultVec
/* 80C1289C  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80C128A0  B0 1E 0A 9C */	sth r0, 0xa9c(r30)
/* 80C128A4  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80C128A8  B0 1E 0A 9E */	sth r0, 0xa9e(r30)
/* 80C128AC  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80C128B0  B0 1E 0A A0 */	sth r0, 0xaa0(r30)
/* 80C128B4  38 00 00 01 */	li r0, 1
/* 80C128B8  98 1E 0A 8C */	stb r0, 0xa8c(r30)
/* 80C128BC  4B 3F A4 58 */	b pop__14mDoMtx_stack_cFv
/* 80C128C0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080231@ha */
/* 80C128C4  38 03 02 31 */	addi r0, r3, 0x0231 /* 0x00080231@l */
/* 80C128C8  90 01 00 08 */	stw r0, 8(r1)
/* 80C128CC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C128D0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C128D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C128D8  38 81 00 08 */	addi r4, r1, 8
/* 80C128DC  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C128E0  38 C0 00 00 */	li r6, 0
/* 80C128E4  38 E0 00 00 */	li r7, 0
/* 80C128E8  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80C128EC  FC 40 08 90 */	fmr f2, f1
/* 80C128F0  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 80C128F4  FC 80 18 90 */	fmr f4, f3
/* 80C128F8  39 00 00 00 */	li r8, 0
/* 80C128FC  4B 69 9C 10 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C12900:
/* 80C12900  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C12904  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80C12908  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C1290C  7C 08 03 A6 */	mtlr r0
/* 80C12910  38 21 00 20 */	addi r1, r1, 0x20
/* 80C12914  4E 80 00 20 */	blr 
