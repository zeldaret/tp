lbl_80B72A10:
/* 80B72A10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B72A14  7C 08 02 A6 */	mflr r0
/* 80B72A18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B72A1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B72A20  4B 7E F7 BC */	b _savegpr_29
/* 80B72A24  7C 7F 1B 78 */	mr r31, r3
/* 80B72A28  3C 60 80 B7 */	lis r3, m__19daNpc_ZelRo_Param_c@ha
/* 80B72A2C  3B C3 4C 5C */	addi r30, r3, m__19daNpc_ZelRo_Param_c@l
/* 80B72A30  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B72A34  38 80 00 00 */	li r4, 0
/* 80B72A38  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B72A3C  7C A3 00 50 */	subf r5, r3, r0
/* 80B72A40  4B 49 0A 18 */	b memset
/* 80B72A44  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B72A48  4B 5D 2E 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B72A4C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B72A50  4B 5D 2E 48 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B72A54  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B72A58  4B 5D 2C 7C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B72A5C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B72A60  4B 5D 2C 74 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B72A64  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B72A68  4B 5D 42 30 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B72A6C  38 A0 00 00 */	li r5, 0
/* 80B72A70  38 60 00 00 */	li r3, 0
/* 80B72A74  7C A4 2B 78 */	mr r4, r5
/* 80B72A78  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80B72A7C  38 00 00 02 */	li r0, 2
/* 80B72A80  7C 09 03 A6 */	mtctr r0
lbl_80B72A84:
/* 80B72A84  7C DF 22 14 */	add r6, r31, r4
/* 80B72A88  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B72A8C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B72A90  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B72A94  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B72A98  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B72A9C  38 63 00 04 */	addi r3, r3, 4
/* 80B72AA0  38 84 00 06 */	addi r4, r4, 6
/* 80B72AA4  42 00 FF E0 */	bdnz lbl_80B72A84
/* 80B72AA8  38 00 00 00 */	li r0, 0
/* 80B72AAC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B72AB0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B72AB4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B72AB8  38 00 FF FF */	li r0, -1
/* 80B72ABC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B72AC0  38 00 00 01 */	li r0, 1
/* 80B72AC4  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B72AC8  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80B72ACC  4B 6F 4E 88 */	b cM_rndF__Ff
/* 80B72AD0  FC 00 08 1E */	fctiwz f0, f1
/* 80B72AD4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B72AD8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B72ADC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B72AE0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B72AE4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B72AE8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B72AEC  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B72AF0  38 80 00 00 */	li r4, 0
/* 80B72AF4  38 1F 0F C4 */	addi r0, r31, 0xfc4
/* 80B72AF8  7C A3 00 50 */	subf r5, r3, r0
/* 80B72AFC  4B 49 09 5C */	b memset
/* 80B72B00  3B A0 00 00 */	li r29, 0
/* 80B72B04  3B C0 00 00 */	li r30, 0
lbl_80B72B08:
/* 80B72B08  38 1E 09 6C */	addi r0, r30, 0x96c
/* 80B72B0C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 80B72B10  28 03 00 00 */	cmplwi r3, 0
/* 80B72B14  41 82 00 08 */	beq lbl_80B72B1C
/* 80B72B18  4B 5D 2C 4C */	b initialize__15daNpcT_MatAnm_cFv
lbl_80B72B1C:
/* 80B72B1C  3B BD 00 01 */	addi r29, r29, 1
/* 80B72B20  2C 1D 00 02 */	cmpwi r29, 2
/* 80B72B24  3B DE 00 04 */	addi r30, r30, 4
/* 80B72B28  41 80 FF E0 */	blt lbl_80B72B08
/* 80B72B2C  7F E3 FB 78 */	mr r3, r31
/* 80B72B30  4B FF FE 81 */	bl getPath__13daNpc_ZelRo_cFv
/* 80B72B34  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80B72B38  28 00 00 FF */	cmplwi r0, 0xff
/* 80B72B3C  41 82 00 2C */	beq lbl_80B72B68
/* 80B72B40  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B72B44  4B 5D 30 FC */	b initialize__13daNpcT_Path_cFv
/* 80B72B48  7F E3 FB 78 */	mr r3, r31
/* 80B72B4C  4B FF FE 65 */	bl getPath__13daNpc_ZelRo_cFv
/* 80B72B50  7C 64 1B 78 */	mr r4, r3
/* 80B72B54  38 7F 0F 9C */	addi r3, r31, 0xf9c
/* 80B72B58  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80B72B5C  7C 05 07 74 */	extsb r5, r0
/* 80B72B60  38 C0 00 00 */	li r6, 0
/* 80B72B64  4B 5D 31 10 */	b setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80B72B68:
/* 80B72B68  7F E3 FB 78 */	mr r3, r31
/* 80B72B6C  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B72B70  4B 5D 7E A8 */	b setAngle__8daNpcT_cFs
/* 80B72B74  39 61 00 20 */	addi r11, r1, 0x20
/* 80B72B78  4B 7E F6 B0 */	b _restgpr_29
/* 80B72B7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B72B80  7C 08 03 A6 */	mtlr r0
/* 80B72B84  38 21 00 20 */	addi r1, r1, 0x20
/* 80B72B88  4E 80 00 20 */	blr 
