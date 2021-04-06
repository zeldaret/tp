lbl_80A78E0C:
/* 80A78E0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A78E10  7C 08 02 A6 */	mflr r0
/* 80A78E14  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A78E18  39 61 00 30 */	addi r11, r1, 0x30
/* 80A78E1C  4B 8E 93 C1 */	bl _savegpr_29
/* 80A78E20  7C 7E 1B 78 */	mr r30, r3
/* 80A78E24  3C 60 80 A8 */	lis r3, m__17daNpc_Moi_Param_c@ha /* 0x80A7AEF0@ha */
/* 80A78E28  3B E3 AE F0 */	addi r31, r3, m__17daNpc_Moi_Param_c@l /* 0x80A7AEF0@l */
/* 80A78E2C  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80A78E30  2C 00 00 02 */	cmpwi r0, 2
/* 80A78E34  41 82 00 84 */	beq lbl_80A78EB8
/* 80A78E38  40 80 01 A0 */	bge lbl_80A78FD8
/* 80A78E3C  2C 00 00 00 */	cmpwi r0, 0
/* 80A78E40  40 80 00 0C */	bge lbl_80A78E4C
/* 80A78E44  48 00 01 94 */	b lbl_80A78FD8
/* 80A78E48  48 00 01 90 */	b lbl_80A78FD8
lbl_80A78E4C:
/* 80A78E4C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A78E50  2C 00 00 00 */	cmpwi r0, 0
/* 80A78E54  40 82 00 64 */	bne lbl_80A78EB8
/* 80A78E58  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80A78E5C  2C 00 00 15 */	cmpwi r0, 0x15
/* 80A78E60  41 82 00 24 */	beq lbl_80A78E84
/* 80A78E64  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80A78E68  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80A78E6C  4B 6C CA 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A78E70  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80A78E74  38 00 00 15 */	li r0, 0x15
/* 80A78E78  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80A78E7C  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A78E80  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80A78E84:
/* 80A78E84  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80A78E88  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80A78E8C  41 82 00 24 */	beq lbl_80A78EB0
/* 80A78E90  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80A78E94  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80A78E98  4B 6C CA 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A78E9C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80A78EA0  38 00 00 2D */	li r0, 0x2d
/* 80A78EA4  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80A78EA8  C0 1F 01 24 */	lfs f0, 0x124(r31)
/* 80A78EAC  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80A78EB0:
/* 80A78EB0  38 00 00 02 */	li r0, 2
/* 80A78EB4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80A78EB8:
/* 80A78EB8  88 1E 15 C4 */	lbz r0, 0x15c4(r30)
/* 80A78EBC  28 00 00 04 */	cmplwi r0, 4
/* 80A78EC0  40 82 00 50 */	bne lbl_80A78F10
/* 80A78EC4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80A78EC8  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80A78ECC  28 04 00 FF */	cmplwi r4, 0xff
/* 80A78ED0  41 82 00 40 */	beq lbl_80A78F10
/* 80A78ED4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A78ED8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A78EDC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80A78EE0  7C 05 07 74 */	extsb r5, r0
/* 80A78EE4  4B 5B C4 7D */	bl isSwitch__10dSv_info_cCFii
/* 80A78EE8  2C 03 00 00 */	cmpwi r3, 0
/* 80A78EEC  41 82 00 14 */	beq lbl_80A78F00
/* 80A78EF0  7F C3 F3 78 */	mr r3, r30
/* 80A78EF4  4B 5A 0D 89 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80A78EF8  38 60 00 01 */	li r3, 1
/* 80A78EFC  48 00 00 E0 */	b lbl_80A78FDC
lbl_80A78F00:
/* 80A78F00  38 00 00 03 */	li r0, 3
/* 80A78F04  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80A78F08  38 00 00 01 */	li r0, 1
/* 80A78F0C  98 1E 0E 33 */	stb r0, 0xe33(r30)
lbl_80A78F10:
/* 80A78F10  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80A78F14  2C 00 00 00 */	cmpwi r0, 0
/* 80A78F18  40 82 00 C0 */	bne lbl_80A78FD8
/* 80A78F1C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80A78F20  2C 00 00 00 */	cmpwi r0, 0
/* 80A78F24  41 82 00 24 */	beq lbl_80A78F48
/* 80A78F28  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80A78F2C  4B 6C C7 D1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80A78F30  38 00 00 00 */	li r0, 0
/* 80A78F34  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80A78F38  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A78F3C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80A78F40  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A78F44  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80A78F48:
/* 80A78F48  38 00 00 00 */	li r0, 0
/* 80A78F4C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80A78F50  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80A78F54  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A78F58  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A78F5C  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 80A78F60  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A78F64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A78F68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A78F6C  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 80A78F70  4B 59 34 6D */	bl mDoMtx_YrotS__FPA4_fs
/* 80A78F74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A78F78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A78F7C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A78F80  7C 85 23 78 */	mr r5, r4
/* 80A78F84  4B 8C DD E9 */	bl PSMTXMultVec
/* 80A78F88  38 61 00 08 */	addi r3, r1, 8
/* 80A78F8C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80A78F90  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A78F94  4B 7E DB 51 */	bl __pl__4cXyzCFRC3Vec
/* 80A78F98  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A78F9C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A78FA0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A78FA4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A78FA8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A78FAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A78FB0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80A78FB4  38 81 00 14 */	addi r4, r1, 0x14
/* 80A78FB8  4B 8C E3 E5 */	bl PSVECSquareDistance
/* 80A78FBC  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 80A78FC0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80A78FC4  40 80 00 14 */	bge lbl_80A78FD8
/* 80A78FC8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80A78FCC  C0 3F 01 98 */	lfs f1, 0x198(r31)
/* 80A78FD0  C0 5F 01 C8 */	lfs f2, 0x1c8(r31)
/* 80A78FD4  4B 7F 77 6D */	bl cLib_chaseF__FPfff
lbl_80A78FD8:
/* 80A78FD8  38 60 00 01 */	li r3, 1
lbl_80A78FDC:
/* 80A78FDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A78FE0  4B 8E 92 49 */	bl _restgpr_29
/* 80A78FE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A78FE8  7C 08 03 A6 */	mtlr r0
/* 80A78FEC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A78FF0  4E 80 00 20 */	blr 
