lbl_80996FAC:
/* 80996FAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80996FB0  7C 08 02 A6 */	mflr r0
/* 80996FB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80996FB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80996FBC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80996FC0  7C 7F 1B 78 */	mr r31, r3
/* 80996FC4  3C 60 80 9A */	lis r3, m__20daNpc_clerkB_Param_c@ha /* 0x80999978@ha */
/* 80996FC8  3B C3 99 78 */	addi r30, r3, m__20daNpc_clerkB_Param_c@l /* 0x80999978@l */
/* 80996FCC  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80996FD0  38 80 00 00 */	li r4, 0
/* 80996FD4  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80996FD8  7C A3 00 50 */	subf r5, r3, r0
/* 80996FDC  4B 66 C4 7D */	bl memset
/* 80996FE0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80996FE4  4B 7A E8 B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80996FE8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80996FEC  4B 7A E8 AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80996FF0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80996FF4  4B 7A E6 E1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80996FF8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80996FFC  4B 7A E6 D9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80997000  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80997004  4B 7A FC 95 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80997008  38 60 00 00 */	li r3, 0
/* 8099700C  38 80 00 00 */	li r4, 0
/* 80997010  7C 87 23 78 */	mr r7, r4
/* 80997014  7C 86 23 78 */	mr r6, r4
/* 80997018  7C 85 23 78 */	mr r5, r4
/* 8099701C  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80997020  38 00 00 02 */	li r0, 2
/* 80997024  7C 09 03 A6 */	mtctr r0
lbl_80997028:
/* 80997028  7D 1F 22 14 */	add r8, r31, r4
/* 8099702C  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80997030  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80997034  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80997038  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8099703C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80997040  38 63 00 04 */	addi r3, r3, 4
/* 80997044  38 84 00 06 */	addi r4, r4, 6
/* 80997048  42 00 FF E0 */	bdnz lbl_80997028
/* 8099704C  38 00 00 00 */	li r0, 0
/* 80997050  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80997054  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80997058  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 8099705C  38 00 FF FF */	li r0, -1
/* 80997060  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80997064  38 00 00 01 */	li r0, 1
/* 80997068  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 8099706C  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80997070  4B 8D 08 E5 */	bl cM_rndF__Ff
/* 80997074  FC 00 08 1E */	fctiwz f0, f1
/* 80997078  D8 01 00 08 */	stfd f0, 8(r1)
/* 8099707C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80997080  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80997084  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80997088  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 8099708C  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80997090  38 7F 10 E0 */	addi r3, r31, 0x10e0
/* 80997094  38 80 00 00 */	li r4, 0
/* 80997098  38 1F 11 14 */	addi r0, r31, 0x1114
/* 8099709C  7C A3 00 50 */	subf r5, r3, r0
/* 809970A0  4B 66 C3 B9 */	bl memset
/* 809970A4  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 809970A8  28 03 00 00 */	cmplwi r3, 0
/* 809970AC  41 82 00 08 */	beq lbl_809970B4
/* 809970B0  4B 7A E6 B5 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_809970B4:
/* 809970B4  38 7F 10 D8 */	addi r3, r31, 0x10d8
/* 809970B8  4B 7A E6 1D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809970BC  7F E3 FB 78 */	mr r3, r31
/* 809970C0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809970C4  4B 7B 39 55 */	bl setAngle__8daNpcT_cFs
/* 809970C8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809970CC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809970D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809970D4  7C 08 03 A6 */	mtlr r0
/* 809970D8  38 21 00 20 */	addi r1, r1, 0x20
/* 809970DC  4E 80 00 20 */	blr 
