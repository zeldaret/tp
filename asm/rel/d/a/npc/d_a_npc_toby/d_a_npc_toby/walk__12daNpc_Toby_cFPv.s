lbl_80B22D98:
/* 80B22D98  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B22D9C  7C 08 02 A6 */	mflr r0
/* 80B22DA0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B22DA4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80B22DA8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80B22DAC  7C 7F 1B 78 */	mr r31, r3
/* 80B22DB0  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B22DB4  2C 00 00 02 */	cmpwi r0, 2
/* 80B22DB8  41 82 00 A0 */	beq lbl_80B22E58
/* 80B22DBC  40 80 00 10 */	bge lbl_80B22DCC
/* 80B22DC0  2C 00 00 00 */	cmpwi r0, 0
/* 80B22DC4  40 80 00 14 */	bge lbl_80B22DD8
/* 80B22DC8  48 00 01 C8 */	b lbl_80B22F90
lbl_80B22DCC:
/* 80B22DCC  2C 00 00 04 */	cmpwi r0, 4
/* 80B22DD0  40 80 01 C0 */	bge lbl_80B22F90
/* 80B22DD4  48 00 01 B0 */	b lbl_80B22F84
lbl_80B22DD8:
/* 80B22DD8  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B22DDC  2C 00 00 00 */	cmpwi r0, 0
/* 80B22DE0  40 82 00 78 */	bne lbl_80B22E58
/* 80B22DE4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80B22DE8  2C 00 00 10 */	cmpwi r0, 0x10
/* 80B22DEC  41 82 00 28 */	beq lbl_80B22E14
/* 80B22DF0  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80B22DF4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B22DF8  4B 62 2A A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B22DFC  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80B22E00  38 00 00 10 */	li r0, 0x10
/* 80B22E04  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80B22E08  3C 60 80 B2 */	lis r3, lit_4802@ha /* 0x80B24AD0@ha */
/* 80B22E0C  C0 03 4A D0 */	lfs f0, lit_4802@l(r3)  /* 0x80B24AD0@l */
/* 80B22E10  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80B22E14:
/* 80B22E14  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B22E18  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B22E1C  41 82 00 28 */	beq lbl_80B22E44
/* 80B22E20  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B22E24  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B22E28  4B 62 2A 71 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B22E2C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B22E30  38 00 00 0F */	li r0, 0xf
/* 80B22E34  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B22E38  3C 60 80 B2 */	lis r3, lit_4802@ha /* 0x80B24AD0@ha */
/* 80B22E3C  C0 03 4A D0 */	lfs f0, lit_4802@l(r3)  /* 0x80B24AD0@l */
/* 80B22E40  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B22E44:
/* 80B22E44  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80B22E48  60 00 00 04 */	ori r0, r0, 4
/* 80B22E4C  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80B22E50  38 00 00 02 */	li r0, 2
/* 80B22E54  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B22E58:
/* 80B22E58  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80B22E5C  2C 00 00 00 */	cmpwi r0, 0
/* 80B22E60  40 82 01 18 */	bne lbl_80B22F78
/* 80B22E64  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B22E68  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B22E6C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B22E70  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B22E74  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B22E78  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B22E7C  38 7F 0F C0 */	addi r3, r31, 0xfc0
/* 80B22E80  38 81 00 14 */	addi r4, r1, 0x14
/* 80B22E84  38 A1 00 20 */	addi r5, r1, 0x20
/* 80B22E88  80 DF 0F C0 */	lwz r6, 0xfc0(r31)
/* 80B22E8C  A0 C6 00 00 */	lhz r6, 0(r6)
/* 80B22E90  38 E0 00 02 */	li r7, 2
/* 80B22E94  4B 62 31 21 */	bl getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii
/* 80B22E98  7C 7E 1B 78 */	mr r30, r3
/* 80B22E9C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B22EA0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B22EA4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B22EA8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B22EAC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80B22EB0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B22EB4  7F E3 FB 78 */	mr r3, r31
/* 80B22EB8  38 81 00 08 */	addi r4, r1, 8
/* 80B22EBC  7F C5 F3 78 */	mr r5, r30
/* 80B22EC0  38 C0 00 04 */	li r6, 4
/* 80B22EC4  38 E0 08 00 */	li r7, 0x800
/* 80B22EC8  4B 62 89 41 */	bl calcSpeedAndAngle__8daNpcT_cF4cXyziss
/* 80B22ECC  2C 1E 00 00 */	cmpwi r30, 0
/* 80B22ED0  41 82 00 70 */	beq lbl_80B22F40
/* 80B22ED4  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80B22ED8  FC 00 02 10 */	fabs f0, f0
/* 80B22EDC  FC 20 00 18 */	frsp f1, f0
/* 80B22EE0  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80B22EE4  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80B22EE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B22EEC  40 80 00 54 */	bge lbl_80B22F40
/* 80B22EF0  38 00 40 00 */	li r0, 0x4000
/* 80B22EF4  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 80B22EF8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80B22EFC  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80B22F00  7C 04 00 00 */	cmpw r4, r0
/* 80B22F04  40 82 00 24 */	bne lbl_80B22F28
/* 80B22F08  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B22F0C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B22F10  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B22F14  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B22F18  4B 62 27 C9 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80B22F1C  38 00 00 01 */	li r0, 1
/* 80B22F20  98 1F 0F FE */	stb r0, 0xffe(r31)
/* 80B22F24  48 00 00 1C */	b lbl_80B22F40
lbl_80B22F28:
/* 80B22F28  7F E3 FB 78 */	mr r3, r31
/* 80B22F2C  38 A0 00 10 */	li r5, 0x10
/* 80B22F30  38 C0 00 14 */	li r6, 0x14
/* 80B22F34  38 E0 00 0F */	li r7, 0xf
/* 80B22F38  39 00 00 00 */	li r8, 0
/* 80B22F3C  4B 62 87 0D */	bl step__8daNpcT_cFsiiii
lbl_80B22F40:
/* 80B22F40  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B22F44  2C 00 00 00 */	cmpwi r0, 0
/* 80B22F48  41 82 00 28 */	beq lbl_80B22F70
/* 80B22F4C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B22F50  4B 62 27 AD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B22F54  38 00 00 00 */	li r0, 0
/* 80B22F58  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B22F5C  3C 60 80 B2 */	lis r3, lit_4159@ha /* 0x80B24AAC@ha */
/* 80B22F60  C0 03 4A AC */	lfs f0, lit_4159@l(r3)  /* 0x80B24AAC@l */
/* 80B22F64  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B22F68  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B22F6C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B22F70:
/* 80B22F70  38 00 00 00 */	li r0, 0
/* 80B22F74  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80B22F78:
/* 80B22F78  38 00 00 00 */	li r0, 0
/* 80B22F7C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80B22F80  48 00 00 10 */	b lbl_80B22F90
lbl_80B22F84:
/* 80B22F84  80 1F 06 B8 */	lwz r0, 0x6b8(r31)
/* 80B22F88  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80B22F8C  90 1F 06 B8 */	stw r0, 0x6b8(r31)
lbl_80B22F90:
/* 80B22F90  38 60 00 01 */	li r3, 1
/* 80B22F94  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80B22F98  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80B22F9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B22FA0  7C 08 03 A6 */	mtlr r0
/* 80B22FA4  38 21 00 40 */	addi r1, r1, 0x40
/* 80B22FA8  4E 80 00 20 */	blr 
