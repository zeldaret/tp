lbl_80992FB8:
/* 80992FB8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80992FBC  7C 08 02 A6 */	mflr r0
/* 80992FC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80992FC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80992FC8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80992FCC  7C 7F 1B 78 */	mr r31, r3
/* 80992FD0  3C 60 80 99 */	lis r3, m__20daNpc_clerkA_Param_c@ha
/* 80992FD4  3B C3 58 70 */	addi r30, r3, m__20daNpc_clerkA_Param_c@l
/* 80992FD8  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80992FDC  38 80 00 00 */	li r4, 0
/* 80992FE0  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80992FE4  7C A3 00 50 */	subf r5, r3, r0
/* 80992FE8  4B 67 04 70 */	b memset
/* 80992FEC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80992FF0  4B 7B 28 A8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80992FF4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80992FF8  4B 7B 28 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80992FFC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80993000  4B 7B 26 D4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80993004  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80993008  4B 7B 26 CC */	b initialize__18daNpcT_ActorMngr_cFv
/* 8099300C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80993010  4B 7B 3C 88 */	b initialize__15daNpcT_JntAnm_cFv
/* 80993014  38 60 00 00 */	li r3, 0
/* 80993018  38 80 00 00 */	li r4, 0
/* 8099301C  7C 87 23 78 */	mr r7, r4
/* 80993020  7C 86 23 78 */	mr r6, r4
/* 80993024  7C 85 23 78 */	mr r5, r4
/* 80993028  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 8099302C  38 00 00 02 */	li r0, 2
/* 80993030  7C 09 03 A6 */	mtctr r0
lbl_80993034:
/* 80993034  7D 1F 22 14 */	add r8, r31, r4
/* 80993038  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 8099303C  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80993040  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80993044  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80993048  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8099304C  38 63 00 04 */	addi r3, r3, 4
/* 80993050  38 84 00 06 */	addi r4, r4, 6
/* 80993054  42 00 FF E0 */	bdnz lbl_80993034
/* 80993058  38 00 00 00 */	li r0, 0
/* 8099305C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80993060  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80993064  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80993068  38 00 FF FF */	li r0, -1
/* 8099306C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80993070  38 00 00 01 */	li r0, 1
/* 80993074  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80993078  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 8099307C  4B 8D 48 D8 */	b cM_rndF__Ff
/* 80993080  FC 00 08 1E */	fctiwz f0, f1
/* 80993084  D8 01 00 08 */	stfd f0, 8(r1)
/* 80993088  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8099308C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80993090  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80993094  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80993098  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 8099309C  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 809930A0  38 80 00 00 */	li r4, 0
/* 809930A4  38 1F 10 F0 */	addi r0, r31, 0x10f0
/* 809930A8  7C A3 00 50 */	subf r5, r3, r0
/* 809930AC  4B 67 03 AC */	b memset
/* 809930B0  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 809930B4  28 03 00 00 */	cmplwi r3, 0
/* 809930B8  41 82 00 08 */	beq lbl_809930C0
/* 809930BC  4B 7B 26 A8 */	b initialize__15daNpcT_MatAnm_cFv
lbl_809930C0:
/* 809930C0  38 7F 10 C0 */	addi r3, r31, 0x10c0
/* 809930C4  4B 7B 26 10 */	b initialize__18daNpcT_ActorMngr_cFv
/* 809930C8  7F E3 FB 78 */	mr r3, r31
/* 809930CC  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809930D0  4B 7B 79 48 */	b setAngle__8daNpcT_cFs
/* 809930D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809930D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809930DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809930E0  7C 08 03 A6 */	mtlr r0
/* 809930E4  38 21 00 20 */	addi r1, r1, 0x20
/* 809930E8  4E 80 00 20 */	blr 
