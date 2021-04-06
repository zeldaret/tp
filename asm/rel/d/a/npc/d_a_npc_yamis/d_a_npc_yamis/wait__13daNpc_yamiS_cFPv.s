lbl_80B47C78:
/* 80B47C78  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B47C7C  7C 08 02 A6 */	mflr r0
/* 80B47C80  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B47C84  39 61 00 30 */	addi r11, r1, 0x30
/* 80B47C88  4B 81 A5 55 */	bl _savegpr_29
/* 80B47C8C  7C 7E 1B 78 */	mr r30, r3
/* 80B47C90  3C 60 80 B5 */	lis r3, m__19daNpc_yamiS_Param_c@ha /* 0x80B496B0@ha */
/* 80B47C94  3B E3 96 B0 */	addi r31, r3, m__19daNpc_yamiS_Param_c@l /* 0x80B496B0@l */
/* 80B47C98  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80B47C9C  2C 00 00 02 */	cmpwi r0, 2
/* 80B47CA0  41 82 00 8C */	beq lbl_80B47D2C
/* 80B47CA4  40 80 02 90 */	bge lbl_80B47F34
/* 80B47CA8  2C 00 00 00 */	cmpwi r0, 0
/* 80B47CAC  40 80 00 0C */	bge lbl_80B47CB8
/* 80B47CB0  48 00 02 84 */	b lbl_80B47F34
/* 80B47CB4  48 00 02 80 */	b lbl_80B47F34
lbl_80B47CB8:
/* 80B47CB8  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B47CBC  2C 00 00 00 */	cmpwi r0, 0
/* 80B47CC0  40 82 00 6C */	bne lbl_80B47D2C
/* 80B47CC4  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B47CC8  2C 00 00 01 */	cmpwi r0, 1
/* 80B47CCC  41 82 00 24 */	beq lbl_80B47CF0
/* 80B47CD0  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B47CD4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B47CD8  4B 5F DB C1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B47CDC  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B47CE0  38 00 00 01 */	li r0, 1
/* 80B47CE4  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B47CE8  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80B47CEC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B47CF0:
/* 80B47CF0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B47CF4  2C 00 00 00 */	cmpwi r0, 0
/* 80B47CF8  41 82 00 24 */	beq lbl_80B47D1C
/* 80B47CFC  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B47D00  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B47D04  4B 5F DB 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B47D08  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B47D0C  38 00 00 00 */	li r0, 0
/* 80B47D10  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B47D14  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80B47D18  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B47D1C:
/* 80B47D1C  38 00 00 00 */	li r0, 0
/* 80B47D20  98 1E 0F 82 */	stb r0, 0xf82(r30)
/* 80B47D24  38 00 00 02 */	li r0, 2
/* 80B47D28  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B47D2C:
/* 80B47D2C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B47D30  2C 00 00 00 */	cmpwi r0, 0
/* 80B47D34  40 82 02 00 */	bne lbl_80B47F34
/* 80B47D38  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B47D3C  4B 5F D9 CD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B47D40  28 03 00 00 */	cmplwi r3, 0
/* 80B47D44  41 82 01 4C */	beq lbl_80B47E90
/* 80B47D48  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B47D4C  28 00 00 00 */	cmplwi r0, 0
/* 80B47D50  40 82 01 40 */	bne lbl_80B47E90
/* 80B47D54  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B47D58  2C 00 00 00 */	cmpwi r0, 0
/* 80B47D5C  41 82 00 24 */	beq lbl_80B47D80
/* 80B47D60  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B47D64  4B 5F D9 99 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B47D68  38 00 00 00 */	li r0, 0
/* 80B47D6C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B47D70  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B47D74  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B47D78  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B47D7C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B47D80:
/* 80B47D80  38 00 00 00 */	li r0, 0
/* 80B47D84  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B47D88  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B47D8C  4B 5F D9 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B47D90  7C 64 1B 78 */	mr r4, r3
/* 80B47D94  7F C3 F3 78 */	mr r3, r30
/* 80B47D98  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80B47D9C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B47DA0  4B 60 2E 31 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B47DA4  2C 03 00 00 */	cmpwi r3, 0
/* 80B47DA8  41 82 00 B4 */	beq lbl_80B47E5C
/* 80B47DAC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B47DB0  2C 00 00 01 */	cmpwi r0, 1
/* 80B47DB4  41 82 00 28 */	beq lbl_80B47DDC
/* 80B47DB8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B47DBC  4B 5F D9 41 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B47DC0  38 00 00 00 */	li r0, 0
/* 80B47DC4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B47DC8  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B47DCC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B47DD0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B47DD4  38 00 00 01 */	li r0, 1
/* 80B47DD8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B47DDC:
/* 80B47DDC  38 00 00 00 */	li r0, 0
/* 80B47DE0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B47DE4  88 1E 0F 82 */	lbz r0, 0xf82(r30)
/* 80B47DE8  7C 00 07 75 */	extsb. r0, r0
/* 80B47DEC  40 82 00 70 */	bne lbl_80B47E5C
/* 80B47DF0  88 1E 0F 81 */	lbz r0, 0xf81(r30)
/* 80B47DF4  7C 00 07 75 */	extsb. r0, r0
/* 80B47DF8  40 82 00 64 */	bne lbl_80B47E5C
/* 80B47DFC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B47E00  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B47E04  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B47E08  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B47E0C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B47E10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B47E14  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005006D@ha */
/* 80B47E18  38 03 00 6D */	addi r0, r3, 0x006D /* 0x0005006D@l */
/* 80B47E1C  90 01 00 08 */	stw r0, 8(r1)
/* 80B47E20  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B47E24  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B47E28  80 63 00 00 */	lwz r3, 0(r3)
/* 80B47E2C  38 81 00 08 */	addi r4, r1, 8
/* 80B47E30  38 A1 00 0C */	addi r5, r1, 0xc
/* 80B47E34  38 C0 00 00 */	li r6, 0
/* 80B47E38  38 E0 00 00 */	li r7, 0
/* 80B47E3C  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B47E40  FC 40 08 90 */	fmr f2, f1
/* 80B47E44  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 80B47E48  FC 80 18 90 */	fmr f4, f3
/* 80B47E4C  39 00 00 00 */	li r8, 0
/* 80B47E50  4B 76 3B 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B47E54  38 00 00 01 */	li r0, 1
/* 80B47E58  98 1E 0F 82 */	stb r0, 0xf82(r30)
lbl_80B47E5C:
/* 80B47E5C  7F C3 F3 78 */	mr r3, r30
/* 80B47E60  4B 60 34 D9 */	bl srchPlayerActor__8daNpcT_cFv
/* 80B47E64  2C 03 00 00 */	cmpwi r3, 0
/* 80B47E68  40 82 00 CC */	bne lbl_80B47F34
/* 80B47E6C  38 00 00 00 */	li r0, 0
/* 80B47E70  98 1E 0F 82 */	stb r0, 0xf82(r30)
/* 80B47E74  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 80B47E78  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B47E7C  7C 03 00 00 */	cmpw r3, r0
/* 80B47E80  40 82 00 B4 */	bne lbl_80B47F34
/* 80B47E84  38 00 00 01 */	li r0, 1
/* 80B47E88  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B47E8C  48 00 00 A8 */	b lbl_80B47F34
lbl_80B47E90:
/* 80B47E90  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B47E94  2C 00 00 00 */	cmpwi r0, 0
/* 80B47E98  41 82 00 24 */	beq lbl_80B47EBC
/* 80B47E9C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B47EA0  4B 5F D8 5D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B47EA4  38 00 00 00 */	li r0, 0
/* 80B47EA8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B47EAC  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B47EB0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B47EB4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B47EB8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B47EBC:
/* 80B47EBC  38 00 00 00 */	li r0, 0
/* 80B47EC0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B47EC4  98 1E 0F 82 */	stb r0, 0xf82(r30)
/* 80B47EC8  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80B47ECC  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 80B47ED0  7C 04 00 00 */	cmpw r4, r0
/* 80B47ED4  41 82 00 58 */	beq lbl_80B47F2C
/* 80B47ED8  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80B47EDC  28 00 00 00 */	cmplwi r0, 0
/* 80B47EE0  40 82 00 18 */	bne lbl_80B47EF8
/* 80B47EE4  7F C3 F3 78 */	mr r3, r30
/* 80B47EE8  4B 60 2B 31 */	bl setAngle__8daNpcT_cFs
/* 80B47EEC  38 00 00 01 */	li r0, 1
/* 80B47EF0  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80B47EF4  48 00 00 2C */	b lbl_80B47F20
lbl_80B47EF8:
/* 80B47EF8  7F C3 F3 78 */	mr r3, r30
/* 80B47EFC  38 A0 00 01 */	li r5, 1
/* 80B47F00  38 C0 00 01 */	li r6, 1
/* 80B47F04  38 E0 00 0F */	li r7, 0xf
/* 80B47F08  39 00 00 00 */	li r8, 0
/* 80B47F0C  4B 60 37 3D */	bl step__8daNpcT_cFsiiii
/* 80B47F10  2C 03 00 00 */	cmpwi r3, 0
/* 80B47F14  41 82 00 0C */	beq lbl_80B47F20
/* 80B47F18  38 00 00 01 */	li r0, 1
/* 80B47F1C  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B47F20:
/* 80B47F20  38 00 00 00 */	li r0, 0
/* 80B47F24  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80B47F28  48 00 00 0C */	b lbl_80B47F34
lbl_80B47F2C:
/* 80B47F2C  7F C3 F3 78 */	mr r3, r30
/* 80B47F30  4B 60 34 09 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80B47F34:
/* 80B47F34  38 60 00 01 */	li r3, 1
/* 80B47F38  39 61 00 30 */	addi r11, r1, 0x30
/* 80B47F3C  4B 81 A2 ED */	bl _restgpr_29
/* 80B47F40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B47F44  7C 08 03 A6 */	mtlr r0
/* 80B47F48  38 21 00 30 */	addi r1, r1, 0x30
/* 80B47F4C  4E 80 00 20 */	blr 
