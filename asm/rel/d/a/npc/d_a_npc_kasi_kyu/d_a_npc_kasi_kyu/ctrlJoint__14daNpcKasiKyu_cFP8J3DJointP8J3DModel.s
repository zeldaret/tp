lbl_80A222D0:
/* 80A222D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A222D4  7C 08 02 A6 */	mflr r0
/* 80A222D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A222DC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A222E0  4B 93 FE F8 */	b _savegpr_28
/* 80A222E4  7C 7D 1B 78 */	mr r29, r3
/* 80A222E8  7C BE 2B 78 */	mr r30, r5
/* 80A222EC  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80A222F0  7C BF 2B 78 */	mr r31, r5
/* 80A222F4  3C 60 80 A2 */	lis r3, lit_4270@ha
/* 80A222F8  38 83 59 48 */	addi r4, r3, lit_4270@l
/* 80A222FC  80 64 00 00 */	lwz r3, 0(r4)
/* 80A22300  80 04 00 04 */	lwz r0, 4(r4)
/* 80A22304  90 61 00 08 */	stw r3, 8(r1)
/* 80A22308  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2230C  80 04 00 08 */	lwz r0, 8(r4)
/* 80A22310  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A22314  2C 05 00 00 */	cmpwi r5, 0
/* 80A22318  40 82 00 B0 */	bne lbl_80A223C8
/* 80A2231C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A22320  80 63 00 04 */	lwz r3, 4(r3)
/* 80A22324  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A22328  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A2232C  38 63 00 30 */	addi r3, r3, 0x30
/* 80A22330  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A22334  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A22338  4B 92 41 78 */	b PSMTXCopy
/* 80A2233C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A22340  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80A22344  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A22348  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80A2234C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A22350  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80A22354  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A22358  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80A2235C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A22360  80 63 00 04 */	lwz r3, 4(r3)
/* 80A22364  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A22368  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A2236C  38 63 00 60 */	addi r3, r3, 0x60
/* 80A22370  7F 84 E3 78 */	mr r4, r28
/* 80A22374  4B 92 41 3C */	b PSMTXCopy
/* 80A22378  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A2237C  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80A22380  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A22384  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80A22388  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A2238C  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80A22390  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A22394  80 63 00 04 */	lwz r3, 4(r3)
/* 80A22398  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A2239C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A223A0  38 63 00 90 */	addi r3, r3, 0x90
/* 80A223A4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A223A8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A223AC  4B 92 41 04 */	b PSMTXCopy
/* 80A223B0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A223B4  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80A223B8  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A223BC  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80A223C0  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A223C4  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80A223C8:
/* 80A223C8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A223CC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A223D0  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80A223D4  7C 60 E2 14 */	add r3, r0, r28
/* 80A223D8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A223DC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A223E0  4B 92 40 D0 */	b PSMTXCopy
/* 80A223E4  2C 1F 00 04 */	cmpwi r31, 4
/* 80A223E8  40 80 00 2C */	bge lbl_80A22414
/* 80A223EC  2C 1F 00 01 */	cmpwi r31, 1
/* 80A223F0  40 80 00 08 */	bge lbl_80A223F8
/* 80A223F4  48 00 00 20 */	b lbl_80A22414
lbl_80A223F8:
/* 80A223F8  7F A3 EB 78 */	mr r3, r29
/* 80A223FC  7F E4 FB 78 */	mr r4, r31
/* 80A22400  38 A1 00 08 */	addi r5, r1, 8
/* 80A22404  3C C0 80 A2 */	lis r6, m__20daNpcKasiKyu_Param_c@ha
/* 80A22408  38 C6 58 B8 */	addi r6, r6, m__20daNpcKasiKyu_Param_c@l
/* 80A2240C  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80A22410  4B 73 0F 6C */	b setLookatMtx__8daNpcF_cFiPif
lbl_80A22414:
/* 80A22414  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A22418  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A2241C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A22420  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A22424  7C 80 E2 14 */	add r4, r0, r28
/* 80A22428  4B 92 40 88 */	b PSMTXCopy
/* 80A2242C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A22430  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A22434  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80A22438  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80A2243C  4B 92 40 74 */	b PSMTXCopy
/* 80A22440  38 60 00 01 */	li r3, 1
/* 80A22444  39 61 00 30 */	addi r11, r1, 0x30
/* 80A22448  4B 93 FD DC */	b _restgpr_28
/* 80A2244C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A22450  7C 08 03 A6 */	mtlr r0
/* 80A22454  38 21 00 30 */	addi r1, r1, 0x30
/* 80A22458  4E 80 00 20 */	blr 
