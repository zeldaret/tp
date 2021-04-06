lbl_80AC0CE8:
/* 80AC0CE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AC0CEC  7C 08 02 A6 */	mflr r0
/* 80AC0CF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AC0CF4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AC0CF8  4B 8A 14 E5 */	bl _savegpr_29
/* 80AC0CFC  7C 7E 1B 78 */	mr r30, r3
/* 80AC0D00  3C 60 80 AC */	lis r3, m__18daNpc_Saru_Param_c@ha /* 0x80AC44F8@ha */
/* 80AC0D04  3B A3 44 F8 */	addi r29, r3, m__18daNpc_Saru_Param_c@l /* 0x80AC44F8@l */
/* 80AC0D08  38 7E 0F BC */	addi r3, r30, 0xfbc
/* 80AC0D0C  38 1E 0F DC */	addi r0, r30, 0xfdc
/* 80AC0D10  7F E3 00 50 */	subf r31, r3, r0
/* 80AC0D14  38 7E 0D 24 */	addi r3, r30, 0xd24
/* 80AC0D18  38 80 00 00 */	li r4, 0
/* 80AC0D1C  38 1E 0E 38 */	addi r0, r30, 0xe38
/* 80AC0D20  7C A3 00 50 */	subf r5, r3, r0
/* 80AC0D24  4B 54 27 35 */	bl memset
/* 80AC0D28  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80AC0D2C  4B 68 4B 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC0D30  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80AC0D34  4B 68 4B 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC0D38  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80AC0D3C  4B 68 49 99 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC0D40  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 80AC0D44  4B 68 49 91 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC0D48  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80AC0D4C  4B 68 5F 4D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AC0D50  38 60 00 00 */	li r3, 0
/* 80AC0D54  38 80 00 00 */	li r4, 0
/* 80AC0D58  7C 87 23 78 */	mr r7, r4
/* 80AC0D5C  7C 86 23 78 */	mr r6, r4
/* 80AC0D60  7C 85 23 78 */	mr r5, r4
/* 80AC0D64  C0 1D 00 B4 */	lfs f0, 0xb4(r29)
/* 80AC0D68  38 00 00 02 */	li r0, 2
/* 80AC0D6C  7C 09 03 A6 */	mtctr r0
lbl_80AC0D70:
/* 80AC0D70  7D 1E 22 14 */	add r8, r30, r4
/* 80AC0D74  B0 E8 0D 08 */	sth r7, 0xd08(r8)
/* 80AC0D78  B0 C8 0D 0A */	sth r6, 0xd0a(r8)
/* 80AC0D7C  B0 A8 0D 0C */	sth r5, 0xd0c(r8)
/* 80AC0D80  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AC0D84  7C 1E 05 2E */	stfsx f0, r30, r0
/* 80AC0D88  38 63 00 04 */	addi r3, r3, 4
/* 80AC0D8C  38 84 00 06 */	addi r4, r4, 6
/* 80AC0D90  42 00 FF E0 */	bdnz lbl_80AC0D70
/* 80AC0D94  38 00 00 00 */	li r0, 0
/* 80AC0D98  B0 1E 0D 1C */	sth r0, 0xd1c(r30)
/* 80AC0D9C  B0 1E 0D 1E */	sth r0, 0xd1e(r30)
/* 80AC0DA0  98 1E 0D 20 */	stb r0, 0xd20(r30)
/* 80AC0DA4  38 00 FF FF */	li r0, -1
/* 80AC0DA8  90 1E 0D 90 */	stw r0, 0xd90(r30)
/* 80AC0DAC  38 00 00 01 */	li r0, 1
/* 80AC0DB0  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 80AC0DB4  C0 3D 00 B8 */	lfs f1, 0xb8(r29)
/* 80AC0DB8  4B 7A 6B 9D */	bl cM_rndF__Ff
/* 80AC0DBC  FC 00 08 1E */	fctiwz f0, f1
/* 80AC0DC0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80AC0DC4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80AC0DC8  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80AC0DCC  C0 1D 00 BC */	lfs f0, 0xbc(r29)
/* 80AC0DD0  D0 1E 0D E0 */	stfs f0, 0xde0(r30)
/* 80AC0DD4  D0 1E 0D E4 */	stfs f0, 0xde4(r30)
/* 80AC0DD8  38 7E 0F 8C */	addi r3, r30, 0xf8c
/* 80AC0DDC  4B 68 48 F9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC0DE0  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80AC0DE4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80AC0DE8  28 00 00 FF */	cmplwi r0, 0xff
/* 80AC0DEC  41 82 00 28 */	beq lbl_80AC0E14
/* 80AC0DF0  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80AC0DF4  4B 68 4E 4D */	bl initialize__13daNpcT_Path_cFv
/* 80AC0DF8  38 7E 0F 94 */	addi r3, r30, 0xf94
/* 80AC0DFC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80AC0E00  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80AC0E04  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80AC0E08  7C 05 07 74 */	extsb r5, r0
/* 80AC0E0C  38 C0 00 00 */	li r6, 0
/* 80AC0E10  4B 68 4E 65 */	bl setPathInfo__13daNpcT_Path_cFUcScUc
lbl_80AC0E14:
/* 80AC0E14  38 7E 0F BC */	addi r3, r30, 0xfbc
/* 80AC0E18  38 80 00 00 */	li r4, 0
/* 80AC0E1C  7F E5 FB 78 */	mr r5, r31
/* 80AC0E20  4B 54 26 39 */	bl memset
/* 80AC0E24  38 00 00 00 */	li r0, 0
/* 80AC0E28  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80AC0E2C  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80AC0E30  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80AC0E34  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80AC0E38  B0 01 00 12 */	sth r0, 0x12(r1)
/* 80AC0E3C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80AC0E40  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80AC0E44  28 04 00 FF */	cmplwi r4, 0xff
/* 80AC0E48  41 82 00 28 */	beq lbl_80AC0E70
/* 80AC0E4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AC0E50  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AC0E54  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80AC0E58  7C 05 07 74 */	extsb r5, r0
/* 80AC0E5C  4B 57 45 05 */	bl isSwitch__10dSv_info_cCFii
/* 80AC0E60  2C 03 00 00 */	cmpwi r3, 0
/* 80AC0E64  41 82 00 0C */	beq lbl_80AC0E70
/* 80AC0E68  38 00 00 01 */	li r0, 1
/* 80AC0E6C  98 1E 0F D9 */	stb r0, 0xfd9(r30)
lbl_80AC0E70:
/* 80AC0E70  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80AC0E74  90 01 00 08 */	stw r0, 8(r1)
/* 80AC0E78  A0 01 00 14 */	lhz r0, 0x14(r1)
/* 80AC0E7C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80AC0E80  7F C3 F3 78 */	mr r3, r30
/* 80AC0E84  38 81 00 08 */	addi r4, r1, 8
/* 80AC0E88  4B 68 9B 15 */	bl setAngle__8daNpcT_cF5csXyz
/* 80AC0E8C  39 61 00 30 */	addi r11, r1, 0x30
/* 80AC0E90  4B 8A 13 99 */	bl _restgpr_29
/* 80AC0E94  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AC0E98  7C 08 03 A6 */	mtlr r0
/* 80AC0E9C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AC0EA0  4E 80 00 20 */	blr 
