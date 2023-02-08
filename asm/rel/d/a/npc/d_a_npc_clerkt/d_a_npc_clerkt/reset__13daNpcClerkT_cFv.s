lbl_8099ABBC:
/* 8099ABBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8099ABC0  7C 08 02 A6 */	mflr r0
/* 8099ABC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8099ABC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8099ABCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8099ABD0  7C 7F 1B 78 */	mr r31, r3
/* 8099ABD4  3C 60 80 9A */	lis r3, m__19daNpcClerkt_Param_c@ha /* 0x8099D244@ha */
/* 8099ABD8  3B C3 D2 44 */	addi r30, r3, m__19daNpcClerkt_Param_c@l /* 0x8099D244@l */
/* 8099ABDC  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 8099ABE0  38 80 00 00 */	li r4, 0
/* 8099ABE4  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 8099ABE8  7C A3 00 50 */	subf r5, r3, r0
/* 8099ABEC  4B 66 88 6D */	bl memset
/* 8099ABF0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8099ABF4  4B 7A AC A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8099ABF8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8099ABFC  4B 7A AC 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8099AC00  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8099AC04  4B 7A AA D1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8099AC08  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8099AC0C  4B 7A AA C9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8099AC10  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8099AC14  4B 7A C0 85 */	bl initialize__15daNpcT_JntAnm_cFv
/* 8099AC18  38 60 00 00 */	li r3, 0
/* 8099AC1C  38 80 00 00 */	li r4, 0
/* 8099AC20  7C 87 23 78 */	mr r7, r4
/* 8099AC24  7C 86 23 78 */	mr r6, r4
/* 8099AC28  7C 85 23 78 */	mr r5, r4
/* 8099AC2C  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8099AC30  38 00 00 02 */	li r0, 2
/* 8099AC34  7C 09 03 A6 */	mtctr r0
lbl_8099AC38:
/* 8099AC38  7D 1F 22 14 */	add r8, r31, r4
/* 8099AC3C  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 8099AC40  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 8099AC44  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 8099AC48  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8099AC4C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8099AC50  38 63 00 04 */	addi r3, r3, 4
/* 8099AC54  38 84 00 06 */	addi r4, r4, 6
/* 8099AC58  42 00 FF E0 */	bdnz lbl_8099AC38
/* 8099AC5C  38 00 00 00 */	li r0, 0
/* 8099AC60  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 8099AC64  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 8099AC68  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 8099AC6C  38 00 FF FF */	li r0, -1
/* 8099AC70  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 8099AC74  38 00 00 01 */	li r0, 1
/* 8099AC78  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 8099AC7C  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 8099AC80  4B 8C CC D5 */	bl cM_rndF__Ff
/* 8099AC84  FC 00 08 1E */	fctiwz f0, f1
/* 8099AC88  D8 01 00 08 */	stfd f0, 8(r1)
/* 8099AC8C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8099AC90  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 8099AC94  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 8099AC98  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 8099AC9C  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 8099ACA0  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 8099ACA4  38 80 00 00 */	li r4, 0
/* 8099ACA8  38 1F 10 EC */	addi r0, r31, 0x10ec
/* 8099ACAC  7C A3 00 50 */	subf r5, r3, r0
/* 8099ACB0  4B 66 87 A9 */	bl memset
/* 8099ACB4  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 8099ACB8  28 03 00 00 */	cmplwi r3, 0
/* 8099ACBC  41 82 00 08 */	beq lbl_8099ACC4
/* 8099ACC0  4B 7A AA A5 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_8099ACC4:
/* 8099ACC4  38 7F 10 C0 */	addi r3, r31, 0x10c0
/* 8099ACC8  4B 7A AA 0D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8099ACCC  7F E3 FB 78 */	mr r3, r31
/* 8099ACD0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8099ACD4  4B 7A FD 45 */	bl setAngle__8daNpcT_cFs
/* 8099ACD8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8099ACDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8099ACE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8099ACE4  7C 08 03 A6 */	mtlr r0
/* 8099ACE8  38 21 00 20 */	addi r1, r1, 0x20
/* 8099ACEC  4E 80 00 20 */	blr 
