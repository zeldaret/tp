lbl_80B4A724:
/* 80B4A724  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B4A728  7C 08 02 A6 */	mflr r0
/* 80B4A72C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B4A730  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B4A734  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B4A738  7C 7F 1B 78 */	mr r31, r3
/* 80B4A73C  3C 60 80 B5 */	lis r3, m__19daNpc_yamiT_Param_c@ha /* 0x80B4CDA4@ha */
/* 80B4A740  3B C3 CD A4 */	addi r30, r3, m__19daNpc_yamiT_Param_c@l /* 0x80B4CDA4@l */
/* 80B4A744  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B4A748  38 80 00 00 */	li r4, 0
/* 80B4A74C  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B4A750  7C A3 00 50 */	subf r5, r3, r0
/* 80B4A754  4B 4B 8D 05 */	bl memset
/* 80B4A758  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B4A75C  4B 5F B1 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4A760  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B4A764  4B 5F B1 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4A768  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B4A76C  4B 5F AF 69 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B4A770  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B4A774  4B 5F AF 61 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B4A778  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B4A77C  4B 5F C5 1D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B4A780  38 A0 00 00 */	li r5, 0
/* 80B4A784  38 60 00 00 */	li r3, 0
/* 80B4A788  7C A4 2B 78 */	mr r4, r5
/* 80B4A78C  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B4A790  38 00 00 02 */	li r0, 2
/* 80B4A794  7C 09 03 A6 */	mtctr r0
lbl_80B4A798:
/* 80B4A798  7C DF 22 14 */	add r6, r31, r4
/* 80B4A79C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B4A7A0  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B4A7A4  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B4A7A8  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B4A7AC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B4A7B0  38 63 00 04 */	addi r3, r3, 4
/* 80B4A7B4  38 84 00 06 */	addi r4, r4, 6
/* 80B4A7B8  42 00 FF E0 */	bdnz lbl_80B4A798
/* 80B4A7BC  38 00 00 00 */	li r0, 0
/* 80B4A7C0  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B4A7C4  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B4A7C8  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B4A7CC  38 00 FF FF */	li r0, -1
/* 80B4A7D0  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B4A7D4  38 00 00 01 */	li r0, 1
/* 80B4A7D8  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B4A7DC  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80B4A7E0  4B 71 D1 75 */	bl cM_rndF__Ff
/* 80B4A7E4  FC 00 08 1E */	fctiwz f0, f1
/* 80B4A7E8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B4A7EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B4A7F0  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B4A7F4  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80B4A7F8  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B4A7FC  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B4A800  38 7F 0F 88 */	addi r3, r31, 0xf88
/* 80B4A804  38 80 00 00 */	li r4, 0
/* 80B4A808  38 1F 0F C8 */	addi r0, r31, 0xfc8
/* 80B4A80C  7C A3 00 50 */	subf r5, r3, r0
/* 80B4A810  4B 4B 8C 49 */	bl memset
/* 80B4A814  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80B4A818  28 03 00 00 */	cmplwi r3, 0
/* 80B4A81C  41 82 00 08 */	beq lbl_80B4A824
/* 80B4A820  4B 5F AF 45 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80B4A824:
/* 80B4A824  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B4A828  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80B4A82C  28 00 00 FF */	cmplwi r0, 0xff
/* 80B4A830  41 82 00 28 */	beq lbl_80B4A858
/* 80B4A834  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80B4A838  4B 5F B4 09 */	bl initialize__13daNpcT_Path_cFv
/* 80B4A83C  38 7F 0F A0 */	addi r3, r31, 0xfa0
/* 80B4A840  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B4A844  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B4A848  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B4A84C  7C 05 07 74 */	extsb r5, r0
/* 80B4A850  38 C0 00 00 */	li r6, 0
/* 80B4A854  4B 5F B4 21 */	bl setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80B4A858:
/* 80B4A858  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B4A85C  54 03 27 3E */	srwi r3, r0, 0x1c
/* 80B4A860  30 03 FF FF */	addic r0, r3, -1
/* 80B4A864  7C 00 19 10 */	subfe r0, r0, r3
/* 80B4A868  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B4A86C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B4A870  40 82 00 08 */	bne lbl_80B4A878
/* 80B4A874  38 00 00 00 */	li r0, 0
lbl_80B4A878:
/* 80B4A878  2C 00 00 00 */	cmpwi r0, 0
/* 80B4A87C  41 82 00 28 */	beq lbl_80B4A8A4
/* 80B4A880  38 00 00 01 */	li r0, 1
/* 80B4A884  98 1F 0F 81 */	stb r0, 0xf81(r31)
/* 80B4A888  80 1F 0E 70 */	lwz r0, 0xe70(r31)
/* 80B4A88C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B4A890  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B4A894  80 1F 0E 5C */	lwz r0, 0xe5c(r31)
/* 80B4A898  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B4A89C  90 1F 0E 5C */	stw r0, 0xe5c(r31)
/* 80B4A8A0  48 00 00 24 */	b lbl_80B4A8C4
lbl_80B4A8A4:
/* 80B4A8A4  38 00 00 00 */	li r0, 0
/* 80B4A8A8  98 1F 0F 81 */	stb r0, 0xf81(r31)
/* 80B4A8AC  80 1F 0E 70 */	lwz r0, 0xe70(r31)
/* 80B4A8B0  60 00 00 01 */	ori r0, r0, 1
/* 80B4A8B4  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B4A8B8  80 1F 0E 5C */	lwz r0, 0xe5c(r31)
/* 80B4A8BC  60 00 00 01 */	ori r0, r0, 1
/* 80B4A8C0  90 1F 0E 5C */	stw r0, 0xe5c(r31)
lbl_80B4A8C4:
/* 80B4A8C4  7F E3 FB 78 */	mr r3, r31
/* 80B4A8C8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B4A8CC  4B 60 01 4D */	bl setAngle__8daNpcT_cFs
/* 80B4A8D0  3C 60 80 B5 */	lis r3, lit_4469@ha /* 0x80B4CFF4@ha */
/* 80B4A8D4  38 83 CF F4 */	addi r4, r3, lit_4469@l /* 0x80B4CFF4@l */
/* 80B4A8D8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B4A8DC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B4A8E0  90 61 00 08 */	stw r3, 8(r1)
/* 80B4A8E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B4A8E8  80 04 00 08 */	lwz r0, 8(r4)
/* 80B4A8EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B4A8F0  7F E3 FB 78 */	mr r3, r31
/* 80B4A8F4  38 81 00 08 */	addi r4, r1, 8
/* 80B4A8F8  48 00 0A 7D */	bl setAction__13daNpc_yamiT_cFM13daNpc_yamiT_cFPCvPvPv_i
/* 80B4A8FC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B4A900  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B4A904  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B4A908  7C 08 03 A6 */	mtlr r0
/* 80B4A90C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B4A910  4E 80 00 20 */	blr 
