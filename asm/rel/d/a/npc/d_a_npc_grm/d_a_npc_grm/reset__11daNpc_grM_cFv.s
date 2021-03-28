lbl_809D4820:
/* 809D4820  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D4824  7C 08 02 A6 */	mflr r0
/* 809D4828  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D482C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D4830  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809D4834  7C 7E 1B 78 */	mr r30, r3
/* 809D4838  3C 60 80 9D */	lis r3, m__17daNpc_grM_Param_c@ha
/* 809D483C  3B E3 6D 70 */	addi r31, r3, m__17daNpc_grM_Param_c@l
/* 809D4840  38 7E 0D 24 */	addi r3, r30, 0xd24
/* 809D4844  38 80 00 00 */	li r4, 0
/* 809D4848  38 1E 0E 38 */	addi r0, r30, 0xe38
/* 809D484C  7C A3 00 50 */	subf r5, r3, r0
/* 809D4850  4B 62 EC 08 */	b memset
/* 809D4854  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809D4858  4B 77 10 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D485C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809D4860  4B 77 10 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D4864  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809D4868  4B 77 0E 6C */	b initialize__18daNpcT_ActorMngr_cFv
/* 809D486C  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 809D4870  4B 77 0E 64 */	b initialize__18daNpcT_ActorMngr_cFv
/* 809D4874  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D4878  4B 77 24 20 */	b initialize__15daNpcT_JntAnm_cFv
/* 809D487C  38 A0 00 00 */	li r5, 0
/* 809D4880  38 60 00 00 */	li r3, 0
/* 809D4884  7C A4 2B 78 */	mr r4, r5
/* 809D4888  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809D488C  38 00 00 02 */	li r0, 2
/* 809D4890  7C 09 03 A6 */	mtctr r0
lbl_809D4894:
/* 809D4894  7C DE 22 14 */	add r6, r30, r4
/* 809D4898  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 809D489C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 809D48A0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 809D48A4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809D48A8  7C 1E 05 2E */	stfsx f0, r30, r0
/* 809D48AC  38 63 00 04 */	addi r3, r3, 4
/* 809D48B0  38 84 00 06 */	addi r4, r4, 6
/* 809D48B4  42 00 FF E0 */	bdnz lbl_809D4894
/* 809D48B8  38 00 00 00 */	li r0, 0
/* 809D48BC  B0 1E 0D 1C */	sth r0, 0xd1c(r30)
/* 809D48C0  B0 1E 0D 1E */	sth r0, 0xd1e(r30)
/* 809D48C4  98 1E 0D 20 */	stb r0, 0xd20(r30)
/* 809D48C8  38 00 FF FF */	li r0, -1
/* 809D48CC  90 1E 0D 90 */	stw r0, 0xd90(r30)
/* 809D48D0  38 00 00 01 */	li r0, 1
/* 809D48D4  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 809D48D8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 809D48DC  4B 89 30 78 */	b cM_rndF__Ff
/* 809D48E0  FC 00 08 1E */	fctiwz f0, f1
/* 809D48E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 809D48E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809D48EC  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 809D48F0  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 809D48F4  D0 1E 0D E0 */	stfs f0, 0xde0(r30)
/* 809D48F8  D0 1E 0D E4 */	stfs f0, 0xde4(r30)
/* 809D48FC  38 7E 10 C0 */	addi r3, r30, 0x10c0
/* 809D4900  38 80 00 00 */	li r4, 0
/* 809D4904  38 1E 10 E0 */	addi r0, r30, 0x10e0
/* 809D4908  7C A3 00 50 */	subf r5, r3, r0
/* 809D490C  4B 62 EB 4C */	b memset
/* 809D4910  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 809D4914  28 03 00 00 */	cmplwi r3, 0
/* 809D4918  41 82 00 08 */	beq lbl_809D4920
/* 809D491C  4B 77 0E 48 */	b initialize__15daNpcT_MatAnm_cFv
lbl_809D4920:
/* 809D4920  7F C3 F3 78 */	mr r3, r30
/* 809D4924  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 809D4928  4B 77 60 F0 */	b setAngle__8daNpcT_cFs
/* 809D492C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D4930  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809D4934  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D4938  7C 08 03 A6 */	mtlr r0
/* 809D493C  38 21 00 20 */	addi r1, r1, 0x20
/* 809D4940  4E 80 00 20 */	blr 
