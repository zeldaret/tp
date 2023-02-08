lbl_8054FE8C:
/* 8054FE8C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8054FE90  7C 08 02 A6 */	mflr r0
/* 8054FE94  90 01 00 34 */	stw r0, 0x34(r1)
/* 8054FE98  39 61 00 30 */	addi r11, r1, 0x30
/* 8054FE9C  4B E1 23 41 */	bl _savegpr_29
/* 8054FEA0  7C 7F 1B 78 */	mr r31, r3
/* 8054FEA4  3C 60 80 55 */	lis r3, m__18daNpc_Kkri_Param_c@ha /* 0x80553490@ha */
/* 8054FEA8  3B C3 34 90 */	addi r30, r3, m__18daNpc_Kkri_Param_c@l /* 0x80553490@l */
/* 8054FEAC  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 8054FEB0  38 1F 0F D8 */	addi r0, r31, 0xfd8
/* 8054FEB4  7F A3 00 50 */	subf r29, r3, r0
/* 8054FEB8  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 8054FEBC  28 03 00 00 */	cmplwi r3, 0
/* 8054FEC0  41 82 00 08 */	beq lbl_8054FEC8
/* 8054FEC4  4B BF 58 A1 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_8054FEC8:
/* 8054FEC8  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 8054FECC  38 80 00 00 */	li r4, 0
/* 8054FED0  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 8054FED4  7C A3 00 50 */	subf r5, r3, r0
/* 8054FED8  4B AB 35 81 */	bl memset
/* 8054FEDC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8054FEE0  4B BF 59 B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8054FEE4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8054FEE8  4B BF 59 B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8054FEEC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8054FEF0  4B BF 57 E5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8054FEF4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8054FEF8  4B BF 57 DD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8054FEFC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8054FF00  4B BF 6D 99 */	bl initialize__15daNpcT_JntAnm_cFv
/* 8054FF04  38 60 00 00 */	li r3, 0
/* 8054FF08  38 80 00 00 */	li r4, 0
/* 8054FF0C  7C 87 23 78 */	mr r7, r4
/* 8054FF10  7C 86 23 78 */	mr r6, r4
/* 8054FF14  7C 85 23 78 */	mr r5, r4
/* 8054FF18  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8054FF1C  38 00 00 02 */	li r0, 2
/* 8054FF20  7C 09 03 A6 */	mtctr r0
lbl_8054FF24:
/* 8054FF24  7D 1F 22 14 */	add r8, r31, r4
/* 8054FF28  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 8054FF2C  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 8054FF30  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 8054FF34  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8054FF38  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8054FF3C  38 63 00 04 */	addi r3, r3, 4
/* 8054FF40  38 84 00 06 */	addi r4, r4, 6
/* 8054FF44  42 00 FF E0 */	bdnz lbl_8054FF24
/* 8054FF48  38 00 00 00 */	li r0, 0
/* 8054FF4C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 8054FF50  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 8054FF54  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 8054FF58  38 00 FF FF */	li r0, -1
/* 8054FF5C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 8054FF60  38 00 00 01 */	li r0, 1
/* 8054FF64  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 8054FF68  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 8054FF6C  4B D1 79 E9 */	bl cM_rndF__Ff
/* 8054FF70  FC 00 08 1E */	fctiwz f0, f1
/* 8054FF74  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8054FF78  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8054FF7C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 8054FF80  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 8054FF84  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 8054FF88  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 8054FF8C  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 8054FF90  4B BF 57 45 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8054FF94  38 7F 0F 8C */	addi r3, r31, 0xf8c
/* 8054FF98  38 80 00 00 */	li r4, 0
/* 8054FF9C  7F A5 EB 78 */	mr r5, r29
/* 8054FFA0  4B AB 34 B9 */	bl memset
/* 8054FFA4  38 60 00 00 */	li r3, 0
/* 8054FFA8  B0 61 00 10 */	sth r3, 0x10(r1)
/* 8054FFAC  B0 61 00 12 */	sth r3, 0x12(r1)
/* 8054FFB0  B0 61 00 14 */	sth r3, 0x14(r1)
/* 8054FFB4  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 8054FFB8  B0 01 00 12 */	sth r0, 0x12(r1)
/* 8054FFBC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8054FFC0  90 01 00 08 */	stw r0, 8(r1)
/* 8054FFC4  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8054FFC8  7F E3 FB 78 */	mr r3, r31
/* 8054FFCC  38 81 00 08 */	addi r4, r1, 8
/* 8054FFD0  4B BF A9 CD */	bl setAngle__8daNpcT_cF5csXyz
/* 8054FFD4  39 61 00 30 */	addi r11, r1, 0x30
/* 8054FFD8  4B E1 22 51 */	bl _restgpr_29
/* 8054FFDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8054FFE0  7C 08 03 A6 */	mtlr r0
/* 8054FFE4  38 21 00 30 */	addi r1, r1, 0x30
/* 8054FFE8  4E 80 00 20 */	blr 
