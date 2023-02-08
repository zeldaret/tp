lbl_80734698:
/* 80734698  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073469C  7C 08 02 A6 */	mflr r0
/* 807346A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 807346A4  39 61 00 30 */	addi r11, r1, 0x30
/* 807346A8  4B C2 DB 31 */	bl _savegpr_28
/* 807346AC  7C 7F 1B 78 */	mr r31, r3
/* 807346B0  3C 60 80 73 */	lis r3, lit_3911@ha /* 0x80735B28@ha */
/* 807346B4  3B C3 5B 28 */	addi r30, r3, lit_3911@l /* 0x80735B28@l */
/* 807346B8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 807346BC  83 A3 00 04 */	lwz r29, 4(r3)
/* 807346C0  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807346C4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807346C8  38 63 03 30 */	addi r3, r3, 0x330
/* 807346CC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807346D0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807346D4  4B C1 1D DD */	bl PSMTXCopy
/* 807346D8  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 807346DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807346E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807346E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807346E8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807346EC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807346F0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807346F4  38 81 00 14 */	addi r4, r1, 0x14
/* 807346F8  38 BF 05 38 */	addi r5, r31, 0x538
/* 807346FC  4B C1 26 71 */	bl PSMTXMultVec
/* 80734700  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80734704  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80734708  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8073470C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80734710  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80734714  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80734718  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8073471C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80734720  EC 01 00 2A */	fadds f0, f1, f0
/* 80734724  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80734728  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8073472C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80734730  38 63 00 30 */	addi r3, r3, 0x30
/* 80734734  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80734738  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8073473C  4B C1 1D 75 */	bl PSMTXCopy
/* 80734740  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80734744  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80734748  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8073474C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80734750  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80734754  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80734758  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8073475C  38 81 00 14 */	addi r4, r1, 0x14
/* 80734760  38 A1 00 08 */	addi r5, r1, 8
/* 80734764  4B C1 26 09 */	bl PSMTXMultVec
/* 80734768  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 8073476C  38 81 00 08 */	addi r4, r1, 8
/* 80734770  4B B3 AE D9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80734774  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80734778  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 8073477C  4B B3 AF 8D */	bl SetR__8cM3dGSphFf
/* 80734780  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80734784  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80734788  3B 83 23 3C */	addi r28, r3, 0x233c
/* 8073478C  7F 83 E3 78 */	mr r3, r28
/* 80734790  38 9F 09 5C */	addi r4, r31, 0x95c
/* 80734794  4B B3 04 15 */	bl Set__4cCcSFP8cCcD_Obj
/* 80734798  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8073479C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807347A0  38 63 03 30 */	addi r3, r3, 0x330
/* 807347A4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807347A8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807347AC  4B C1 1D 05 */	bl PSMTXCopy
/* 807347B0  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 807347B4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807347B8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807347BC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807347C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807347C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807347C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807347CC  38 81 00 14 */	addi r4, r1, 0x14
/* 807347D0  38 A1 00 08 */	addi r5, r1, 8
/* 807347D4  4B C1 25 99 */	bl PSMTXMultVec
/* 807347D8  38 7F 0B B8 */	addi r3, r31, 0xbb8
/* 807347DC  38 81 00 08 */	addi r4, r1, 8
/* 807347E0  4B B3 AE 69 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807347E4  38 7F 0B B8 */	addi r3, r31, 0xbb8
/* 807347E8  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 807347EC  4B B3 AF 1D */	bl SetR__8cM3dGSphFf
/* 807347F0  7F 83 E3 78 */	mr r3, r28
/* 807347F4  38 9F 0A 94 */	addi r4, r31, 0xa94
/* 807347F8  4B B3 03 B1 */	bl Set__4cCcSFP8cCcD_Obj
/* 807347FC  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80734800  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80734804  38 63 02 40 */	addi r3, r3, 0x240
/* 80734808  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8073480C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80734810  4B C1 1C A1 */	bl PSMTXCopy
/* 80734814  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80734818  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8073481C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80734820  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80734824  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80734828  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8073482C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80734830  38 81 00 14 */	addi r4, r1, 0x14
/* 80734834  38 A1 00 08 */	addi r5, r1, 8
/* 80734838  4B C1 25 35 */	bl PSMTXMultVec
/* 8073483C  38 7F 0C F0 */	addi r3, r31, 0xcf0
/* 80734840  38 81 00 08 */	addi r4, r1, 8
/* 80734844  4B B3 AE 05 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80734848  38 7F 0C F0 */	addi r3, r31, 0xcf0
/* 8073484C  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 80734850  4B B3 AE B9 */	bl SetR__8cM3dGSphFf
/* 80734854  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 80734858  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8073485C  38 63 02 40 */	addi r3, r3, 0x240
/* 80734860  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80734864  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80734868  4B C1 1C 49 */	bl PSMTXCopy
/* 8073486C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80734870  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80734874  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80734878  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8073487C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80734880  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80734884  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80734888  38 81 00 14 */	addi r4, r1, 0x14
/* 8073488C  38 A1 00 08 */	addi r5, r1, 8
/* 80734890  4B C1 24 DD */	bl PSMTXMultVec
/* 80734894  38 7F 0E 28 */	addi r3, r31, 0xe28
/* 80734898  38 81 00 08 */	addi r4, r1, 8
/* 8073489C  4B B3 AD AD */	bl SetC__8cM3dGSphFRC4cXyz
/* 807348A0  38 7F 0E 28 */	addi r3, r31, 0xe28
/* 807348A4  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 807348A8  4B B3 AE 61 */	bl SetR__8cM3dGSphFf
/* 807348AC  7F 83 E3 78 */	mr r3, r28
/* 807348B0  38 9F 0B CC */	addi r4, r31, 0xbcc
/* 807348B4  4B B3 02 F5 */	bl Set__4cCcSFP8cCcD_Obj
/* 807348B8  7F 83 E3 78 */	mr r3, r28
/* 807348BC  38 9F 0D 04 */	addi r4, r31, 0xd04
/* 807348C0  4B B3 02 E9 */	bl Set__4cCcSFP8cCcD_Obj
/* 807348C4  39 61 00 30 */	addi r11, r1, 0x30
/* 807348C8  4B C2 D9 5D */	bl _restgpr_28
/* 807348CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807348D0  7C 08 03 A6 */	mtlr r0
/* 807348D4  38 21 00 30 */	addi r1, r1, 0x30
/* 807348D8  4E 80 00 20 */	blr 
