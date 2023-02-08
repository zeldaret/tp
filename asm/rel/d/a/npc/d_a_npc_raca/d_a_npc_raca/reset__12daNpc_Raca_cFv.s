lbl_80AB681C:
/* 80AB681C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB6820  7C 08 02 A6 */	mflr r0
/* 80AB6824  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB6828  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AB682C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AB6830  7C 7F 1B 78 */	mr r31, r3
/* 80AB6834  3C 60 80 AC */	lis r3, m__18daNpc_Raca_Param_c@ha /* 0x80AB8EC8@ha */
/* 80AB6838  3B C3 8E C8 */	addi r30, r3, m__18daNpc_Raca_Param_c@l /* 0x80AB8EC8@l */
/* 80AB683C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AB6840  38 80 00 00 */	li r4, 0
/* 80AB6844  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AB6848  7C A3 00 50 */	subf r5, r3, r0
/* 80AB684C  4B 54 CC 0D */	bl memset
/* 80AB6850  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB6854  4B 68 F0 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB6858  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB685C  4B 68 F0 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB6860  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB6864  4B 68 EE 71 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AB6868  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AB686C  4B 68 EE 69 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AB6870  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB6874  4B 69 04 25 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AB6878  38 60 00 00 */	li r3, 0
/* 80AB687C  38 80 00 00 */	li r4, 0
/* 80AB6880  7C 87 23 78 */	mr r7, r4
/* 80AB6884  7C 86 23 78 */	mr r6, r4
/* 80AB6888  7C 85 23 78 */	mr r5, r4
/* 80AB688C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AB6890  38 00 00 02 */	li r0, 2
/* 80AB6894  7C 09 03 A6 */	mtctr r0
lbl_80AB6898:
/* 80AB6898  7D 1F 22 14 */	add r8, r31, r4
/* 80AB689C  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80AB68A0  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80AB68A4  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80AB68A8  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AB68AC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AB68B0  38 63 00 04 */	addi r3, r3, 4
/* 80AB68B4  38 84 00 06 */	addi r4, r4, 6
/* 80AB68B8  42 00 FF E0 */	bdnz lbl_80AB6898
/* 80AB68BC  38 00 00 00 */	li r0, 0
/* 80AB68C0  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AB68C4  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AB68C8  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AB68CC  38 00 FF FF */	li r0, -1
/* 80AB68D0  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AB68D4  38 00 00 01 */	li r0, 1
/* 80AB68D8  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AB68DC  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80AB68E0  4B 7B 10 75 */	bl cM_rndF__Ff
/* 80AB68E4  FC 00 08 1E */	fctiwz f0, f1
/* 80AB68E8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AB68EC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AB68F0  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AB68F4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80AB68F8  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AB68FC  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AB6900  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 80AB6904  38 80 00 00 */	li r4, 0
/* 80AB6908  38 1F 0F D0 */	addi r0, r31, 0xfd0
/* 80AB690C  7C A3 00 50 */	subf r5, r3, r0
/* 80AB6910  4B 54 CB 49 */	bl memset
/* 80AB6914  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80AB6918  28 03 00 00 */	cmplwi r3, 0
/* 80AB691C  41 82 00 08 */	beq lbl_80AB6924
/* 80AB6920  4B 68 EE 45 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80AB6924:
/* 80AB6924  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AB6928  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80AB692C  28 00 00 FF */	cmplwi r0, 0xff
/* 80AB6930  41 82 00 28 */	beq lbl_80AB6958
/* 80AB6934  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80AB6938  4B 68 F3 09 */	bl initialize__13daNpcT_Path_cFv
/* 80AB693C  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80AB6940  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AB6944  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80AB6948  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80AB694C  7C 05 07 74 */	extsb r5, r0
/* 80AB6950  38 C0 00 00 */	li r6, 0
/* 80AB6954  4B 68 F3 21 */	bl setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80AB6958:
/* 80AB6958  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80AB695C  4B 68 ED 79 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AB6960  7F E3 FB 78 */	mr r3, r31
/* 80AB6964  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AB6968  4B 69 40 B1 */	bl setAngle__8daNpcT_cFs
/* 80AB696C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AB6970  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AB6974  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB6978  7C 08 03 A6 */	mtlr r0
/* 80AB697C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB6980  4E 80 00 20 */	blr 
