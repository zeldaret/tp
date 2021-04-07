lbl_800ED78C:
/* 800ED78C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800ED790  7C 08 02 A6 */	mflr r0
/* 800ED794  90 01 00 24 */	stw r0, 0x24(r1)
/* 800ED798  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800ED79C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800ED7A0  7C 7F 1B 78 */	mr r31, r3
/* 800ED7A4  80 83 28 18 */	lwz r4, 0x2818(r3)
/* 800ED7A8  7C 9E 23 78 */	mr r30, r4
/* 800ED7AC  28 04 00 00 */	cmplwi r4, 0
/* 800ED7B0  40 82 00 34 */	bne lbl_800ED7E4
/* 800ED7B4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800ED7B8  28 00 01 50 */	cmplwi r0, 0x150
/* 800ED7BC  41 82 00 0C */	beq lbl_800ED7C8
/* 800ED7C0  28 00 01 48 */	cmplwi r0, 0x148
/* 800ED7C4  40 82 00 0C */	bne lbl_800ED7D0
lbl_800ED7C8:
/* 800ED7C8  38 60 00 01 */	li r3, 1
/* 800ED7CC  48 00 01 28 */	b lbl_800ED8F4
lbl_800ED7D0:
/* 800ED7D0  4B FF F4 01 */	bl rideGetOff__9daAlink_cFv
/* 800ED7D4  7F E3 FB 78 */	mr r3, r31
/* 800ED7D8  4B FC 81 15 */	bl checkWaitAction__9daAlink_cFv
/* 800ED7DC  38 60 00 00 */	li r3, 0
/* 800ED7E0  48 00 01 14 */	b lbl_800ED8F4
lbl_800ED7E4:
/* 800ED7E4  C0 04 05 2C */	lfs f0, 0x52c(r4)
/* 800ED7E8  FC 00 02 10 */	fabs f0, f0
/* 800ED7EC  FC 20 00 18 */	frsp f1, f0
/* 800ED7F0  C0 02 93 E4 */	lfs f0, lit_12328(r2)
/* 800ED7F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800ED7F8  40 80 00 14 */	bge lbl_800ED80C
/* 800ED7FC  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800ED800  60 00 00 01 */	ori r0, r0, 1
/* 800ED804  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 800ED808  48 00 00 10 */	b lbl_800ED818
lbl_800ED80C:
/* 800ED80C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800ED810  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 800ED814  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_800ED818:
/* 800ED818  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800ED81C  28 00 01 50 */	cmplwi r0, 0x150
/* 800ED820  41 82 00 60 */	beq lbl_800ED880
/* 800ED824  28 00 01 48 */	cmplwi r0, 0x148
/* 800ED828  41 82 00 58 */	beq lbl_800ED880
/* 800ED82C  28 1E 00 00 */	cmplwi r30, 0
/* 800ED830  41 82 00 14 */	beq lbl_800ED844
/* 800ED834  7F C3 F3 78 */	mr r3, r30
/* 800ED838  4B F4 A5 31 */	bl checkDownDamage__10e_wb_classFv
/* 800ED83C  2C 03 00 00 */	cmpwi r3, 0
/* 800ED840  41 82 00 14 */	beq lbl_800ED854
lbl_800ED844:
/* 800ED844  7F E3 FB 78 */	mr r3, r31
/* 800ED848  48 00 1B 15 */	bl boarForceGetOff__9daAlink_cFv
/* 800ED84C  38 60 00 00 */	li r3, 0
/* 800ED850  48 00 00 A4 */	b lbl_800ED8F4
lbl_800ED854:
/* 800ED854  7F C3 F3 78 */	mr r3, r30
/* 800ED858  4B F4 A5 3D */	bl checkNormalRideMode__10e_wb_classCFv
/* 800ED85C  2C 03 00 00 */	cmpwi r3, 0
/* 800ED860  40 82 00 20 */	bne lbl_800ED880
/* 800ED864  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800ED868  28 00 00 53 */	cmplwi r0, 0x53
/* 800ED86C  41 82 00 14 */	beq lbl_800ED880
/* 800ED870  7F E3 FB 78 */	mr r3, r31
/* 800ED874  48 00 60 75 */	bl procBoarRunInit__9daAlink_cFv
/* 800ED878  38 60 00 00 */	li r3, 0
/* 800ED87C  48 00 00 78 */	b lbl_800ED8F4
lbl_800ED880:
/* 800ED880  80 7E 05 E0 */	lwz r3, 0x5e0(r30)
/* 800ED884  80 63 00 04 */	lwz r3, 4(r3)
/* 800ED888  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800ED88C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800ED890  3B C3 02 D0 */	addi r30, r3, 0x2d0
/* 800ED894  38 00 00 60 */	li r0, 0x60
/* 800ED898  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800ED89C  7F C3 F3 78 */	mr r3, r30
/* 800ED8A0  3C 80 80 42 */	lis r4, l_localBoarRidePos@ha /* 0x804255D4@ha */
/* 800ED8A4  38 84 55 D4 */	addi r4, r4, l_localBoarRidePos@l /* 0x804255D4@l */
/* 800ED8A8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 800ED8AC  48 25 94 C1 */	bl PSMTXMultVec
/* 800ED8B0  7F C3 F3 78 */	mr r3, r30
/* 800ED8B4  38 81 00 08 */	addi r4, r1, 8
/* 800ED8B8  4B F1 F3 49 */	bl mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 800ED8BC  A8 01 00 0C */	lha r0, 0xc(r1)
/* 800ED8C0  7C 00 00 D0 */	neg r0, r0
/* 800ED8C4  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 800ED8C8  A8 61 00 0A */	lha r3, 0xa(r1)
/* 800ED8CC  38 03 40 00 */	addi r0, r3, 0x4000
/* 800ED8D0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 800ED8D4  A8 01 00 08 */	lha r0, 8(r1)
/* 800ED8D8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 800ED8DC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800ED8E0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800ED8E4  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800ED8E8  C0 03 05 2C */	lfs f0, 0x52c(r3)
/* 800ED8EC  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800ED8F0  38 60 00 01 */	li r3, 1
lbl_800ED8F4:
/* 800ED8F4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800ED8F8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800ED8FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800ED900  7C 08 03 A6 */	mtlr r0
/* 800ED904  38 21 00 20 */	addi r1, r1, 0x20
/* 800ED908  4E 80 00 20 */	blr 
