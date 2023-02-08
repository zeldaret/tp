lbl_80ACC4D0:
/* 80ACC4D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ACC4D4  7C 08 02 A6 */	mflr r0
/* 80ACC4D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ACC4DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACC4E0  4B 89 5C FD */	bl _savegpr_29
/* 80ACC4E4  7C 7F 1B 78 */	mr r31, r3
/* 80ACC4E8  3C 60 80 AD */	lis r3, m__19daNpc_Seira_Param_c@ha /* 0x80ACFDF0@ha */
/* 80ACC4EC  3B C3 FD F0 */	addi r30, r3, m__19daNpc_Seira_Param_c@l /* 0x80ACFDF0@l */
/* 80ACC4F0  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80ACC4F4  38 80 00 00 */	li r4, 0
/* 80ACC4F8  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80ACC4FC  7C A3 00 50 */	subf r5, r3, r0
/* 80ACC500  4B 53 6F 59 */	bl memset
/* 80ACC504  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACC508  4B 67 93 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACC50C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACC510  4B 67 93 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACC514  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80ACC518  4B 67 91 BD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80ACC51C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80ACC520  4B 67 91 B5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80ACC524  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80ACC528  4B 67 A7 71 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80ACC52C  38 A0 00 00 */	li r5, 0
/* 80ACC530  38 60 00 00 */	li r3, 0
/* 80ACC534  7C A4 2B 78 */	mr r4, r5
/* 80ACC538  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80ACC53C  38 00 00 02 */	li r0, 2
/* 80ACC540  7C 09 03 A6 */	mtctr r0
lbl_80ACC544:
/* 80ACC544  7C DF 22 14 */	add r6, r31, r4
/* 80ACC548  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80ACC54C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80ACC550  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80ACC554  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80ACC558  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80ACC55C  38 63 00 04 */	addi r3, r3, 4
/* 80ACC560  38 84 00 06 */	addi r4, r4, 6
/* 80ACC564  42 00 FF E0 */	bdnz lbl_80ACC544
/* 80ACC568  38 00 00 00 */	li r0, 0
/* 80ACC56C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80ACC570  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80ACC574  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80ACC578  38 00 FF FF */	li r0, -1
/* 80ACC57C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80ACC580  38 00 00 01 */	li r0, 1
/* 80ACC584  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80ACC588  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 80ACC58C  4B 79 B3 C9 */	bl cM_rndF__Ff
/* 80ACC590  FC 00 08 1E */	fctiwz f0, f1
/* 80ACC594  D8 01 00 08 */	stfd f0, 8(r1)
/* 80ACC598  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80ACC59C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80ACC5A0  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80ACC5A4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80ACC5A8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80ACC5AC  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 80ACC5B0  38 80 00 00 */	li r4, 0
/* 80ACC5B4  38 1F 11 04 */	addi r0, r31, 0x1104
/* 80ACC5B8  7C A3 00 50 */	subf r5, r3, r0
/* 80ACC5BC  4B 53 6E 9D */	bl memset
/* 80ACC5C0  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80ACC5C4  28 03 00 00 */	cmplwi r3, 0
/* 80ACC5C8  41 82 00 08 */	beq lbl_80ACC5D0
/* 80ACC5CC  4B 67 91 99 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80ACC5D0:
/* 80ACC5D0  3B A0 00 00 */	li r29, 0
/* 80ACC5D4  3B C0 00 00 */	li r30, 0
lbl_80ACC5D8:
/* 80ACC5D8  38 7E 10 C4 */	addi r3, r30, 0x10c4
/* 80ACC5DC  7C 7F 1A 14 */	add r3, r31, r3
/* 80ACC5E0  4B 67 90 F5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80ACC5E4  3B BD 00 01 */	addi r29, r29, 1
/* 80ACC5E8  2C 1D 00 03 */	cmpwi r29, 3
/* 80ACC5EC  3B DE 00 08 */	addi r30, r30, 8
/* 80ACC5F0  41 80 FF E8 */	blt lbl_80ACC5D8
/* 80ACC5F4  7F E3 FB 78 */	mr r3, r31
/* 80ACC5F8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80ACC5FC  4B 67 E4 1D */	bl setAngle__8daNpcT_cFs
/* 80ACC600  39 61 00 20 */	addi r11, r1, 0x20
/* 80ACC604  4B 89 5C 25 */	bl _restgpr_29
/* 80ACC608  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ACC60C  7C 08 03 A6 */	mtlr r0
/* 80ACC610  38 21 00 20 */	addi r1, r1, 0x20
/* 80ACC614  4E 80 00 20 */	blr 
