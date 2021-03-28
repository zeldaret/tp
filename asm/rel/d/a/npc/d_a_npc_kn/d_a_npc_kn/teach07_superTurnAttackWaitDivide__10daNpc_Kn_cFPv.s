lbl_80A31958:
/* 80A31958  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A3195C  7C 08 02 A6 */	mflr r0
/* 80A31960  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A31964  39 61 00 20 */	addi r11, r1, 0x20
/* 80A31968  4B 93 08 70 */	b _savegpr_28
/* 80A3196C  7C 7D 1B 78 */	mr r29, r3
/* 80A31970  3C 60 80 A4 */	lis r3, mCcDObjData__10daNpc_Kn_c@ha
/* 80A31974  3B C3 08 C8 */	addi r30, r3, mCcDObjData__10daNpc_Kn_c@l
/* 80A31978  A0 1D 0E 2A */	lhz r0, 0xe2a(r29)
/* 80A3197C  2C 00 00 02 */	cmpwi r0, 2
/* 80A31980  41 82 00 FC */	beq lbl_80A31A7C
/* 80A31984  40 80 04 84 */	bge lbl_80A31E08
/* 80A31988  2C 00 00 00 */	cmpwi r0, 0
/* 80A3198C  40 80 00 0C */	bge lbl_80A31998
/* 80A31990  48 00 04 78 */	b lbl_80A31E08
/* 80A31994  48 00 04 74 */	b lbl_80A31E08
lbl_80A31998:
/* 80A31998  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A3199C  2C 00 00 01 */	cmpwi r0, 1
/* 80A319A0  41 82 00 24 */	beq lbl_80A319C4
/* 80A319A4  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A319A8  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A319AC  4B 71 3E EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A319B0  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A319B4  38 00 00 01 */	li r0, 1
/* 80A319B8  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A319BC  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A319C0  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A319C4:
/* 80A319C4  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A319C8  2C 00 00 09 */	cmpwi r0, 9
/* 80A319CC  41 82 00 24 */	beq lbl_80A319F0
/* 80A319D0  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A319D4  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A319D8  4B 71 3E C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A319DC  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A319E0  38 00 00 09 */	li r0, 9
/* 80A319E4  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A319E8  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A319EC  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A319F0:
/* 80A319F0  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A319F4  2C 00 00 01 */	cmpwi r0, 1
/* 80A319F8  41 82 00 28 */	beq lbl_80A31A20
/* 80A319FC  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A31A00  4B 71 3C FC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A31A04  38 00 00 00 */	li r0, 0
/* 80A31A08  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A31A0C  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A31A10  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A31A14  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A31A18  38 00 00 01 */	li r0, 1
/* 80A31A1C  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A31A20:
/* 80A31A20  38 60 00 00 */	li r3, 0
/* 80A31A24  98 7D 0D 33 */	stb r3, 0xd33(r29)
/* 80A31A28  38 00 00 01 */	li r0, 1
/* 80A31A2C  98 1D 15 AF */	stb r0, 0x15af(r29)
/* 80A31A30  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A31A34  D0 1D 15 B0 */	stfs f0, 0x15b0(r29)
/* 80A31A38  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A31A3C  D0 1D 15 B4 */	stfs f0, 0x15b4(r29)
/* 80A31A40  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A31A44  D0 1D 15 B8 */	stfs f0, 0x15b8(r29)
/* 80A31A48  98 7D 15 BC */	stb r3, 0x15bc(r29)
/* 80A31A4C  38 9E 00 A8 */	addi r4, r30, 0xa8
/* 80A31A50  A8 64 00 AC */	lha r3, 0xac(r4)
/* 80A31A54  A8 84 00 AE */	lha r4, 0xae(r4)
/* 80A31A58  48 00 A3 0D */	bl func_80A3BD64
/* 80A31A5C  B0 7D 15 D0 */	sth r3, 0x15d0(r29)
/* 80A31A60  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A31A64  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A31A68  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80A31A6C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A31A70  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80A31A74  38 00 00 02 */	li r0, 2
/* 80A31A78  B0 1D 0E 2A */	sth r0, 0xe2a(r29)
lbl_80A31A7C:
/* 80A31A7C  7F A3 EB 78 */	mr r3, r29
/* 80A31A80  48 00 60 89 */	bl calcSlip__10daNpc_Kn_cFv
/* 80A31A84  38 7D 08 C4 */	addi r3, r29, 0x8c4
/* 80A31A88  4B 65 1D A8 */	b Move__10dCcD_GSttsFv
/* 80A31A8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A31A90  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80A31A94  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80A31A98  8B 83 05 68 */	lbz r28, 0x568(r3)
/* 80A31A9C  2C 1C 00 17 */	cmpwi r28, 0x17
/* 80A31AA0  41 82 00 0C */	beq lbl_80A31AAC
/* 80A31AA4  2C 1C 00 18 */	cmpwi r28, 0x18
/* 80A31AA8  40 82 00 1C */	bne lbl_80A31AC4
lbl_80A31AAC:
/* 80A31AAC  38 00 00 01 */	li r0, 1
/* 80A31AB0  98 1D 12 96 */	stb r0, 0x1296(r29)
/* 80A31AB4  80 1D 12 78 */	lwz r0, 0x1278(r29)
/* 80A31AB8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80A31ABC  90 1D 12 78 */	stw r0, 0x1278(r29)
/* 80A31AC0  48 00 00 18 */	b lbl_80A31AD8
lbl_80A31AC4:
/* 80A31AC4  38 00 00 02 */	li r0, 2
/* 80A31AC8  98 1D 12 96 */	stb r0, 0x1296(r29)
/* 80A31ACC  80 1D 12 78 */	lwz r0, 0x1278(r29)
/* 80A31AD0  60 00 00 01 */	ori r0, r0, 1
/* 80A31AD4  90 1D 12 78 */	stw r0, 0x1278(r29)
lbl_80A31AD8:
/* 80A31AD8  38 7D 11 DC */	addi r3, r29, 0x11dc
/* 80A31ADC  4B 65 29 84 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80A31AE0  28 03 00 00 */	cmplwi r3, 0
/* 80A31AE4  41 82 02 C4 */	beq lbl_80A31DA8
/* 80A31AE8  2C 1C 00 17 */	cmpwi r28, 0x17
/* 80A31AEC  41 82 00 0C */	beq lbl_80A31AF8
/* 80A31AF0  2C 1C 00 18 */	cmpwi r28, 0x18
/* 80A31AF4  40 82 02 08 */	bne lbl_80A31CFC
lbl_80A31AF8:
/* 80A31AF8  38 00 00 16 */	li r0, 0x16
/* 80A31AFC  98 1D 15 AE */	stb r0, 0x15ae(r29)
/* 80A31B00  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80A31B04  4B 5E F8 54 */	b fpcEx_SearchByID__FUi
/* 80A31B08  28 03 00 00 */	cmplwi r3, 0
/* 80A31B0C  41 82 00 0C */	beq lbl_80A31B18
/* 80A31B10  38 00 00 02 */	li r0, 2
/* 80A31B14  98 03 15 BD */	stb r0, 0x15bd(r3)
lbl_80A31B18:
/* 80A31B18  7F A3 EB 78 */	mr r3, r29
/* 80A31B1C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A31B20  4B 5E 8B F0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A31B24  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A31B28  7C 00 18 50 */	subf r0, r0, r3
/* 80A31B2C  7C 00 07 35 */	extsh. r0, r0
/* 80A31B30  40 80 00 08 */	bge lbl_80A31B38
/* 80A31B34  7C 00 00 D0 */	neg r0, r0
lbl_80A31B38:
/* 80A31B38  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80A31B3C  40 80 00 B0 */	bge lbl_80A31BEC
/* 80A31B40  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A31B44  2C 00 00 01 */	cmpwi r0, 1
/* 80A31B48  41 82 00 24 */	beq lbl_80A31B6C
/* 80A31B4C  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A31B50  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A31B54  4B 71 3D 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31B58  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A31B5C  38 00 00 01 */	li r0, 1
/* 80A31B60  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A31B64  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31B68  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A31B6C:
/* 80A31B6C  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A31B70  2C 00 00 12 */	cmpwi r0, 0x12
/* 80A31B74  41 82 00 24 */	beq lbl_80A31B98
/* 80A31B78  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A31B7C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A31B80  4B 71 3D 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31B84  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A31B88  38 00 00 12 */	li r0, 0x12
/* 80A31B8C  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A31B90  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31B94  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A31B98:
/* 80A31B98  7F A3 EB 78 */	mr r3, r29
/* 80A31B9C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A31BA0  4B 5E 8B 70 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A31BA4  7C 64 1B 78 */	mr r4, r3
/* 80A31BA8  7F A3 EB 78 */	mr r3, r29
/* 80A31BAC  48 00 8F 45 */	bl setAngle__10daNpc_Kn_cFs
/* 80A31BB0  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A31BB4  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A31BB8  FC 00 00 50 */	fneg f0, f0
/* 80A31BBC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A31BC0  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A31BC4  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A31BC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A31BCC  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A31BD0  38 81 00 0C */	addi r4, r1, 0xc
/* 80A31BD4  38 A0 FF FF */	li r5, -1
/* 80A31BD8  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A31BDC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A31BE0  7D 89 03 A6 */	mtctr r12
/* 80A31BE4  4E 80 04 21 */	bctrl 
/* 80A31BE8  48 00 00 B4 */	b lbl_80A31C9C
lbl_80A31BEC:
/* 80A31BEC  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A31BF0  2C 00 00 01 */	cmpwi r0, 1
/* 80A31BF4  41 82 00 24 */	beq lbl_80A31C18
/* 80A31BF8  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A31BFC  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A31C00  4B 71 3C 98 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31C04  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A31C08  38 00 00 01 */	li r0, 1
/* 80A31C0C  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A31C10  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31C14  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A31C18:
/* 80A31C18  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A31C1C  2C 00 00 0E */	cmpwi r0, 0xe
/* 80A31C20  41 82 00 24 */	beq lbl_80A31C44
/* 80A31C24  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A31C28  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A31C2C  4B 71 3C 6C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31C30  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A31C34  38 00 00 0E */	li r0, 0xe
/* 80A31C38  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A31C3C  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31C40  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
lbl_80A31C44:
/* 80A31C44  7F A3 EB 78 */	mr r3, r29
/* 80A31C48  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A31C4C  4B 5E 8A C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A31C50  7C 64 1B 78 */	mr r4, r3
/* 80A31C54  7F A3 EB 78 */	mr r3, r29
/* 80A31C58  3C 84 00 01 */	addis r4, r4, 1
/* 80A31C5C  38 04 80 00 */	addi r0, r4, -32768
/* 80A31C60  7C 04 07 34 */	extsh r4, r0
/* 80A31C64  48 00 8E 8D */	bl setAngle__10daNpc_Kn_cFs
/* 80A31C68  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A31C6C  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80A31C70  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A31C74  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005004F@ha */
/* 80A31C78  38 03 00 4F */	addi r0, r3, 0x004F /* 0x0005004F@l */
/* 80A31C7C  90 01 00 08 */	stw r0, 8(r1)
/* 80A31C80  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A31C84  38 81 00 08 */	addi r4, r1, 8
/* 80A31C88  38 A0 FF FF */	li r5, -1
/* 80A31C8C  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A31C90  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A31C94  7D 89 03 A6 */	mtctr r12
/* 80A31C98  4E 80 04 21 */	bctrl 
lbl_80A31C9C:
/* 80A31C9C  80 1D 0D 14 */	lwz r0, 0xd14(r29)
/* 80A31CA0  2C 00 00 00 */	cmpwi r0, 0
/* 80A31CA4  41 82 00 24 */	beq lbl_80A31CC8
/* 80A31CA8  38 7D 0B DC */	addi r3, r29, 0xbdc
/* 80A31CAC  4B 71 3A 50 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A31CB0  38 00 00 00 */	li r0, 0
/* 80A31CB4  90 1D 0B FC */	stw r0, 0xbfc(r29)
/* 80A31CB8  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A31CBC  D0 1D 0D 28 */	stfs f0, 0xd28(r29)
/* 80A31CC0  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A31CC4  90 1D 0D 14 */	stw r0, 0xd14(r29)
lbl_80A31CC8:
/* 80A31CC8  38 00 00 00 */	li r0, 0
/* 80A31CCC  98 1D 0D 33 */	stb r0, 0xd33(r29)
/* 80A31CD0  38 7E 00 A8 */	addi r3, r30, 0xa8
/* 80A31CD4  C0 03 00 A4 */	lfs f0, 0xa4(r3)
/* 80A31CD8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A31CDC  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A31CE0  3C 80 00 04 */	lis r4, 4
/* 80A31CE4  38 A0 00 1F */	li r5, 0x1f
/* 80A31CE8  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A31CEC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A31CF0  7D 89 03 A6 */	mtctr r12
/* 80A31CF4  4E 80 04 21 */	bctrl 
/* 80A31CF8  48 00 01 10 */	b lbl_80A31E08
lbl_80A31CFC:
/* 80A31CFC  7F A3 EB 78 */	mr r3, r29
/* 80A31D00  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A31D04  4B 5E 8A 0C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A31D08  7C 64 1B 78 */	mr r4, r3
/* 80A31D0C  7F A3 EB 78 */	mr r3, r29
/* 80A31D10  48 00 8D E1 */	bl setAngle__10daNpc_Kn_cFs
/* 80A31D14  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A31D18  2C 00 00 01 */	cmpwi r0, 1
/* 80A31D1C  41 82 00 24 */	beq lbl_80A31D40
/* 80A31D20  83 FD 0B 90 */	lwz r31, 0xb90(r29)
/* 80A31D24  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A31D28  4B 71 3B 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31D2C  93 FD 0B 90 */	stw r31, 0xb90(r29)
/* 80A31D30  38 00 00 01 */	li r0, 1
/* 80A31D34  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A31D38  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31D3C  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A31D40:
/* 80A31D40  83 FD 0B B4 */	lwz r31, 0xbb4(r29)
/* 80A31D44  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A31D48  4B 71 3B 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A31D4C  93 FD 0B B4 */	stw r31, 0xbb4(r29)
/* 80A31D50  38 00 00 1B */	li r0, 0x1b
/* 80A31D54  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A31D58  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80A31D5C  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A31D60  2C 1C 00 29 */	cmpwi r28, 0x29
/* 80A31D64  40 82 00 28 */	bne lbl_80A31D8C
/* 80A31D68  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A31D6C  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040002@ha */
/* 80A31D70  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00040002@l */
/* 80A31D74  38 A0 00 28 */	li r5, 0x28
/* 80A31D78  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A31D7C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A31D80  7D 89 03 A6 */	mtctr r12
/* 80A31D84  4E 80 04 21 */	bctrl 
/* 80A31D88  48 00 00 20 */	b lbl_80A31DA8
lbl_80A31D8C:
/* 80A31D8C  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 80A31D90  3C 80 00 04 */	lis r4, 4
/* 80A31D94  38 A0 00 28 */	li r5, 0x28
/* 80A31D98  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 80A31D9C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80A31DA0  7D 89 03 A6 */	mtctr r12
/* 80A31DA4  4E 80 04 21 */	bctrl 
lbl_80A31DA8:
/* 80A31DA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A31DAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A31DB0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80A31DB4  28 00 00 00 */	cmplwi r0, 0
/* 80A31DB8  41 82 00 1C */	beq lbl_80A31DD4
/* 80A31DBC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80A31DC0  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80A31DC4  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80A31DC8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80A31DCC  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80A31DD0  48 00 00 10 */	b lbl_80A31DE0
lbl_80A31DD4:
/* 80A31DD4  7F A3 EB 78 */	mr r3, r29
/* 80A31DD8  38 80 00 01 */	li r4, 1
/* 80A31DDC  48 00 5F 45 */	bl calcSwordAttackMove__10daNpc_Kn_cFi
lbl_80A31DE0:
/* 80A31DE0  7F A3 EB 78 */	mr r3, r29
/* 80A31DE4  4B FF AD 4D */	bl checkCollisionSword__10daNpc_Kn_cFv
/* 80A31DE8  2C 03 00 00 */	cmpwi r3, 0
/* 80A31DEC  41 82 00 1C */	beq lbl_80A31E08
/* 80A31DF0  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80A31DF4  4B 5E F5 64 */	b fpcEx_SearchByID__FUi
/* 80A31DF8  28 03 00 00 */	cmplwi r3, 0
/* 80A31DFC  41 82 00 0C */	beq lbl_80A31E08
/* 80A31E00  38 00 00 01 */	li r0, 1
/* 80A31E04  98 03 15 BD */	stb r0, 0x15bd(r3)
lbl_80A31E08:
/* 80A31E08  38 60 00 01 */	li r3, 1
/* 80A31E0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80A31E10  4B 93 04 14 */	b _restgpr_28
/* 80A31E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A31E18  7C 08 03 A6 */	mtlr r0
/* 80A31E1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80A31E20  4E 80 00 20 */	blr 
