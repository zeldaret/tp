lbl_809D7C34:
/* 809D7C34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D7C38  7C 08 02 A6 */	mflr r0
/* 809D7C3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D7C40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809D7C44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809D7C48  7C 7E 1B 78 */	mr r30, r3
/* 809D7C4C  3C 60 80 9E */	lis r3, m__18daNpc_grMC_Param_c@ha /* 0x809D9D70@ha */
/* 809D7C50  3B E3 9D 70 */	addi r31, r3, m__18daNpc_grMC_Param_c@l /* 0x809D9D70@l */
/* 809D7C54  38 7E 0D 24 */	addi r3, r30, 0xd24
/* 809D7C58  38 80 00 00 */	li r4, 0
/* 809D7C5C  38 1E 0E 38 */	addi r0, r30, 0xe38
/* 809D7C60  7C A3 00 50 */	subf r5, r3, r0
/* 809D7C64  4B 62 B7 F5 */	bl memset
/* 809D7C68  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 809D7C6C  4B 76 DC 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D7C70  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 809D7C74  4B 76 DC 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D7C78  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 809D7C7C  4B 76 DA 59 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809D7C80  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 809D7C84  4B 76 DA 51 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809D7C88  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D7C8C  4B 76 F0 0D */	bl initialize__15daNpcT_JntAnm_cFv
/* 809D7C90  38 A0 00 00 */	li r5, 0
/* 809D7C94  38 60 00 00 */	li r3, 0
/* 809D7C98  7C A4 2B 78 */	mr r4, r5
/* 809D7C9C  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 809D7CA0  38 00 00 02 */	li r0, 2
/* 809D7CA4  7C 09 03 A6 */	mtctr r0
lbl_809D7CA8:
/* 809D7CA8  7C DE 22 14 */	add r6, r30, r4
/* 809D7CAC  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 809D7CB0  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 809D7CB4  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 809D7CB8  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809D7CBC  7C 1E 05 2E */	stfsx f0, r30, r0
/* 809D7CC0  38 63 00 04 */	addi r3, r3, 4
/* 809D7CC4  38 84 00 06 */	addi r4, r4, 6
/* 809D7CC8  42 00 FF E0 */	bdnz lbl_809D7CA8
/* 809D7CCC  38 00 00 00 */	li r0, 0
/* 809D7CD0  B0 1E 0D 1C */	sth r0, 0xd1c(r30)
/* 809D7CD4  B0 1E 0D 1E */	sth r0, 0xd1e(r30)
/* 809D7CD8  98 1E 0D 20 */	stb r0, 0xd20(r30)
/* 809D7CDC  38 00 FF FF */	li r0, -1
/* 809D7CE0  90 1E 0D 90 */	stw r0, 0xd90(r30)
/* 809D7CE4  38 00 00 01 */	li r0, 1
/* 809D7CE8  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 809D7CEC  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 809D7CF0  4B 88 FC 65 */	bl cM_rndF__Ff
/* 809D7CF4  FC 00 08 1E */	fctiwz f0, f1
/* 809D7CF8  D8 01 00 08 */	stfd f0, 8(r1)
/* 809D7CFC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809D7D00  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 809D7D04  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 809D7D08  D0 1E 0D E0 */	stfs f0, 0xde0(r30)
/* 809D7D0C  D0 1E 0D E4 */	stfs f0, 0xde4(r30)
/* 809D7D10  38 7E 10 C0 */	addi r3, r30, 0x10c0
/* 809D7D14  38 80 00 00 */	li r4, 0
/* 809D7D18  38 1E 10 E0 */	addi r0, r30, 0x10e0
/* 809D7D1C  7C A3 00 50 */	subf r5, r3, r0
/* 809D7D20  4B 62 B7 39 */	bl memset
/* 809D7D24  7F C3 F3 78 */	mr r3, r30
/* 809D7D28  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 809D7D2C  4B 77 2C ED */	bl setAngle__8daNpcT_cFs
/* 809D7D30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809D7D34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809D7D38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D7D3C  7C 08 03 A6 */	mtlr r0
/* 809D7D40  38 21 00 20 */	addi r1, r1, 0x20
/* 809D7D44  4E 80 00 20 */	blr 
