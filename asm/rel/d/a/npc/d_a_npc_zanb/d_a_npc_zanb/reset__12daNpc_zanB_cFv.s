lbl_80B698E4:
/* 80B698E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B698E8  7C 08 02 A6 */	mflr r0
/* 80B698EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B698F0  39 61 00 30 */	addi r11, r1, 0x30
/* 80B698F4  4B 7F 88 E9 */	bl _savegpr_29
/* 80B698F8  7C 7F 1B 78 */	mr r31, r3
/* 80B698FC  3C 60 80 B7 */	lis r3, m__18daNpc_zanB_Param_c@ha /* 0x80B6BCC4@ha */
/* 80B69900  3B C3 BC C4 */	addi r30, r3, m__18daNpc_zanB_Param_c@l /* 0x80B6BCC4@l */
/* 80B69904  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B69908  38 1F 0F 9C */	addi r0, r31, 0xf9c
/* 80B6990C  7F A3 00 50 */	subf r29, r3, r0
/* 80B69910  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 80B69914  28 03 00 00 */	cmplwi r3, 0
/* 80B69918  41 82 00 08 */	beq lbl_80B69920
/* 80B6991C  4B 5D BE 49 */	bl initialize__15daNpcT_MatAnm_cFv
lbl_80B69920:
/* 80B69920  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B69924  38 80 00 00 */	li r4, 0
/* 80B69928  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B6992C  7C A3 00 50 */	subf r5, r3, r0
/* 80B69930  4B 49 9B 29 */	bl memset
/* 80B69934  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B69938  4B 5D BF 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6993C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B69940  4B 5D BF 59 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B69944  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B69948  4B 5D BD 8D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B6994C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B69950  4B 5D BD 85 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B69954  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B69958  4B 5D D3 41 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B6995C  38 60 00 00 */	li r3, 0
/* 80B69960  38 80 00 00 */	li r4, 0
/* 80B69964  7C 87 23 78 */	mr r7, r4
/* 80B69968  7C 86 23 78 */	mr r6, r4
/* 80B6996C  7C 85 23 78 */	mr r5, r4
/* 80B69970  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80B69974  38 00 00 02 */	li r0, 2
/* 80B69978  7C 09 03 A6 */	mtctr r0
lbl_80B6997C:
/* 80B6997C  7D 1F 22 14 */	add r8, r31, r4
/* 80B69980  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80B69984  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80B69988  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80B6998C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B69990  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B69994  38 63 00 04 */	addi r3, r3, 4
/* 80B69998  38 84 00 06 */	addi r4, r4, 6
/* 80B6999C  42 00 FF E0 */	bdnz lbl_80B6997C
/* 80B699A0  38 00 00 00 */	li r0, 0
/* 80B699A4  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B699A8  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B699AC  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B699B0  38 00 FF FF */	li r0, -1
/* 80B699B4  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B699B8  38 00 00 01 */	li r0, 1
/* 80B699BC  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B699C0  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B699C4  4B 6F DF 91 */	bl cM_rndF__Ff
/* 80B699C8  FC 00 08 1E */	fctiwz f0, f1
/* 80B699CC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B699D0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B699D4  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B699D8  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B699DC  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B699E0  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B699E4  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80B699E8  38 80 00 00 */	li r4, 0
/* 80B699EC  7F A5 EB 78 */	mr r5, r29
/* 80B699F0  4B 49 9A 69 */	bl memset
/* 80B699F4  38 60 00 00 */	li r3, 0
/* 80B699F8  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80B699FC  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80B69A00  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80B69A04  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80B69A08  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80B69A0C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B69A10  90 01 00 08 */	stw r0, 8(r1)
/* 80B69A14  B0 61 00 0C */	sth r3, 0xc(r1)
/* 80B69A18  7F E3 FB 78 */	mr r3, r31
/* 80B69A1C  38 81 00 08 */	addi r4, r1, 8
/* 80B69A20  4B 5E 0F 7D */	bl setAngle__8daNpcT_cF5csXyz
/* 80B69A24  39 61 00 30 */	addi r11, r1, 0x30
/* 80B69A28  4B 7F 88 01 */	bl _restgpr_29
/* 80B69A2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B69A30  7C 08 03 A6 */	mtlr r0
/* 80B69A34  38 21 00 30 */	addi r1, r1, 0x30
/* 80B69A38  4E 80 00 20 */	blr 
