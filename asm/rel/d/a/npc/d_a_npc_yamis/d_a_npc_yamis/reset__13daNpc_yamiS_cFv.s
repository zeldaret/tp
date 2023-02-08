lbl_80B47040:
/* 80B47040  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B47044  7C 08 02 A6 */	mflr r0
/* 80B47048  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B4704C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B47050  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B47054  7C 7F 1B 78 */	mr r31, r3
/* 80B47058  3C 60 80 B5 */	lis r3, m__19daNpc_yamiS_Param_c@ha /* 0x80B496B0@ha */
/* 80B4705C  3B C3 96 B0 */	addi r30, r3, m__19daNpc_yamiS_Param_c@l /* 0x80B496B0@l */
/* 80B47060  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B47064  38 80 00 00 */	li r4, 0
/* 80B47068  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B4706C  7C A3 00 50 */	subf r5, r3, r0
/* 80B47070  4B 4B C3 E9 */	bl memset
/* 80B47074  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B47078  4B 5F E8 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4707C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B47080  4B 5F E8 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B47084  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B47088  4B 5F E6 4D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B4708C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B47090  4B 5F E6 45 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B47094  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B47098  4B 5F FC 01 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B4709C  38 A0 00 00 */	li r5, 0
/* 80B470A0  38 60 00 00 */	li r3, 0
/* 80B470A4  7C A4 2B 78 */	mr r4, r5
/* 80B470A8  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B470AC  38 00 00 02 */	li r0, 2
/* 80B470B0  7C 09 03 A6 */	mtctr r0
lbl_80B470B4:
/* 80B470B4  7C DF 22 14 */	add r6, r31, r4
/* 80B470B8  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B470BC  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B470C0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B470C4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B470C8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B470CC  38 63 00 04 */	addi r3, r3, 4
/* 80B470D0  38 84 00 06 */	addi r4, r4, 6
/* 80B470D4  42 00 FF E0 */	bdnz lbl_80B470B4
/* 80B470D8  38 00 00 00 */	li r0, 0
/* 80B470DC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B470E0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B470E4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B470E8  38 00 FF FF */	li r0, -1
/* 80B470EC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B470F0  38 00 00 01 */	li r0, 1
/* 80B470F4  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B470F8  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80B470FC  4B 72 08 59 */	bl cM_rndF__Ff
/* 80B47100  FC 00 08 1E */	fctiwz f0, f1
/* 80B47104  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B47108  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B4710C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B47110  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80B47114  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B47118  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B4711C  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B47120  38 80 00 00 */	li r4, 0
/* 80B47124  38 1F 0F C4 */	addi r0, r31, 0xfc4
/* 80B47128  7C A3 00 50 */	subf r5, r3, r0
/* 80B4712C  4B 4B C3 2D */	bl memset
/* 80B47130  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80B47134  28 03 00 00 */	cmplwi r3, 0
/* 80B47138  41 82 00 08 */	beq lbl_80B47140
/* 80B4713C  4B 5F E6 29 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80B47140:
/* 80B47140  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B47144  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80B47148  28 00 00 FF */	cmplwi r0, 0xff
/* 80B4714C  41 82 00 28 */	beq lbl_80B47174
/* 80B47150  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B47154  4B 5F EA ED */	bl initialize__13daNpcT_Path_cFv
/* 80B47158  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B4715C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B47160  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B47164  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B47168  7C 05 07 74 */	extsb r5, r0
/* 80B4716C  38 C0 00 00 */	li r6, 0
/* 80B47170  4B 5F EB 05 */	bl setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80B47174:
/* 80B47174  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80B47178  54 03 27 3E */	srwi r3, r0, 0x1c
/* 80B4717C  30 03 FF FF */	addic r0, r3, -1
/* 80B47180  7C 00 19 10 */	subfe r0, r0, r3
/* 80B47184  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80B47188  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B4718C  40 82 00 08 */	bne lbl_80B47194
/* 80B47190  38 00 00 00 */	li r0, 0
lbl_80B47194:
/* 80B47194  2C 00 00 00 */	cmpwi r0, 0
/* 80B47198  41 82 00 28 */	beq lbl_80B471C0
/* 80B4719C  38 00 00 01 */	li r0, 1
/* 80B471A0  98 1F 0F 81 */	stb r0, 0xf81(r31)
/* 80B471A4  80 1F 0E 70 */	lwz r0, 0xe70(r31)
/* 80B471A8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B471AC  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B471B0  80 1F 0E 5C */	lwz r0, 0xe5c(r31)
/* 80B471B4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B471B8  90 1F 0E 5C */	stw r0, 0xe5c(r31)
/* 80B471BC  48 00 00 24 */	b lbl_80B471E0
lbl_80B471C0:
/* 80B471C0  38 00 00 00 */	li r0, 0
/* 80B471C4  98 1F 0F 81 */	stb r0, 0xf81(r31)
/* 80B471C8  80 1F 0E 70 */	lwz r0, 0xe70(r31)
/* 80B471CC  60 00 00 01 */	ori r0, r0, 1
/* 80B471D0  90 1F 0E 70 */	stw r0, 0xe70(r31)
/* 80B471D4  80 1F 0E 5C */	lwz r0, 0xe5c(r31)
/* 80B471D8  60 00 00 01 */	ori r0, r0, 1
/* 80B471DC  90 1F 0E 5C */	stw r0, 0xe5c(r31)
lbl_80B471E0:
/* 80B471E0  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 80B471E4  28 00 00 01 */	cmplwi r0, 1
/* 80B471E8  40 82 00 1C */	bne lbl_80B47204
/* 80B471EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B471F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B471F4  38 80 00 02 */	li r4, 2
/* 80B471F8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80B471FC  7C 05 07 74 */	extsb r5, r0
/* 80B47200  4B 4E E0 B1 */	bl offSwitch__10dSv_info_cFii
lbl_80B47204:
/* 80B47204  7F E3 FB 78 */	mr r3, r31
/* 80B47208  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B4720C  4B 60 38 0D */	bl setAngle__8daNpcT_cFs
/* 80B47210  3C 60 80 B5 */	lis r3, lit_4472@ha /* 0x80B498D4@ha */
/* 80B47214  38 83 98 D4 */	addi r4, r3, lit_4472@l /* 0x80B498D4@l */
/* 80B47218  80 64 00 00 */	lwz r3, 0(r4)
/* 80B4721C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B47220  90 61 00 08 */	stw r3, 8(r1)
/* 80B47224  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B47228  80 04 00 08 */	lwz r0, 8(r4)
/* 80B4722C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B47230  7F E3 FB 78 */	mr r3, r31
/* 80B47234  38 81 00 08 */	addi r4, r1, 8
/* 80B47238  48 00 09 99 */	bl setAction__13daNpc_yamiS_cFM13daNpc_yamiS_cFPCvPvPv_i
/* 80B4723C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B47240  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B47244  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B47248  7C 08 03 A6 */	mtlr r0
/* 80B4724C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B47250  4E 80 00 20 */	blr 
