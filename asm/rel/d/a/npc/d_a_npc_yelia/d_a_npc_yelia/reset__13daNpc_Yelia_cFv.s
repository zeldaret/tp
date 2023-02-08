lbl_80B4DF10:
/* 80B4DF10  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B4DF14  7C 08 02 A6 */	mflr r0
/* 80B4DF18  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B4DF1C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4DF20  4B 81 42 B9 */	bl _savegpr_28
/* 80B4DF24  7C 7F 1B 78 */	mr r31, r3
/* 80B4DF28  3C 60 80 B5 */	lis r3, m__19daNpc_Yelia_Param_c@ha /* 0x80B522B4@ha */
/* 80B4DF2C  3B C3 22 B4 */	addi r30, r3, m__19daNpc_Yelia_Param_c@l /* 0x80B522B4@l */
/* 80B4DF30  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80B4DF34  38 1F 0F EC */	addi r0, r31, 0xfec
/* 80B4DF38  7F A3 00 50 */	subf r29, r3, r0
/* 80B4DF3C  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80B4DF40  28 03 00 00 */	cmplwi r3, 0
/* 80B4DF44  41 82 00 08 */	beq lbl_80B4DF4C
/* 80B4DF48  4B 5F 78 1D */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80B4DF4C:
/* 80B4DF4C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B4DF50  38 80 00 00 */	li r4, 0
/* 80B4DF54  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B4DF58  7C A3 00 50 */	subf r5, r3, r0
/* 80B4DF5C  4B 4B 54 FD */	bl memset
/* 80B4DF60  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B4DF64  4B 5F 79 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4DF68  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B4DF6C  4B 5F 79 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4DF70  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B4DF74  4B 5F 77 61 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B4DF78  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B4DF7C  4B 5F 77 59 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B4DF80  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B4DF84  4B 5F 8D 15 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B4DF88  38 A0 00 00 */	li r5, 0
/* 80B4DF8C  38 60 00 00 */	li r3, 0
/* 80B4DF90  7C A4 2B 78 */	mr r4, r5
/* 80B4DF94  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B4DF98  38 00 00 02 */	li r0, 2
/* 80B4DF9C  7C 09 03 A6 */	mtctr r0
lbl_80B4DFA0:
/* 80B4DFA0  7C DF 22 14 */	add r6, r31, r4
/* 80B4DFA4  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B4DFA8  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B4DFAC  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B4DFB0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B4DFB4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B4DFB8  38 63 00 04 */	addi r3, r3, 4
/* 80B4DFBC  38 84 00 06 */	addi r4, r4, 6
/* 80B4DFC0  42 00 FF E0 */	bdnz lbl_80B4DFA0
/* 80B4DFC4  38 00 00 00 */	li r0, 0
/* 80B4DFC8  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B4DFCC  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B4DFD0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B4DFD4  38 00 FF FF */	li r0, -1
/* 80B4DFD8  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B4DFDC  38 00 00 01 */	li r0, 1
/* 80B4DFE0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B4DFE4  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80B4DFE8  4B 71 99 6D */	bl cM_rndF__Ff
/* 80B4DFEC  FC 00 08 1E */	fctiwz f0, f1
/* 80B4DFF0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B4DFF4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B4DFF8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B4DFFC  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80B4E000  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B4E004  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B4E008  3B 80 00 00 */	li r28, 0
/* 80B4E00C  3B C0 00 00 */	li r30, 0
lbl_80B4E010:
/* 80B4E010  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 80B4E014  7C 7F 1A 14 */	add r3, r31, r3
/* 80B4E018  4B 5F 76 BD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B4E01C  3B 9C 00 01 */	addi r28, r28, 1
/* 80B4E020  2C 1C 00 04 */	cmpwi r28, 4
/* 80B4E024  3B DE 00 08 */	addi r30, r30, 8
/* 80B4E028  41 80 FF E8 */	blt lbl_80B4E010
/* 80B4E02C  38 7F 0F A4 */	addi r3, r31, 0xfa4
/* 80B4E030  38 80 00 00 */	li r4, 0
/* 80B4E034  7F A5 EB 78 */	mr r5, r29
/* 80B4E038  4B 4B 54 21 */	bl memset
/* 80B4E03C  38 00 FF FF */	li r0, -1
/* 80B4E040  90 1F 0F E4 */	stw r0, 0xfe4(r31)
/* 80B4E044  7F E3 FB 78 */	mr r3, r31
/* 80B4E048  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B4E04C  4B 5F C9 CD */	bl setAngle__8daNpcT_cFs
/* 80B4E050  39 61 00 20 */	addi r11, r1, 0x20
/* 80B4E054  4B 81 41 D1 */	bl _restgpr_28
/* 80B4E058  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B4E05C  7C 08 03 A6 */	mtlr r0
/* 80B4E060  38 21 00 20 */	addi r1, r1, 0x20
/* 80B4E064  4E 80 00 20 */	blr 
