lbl_80B6C8CC:
/* 80B6C8CC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6C8D0  7C 08 02 A6 */	mflr r0
/* 80B6C8D4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6C8D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B6C8DC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B6C8E0  7C 7E 1B 78 */	mr r30, r3
/* 80B6C8E4  3C 60 80 B7 */	lis r3, m__18daNpc_Zant_Param_c@ha
/* 80B6C8E8  3B E3 E9 A8 */	addi r31, r3, m__18daNpc_Zant_Param_c@l
/* 80B6C8EC  38 7E 0D 24 */	addi r3, r30, 0xd24
/* 80B6C8F0  38 80 00 00 */	li r4, 0
/* 80B6C8F4  38 1E 0E 38 */	addi r0, r30, 0xe38
/* 80B6C8F8  7C A3 00 50 */	subf r5, r3, r0
/* 80B6C8FC  4B 49 6B 5C */	b memset
/* 80B6C900  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B6C904  4B 5D 8F 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6C908  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B6C90C  4B 5D 8F 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6C910  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B6C914  4B 5D 8D C0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B6C918  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 80B6C91C  4B 5D 8D B8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B6C920  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B6C924  4B 5D A3 74 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B6C928  38 A0 00 00 */	li r5, 0
/* 80B6C92C  38 60 00 00 */	li r3, 0
/* 80B6C930  7C A4 2B 78 */	mr r4, r5
/* 80B6C934  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80B6C938  38 00 00 02 */	li r0, 2
/* 80B6C93C  7C 09 03 A6 */	mtctr r0
lbl_80B6C940:
/* 80B6C940  7C DE 22 14 */	add r6, r30, r4
/* 80B6C944  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B6C948  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B6C94C  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B6C950  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B6C954  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80B6C958  38 63 00 04 */	addi r3, r3, 4
/* 80B6C95C  38 84 00 06 */	addi r4, r4, 6
/* 80B6C960  42 00 FF E0 */	bdnz lbl_80B6C940
/* 80B6C964  38 00 00 00 */	li r0, 0
/* 80B6C968  B0 1E 0D 1C */	sth r0, 0xd1c(r30)
/* 80B6C96C  B0 1E 0D 1E */	sth r0, 0xd1e(r30)
/* 80B6C970  98 1E 0D 20 */	stb r0, 0xd20(r30)
/* 80B6C974  38 00 FF FF */	li r0, -1
/* 80B6C978  90 1E 0D 90 */	stw r0, 0xd90(r30)
/* 80B6C97C  38 00 00 01 */	li r0, 1
/* 80B6C980  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 80B6C984  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80B6C988  4B 6F AF CC */	b cM_rndF__Ff
/* 80B6C98C  FC 00 08 1E */	fctiwz f0, f1
/* 80B6C990  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B6C994  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B6C998  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80B6C99C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 80B6C9A0  D0 1E 0D E0 */	stfs f0, 0xde0(r30)
/* 80B6C9A4  D0 1E 0D E4 */	stfs f0, 0xde4(r30)
/* 80B6C9A8  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 80B6C9AC  38 80 00 00 */	li r4, 0
/* 80B6C9B0  38 1E 0F 9C */	addi r0, r30, 0xf9c
/* 80B6C9B4  7C A3 00 50 */	subf r5, r3, r0
/* 80B6C9B8  4B 49 6A A0 */	b memset
/* 80B6C9BC  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80B6C9C0  28 03 00 00 */	cmplwi r3, 0
/* 80B6C9C4  41 82 00 08 */	beq lbl_80B6C9CC
/* 80B6C9C8  4B 5D 8D 9C */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B6C9CC:
/* 80B6C9CC  7F C3 F3 78 */	mr r3, r30
/* 80B6C9D0  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80B6C9D4  4B 5D E0 44 */	b setAngle__8daNpcT_cFs
/* 80B6C9D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B6C9DC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B6C9E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6C9E4  7C 08 03 A6 */	mtlr r0
/* 80B6C9E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6C9EC  4E 80 00 20 */	blr 
