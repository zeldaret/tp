lbl_80AED294:
/* 80AED294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AED298  7C 08 02 A6 */	mflr r0
/* 80AED29C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AED2A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AED2A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AED2A8  7C 7E 1B 78 */	mr r30, r3
/* 80AED2AC  3C 60 80 AF */	lis r3, m__18daNpc_solA_Param_c@ha /* 0x80AEF100@ha */
/* 80AED2B0  3B E3 F1 00 */	addi r31, r3, m__18daNpc_solA_Param_c@l /* 0x80AEF100@l */
/* 80AED2B4  38 7E 0D 24 */	addi r3, r30, 0xd24
/* 80AED2B8  38 80 00 00 */	li r4, 0
/* 80AED2BC  38 1E 0E 38 */	addi r0, r30, 0xe38
/* 80AED2C0  7C A3 00 50 */	subf r5, r3, r0
/* 80AED2C4  4B 51 61 95 */	bl memset
/* 80AED2C8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80AED2CC  4B 65 85 CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AED2D0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80AED2D4  4B 65 85 C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AED2D8  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80AED2DC  4B 65 83 F9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AED2E0  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 80AED2E4  4B 65 83 F1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AED2E8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AED2EC  4B 65 99 AD */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AED2F0  38 A0 00 00 */	li r5, 0
/* 80AED2F4  38 60 00 00 */	li r3, 0
/* 80AED2F8  7C A4 2B 78 */	mr r4, r5
/* 80AED2FC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80AED300  38 00 00 02 */	li r0, 2
/* 80AED304  7C 09 03 A6 */	mtctr r0
lbl_80AED308:
/* 80AED308  7C DE 22 14 */	add r6, r30, r4
/* 80AED30C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AED310  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AED314  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AED318  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AED31C  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80AED320  38 63 00 04 */	addi r3, r3, 4
/* 80AED324  38 84 00 06 */	addi r4, r4, 6
/* 80AED328  42 00 FF E0 */	bdnz lbl_80AED308
/* 80AED32C  38 00 00 00 */	li r0, 0
/* 80AED330  B0 1E 0D 1C */	sth r0, 0xd1c(r30)
/* 80AED334  B0 1E 0D 1E */	sth r0, 0xd1e(r30)
/* 80AED338  98 1E 0D 20 */	stb r0, 0xd20(r30)
/* 80AED33C  38 00 FF FF */	li r0, -1
/* 80AED340  90 1E 0D 90 */	stw r0, 0xd90(r30)
/* 80AED344  38 00 00 01 */	li r0, 1
/* 80AED348  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 80AED34C  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80AED350  4B 77 A6 05 */	bl cM_rndF__Ff
/* 80AED354  FC 00 08 1E */	fctiwz f0, f1
/* 80AED358  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AED35C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AED360  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80AED364  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80AED368  D0 1E 0D E0 */	stfs f0, 0xde0(r30)
/* 80AED36C  D0 1E 0D E4 */	stfs f0, 0xde4(r30)
/* 80AED370  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 80AED374  38 80 00 00 */	li r4, 0
/* 80AED378  38 1E 0F 9C */	addi r0, r30, 0xf9c
/* 80AED37C  7C A3 00 50 */	subf r5, r3, r0
/* 80AED380  4B 51 60 D9 */	bl memset
/* 80AED384  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80AED388  28 03 00 00 */	cmplwi r3, 0
/* 80AED38C  41 82 00 08 */	beq lbl_80AED394
/* 80AED390  4B 65 83 D5 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80AED394:
/* 80AED394  7F C3 F3 78 */	mr r3, r30
/* 80AED398  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80AED39C  4B 65 D6 7D */	bl setAngle__8daNpcT_cFs
/* 80AED3A0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AED3A4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AED3A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AED3AC  7C 08 03 A6 */	mtlr r0
/* 80AED3B0  38 21 00 20 */	addi r1, r1, 0x20
/* 80AED3B4  4E 80 00 20 */	blr 
