lbl_800A8310:
/* 800A8310  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A8314  7C 08 02 A6 */	mflr r0
/* 800A8318  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A831C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A8320  93 C1 00 08 */	stw r30, 8(r1)
/* 800A8324  7C 7E 1B 78 */	mr r30, r3
/* 800A8328  3C 60 80 39 */	lis r3, lit_3757@ha
/* 800A832C  3B E3 D6 58 */	addi r31, r3, lit_3757@l
/* 800A8330  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800A8334  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800A8338  41 82 01 04 */	beq lbl_800A843C
/* 800A833C  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A8340  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A8344  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A8348  38 63 00 C0 */	addi r3, r3, 0xc0
/* 800A834C  38 9F 49 1C */	addi r4, r31, 0x491c
/* 800A8350  38 BE 05 38 */	addi r5, r30, 0x538
/* 800A8354  48 29 EA 19 */	bl PSMTXMultVec
/* 800A8358  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 800A835C  D0 1E 37 68 */	stfs f0, 0x3768(r30)
/* 800A8360  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 800A8364  D0 1E 37 6C */	stfs f0, 0x376c(r30)
/* 800A8368  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 800A836C  D0 1E 37 70 */	stfs f0, 0x3770(r30)
/* 800A8370  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A8374  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A8378  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A837C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 800A8380  38 9F 49 10 */	addi r4, r31, 0x4910
/* 800A8384  38 BE 34 E0 */	addi r5, r30, 0x34e0
/* 800A8388  48 29 E9 E5 */	bl PSMTXMultVec
/* 800A838C  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A8390  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A8394  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A8398  38 63 00 C0 */	addi r3, r3, 0xc0
/* 800A839C  38 9F 49 28 */	addi r4, r31, 0x4928
/* 800A83A0  38 BE 05 A4 */	addi r5, r30, 0x5a4
/* 800A83A4  48 29 E9 C9 */	bl PSMTXMultVec
/* 800A83A8  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A83AC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A83B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A83B4  C0 03 03 9C */	lfs f0, 0x39c(r3)
/* 800A83B8  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 800A83BC  C0 03 03 AC */	lfs f0, 0x3ac(r3)
/* 800A83C0  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 800A83C4  C0 03 03 BC */	lfs f0, 0x3bc(r3)
/* 800A83C8  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 800A83CC  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A83D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A83D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A83D8  C0 03 04 8C */	lfs f0, 0x48c(r3)
/* 800A83DC  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 800A83E0  C0 03 04 9C */	lfs f0, 0x49c(r3)
/* 800A83E4  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 800A83E8  C0 03 04 AC */	lfs f0, 0x4ac(r3)
/* 800A83EC  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 800A83F0  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A83F4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A83F8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A83FC  C0 03 05 DC */	lfs f0, 0x5dc(r3)
/* 800A8400  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 800A8404  C0 03 05 EC */	lfs f0, 0x5ec(r3)
/* 800A8408  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 800A840C  C0 03 05 FC */	lfs f0, 0x5fc(r3)
/* 800A8410  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 800A8414  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A8418  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A841C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A8420  C0 03 06 CC */	lfs f0, 0x6cc(r3)
/* 800A8424  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 800A8428  C0 03 06 DC */	lfs f0, 0x6dc(r3)
/* 800A842C  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 800A8430  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 800A8434  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
/* 800A8438  48 00 02 7C */	b lbl_800A86B4
lbl_800A843C:
/* 800A843C  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A8440  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A8444  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A8448  A0 1E 30 B4 */	lhz r0, 0x30b4(r30)
/* 800A844C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A8450  7C 63 02 14 */	add r3, r3, r0
/* 800A8454  38 9F 48 F8 */	addi r4, r31, 0x48f8
/* 800A8458  38 BE 05 38 */	addi r5, r30, 0x538
/* 800A845C  48 29 E9 11 */	bl PSMTXMultVec
/* 800A8460  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800A8464  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800A8468  80 83 5F 18 */	lwz r4, 0x5f18(r3)
/* 800A846C  54 80 04 A5 */	rlwinm. r0, r4, 0, 0x12, 0x12
/* 800A8470  41 82 01 24 */	beq lbl_800A8594
/* 800A8474  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 800A8478  74 00 02 01 */	andis. r0, r0, 0x201
/* 800A847C  40 82 01 18 */	bne lbl_800A8594
/* 800A8480  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800A8484  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800A8488  41 82 00 10 */	beq lbl_800A8498
/* 800A848C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800A8490  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800A8494  40 82 01 00 */	bne lbl_800A8594
lbl_800A8498:
/* 800A8498  54 80 01 09 */	rlwinm. r0, r4, 0, 4, 4
/* 800A849C  40 82 00 F8 */	bne lbl_800A8594
/* 800A84A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800A84A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800A84A8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800A84AC  C0 5E 38 38 */	lfs f2, 0x3838(r30)
/* 800A84B0  C0 7E 04 D8 */	lfs f3, 0x4d8(r30)
/* 800A84B4  48 29 E4 35 */	bl PSMTXTrans
/* 800A84B8  7F C3 F3 78 */	mr r3, r30
/* 800A84BC  48 03 9F 41 */	bl concatMagneBootMtx__9daAlink_cFv
/* 800A84C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800A84C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800A84C8  A8 9E 31 0A */	lha r4, 0x310a(r30)
/* 800A84CC  A8 BE 31 0C */	lha r5, 0x310c(r30)
/* 800A84D0  38 C0 00 00 */	li r6, 0
/* 800A84D4  4B F6 3D CD */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 800A84D8  7F C3 F3 78 */	mr r3, r30
/* 800A84DC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800A84E0  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800A84E4  7D 89 03 A6 */	mtctr r12
/* 800A84E8  4E 80 04 21 */	bctrl 
/* 800A84EC  28 03 00 00 */	cmplwi r3, 0
/* 800A84F0  41 82 00 1C */	beq lbl_800A850C
/* 800A84F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800A84F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800A84FC  38 9F 49 58 */	addi r4, r31, 0x4958
/* 800A8500  38 BE 37 68 */	addi r5, r30, 0x3768
/* 800A8504  48 29 E8 69 */	bl PSMTXMultVec
/* 800A8508  48 00 00 A4 */	b lbl_800A85AC
lbl_800A850C:
/* 800A850C  7F C3 F3 78 */	mr r3, r30
/* 800A8510  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800A8514  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800A8518  7D 89 03 A6 */	mtctr r12
/* 800A851C  4E 80 04 21 */	bctrl 
/* 800A8520  28 03 00 00 */	cmplwi r3, 0
/* 800A8524  41 82 00 1C */	beq lbl_800A8540
/* 800A8528  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800A852C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800A8530  38 9F 49 40 */	addi r4, r31, 0x4940
/* 800A8534  38 BE 37 68 */	addi r5, r30, 0x3768
/* 800A8538  48 29 E8 35 */	bl PSMTXMultVec
/* 800A853C  48 00 00 70 */	b lbl_800A85AC
lbl_800A8540:
/* 800A8540  38 00 00 00 */	li r0, 0
/* 800A8544  88 7E 2F AA */	lbz r3, 0x2faa(r30)
/* 800A8548  28 03 00 01 */	cmplwi r3, 1
/* 800A854C  41 82 00 0C */	beq lbl_800A8558
/* 800A8550  28 03 00 02 */	cmplwi r3, 2
/* 800A8554  40 82 00 08 */	bne lbl_800A855C
lbl_800A8558:
/* 800A8558  38 00 00 01 */	li r0, 1
lbl_800A855C:
/* 800A855C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800A8560  41 82 00 1C */	beq lbl_800A857C
/* 800A8564  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800A8568  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800A856C  38 9F 49 4C */	addi r4, r31, 0x494c
/* 800A8570  38 BE 37 68 */	addi r5, r30, 0x3768
/* 800A8574  48 29 E7 F9 */	bl PSMTXMultVec
/* 800A8578  48 00 00 34 */	b lbl_800A85AC
lbl_800A857C:
/* 800A857C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800A8580  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800A8584  38 9F 49 34 */	addi r4, r31, 0x4934
/* 800A8588  38 BE 37 68 */	addi r5, r30, 0x3768
/* 800A858C  48 29 E7 E1 */	bl PSMTXMultVec
/* 800A8590  48 00 00 1C */	b lbl_800A85AC
lbl_800A8594:
/* 800A8594  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 800A8598  D0 1E 37 68 */	stfs f0, 0x3768(r30)
/* 800A859C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 800A85A0  D0 1E 37 6C */	stfs f0, 0x376c(r30)
/* 800A85A4  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 800A85A8  D0 1E 37 70 */	stfs f0, 0x3770(r30)
lbl_800A85AC:
/* 800A85AC  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A85B0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A85B4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A85B8  A0 1E 30 B4 */	lhz r0, 0x30b4(r30)
/* 800A85BC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A85C0  7C 63 02 14 */	add r3, r3, r0
/* 800A85C4  38 9F 48 EC */	addi r4, r31, 0x48ec
/* 800A85C8  38 BE 34 E0 */	addi r5, r30, 0x34e0
/* 800A85CC  48 29 E7 A1 */	bl PSMTXMultVec
/* 800A85D0  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A85D4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A85D8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A85DC  A0 1E 30 B4 */	lhz r0, 0x30b4(r30)
/* 800A85E0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A85E4  7C 63 02 14 */	add r3, r3, r0
/* 800A85E8  38 9F 49 04 */	addi r4, r31, 0x4904
/* 800A85EC  38 BE 05 A4 */	addi r5, r30, 0x5a4
/* 800A85F0  48 29 E7 7D */	bl PSMTXMultVec
/* 800A85F4  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A85F8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A85FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A8600  A0 1E 30 B8 */	lhz r0, 0x30b8(r30)
/* 800A8604  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A8608  7C 63 02 14 */	add r3, r3, r0
/* 800A860C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800A8610  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 800A8614  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800A8618  D0 1E 05 CC */	stfs f0, 0x5cc(r30)
/* 800A861C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800A8620  D0 1E 05 D0 */	stfs f0, 0x5d0(r30)
/* 800A8624  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A8628  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A862C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A8630  A0 1E 30 BA */	lhz r0, 0x30ba(r30)
/* 800A8634  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A8638  7C 63 02 14 */	add r3, r3, r0
/* 800A863C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800A8640  D0 1E 05 D4 */	stfs f0, 0x5d4(r30)
/* 800A8644  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800A8648  D0 1E 05 D8 */	stfs f0, 0x5d8(r30)
/* 800A864C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800A8650  D0 1E 05 DC */	stfs f0, 0x5dc(r30)
/* 800A8654  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A8658  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A865C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A8660  A0 1E 30 BC */	lhz r0, 0x30bc(r30)
/* 800A8664  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A8668  7C 63 02 14 */	add r3, r3, r0
/* 800A866C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800A8670  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 800A8674  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800A8678  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 800A867C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800A8680  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 800A8684  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A8688  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A868C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A8690  A0 1E 30 BE */	lhz r0, 0x30be(r30)
/* 800A8694  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800A8698  7C 63 02 14 */	add r3, r3, r0
/* 800A869C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800A86A0  D0 1E 05 EC */	stfs f0, 0x5ec(r30)
/* 800A86A4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800A86A8  D0 1E 05 F0 */	stfs f0, 0x5f0(r30)
/* 800A86AC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800A86B0  D0 1E 05 F4 */	stfs f0, 0x5f4(r30)
lbl_800A86B4:
/* 800A86B4  80 7E 06 50 */	lwz r3, 0x650(r30)
/* 800A86B8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A86BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A86C0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800A86C4  D0 1E 38 34 */	stfs f0, 0x3834(r30)
/* 800A86C8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800A86CC  D0 1E 38 38 */	stfs f0, 0x3838(r30)
/* 800A86D0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800A86D4  D0 1E 38 3C */	stfs f0, 0x383c(r30)
/* 800A86D8  C0 1E 05 A4 */	lfs f0, 0x5a4(r30)
/* 800A86DC  D0 1E 05 B0 */	stfs f0, 0x5b0(r30)
/* 800A86E0  C0 1E 05 A8 */	lfs f0, 0x5a8(r30)
/* 800A86E4  D0 1E 05 B4 */	stfs f0, 0x5b4(r30)
/* 800A86E8  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 800A86EC  D0 1E 05 B8 */	stfs f0, 0x5b8(r30)
/* 800A86F0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800A86F4  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 800A86F8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800A86FC  D0 1E 05 FC */	stfs f0, 0x5fc(r30)
/* 800A8700  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 800A8704  D0 1E 06 00 */	stfs f0, 0x600(r30)
/* 800A8708  88 7E 2F 99 */	lbz r3, 0x2f99(r30)
/* 800A870C  54 60 07 7F */	clrlwi. r0, r3, 0x1d
/* 800A8710  41 82 00 B0 */	beq lbl_800A87C0
/* 800A8714  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 800A8718  41 82 00 14 */	beq lbl_800A872C
/* 800A871C  C0 3E 34 DC */	lfs f1, 0x34dc(r30)
/* 800A8720  C0 1E 35 90 */	lfs f0, 0x3590(r30)
/* 800A8724  EC 81 00 28 */	fsubs f4, f1, f0
/* 800A8728  48 00 00 08 */	b lbl_800A8730
lbl_800A872C:
/* 800A872C  C0 82 92 C0 */	lfs f4, lit_6108(r2)
lbl_800A8730:
/* 800A8730  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800A8734  41 82 00 14 */	beq lbl_800A8748
/* 800A8738  C0 3E 34 D4 */	lfs f1, 0x34d4(r30)
/* 800A873C  C0 1E 35 88 */	lfs f0, 0x3588(r30)
/* 800A8740  EC A1 00 28 */	fsubs f5, f1, f0
/* 800A8744  48 00 00 08 */	b lbl_800A874C
lbl_800A8748:
/* 800A8748  C0 A2 92 C0 */	lfs f5, lit_6108(r2)
lbl_800A874C:
/* 800A874C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 800A8750  41 82 00 14 */	beq lbl_800A8764
/* 800A8754  C0 3E 33 B0 */	lfs f1, 0x33b0(r30)
/* 800A8758  C0 1E 35 8C */	lfs f0, 0x358c(r30)
/* 800A875C  EC 41 00 28 */	fsubs f2, f1, f0
/* 800A8760  48 00 00 08 */	b lbl_800A8768
lbl_800A8764:
/* 800A8764  C0 42 92 C0 */	lfs f2, lit_6108(r2)
lbl_800A8768:
/* 800A8768  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800A876C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800A8770  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 800A8774  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 800A8778  7C E3 04 2E */	lfsx f7, r3, r0
/* 800A877C  7C 63 02 14 */	add r3, r3, r0
/* 800A8780  C0 C3 00 04 */	lfs f6, 4(r3)
/* 800A8784  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800A8788  EC 04 01 B2 */	fmuls f0, f4, f6
/* 800A878C  EC 21 00 28 */	fsubs f1, f1, f0
/* 800A8790  EC 05 01 F2 */	fmuls f0, f5, f7
/* 800A8794  EC 61 00 2A */	fadds f3, f1, f0
/* 800A8798  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800A879C  EC 40 10 28 */	fsubs f2, f0, f2
/* 800A87A0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800A87A4  EC 04 01 F2 */	fmuls f0, f4, f7
/* 800A87A8  EC 21 00 28 */	fsubs f1, f1, f0
/* 800A87AC  EC 05 01 B2 */	fmuls f0, f5, f6
/* 800A87B0  EC 01 00 28 */	fsubs f0, f1, f0
/* 800A87B4  D0 1E 05 F8 */	stfs f0, 0x5f8(r30)
/* 800A87B8  D0 5E 05 FC */	stfs f2, 0x5fc(r30)
/* 800A87BC  D0 7E 06 00 */	stfs f3, 0x600(r30)
lbl_800A87C0:
/* 800A87C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A87C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A87C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A87CC  7C 08 03 A6 */	mtlr r0
/* 800A87D0  38 21 00 10 */	addi r1, r1, 0x10
/* 800A87D4  4E 80 00 20 */	blr 
