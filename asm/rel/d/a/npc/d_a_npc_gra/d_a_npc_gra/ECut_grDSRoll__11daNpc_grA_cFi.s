lbl_809C3D78:
/* 809C3D78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809C3D7C  7C 08 02 A6 */	mflr r0
/* 809C3D80  90 01 00 44 */	stw r0, 0x44(r1)
/* 809C3D84  39 61 00 40 */	addi r11, r1, 0x40
/* 809C3D88  4B 99 E4 49 */	bl _savegpr_26
/* 809C3D8C  7C 7F 1B 78 */	mr r31, r3
/* 809C3D90  7C 9A 23 78 */	mr r26, r4
/* 809C3D94  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C3D98  3B C3 9D 98 */	addi r30, r3, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C3D9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C3DA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C3DA4  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 809C3DA8  3B A0 00 00 */	li r29, 0
/* 809C3DAC  3B 80 FF FF */	li r28, -1
/* 809C3DB0  7F 63 DB 78 */	mr r3, r27
/* 809C3DB4  3C A0 80 9D */	lis r5, d_a_npc_gra__stringBase0@ha /* 0x809CA4B8@ha */
/* 809C3DB8  38 A5 A4 B8 */	addi r5, r5, d_a_npc_gra__stringBase0@l /* 0x809CA4B8@l */
/* 809C3DBC  38 A5 01 46 */	addi r5, r5, 0x146
/* 809C3DC0  38 C0 00 03 */	li r6, 3
/* 809C3DC4  4B 68 43 29 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809C3DC8  28 03 00 00 */	cmplwi r3, 0
/* 809C3DCC  41 82 00 08 */	beq lbl_809C3DD4
/* 809C3DD0  83 83 00 00 */	lwz r28, 0(r3)
lbl_809C3DD4:
/* 809C3DD4  7F 63 DB 78 */	mr r3, r27
/* 809C3DD8  7F 44 D3 78 */	mr r4, r26
/* 809C3DDC  4B 68 3F 71 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809C3DE0  2C 03 00 00 */	cmpwi r3, 0
/* 809C3DE4  41 82 01 A8 */	beq lbl_809C3F8C
/* 809C3DE8  2C 1C 00 2D */	cmpwi r28, 0x2d
/* 809C3DEC  41 82 01 A0 */	beq lbl_809C3F8C
/* 809C3DF0  40 80 00 34 */	bge lbl_809C3E24
/* 809C3DF4  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 809C3DF8  41 82 00 94 */	beq lbl_809C3E8C
/* 809C3DFC  40 80 00 1C */	bge lbl_809C3E18
/* 809C3E00  2C 1C 00 14 */	cmpwi r28, 0x14
/* 809C3E04  41 82 00 5C */	beq lbl_809C3E60
/* 809C3E08  40 80 01 84 */	bge lbl_809C3F8C
/* 809C3E0C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 809C3E10  41 82 00 44 */	beq lbl_809C3E54
/* 809C3E14  48 00 01 78 */	b lbl_809C3F8C
lbl_809C3E18:
/* 809C3E18  2C 1C 00 28 */	cmpwi r28, 0x28
/* 809C3E1C  41 82 00 C8 */	beq lbl_809C3EE4
/* 809C3E20  48 00 01 6C */	b lbl_809C3F8C
lbl_809C3E24:
/* 809C3E24  2C 1C 00 46 */	cmpwi r28, 0x46
/* 809C3E28  41 82 01 34 */	beq lbl_809C3F5C
/* 809C3E2C  40 80 00 1C */	bge lbl_809C3E48
/* 809C3E30  2C 1C 00 3C */	cmpwi r28, 0x3c
/* 809C3E34  41 82 00 F8 */	beq lbl_809C3F2C
/* 809C3E38  40 80 01 54 */	bge lbl_809C3F8C
/* 809C3E3C  2C 1C 00 32 */	cmpwi r28, 0x32
/* 809C3E40  41 82 00 DC */	beq lbl_809C3F1C
/* 809C3E44  48 00 01 48 */	b lbl_809C3F8C
lbl_809C3E48:
/* 809C3E48  2C 1C 00 50 */	cmpwi r28, 0x50
/* 809C3E4C  41 82 01 28 */	beq lbl_809C3F74
/* 809C3E50  48 00 01 3C */	b lbl_809C3F8C
lbl_809C3E54:
/* 809C3E54  38 00 00 00 */	li r0, 0
/* 809C3E58  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C3E5C  48 00 01 30 */	b lbl_809C3F8C
lbl_809C3E60:
/* 809C3E60  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005006A@ha */
/* 809C3E64  38 03 00 6A */	addi r0, r3, 0x006A /* 0x0005006A@l */
/* 809C3E68  90 01 00 18 */	stw r0, 0x18(r1)
/* 809C3E6C  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809C3E70  38 81 00 18 */	addi r4, r1, 0x18
/* 809C3E74  38 A0 FF FF */	li r5, -1
/* 809C3E78  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809C3E7C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809C3E80  7D 89 03 A6 */	mtctr r12
/* 809C3E84  4E 80 04 21 */	bctrl 
/* 809C3E88  48 00 01 04 */	b lbl_809C3F8C
lbl_809C3E8C:
/* 809C3E8C  7F E3 FB 78 */	mr r3, r31
/* 809C3E90  38 80 00 12 */	li r4, 0x12
/* 809C3E94  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C3E98  38 A0 00 00 */	li r5, 0
/* 809C3E9C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C3EA0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C3EA4  7D 89 03 A6 */	mtctr r12
/* 809C3EA8  4E 80 04 21 */	bctrl 
/* 809C3EAC  7F E3 FB 78 */	mr r3, r31
/* 809C3EB0  38 80 00 00 */	li r4, 0
/* 809C3EB4  4B FF F1 BD */	bl setLookMode__11daNpc_grA_cFi
/* 809C3EB8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005006B@ha */
/* 809C3EBC  38 03 00 6B */	addi r0, r3, 0x006B /* 0x0005006B@l */
/* 809C3EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C3EC4  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809C3EC8  38 81 00 14 */	addi r4, r1, 0x14
/* 809C3ECC  38 A0 FF FF */	li r5, -1
/* 809C3ED0  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809C3ED4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809C3ED8  7D 89 03 A6 */	mtctr r12
/* 809C3EDC  4E 80 04 21 */	bctrl 
/* 809C3EE0  48 00 00 AC */	b lbl_809C3F8C
lbl_809C3EE4:
/* 809C3EE4  7F E3 FB 78 */	mr r3, r31
/* 809C3EE8  38 80 00 13 */	li r4, 0x13
/* 809C3EEC  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C3EF0  38 A0 00 00 */	li r5, 0
/* 809C3EF4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C3EF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C3EFC  7D 89 03 A6 */	mtctr r12
/* 809C3F00  4E 80 04 21 */	bctrl 
/* 809C3F04  7F E3 FB 78 */	mr r3, r31
/* 809C3F08  38 80 00 00 */	li r4, 0
/* 809C3F0C  4B FF F1 65 */	bl setLookMode__11daNpc_grA_cFi
/* 809C3F10  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 809C3F14  D0 1F 14 D4 */	stfs f0, 0x14d4(r31)
/* 809C3F18  48 00 00 74 */	b lbl_809C3F8C
lbl_809C3F1C:
/* 809C3F1C  7F E3 FB 78 */	mr r3, r31
/* 809C3F20  38 80 00 00 */	li r4, 0
/* 809C3F24  4B FF F1 4D */	bl setLookMode__11daNpc_grA_cFi
/* 809C3F28  48 00 00 64 */	b lbl_809C3F8C
lbl_809C3F2C:
/* 809C3F2C  3C 60 80 9C */	lis r3, s_subGRD__FPvPv@ha /* 0x809BFC4C@ha */
/* 809C3F30  38 63 FC 4C */	addi r3, r3, s_subGRD__FPvPv@l /* 0x809BFC4C@l */
/* 809C3F34  7F E4 FB 78 */	mr r4, r31
/* 809C3F38  4B 65 D4 01 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 809C3F3C  7C 64 1B 79 */	or. r4, r3, r3
/* 809C3F40  41 82 00 0C */	beq lbl_809C3F4C
/* 809C3F44  38 7F 0C 8C */	addi r3, r31, 0xc8c
/* 809C3F48  4B 78 C7 75 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_809C3F4C:
/* 809C3F4C  7F E3 FB 78 */	mr r3, r31
/* 809C3F50  38 80 00 05 */	li r4, 5
/* 809C3F54  4B FF F1 1D */	bl setLookMode__11daNpc_grA_cFi
/* 809C3F58  48 00 00 34 */	b lbl_809C3F8C
lbl_809C3F5C:
/* 809C3F5C  7F E3 FB 78 */	mr r3, r31
/* 809C3F60  4B FF B9 41 */	bl setTagJump2__11daNpc_grA_cFv
/* 809C3F64  7F E3 FB 78 */	mr r3, r31
/* 809C3F68  38 80 00 02 */	li r4, 2
/* 809C3F6C  4B FF F1 05 */	bl setLookMode__11daNpc_grA_cFi
/* 809C3F70  48 00 00 1C */	b lbl_809C3F8C
lbl_809C3F74:
/* 809C3F74  7F E3 FB 78 */	mr r3, r31
/* 809C3F78  38 80 00 02 */	li r4, 2
/* 809C3F7C  4B FF F0 F5 */	bl setLookMode__11daNpc_grA_cFi
/* 809C3F80  38 7E 00 00 */	addi r3, r30, 0
/* 809C3F84  A8 03 00 6C */	lha r0, 0x6c(r3)
/* 809C3F88  90 1F 09 60 */	stw r0, 0x960(r31)
lbl_809C3F8C:
/* 809C3F8C  2C 1C 00 2D */	cmpwi r28, 0x2d
/* 809C3F90  41 82 01 BC */	beq lbl_809C414C
/* 809C3F94  40 80 00 34 */	bge lbl_809C3FC8
/* 809C3F98  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 809C3F9C  41 82 00 A4 */	beq lbl_809C4040
/* 809C3FA0  40 80 00 1C */	bge lbl_809C3FBC
/* 809C3FA4  2C 1C 00 14 */	cmpwi r28, 0x14
/* 809C3FA8  41 82 00 58 */	beq lbl_809C4000
/* 809C3FAC  40 80 05 50 */	bge lbl_809C44FC
/* 809C3FB0  2C 1C 00 0A */	cmpwi r28, 0xa
/* 809C3FB4  41 82 00 44 */	beq lbl_809C3FF8
/* 809C3FB8  48 00 05 44 */	b lbl_809C44FC
lbl_809C3FBC:
/* 809C3FBC  2C 1C 00 28 */	cmpwi r28, 0x28
/* 809C3FC0  41 82 01 3C */	beq lbl_809C40FC
/* 809C3FC4  48 00 05 38 */	b lbl_809C44FC
lbl_809C3FC8:
/* 809C3FC8  2C 1C 00 46 */	cmpwi r28, 0x46
/* 809C3FCC  41 82 03 84 */	beq lbl_809C4350
/* 809C3FD0  40 80 00 1C */	bge lbl_809C3FEC
/* 809C3FD4  2C 1C 00 3C */	cmpwi r28, 0x3c
/* 809C3FD8  41 82 03 70 */	beq lbl_809C4348
/* 809C3FDC  40 80 05 20 */	bge lbl_809C44FC
/* 809C3FE0  2C 1C 00 32 */	cmpwi r28, 0x32
/* 809C3FE4  41 82 01 C4 */	beq lbl_809C41A8
/* 809C3FE8  48 00 05 14 */	b lbl_809C44FC
lbl_809C3FEC:
/* 809C3FEC  2C 1C 00 50 */	cmpwi r28, 0x50
/* 809C3FF0  41 82 03 A8 */	beq lbl_809C4398
/* 809C3FF4  48 00 05 08 */	b lbl_809C44FC
lbl_809C3FF8:
/* 809C3FF8  3B A0 00 01 */	li r29, 1
/* 809C3FFC  48 00 05 04 */	b lbl_809C4500
lbl_809C4000:
/* 809C4000  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809C4004  B0 01 00 0A */	sth r0, 0xa(r1)
/* 809C4008  7F E3 FB 78 */	mr r3, r31
/* 809C400C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C4010  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C4014  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809C4018  4B 65 66 F9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C401C  7C 64 1B 78 */	mr r4, r3
/* 809C4020  38 61 00 0A */	addi r3, r1, 0xa
/* 809C4024  38 A0 08 00 */	li r5, 0x800
/* 809C4028  4B 8A CB 69 */	bl cLib_chaseAngleS__FPsss
/* 809C402C  7F E3 FB 78 */	mr r3, r31
/* 809C4030  A8 81 00 0A */	lha r4, 0xa(r1)
/* 809C4034  4B 79 02 1D */	bl setAngle__8daNpcF_cFs
/* 809C4038  3B A0 00 01 */	li r29, 1
/* 809C403C  48 00 04 C4 */	b lbl_809C4500
lbl_809C4040:
/* 809C4040  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C4044  2C 00 00 1B */	cmpwi r0, 0x1b
/* 809C4048  40 82 04 B8 */	bne lbl_809C4500
/* 809C404C  80 9F 05 68 */	lwz r4, 0x568(r31)
/* 809C4050  38 60 00 01 */	li r3, 1
/* 809C4054  88 04 00 11 */	lbz r0, 0x11(r4)
/* 809C4058  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 809C405C  40 82 00 18 */	bne lbl_809C4074
/* 809C4060  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 809C4064  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 809C4068  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 809C406C  41 82 00 08 */	beq lbl_809C4074
/* 809C4070  38 60 00 00 */	li r3, 0
lbl_809C4074:
/* 809C4074  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809C4078  41 82 00 0C */	beq lbl_809C4084
/* 809C407C  3B A0 00 01 */	li r29, 1
/* 809C4080  48 00 04 80 */	b lbl_809C4500
lbl_809C4084:
/* 809C4084  38 64 00 0C */	addi r3, r4, 0xc
/* 809C4088  C0 3E 06 B0 */	lfs f1, 0x6b0(r30)
/* 809C408C  4B 96 43 A1 */	bl checkPass__12J3DFrameCtrlFf
/* 809C4090  2C 03 00 00 */	cmpwi r3, 0
/* 809C4094  41 82 04 6C */	beq lbl_809C4500
/* 809C4098  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809C409C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809C40A0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809C40A4  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 809C40A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809C40AC  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809C40B0  4B 64 8C B5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 809C40B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C40B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C40BC  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 809C40C0  4B 64 83 75 */	bl mDoMtx_YrotM__FPA4_fs
/* 809C40C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C40C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C40CC  38 81 00 1C */	addi r4, r1, 0x1c
/* 809C40D0  38 BF 15 24 */	addi r5, r31, 0x1524
/* 809C40D4  4B 98 2C 99 */	bl PSMTXMultVec
/* 809C40D8  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809C40DC  B0 1F 15 30 */	sth r0, 0x1530(r31)
/* 809C40E0  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C40E4  B0 1F 15 32 */	sth r0, 0x1532(r31)
/* 809C40E8  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809C40EC  B0 1F 15 34 */	sth r0, 0x1534(r31)
/* 809C40F0  38 00 00 01 */	li r0, 1
/* 809C40F4  98 1F 15 20 */	stb r0, 0x1520(r31)
/* 809C40F8  48 00 04 08 */	b lbl_809C4500
lbl_809C40FC:
/* 809C40FC  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C4100  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809C4104  40 82 00 40 */	bne lbl_809C4144
/* 809C4108  38 00 00 1D */	li r0, 0x1d
/* 809C410C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C4110  B0 03 00 14 */	sth r0, 0x14(r3)
/* 809C4114  C0 3F 14 D4 */	lfs f1, 0x14d4(r31)
/* 809C4118  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 809C411C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C4120  40 80 00 10 */	bge lbl_809C4130
/* 809C4124  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 809C4128  EC 01 00 2A */	fadds f0, f1, f0
/* 809C412C  D0 1F 14 D4 */	stfs f0, 0x14d4(r31)
lbl_809C4130:
/* 809C4130  C0 1F 14 D4 */	lfs f0, 0x14d4(r31)
/* 809C4134  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C4138  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C413C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809C4140  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_809C4144:
/* 809C4144  3B A0 00 01 */	li r29, 1
/* 809C4148  48 00 03 B8 */	b lbl_809C4500
lbl_809C414C:
/* 809C414C  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C4150  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809C4154  40 82 00 4C */	bne lbl_809C41A0
/* 809C4158  38 00 00 1D */	li r0, 0x1d
/* 809C415C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C4160  B0 03 00 14 */	sth r0, 0x14(r3)
/* 809C4164  C0 3F 14 D4 */	lfs f1, 0x14d4(r31)
/* 809C4168  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 809C416C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C4170  40 80 00 10 */	bge lbl_809C4180
/* 809C4174  C0 1E 06 B8 */	lfs f0, 0x6b8(r30)
/* 809C4178  EC 01 00 2A */	fadds f0, f1, f0
/* 809C417C  D0 1F 14 D4 */	stfs f0, 0x14d4(r31)
lbl_809C4180:
/* 809C4180  C0 1F 14 D4 */	lfs f0, 0x14d4(r31)
/* 809C4184  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C4188  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C418C  C0 3F 14 D4 */	lfs f1, 0x14d4(r31)
/* 809C4190  38 7E 00 00 */	addi r3, r30, 0
/* 809C4194  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 809C4198  EC 01 00 32 */	fmuls f0, f1, f0
/* 809C419C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_809C41A0:
/* 809C41A0  3B A0 00 01 */	li r29, 1
/* 809C41A4  48 00 03 5C */	b lbl_809C4500
lbl_809C41A8:
/* 809C41A8  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C41AC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809C41B0  40 82 00 A0 */	bne lbl_809C4250
/* 809C41B4  C0 3F 14 D4 */	lfs f1, 0x14d4(r31)
/* 809C41B8  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 809C41BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C41C0  40 81 00 34 */	ble lbl_809C41F4
/* 809C41C4  C0 1E 06 BC */	lfs f0, 0x6bc(r30)
/* 809C41C8  EC 01 00 28 */	fsubs f0, f1, f0
/* 809C41CC  D0 1F 14 D4 */	stfs f0, 0x14d4(r31)
/* 809C41D0  C0 1F 14 D4 */	lfs f0, 0x14d4(r31)
/* 809C41D4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C41D8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C41DC  C0 3F 14 D4 */	lfs f1, 0x14d4(r31)
/* 809C41E0  38 7E 00 00 */	addi r3, r30, 0
/* 809C41E4  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 809C41E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 809C41EC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809C41F0  48 00 03 10 */	b lbl_809C4500
lbl_809C41F4:
/* 809C41F4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C41F8  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809C41FC  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809C4200  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C4204  4C 41 13 82 */	cror 2, 1, 2
/* 809C4208  40 82 00 3C */	bne lbl_809C4244
/* 809C420C  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 809C4210  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C4214  4C 40 13 82 */	cror 2, 0, 2
/* 809C4218  40 82 00 2C */	bne lbl_809C4244
/* 809C421C  7F E3 FB 78 */	mr r3, r31
/* 809C4220  38 80 00 14 */	li r4, 0x14
/* 809C4224  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C4228  38 A0 00 00 */	li r5, 0
/* 809C422C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C4230  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4234  7D 89 03 A6 */	mtctr r12
/* 809C4238  4E 80 04 21 */	bctrl 
/* 809C423C  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809C4240  D0 1F 14 D4 */	stfs f0, 0x14d4(r31)
lbl_809C4244:
/* 809C4244  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809C4248  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809C424C  48 00 02 B4 */	b lbl_809C4500
lbl_809C4250:
/* 809C4250  2C 00 00 19 */	cmpwi r0, 0x19
/* 809C4254  40 82 00 E4 */	bne lbl_809C4338
/* 809C4258  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C425C  38 63 00 0C */	addi r3, r3, 0xc
/* 809C4260  C0 3E 06 C4 */	lfs f1, 0x6c4(r30)
/* 809C4264  4B 96 41 C9 */	bl checkPass__12J3DFrameCtrlFf
/* 809C4268  2C 03 00 00 */	cmpwi r3, 0
/* 809C426C  41 82 02 94 */	beq lbl_809C4500
/* 809C4270  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C4274  80 63 00 04 */	lwz r3, 4(r3)
/* 809C4278  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809C427C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809C4280  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 809C4284  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C4288  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C428C  4B 98 22 25 */	bl PSMTXCopy
/* 809C4290  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C4294  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C4298  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809C429C  D0 1F 15 80 */	stfs f0, 0x1580(r31)
/* 809C42A0  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 809C42A4  D0 1F 15 84 */	stfs f0, 0x1584(r31)
/* 809C42A8  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 809C42AC  D0 1F 15 88 */	stfs f0, 0x1588(r31)
/* 809C42B0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809C42B4  D0 1F 15 84 */	stfs f0, 0x1584(r31)
/* 809C42B8  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809C42BC  B0 1F 15 8C */	sth r0, 0x158c(r31)
/* 809C42C0  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C42C4  B0 1F 15 8E */	sth r0, 0x158e(r31)
/* 809C42C8  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809C42CC  B0 1F 15 90 */	sth r0, 0x1590(r31)
/* 809C42D0  38 00 00 01 */	li r0, 1
/* 809C42D4  98 1F 15 7C */	stb r0, 0x157c(r31)
/* 809C42D8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C42DC  80 63 00 04 */	lwz r3, 4(r3)
/* 809C42E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809C42E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809C42E8  38 63 04 50 */	addi r3, r3, 0x450
/* 809C42EC  7F 84 E3 78 */	mr r4, r28
/* 809C42F0  4B 98 21 C1 */	bl PSMTXCopy
/* 809C42F4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 809C42F8  D0 1F 15 DC */	stfs f0, 0x15dc(r31)
/* 809C42FC  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 809C4300  D0 1F 15 E0 */	stfs f0, 0x15e0(r31)
/* 809C4304  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 809C4308  D0 1F 15 E4 */	stfs f0, 0x15e4(r31)
/* 809C430C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 809C4310  D0 1F 15 E0 */	stfs f0, 0x15e0(r31)
/* 809C4314  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 809C4318  B0 1F 15 E8 */	sth r0, 0x15e8(r31)
/* 809C431C  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C4320  B0 1F 15 EA */	sth r0, 0x15ea(r31)
/* 809C4324  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 809C4328  B0 1F 15 EC */	sth r0, 0x15ec(r31)
/* 809C432C  38 00 00 01 */	li r0, 1
/* 809C4330  98 1F 15 D8 */	stb r0, 0x15d8(r31)
/* 809C4334  48 00 01 CC */	b lbl_809C4500
lbl_809C4338:
/* 809C4338  2C 00 00 16 */	cmpwi r0, 0x16
/* 809C433C  40 82 01 C4 */	bne lbl_809C4500
/* 809C4340  3B A0 00 01 */	li r29, 1
/* 809C4344  48 00 01 BC */	b lbl_809C4500
lbl_809C4348:
/* 809C4348  3B A0 00 01 */	li r29, 1
/* 809C434C  48 00 01 B4 */	b lbl_809C4500
lbl_809C4350:
/* 809C4350  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809C4354  B0 01 00 08 */	sth r0, 8(r1)
/* 809C4358  7F E3 FB 78 */	mr r3, r31
/* 809C435C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C4360  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C4364  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809C4368  4B 65 63 A9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C436C  7C 64 1B 78 */	mr r4, r3
/* 809C4370  38 61 00 08 */	addi r3, r1, 8
/* 809C4374  38 A0 08 00 */	li r5, 0x800
/* 809C4378  4B 8A C8 19 */	bl cLib_chaseAngleS__FPsss
/* 809C437C  7F E3 FB 78 */	mr r3, r31
/* 809C4380  A8 81 00 08 */	lha r4, 8(r1)
/* 809C4384  4B 78 FE CD */	bl setAngle__8daNpcF_cFs
/* 809C4388  A8 01 00 08 */	lha r0, 8(r1)
/* 809C438C  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 809C4390  3B A0 00 01 */	li r29, 1
/* 809C4394  48 00 01 6C */	b lbl_809C4500
lbl_809C4398:
/* 809C4398  7F E3 FB 78 */	mr r3, r31
/* 809C439C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809C43A0  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809C43A4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809C43A8  4B 65 63 69 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C43AC  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 809C43B0  7C 60 07 34 */	extsh r0, r3
/* 809C43B4  7C 04 00 00 */	cmpw r4, r0
/* 809C43B8  40 82 00 10 */	bne lbl_809C43C8
/* 809C43BC  38 00 00 00 */	li r0, 0
/* 809C43C0  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C43C4  48 00 00 64 */	b lbl_809C4428
lbl_809C43C8:
/* 809C43C8  7F E3 FB 78 */	mr r3, r31
/* 809C43CC  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809C43D0  4B 65 63 41 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C43D4  7C 64 1B 78 */	mr r4, r3
/* 809C43D8  7F E3 FB 78 */	mr r3, r31
/* 809C43DC  38 A0 FF FF */	li r5, -1
/* 809C43E0  38 C0 00 16 */	li r6, 0x16
/* 809C43E4  38 E0 00 0F */	li r7, 0xf
/* 809C43E8  4B 78 FC BD */	bl step__8daNpcF_cFsiii
/* 809C43EC  2C 03 00 00 */	cmpwi r3, 0
/* 809C43F0  41 82 00 38 */	beq lbl_809C4428
/* 809C43F4  38 00 00 00 */	li r0, 0
/* 809C43F8  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C43FC  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C4400  2C 00 00 1C */	cmpwi r0, 0x1c
/* 809C4404  40 82 00 24 */	bne lbl_809C4428
/* 809C4408  7F E3 FB 78 */	mr r3, r31
/* 809C440C  38 80 00 00 */	li r4, 0
/* 809C4410  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C4414  38 A0 00 00 */	li r5, 0
/* 809C4418  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C441C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C4420  7D 89 03 A6 */	mtctr r12
/* 809C4424  4E 80 04 21 */	bctrl 
lbl_809C4428:
/* 809C4428  38 7F 09 60 */	addi r3, r31, 0x960
/* 809C442C  48 00 56 B9 */	bl func_809C9AE4
/* 809C4430  2C 03 00 00 */	cmpwi r3, 0
/* 809C4434  40 82 00 CC */	bne lbl_809C4500
/* 809C4438  A8 1F 09 E0 */	lha r0, 0x9e0(r31)
/* 809C443C  2C 00 00 15 */	cmpwi r0, 0x15
/* 809C4440  40 82 00 8C */	bne lbl_809C44CC
/* 809C4444  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C4448  2C 00 00 16 */	cmpwi r0, 0x16
/* 809C444C  40 82 00 24 */	bne lbl_809C4470
/* 809C4450  7F E3 FB 78 */	mr r3, r31
/* 809C4454  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809C4458  4B 65 62 B9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809C445C  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 809C4460  7C 60 07 34 */	extsh r0, r3
/* 809C4464  7C 04 00 00 */	cmpw r4, r0
/* 809C4468  40 82 00 08 */	bne lbl_809C4470
/* 809C446C  3B A0 00 01 */	li r29, 1
lbl_809C4470:
/* 809C4470  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C4474  2C 00 00 1F */	cmpwi r0, 0x1f
/* 809C4478  40 82 00 88 */	bne lbl_809C4500
/* 809C447C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C4480  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 809C4484  C0 1E 06 C8 */	lfs f0, 0x6c8(r30)
/* 809C4488  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C448C  4C 41 13 82 */	cror 2, 1, 2
/* 809C4490  40 82 00 70 */	bne lbl_809C4500
/* 809C4494  C0 1E 06 CC */	lfs f0, 0x6cc(r30)
/* 809C4498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C449C  40 80 00 64 */	bge lbl_809C4500
/* 809C44A0  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005006C@ha */
/* 809C44A4  38 03 00 6C */	addi r0, r3, 0x006C /* 0x0005006C@l */
/* 809C44A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 809C44AC  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809C44B0  38 81 00 10 */	addi r4, r1, 0x10
/* 809C44B4  38 A0 FF FF */	li r5, -1
/* 809C44B8  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809C44BC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 809C44C0  7D 89 03 A6 */	mtctr r12
/* 809C44C4  4E 80 04 21 */	bctrl 
/* 809C44C8  48 00 00 38 */	b lbl_809C4500
lbl_809C44CC:
/* 809C44CC  7F E3 FB 78 */	mr r3, r31
/* 809C44D0  38 80 00 15 */	li r4, 0x15
/* 809C44D4  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C44D8  38 A0 00 00 */	li r5, 0
/* 809C44DC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C44E0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C44E4  7D 89 03 A6 */	mtctr r12
/* 809C44E8  4E 80 04 21 */	bctrl 
/* 809C44EC  7F E3 FB 78 */	mr r3, r31
/* 809C44F0  38 80 00 00 */	li r4, 0
/* 809C44F4  4B FF EB 7D */	bl setLookMode__11daNpc_grA_cFi
/* 809C44F8  48 00 00 08 */	b lbl_809C4500
lbl_809C44FC:
/* 809C44FC  3B A0 00 01 */	li r29, 1
lbl_809C4500:
/* 809C4500  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C4504  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809C4508  40 82 00 8C */	bne lbl_809C4594
/* 809C450C  C0 1F 14 D4 */	lfs f0, 0x14d4(r31)
/* 809C4510  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 809C4514  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809C4518  4C 41 13 82 */	cror 2, 1, 2
/* 809C451C  40 82 00 10 */	bne lbl_809C452C
/* 809C4520  7F E3 FB 78 */	mr r3, r31
/* 809C4524  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809C4528  4B FF F3 75 */	bl setRollPrtcl__11daNpc_grA_cFRC4cXyzf
lbl_809C452C:
/* 809C452C  C0 1F 14 D4 */	lfs f0, 0x14d4(r31)
/* 809C4530  FC 00 02 10 */	fabs f0, f0
/* 809C4534  FC 20 00 18 */	frsp f1, f0
/* 809C4538  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 809C453C  EC 00 00 72 */	fmuls f0, f0, f1
/* 809C4540  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 809C4544  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809C4548  40 80 00 08 */	bge lbl_809C4550
/* 809C454C  48 00 00 18 */	b lbl_809C4564
lbl_809C4550:
/* 809C4550  C0 3E 06 D0 */	lfs f1, 0x6d0(r30)
/* 809C4554  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809C4558  40 81 00 08 */	ble lbl_809C4560
/* 809C455C  48 00 00 08 */	b lbl_809C4564
lbl_809C4560:
/* 809C4560  FC 20 00 90 */	fmr f1, f0
lbl_809C4564:
/* 809C4564  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006004A@ha */
/* 809C4568  38 03 00 4A */	addi r0, r3, 0x004A /* 0x0006004A@l */
/* 809C456C  90 01 00 0C */	stw r0, 0xc(r1)
/* 809C4570  4B 99 DB 3D */	bl __cvt_fp2unsigned
/* 809C4574  7C 65 1B 78 */	mr r5, r3
/* 809C4578  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809C457C  38 81 00 0C */	addi r4, r1, 0xc
/* 809C4580  38 C0 FF FF */	li r6, -1
/* 809C4584  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809C4588  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 809C458C  7D 89 03 A6 */	mtctr r12
/* 809C4590  4E 80 04 21 */	bctrl 
lbl_809C4594:
/* 809C4594  7F A3 EB 78 */	mr r3, r29
/* 809C4598  39 61 00 40 */	addi r11, r1, 0x40
/* 809C459C  4B 99 DC 81 */	bl _restgpr_26
/* 809C45A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809C45A4  7C 08 03 A6 */	mtlr r0
/* 809C45A8  38 21 00 40 */	addi r1, r1, 0x40
/* 809C45AC  4E 80 00 20 */	blr 
