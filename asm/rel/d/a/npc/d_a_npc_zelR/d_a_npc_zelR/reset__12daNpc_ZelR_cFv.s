lbl_80B6F894:
/* 80B6F894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B6F898  7C 08 02 A6 */	mflr r0
/* 80B6F89C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B6F8A0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6F8A4  4B 7F 29 39 */	bl _savegpr_29
/* 80B6F8A8  7C 7F 1B 78 */	mr r31, r3
/* 80B6F8AC  3C 60 80 B7 */	lis r3, m__18daNpc_ZelR_Param_c@ha /* 0x80B71AE0@ha */
/* 80B6F8B0  3B C3 1A E0 */	addi r30, r3, m__18daNpc_ZelR_Param_c@l /* 0x80B71AE0@l */
/* 80B6F8B4  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B6F8B8  38 80 00 00 */	li r4, 0
/* 80B6F8BC  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B6F8C0  7C A3 00 50 */	subf r5, r3, r0
/* 80B6F8C4  4B 49 3B 95 */	bl memset
/* 80B6F8C8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B6F8CC  4B 5D 5F CD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6F8D0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B6F8D4  4B 5D 5F C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6F8D8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6F8DC  4B 5D 5D F9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B6F8E0  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B6F8E4  4B 5D 5D F1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B6F8E8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B6F8EC  4B 5D 73 AD */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B6F8F0  38 A0 00 00 */	li r5, 0
/* 80B6F8F4  38 60 00 00 */	li r3, 0
/* 80B6F8F8  7C A4 2B 78 */	mr r4, r5
/* 80B6F8FC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80B6F900  38 00 00 02 */	li r0, 2
/* 80B6F904  7C 09 03 A6 */	mtctr r0
lbl_80B6F908:
/* 80B6F908  7C DF 22 14 */	add r6, r31, r4
/* 80B6F90C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B6F910  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B6F914  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B6F918  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B6F91C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B6F920  38 63 00 04 */	addi r3, r3, 4
/* 80B6F924  38 84 00 06 */	addi r4, r4, 6
/* 80B6F928  42 00 FF E0 */	bdnz lbl_80B6F908
/* 80B6F92C  38 00 00 00 */	li r0, 0
/* 80B6F930  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B6F934  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B6F938  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B6F93C  38 00 FF FF */	li r0, -1
/* 80B6F940  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B6F944  38 00 00 01 */	li r0, 1
/* 80B6F948  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B6F94C  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80B6F950  4B 6F 80 05 */	bl cM_rndF__Ff
/* 80B6F954  FC 00 08 1E */	fctiwz f0, f1
/* 80B6F958  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B6F95C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B6F960  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B6F964  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B6F968  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B6F96C  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B6F970  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B6F974  38 80 00 00 */	li r4, 0
/* 80B6F978  38 1F 0F C4 */	addi r0, r31, 0xfc4
/* 80B6F97C  7C A3 00 50 */	subf r5, r3, r0
/* 80B6F980  4B 49 3A D9 */	bl memset
/* 80B6F984  3B A0 00 00 */	li r29, 0
/* 80B6F988  3B C0 00 00 */	li r30, 0
lbl_80B6F98C:
/* 80B6F98C  38 1E 09 6C */	addi r0, r30, 0x96c
/* 80B6F990  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80B6F994  28 03 00 00 */	cmplwi r3, 0
/* 80B6F998  41 82 00 08 */	beq lbl_80B6F9A0
/* 80B6F99C  4B 5D 5D C9 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80B6F9A0:
/* 80B6F9A0  3B BD 00 01 */	addi r29, r29, 1
/* 80B6F9A4  2C 1D 00 02 */	cmpwi r29, 2
/* 80B6F9A8  3B DE 00 04 */	addi r30, r30, 4
/* 80B6F9AC  41 80 FF E0 */	blt lbl_80B6F98C
/* 80B6F9B0  7F E3 FB 78 */	mr r3, r31
/* 80B6F9B4  4B FF FE 7D */	bl getPath__12daNpc_ZelR_cFv
/* 80B6F9B8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B6F9BC  28 00 00 FF */	cmplwi r0, 0xff
/* 80B6F9C0  41 82 00 2C */	beq lbl_80B6F9EC
/* 80B6F9C4  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B6F9C8  4B 5D 62 79 */	bl initialize__13daNpcT_Path_cFv
/* 80B6F9CC  7F E3 FB 78 */	mr r3, r31
/* 80B6F9D0  4B FF FE 61 */	bl getPath__12daNpc_ZelR_cFv
/* 80B6F9D4  7C 64 1B 78 */	mr r4, r3
/* 80B6F9D8  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B6F9DC  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B6F9E0  7C 05 07 74 */	extsb r5, r0
/* 80B6F9E4  38 C0 00 00 */	li r6, 0
/* 80B6F9E8  4B 5D 62 8D */	bl setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80B6F9EC:
/* 80B6F9EC  7F E3 FB 78 */	mr r3, r31
/* 80B6F9F0  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B6F9F4  4B 5D B0 25 */	bl setAngle__8daNpcT_cFs
/* 80B6F9F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B6F9FC  4B 7F 28 2D */	bl _restgpr_29
/* 80B6FA00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B6FA04  7C 08 03 A6 */	mtlr r0
/* 80B6FA08  38 21 00 20 */	addi r1, r1, 0x20
/* 80B6FA0C  4E 80 00 20 */	blr 
