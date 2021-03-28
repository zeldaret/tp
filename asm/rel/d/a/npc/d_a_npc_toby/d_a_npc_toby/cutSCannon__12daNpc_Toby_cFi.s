lbl_80B215B4:
/* 80B215B4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B215B8  7C 08 02 A6 */	mflr r0
/* 80B215BC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B215C0  39 61 00 50 */	addi r11, r1, 0x50
/* 80B215C4  4B 84 0C 08 */	b _savegpr_25
/* 80B215C8  7C 7B 1B 78 */	mr r27, r3
/* 80B215CC  7C 99 23 78 */	mr r25, r4
/* 80B215D0  3C 60 80 B2 */	lis r3, m__18daNpc_Toby_Param_c@ha
/* 80B215D4  3B E3 49 E4 */	addi r31, r3, m__18daNpc_Toby_Param_c@l
/* 80B215D8  3B C0 00 00 */	li r30, 0
/* 80B215DC  3B A0 FF FF */	li r29, -1
/* 80B215E0  3B 80 00 00 */	li r28, 0
/* 80B215E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B215E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B215EC  3B 43 4F F8 */	addi r26, r3, 0x4ff8
/* 80B215F0  7F 43 D3 78 */	mr r3, r26
/* 80B215F4  3C A0 80 B2 */	lis r5, struct_80B24B8C+0x0@ha
/* 80B215F8  38 A5 4B 8C */	addi r5, r5, struct_80B24B8C+0x0@l
/* 80B215FC  38 A5 00 A6 */	addi r5, r5, 0xa6
/* 80B21600  38 C0 00 03 */	li r6, 3
/* 80B21604  4B 52 6A E8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B21608  28 03 00 00 */	cmplwi r3, 0
/* 80B2160C  41 82 00 08 */	beq lbl_80B21614
/* 80B21610  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B21614:
/* 80B21614  7F 43 D3 78 */	mr r3, r26
/* 80B21618  7F 24 CB 78 */	mr r4, r25
/* 80B2161C  3C A0 80 B2 */	lis r5, struct_80B24B8C+0x0@ha
/* 80B21620  38 A5 4B 8C */	addi r5, r5, struct_80B24B8C+0x0@l
/* 80B21624  38 A5 00 AA */	addi r5, r5, 0xaa
/* 80B21628  38 C0 00 03 */	li r6, 3
/* 80B2162C  4B 52 6A C0 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B21630  28 03 00 00 */	cmplwi r3, 0
/* 80B21634  41 82 00 08 */	beq lbl_80B2163C
/* 80B21638  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B2163C:
/* 80B2163C  7F 43 D3 78 */	mr r3, r26
/* 80B21640  7F 24 CB 78 */	mr r4, r25
/* 80B21644  4B 52 67 08 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B21648  2C 03 00 00 */	cmpwi r3, 0
/* 80B2164C  41 82 01 64 */	beq lbl_80B217B0
/* 80B21650  2C 1D 00 03 */	cmpwi r29, 3
/* 80B21654  41 82 01 3C */	beq lbl_80B21790
/* 80B21658  40 80 00 1C */	bge lbl_80B21674
/* 80B2165C  2C 1D 00 01 */	cmpwi r29, 1
/* 80B21660  41 82 00 7C */	beq lbl_80B216DC
/* 80B21664  40 80 00 8C */	bge lbl_80B216F0
/* 80B21668  2C 1D 00 00 */	cmpwi r29, 0
/* 80B2166C  40 80 00 18 */	bge lbl_80B21684
/* 80B21670  48 00 01 40 */	b lbl_80B217B0
lbl_80B21674:
/* 80B21674  2C 1D 00 05 */	cmpwi r29, 5
/* 80B21678  41 82 01 34 */	beq lbl_80B217AC
/* 80B2167C  40 80 01 34 */	bge lbl_80B217B0
/* 80B21680  48 00 01 20 */	b lbl_80B217A0
lbl_80B21684:
/* 80B21684  38 60 00 28 */	li r3, 0x28
/* 80B21688  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80B2168C  7C 04 07 74 */	extsb r4, r0
/* 80B21690  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80B21694  38 C1 00 08 */	addi r6, r1, 8
/* 80B21698  4B 62 AE 68 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80B2169C  2C 03 00 00 */	cmpwi r3, 0
/* 80B216A0  41 82 01 10 */	beq lbl_80B217B0
/* 80B216A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B216A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B216AC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B216B0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B216B4  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 80B216B8  38 C0 00 00 */	li r6, 0
/* 80B216BC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B216C0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B216C4  7D 89 03 A6 */	mtctr r12
/* 80B216C8  4E 80 04 21 */	bctrl 
/* 80B216CC  7F 43 D3 78 */	mr r3, r26
/* 80B216D0  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B216D4  4B 52 6C F0 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 80B216D8  48 00 00 D8 */	b lbl_80B217B0
lbl_80B216DC:
/* 80B216DC  7F 63 DB 78 */	mr r3, r27
/* 80B216E0  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80B216E4  38 A0 00 00 */	li r5, 0
/* 80B216E8  4B 62 A5 08 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B216EC  48 00 00 C4 */	b lbl_80B217B0
lbl_80B216F0:
/* 80B216F0  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80B216F4  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B216F8  41 82 00 24 */	beq lbl_80B2171C
/* 80B216FC  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 80B21700  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80B21704  4B 62 41 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B21708  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 80B2170C  38 00 00 0F */	li r0, 0xf
/* 80B21710  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80B21714  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 80B21718  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_80B2171C:
/* 80B2171C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B21720  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B21724  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80B21728  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B2172C  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 80B21730  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B21734  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B21738  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B2173C  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 80B21740  38 04 10 00 */	addi r0, r4, 0x1000
/* 80B21744  7C 04 07 34 */	extsh r4, r0
/* 80B21748  4B 4E AC 94 */	b mDoMtx_YrotS__FPA4_fs
/* 80B2174C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B21750  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B21754  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B21758  7C 85 23 78 */	mr r5, r4
/* 80B2175C  4B 82 56 10 */	b PSMTXMultVec
/* 80B21760  38 61 00 10 */	addi r3, r1, 0x10
/* 80B21764  38 9B 04 A8 */	addi r4, r27, 0x4a8
/* 80B21768  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80B2176C  4B 74 53 78 */	b __pl__4cXyzCFRC3Vec
/* 80B21770  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B21774  D0 1B 0F E8 */	stfs f0, 0xfe8(r27)
/* 80B21778  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80B2177C  D0 1B 0F EC */	stfs f0, 0xfec(r27)
/* 80B21780  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B21784  D0 1B 0F F0 */	stfs f0, 0xff0(r27)
/* 80B21788  93 9B 0D C4 */	stw r28, 0xdc4(r27)
/* 80B2178C  48 00 00 24 */	b lbl_80B217B0
lbl_80B21790:
/* 80B21790  38 00 00 01 */	li r0, 1
/* 80B21794  98 1B 0E 25 */	stb r0, 0xe25(r27)
/* 80B21798  98 1B 10 01 */	stb r0, 0x1001(r27)
/* 80B2179C  48 00 00 14 */	b lbl_80B217B0
lbl_80B217A0:
/* 80B217A0  38 00 00 00 */	li r0, 0
/* 80B217A4  90 1B 0D C4 */	stw r0, 0xdc4(r27)
/* 80B217A8  48 00 00 08 */	b lbl_80B217B0
lbl_80B217AC:
/* 80B217AC  93 9B 0D C4 */	stw r28, 0xdc4(r27)
lbl_80B217B0:
/* 80B217B0  2C 1D 00 03 */	cmpwi r29, 3
/* 80B217B4  41 82 02 20 */	beq lbl_80B219D4
/* 80B217B8  40 80 00 1C */	bge lbl_80B217D4
/* 80B217BC  2C 1D 00 01 */	cmpwi r29, 1
/* 80B217C0  41 82 00 64 */	beq lbl_80B21824
/* 80B217C4  40 80 00 CC */	bge lbl_80B21890
/* 80B217C8  2C 1D 00 00 */	cmpwi r29, 0
/* 80B217CC  40 80 00 18 */	bge lbl_80B217E4
/* 80B217D0  48 00 02 08 */	b lbl_80B219D8
lbl_80B217D4:
/* 80B217D4  2C 1D 00 05 */	cmpwi r29, 5
/* 80B217D8  41 82 01 E4 */	beq lbl_80B219BC
/* 80B217DC  40 80 01 FC */	bge lbl_80B219D8
/* 80B217E0  48 00 00 B0 */	b lbl_80B21890
lbl_80B217E4:
/* 80B217E4  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B217E8  2C 00 00 01 */	cmpwi r0, 1
/* 80B217EC  41 82 00 28 */	beq lbl_80B21814
/* 80B217F0  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B217F4  4B 62 3F 08 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B217F8  38 00 00 00 */	li r0, 0
/* 80B217FC  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B21800  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B21804  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B21808  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B2180C  38 00 00 01 */	li r0, 1
/* 80B21810  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80B21814:
/* 80B21814  38 00 00 00 */	li r0, 0
/* 80B21818  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B2181C  3B C0 00 01 */	li r30, 1
/* 80B21820  48 00 01 B8 */	b lbl_80B219D8
lbl_80B21824:
/* 80B21824  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B21828  2C 00 00 01 */	cmpwi r0, 1
/* 80B2182C  41 82 00 28 */	beq lbl_80B21854
/* 80B21830  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B21834  4B 62 3E C8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B21838  38 00 00 00 */	li r0, 0
/* 80B2183C  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B21840  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B21844  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B21848  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B2184C  38 00 00 01 */	li r0, 1
/* 80B21850  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80B21854:
/* 80B21854  38 00 00 00 */	li r0, 0
/* 80B21858  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B2185C  7F 63 DB 78 */	mr r3, r27
/* 80B21860  38 80 00 00 */	li r4, 0
/* 80B21864  38 A0 00 00 */	li r5, 0
/* 80B21868  38 C0 00 00 */	li r6, 0
/* 80B2186C  38 E0 00 00 */	li r7, 0
/* 80B21870  4B 62 A4 08 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B21874  2C 03 00 00 */	cmpwi r3, 0
/* 80B21878  41 82 01 60 */	beq lbl_80B219D8
/* 80B2187C  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80B21880  28 00 00 01 */	cmplwi r0, 1
/* 80B21884  40 82 01 54 */	bne lbl_80B219D8
/* 80B21888  3B C0 00 01 */	li r30, 1
/* 80B2188C  48 00 01 4C */	b lbl_80B219D8
lbl_80B21890:
/* 80B21890  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B21894  2C 00 00 01 */	cmpwi r0, 1
/* 80B21898  41 82 00 28 */	beq lbl_80B218C0
/* 80B2189C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B218A0  4B 62 3E 5C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B218A4  38 00 00 00 */	li r0, 0
/* 80B218A8  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B218AC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B218B0  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B218B4  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B218B8  38 00 00 01 */	li r0, 1
/* 80B218BC  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80B218C0:
/* 80B218C0  38 00 00 00 */	li r0, 0
/* 80B218C4  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B218C8  2C 1D 00 04 */	cmpwi r29, 4
/* 80B218CC  40 82 00 38 */	bne lbl_80B21904
/* 80B218D0  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80B218D4  2C 00 00 00 */	cmpwi r0, 0
/* 80B218D8  41 82 00 24 */	beq lbl_80B218FC
/* 80B218DC  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80B218E0  4B 62 3E 1C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B218E4  38 00 00 00 */	li r0, 0
/* 80B218E8  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80B218EC  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B218F0  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80B218F4  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80B218F8  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80B218FC:
/* 80B218FC  38 00 00 00 */	li r0, 0
/* 80B21900  98 1B 0C FF */	stb r0, 0xcff(r27)
lbl_80B21904:
/* 80B21904  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B21908  38 9B 0F E8 */	addi r4, r27, 0xfe8
/* 80B2190C  4B 82 5A 90 */	b PSVECSquareDistance
/* 80B21910  C0 1F 01 74 */	lfs f0, 0x174(r31)
/* 80B21914  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B21918  40 80 00 48 */	bge lbl_80B21960
/* 80B2191C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B21920  38 9B 0F E8 */	addi r4, r27, 0xfe8
/* 80B21924  4B 74 F2 E0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B21928  7C 64 1B 78 */	mr r4, r3
/* 80B2192C  38 7B 04 DE */	addi r3, r27, 0x4de
/* 80B21930  38 A0 00 04 */	li r5, 4
/* 80B21934  38 C0 04 00 */	li r6, 0x400
/* 80B21938  4B 74 EC D0 */	b cLib_addCalcAngleS2__FPssss
/* 80B2193C  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 80B21940  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 80B21944  A8 1B 04 E6 */	lha r0, 0x4e6(r27)
/* 80B21948  B0 1B 0D 7A */	sth r0, 0xd7a(r27)
/* 80B2194C  38 7B 05 2C */	addi r3, r27, 0x52c
/* 80B21950  C0 3F 01 50 */	lfs f1, 0x150(r31)
/* 80B21954  C0 5F 01 78 */	lfs f2, 0x178(r31)
/* 80B21958  4B 74 ED E8 */	b cLib_chaseF__FPfff
/* 80B2195C  48 00 00 48 */	b lbl_80B219A4
lbl_80B21960:
/* 80B21960  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80B21964  2C 00 00 00 */	cmpwi r0, 0
/* 80B21968  41 82 00 24 */	beq lbl_80B2198C
/* 80B2196C  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 80B21970  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80B21974  4B 62 3F 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B21978  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 80B2197C  38 00 00 00 */	li r0, 0
/* 80B21980  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80B21984  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80B21988  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_80B2198C:
/* 80B2198C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80B21990  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80B21994  D0 1B 04 F8 */	stfs f0, 0x4f8(r27)
/* 80B21998  D0 1B 04 FC */	stfs f0, 0x4fc(r27)
/* 80B2199C  D0 1B 05 00 */	stfs f0, 0x500(r27)
/* 80B219A0  3B C0 00 01 */	li r30, 1
lbl_80B219A4:
/* 80B219A4  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 80B219A8  48 00 2D 81 */	bl func_80B24728
/* 80B219AC  2C 03 00 00 */	cmpwi r3, 0
/* 80B219B0  40 82 00 28 */	bne lbl_80B219D8
/* 80B219B4  3B C0 00 01 */	li r30, 1
/* 80B219B8  48 00 00 20 */	b lbl_80B219D8
lbl_80B219BC:
/* 80B219BC  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 80B219C0  48 00 2D 69 */	bl func_80B24728
/* 80B219C4  2C 03 00 00 */	cmpwi r3, 0
/* 80B219C8  40 82 00 10 */	bne lbl_80B219D8
/* 80B219CC  3B C0 00 01 */	li r30, 1
/* 80B219D0  48 00 00 08 */	b lbl_80B219D8
lbl_80B219D4:
/* 80B219D4  3B C0 00 01 */	li r30, 1
lbl_80B219D8:
/* 80B219D8  7F C3 F3 78 */	mr r3, r30
/* 80B219DC  39 61 00 50 */	addi r11, r1, 0x50
/* 80B219E0  4B 84 08 38 */	b _restgpr_25
/* 80B219E4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B219E8  7C 08 03 A6 */	mtlr r0
/* 80B219EC  38 21 00 50 */	addi r1, r1, 0x50
/* 80B219F0  4E 80 00 20 */	blr 
