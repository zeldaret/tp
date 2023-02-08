lbl_80538C18:
/* 80538C18  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80538C1C  7C 08 02 A6 */	mflr r0
/* 80538C20  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80538C24  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80538C28  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80538C2C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80538C30  4B E2 95 A5 */	bl _savegpr_27
/* 80538C34  7C 7F 1B 78 */	mr r31, r3
/* 80538C38  3C 60 80 54 */	lis r3, m__18daNpc_Besu_Param_c@ha /* 0x8053E754@ha */
/* 80538C3C  3B C3 E7 54 */	addi r30, r3, m__18daNpc_Besu_Param_c@l /* 0x8053E754@l */
/* 80538C40  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80538C44  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80538C48  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80538C4C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80538C50  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80538C54  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80538C58  88 1F 11 2F */	lbz r0, 0x112f(r31)
/* 80538C5C  28 00 00 00 */	cmplwi r0, 0
/* 80538C60  41 82 00 1C */	beq lbl_80538C7C
/* 80538C64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80538C68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80538C6C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80538C70  80 03 05 8C */	lwz r0, 0x58c(r3)
/* 80538C74  60 00 02 00 */	ori r0, r0, 0x200
/* 80538C78  90 03 05 8C */	stw r0, 0x58c(r3)
lbl_80538C7C:
/* 80538C7C  3B 60 00 00 */	li r27, 0
/* 80538C80  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80538C84  2C 00 00 12 */	cmpwi r0, 0x12
/* 80538C88  40 82 00 18 */	bne lbl_80538CA0
/* 80538C8C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80538C90  4B C0 CD 95 */	bl checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80538C94  2C 03 00 00 */	cmpwi r3, 0
/* 80538C98  40 82 00 08 */	bne lbl_80538CA0
/* 80538C9C  3B 60 00 01 */	li r27, 1
lbl_80538CA0:
/* 80538CA0  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80538CA4  7F 64 DB 78 */	mr r4, r27
/* 80538CA8  4B C0 F1 95 */	bl calc__19daNpcT_DmgStagger_cFi
/* 80538CAC  C0 5E 01 24 */	lfs f2, 0x124(r30)
/* 80538CB0  A8 7F 0D 80 */	lha r3, 0xd80(r31)
/* 80538CB4  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80538CB8  7C 03 00 50 */	subf r0, r3, r0
/* 80538CBC  7C 00 07 34 */	extsh r0, r0
/* 80538CC0  C8 3E 01 48 */	lfd f1, 0x148(r30)
/* 80538CC4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80538CC8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80538CCC  3C 00 43 30 */	lis r0, 0x4330
/* 80538CD0  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80538CD4  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 80538CD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80538CDC  EF E2 00 32 */	fmuls f31, f2, f0
/* 80538CE0  7F E3 FB 78 */	mr r3, r31
/* 80538CE4  4B FF F2 ED */	bl chkNurse__12daNpc_Besu_cFv
/* 80538CE8  2C 03 00 00 */	cmpwi r3, 0
/* 80538CEC  41 82 00 A8 */	beq lbl_80538D94
/* 80538CF0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80538CF4  83 63 00 04 */	lwz r27, 4(r3)
/* 80538CF8  7F E3 FB 78 */	mr r3, r31
/* 80538CFC  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80538D00  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80538D04  7D 89 03 A6 */	mtctr r12
/* 80538D08  4E 80 04 21 */	bctrl 
/* 80538D0C  7C 7D 1B 78 */	mr r29, r3
/* 80538D10  7F E3 FB 78 */	mr r3, r31
/* 80538D14  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80538D18  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80538D1C  7D 89 03 A6 */	mtctr r12
/* 80538D20  4E 80 04 21 */	bctrl 
/* 80538D24  7C 7C 1B 78 */	mr r28, r3
/* 80538D28  7F E3 FB 78 */	mr r3, r31
/* 80538D2C  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80538D30  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80538D34  7D 89 03 A6 */	mtctr r12
/* 80538D38  4E 80 04 21 */	bctrl 
/* 80538D3C  7C 67 1B 78 */	mr r7, r3
/* 80538D40  39 5E 00 00 */	addi r10, r30, 0
/* 80538D44  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80538D48  D0 01 00 08 */	stfs f0, 8(r1)
/* 80538D4C  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 80538D50  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80538D54  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80538D58  7F E4 FB 78 */	mr r4, r31
/* 80538D5C  7F 65 DB 78 */	mr r5, r27
/* 80538D60  38 C1 00 64 */	addi r6, r1, 0x64
/* 80538D64  7F 88 E3 78 */	mr r8, r28
/* 80538D68  7F A9 EB 78 */	mr r9, r29
/* 80538D6C  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80538D70  FC 60 10 90 */	fmr f3, f2
/* 80538D74  FC 80 10 90 */	fmr f4, f2
/* 80538D78  C0 BE 01 28 */	lfs f5, 0x128(r30)
/* 80538D7C  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80538D80  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80538D84  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80538D88  39 40 00 00 */	li r10, 0
/* 80538D8C  4B C0 DF 4D */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
/* 80538D90  48 00 00 A8 */	b lbl_80538E38
lbl_80538D94:
/* 80538D94  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80538D98  83 63 00 04 */	lwz r27, 4(r3)
/* 80538D9C  7F E3 FB 78 */	mr r3, r31
/* 80538DA0  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80538DA4  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80538DA8  7D 89 03 A6 */	mtctr r12
/* 80538DAC  4E 80 04 21 */	bctrl 
/* 80538DB0  7C 7C 1B 78 */	mr r28, r3
/* 80538DB4  7F E3 FB 78 */	mr r3, r31
/* 80538DB8  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80538DBC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80538DC0  7D 89 03 A6 */	mtctr r12
/* 80538DC4  4E 80 04 21 */	bctrl 
/* 80538DC8  7C 7D 1B 78 */	mr r29, r3
/* 80538DCC  7F E3 FB 78 */	mr r3, r31
/* 80538DD0  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80538DD4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80538DD8  7D 89 03 A6 */	mtctr r12
/* 80538DDC  4E 80 04 21 */	bctrl 
/* 80538DE0  7C 67 1B 78 */	mr r7, r3
/* 80538DE4  39 5E 00 00 */	addi r10, r30, 0
/* 80538DE8  C0 0A 00 40 */	lfs f0, 0x40(r10)
/* 80538DEC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80538DF0  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80538DF4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80538DF8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80538DFC  7F E4 FB 78 */	mr r4, r31
/* 80538E00  7F 65 DB 78 */	mr r5, r27
/* 80538E04  38 C1 00 64 */	addi r6, r1, 0x64
/* 80538E08  7F A8 EB 78 */	mr r8, r29
/* 80538E0C  7F 89 E3 78 */	mr r9, r28
/* 80538E10  C0 2A 00 24 */	lfs f1, 0x24(r10)
/* 80538E14  C0 4A 00 20 */	lfs f2, 0x20(r10)
/* 80538E18  C0 6A 00 2C */	lfs f3, 0x2c(r10)
/* 80538E1C  C0 8A 00 28 */	lfs f4, 0x28(r10)
/* 80538E20  C0 AA 00 34 */	lfs f5, 0x34(r10)
/* 80538E24  C0 CA 00 30 */	lfs f6, 0x30(r10)
/* 80538E28  C0 EA 00 3C */	lfs f7, 0x3c(r10)
/* 80538E2C  C1 0A 00 38 */	lfs f8, 0x38(r10)
/* 80538E30  39 40 00 00 */	li r10, 0
/* 80538E34  4B C0 DE A5 */	bl setParam__15daNpcT_JntAnm_cFP10fopAc_ac_cP8J3DModelP4cXyziiiffffffffffP4cXyz
lbl_80538E38:
/* 80538E38  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80538E3C  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 80538E40  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80538E44  FC 60 F8 90 */	fmr f3, f31
/* 80538E48  4B C0 ED F1 */	bl calcJntRad__15daNpcT_JntAnm_cFfff
/* 80538E4C  38 7E 00 00 */	addi r3, r30, 0
/* 80538E50  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80538E54  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80538E58  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80538E5C  7F E3 FB 78 */	mr r3, r31
/* 80538E60  4B C1 03 31 */	bl setMtx__8daNpcT_cFv
/* 80538E64  80 7F 0E 40 */	lwz r3, 0xe40(r31)
/* 80538E68  28 03 00 00 */	cmplwi r3, 0
/* 80538E6C  41 82 00 5C */	beq lbl_80538EC8
/* 80538E70  38 80 00 00 */	li r4, 0
/* 80538E74  38 A0 00 00 */	li r5, 0
/* 80538E78  4B AD 82 39 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80538E7C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80538E80  80 63 00 04 */	lwz r3, 4(r3)
/* 80538E84  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80538E88  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80538E8C  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80538E90  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80538E94  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80538E98  4B E0 D6 19 */	bl PSMTXCopy
/* 80538E9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80538EA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80538EA4  38 81 00 70 */	addi r4, r1, 0x70
/* 80538EA8  4B E0 D6 09 */	bl PSMTXCopy
/* 80538EAC  80 7F 0E 40 */	lwz r3, 0xe40(r31)
/* 80538EB0  80 83 00 04 */	lwz r4, 4(r3)
/* 80538EB4  38 61 00 70 */	addi r3, r1, 0x70
/* 80538EB8  38 84 00 24 */	addi r4, r4, 0x24
/* 80538EBC  4B E0 D5 F5 */	bl PSMTXCopy
/* 80538EC0  80 7F 0E 40 */	lwz r3, 0xe40(r31)
/* 80538EC4  4B AD 83 29 */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_80538EC8:
/* 80538EC8  7F E3 FB 78 */	mr r3, r31
/* 80538ECC  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 80538ED0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80538ED4  7D 89 03 A6 */	mtctr r12
/* 80538ED8  4E 80 04 21 */	bctrl 
/* 80538EDC  80 9F 05 78 */	lwz r4, 0x578(r31)
/* 80538EE0  80 84 00 04 */	lwz r4, 4(r4)
/* 80538EE4  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80538EE8  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80538EEC  1C 03 00 30 */	mulli r0, r3, 0x30
/* 80538EF0  7C 64 02 14 */	add r3, r4, r0
/* 80538EF4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80538EF8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80538EFC  4B E0 D5 B5 */	bl PSMTXCopy
/* 80538F00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80538F04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80538F08  38 81 00 64 */	addi r4, r1, 0x64
/* 80538F0C  38 BF 05 38 */	addi r5, r31, 0x538
/* 80538F10  4B E0 DE 5D */	bl PSMTXMultVec
/* 80538F14  3C 60 80 54 */	lis r3, lit_5059@ha /* 0x8053FA94@ha */
/* 80538F18  38 63 FA 94 */	addi r3, r3, lit_5059@l /* 0x8053FA94@l */
/* 80538F1C  38 9F 11 00 */	addi r4, r31, 0x1100
/* 80538F20  4B E2 91 29 */	bl __ptmf_cmpr
/* 80538F24  2C 03 00 00 */	cmpwi r3, 0
/* 80538F28  41 82 00 1C */	beq lbl_80538F44
/* 80538F2C  3C 60 80 54 */	lis r3, lit_5060@ha /* 0x8053FAA0@ha */
/* 80538F30  38 63 FA A0 */	addi r3, r3, lit_5060@l /* 0x8053FAA0@l */
/* 80538F34  38 9F 11 00 */	addi r4, r31, 0x1100
/* 80538F38  4B E2 91 11 */	bl __ptmf_cmpr
/* 80538F3C  2C 03 00 00 */	cmpwi r3, 0
/* 80538F40  40 82 00 74 */	bne lbl_80538FB4
lbl_80538F44:
/* 80538F44  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80538F48  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80538F4C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80538F50  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80538F54  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80538F58  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80538F5C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80538F60  38 81 00 58 */	addi r4, r1, 0x58
/* 80538F64  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80538F68  38 A0 00 00 */	li r5, 0
/* 80538F6C  48 00 51 35 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80538F70  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80538F74  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80538F78  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80538F7C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80538F80  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80538F84  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80538F88  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80538F8C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80538F90  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80538F94  3C A5 00 01 */	addis r5, r5, 1
/* 80538F98  38 05 80 00 */	addi r0, r5, -32768
/* 80538F9C  7C 05 07 34 */	extsh r5, r0
/* 80538FA0  38 C0 00 01 */	li r6, 1
/* 80538FA4  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80538FA8  38 E0 00 00 */	li r7, 0
/* 80538FAC  48 00 4F D9 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80538FB0  48 00 00 D8 */	b lbl_80539088
lbl_80538FB4:
/* 80538FB4  7F E3 FB 78 */	mr r3, r31
/* 80538FB8  4B FF F0 45 */	bl chkBesu3__12daNpc_Besu_cFv
/* 80538FBC  2C 03 00 00 */	cmpwi r3, 0
/* 80538FC0  41 82 00 68 */	beq lbl_80539028
/* 80538FC4  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80538FC8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80538FCC  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80538FD0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80538FD4  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80538FD8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80538FDC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80538FE0  38 81 00 40 */	addi r4, r1, 0x40
/* 80538FE4  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80538FE8  38 A0 E8 00 */	li r5, -6144
/* 80538FEC  48 00 50 B5 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80538FF0  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80538FF4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80538FF8  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80538FFC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80539000  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80539004  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80539008  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8053900C  38 81 00 34 */	addi r4, r1, 0x34
/* 80539010  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80539014  38 C0 00 01 */	li r6, 1
/* 80539018  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 8053901C  38 E0 00 00 */	li r7, 0
/* 80539020  48 00 4F 65 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
/* 80539024  48 00 00 64 */	b lbl_80539088
lbl_80539028:
/* 80539028  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 8053902C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80539030  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80539034  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80539038  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8053903C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80539040  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80539044  38 81 00 28 */	addi r4, r1, 0x28
/* 80539048  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 8053904C  38 A0 00 00 */	li r5, 0
/* 80539050  48 00 50 51 */	bl setEyeAngleX__15daNpcT_JntAnm_cF4cXyzfs
/* 80539054  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80539058  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8053905C  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80539060  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80539064  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80539068  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8053906C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80539070  38 81 00 1C */	addi r4, r1, 0x1c
/* 80539074  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80539078  38 C0 00 01 */	li r6, 1
/* 8053907C  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80539080  38 E0 00 00 */	li r7, 0
/* 80539084  48 00 4F 01 */	bl setEyeAngleY__15daNpcT_JntAnm_cF4cXyzsifs
lbl_80539088:
/* 80539088  7F E3 FB 78 */	mr r3, r31
/* 8053908C  4B FF EF 45 */	bl chkNurse__12daNpc_Besu_cFv
/* 80539090  2C 03 00 00 */	cmpwi r3, 0
/* 80539094  41 82 00 4C */	beq lbl_805390E0
/* 80539098  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 8053909C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805390A0  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 805390A4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805390A8  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 805390AC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805390B0  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 805390B4  80 63 00 04 */	lwz r3, 4(r3)
/* 805390B8  38 63 00 24 */	addi r3, r3, 0x24
/* 805390BC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805390C0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805390C4  4B E0 D3 ED */	bl PSMTXCopy
/* 805390C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805390CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805390D0  38 81 00 64 */	addi r4, r1, 0x64
/* 805390D4  38 BF 05 50 */	addi r5, r31, 0x550
/* 805390D8  4B E0 DC 95 */	bl PSMTXMultVec
/* 805390DC  48 00 00 BC */	b lbl_80539198
lbl_805390E0:
/* 805390E0  88 1F 10 C4 */	lbz r0, 0x10c4(r31)
/* 805390E4  28 00 00 05 */	cmplwi r0, 5
/* 805390E8  40 82 00 4C */	bne lbl_80539134
/* 805390EC  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 805390F0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805390F4  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 805390F8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805390FC  C0 1E 01 40 */	lfs f0, 0x140(r30)
/* 80539100  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80539104  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80539108  80 63 00 04 */	lwz r3, 4(r3)
/* 8053910C  38 63 00 24 */	addi r3, r3, 0x24
/* 80539110  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80539114  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80539118  4B E0 D3 99 */	bl PSMTXCopy
/* 8053911C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80539120  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80539124  38 81 00 64 */	addi r4, r1, 0x64
/* 80539128  38 BF 05 50 */	addi r5, r31, 0x550
/* 8053912C  4B E0 DC 41 */	bl PSMTXMultVec
/* 80539130  48 00 00 68 */	b lbl_80539198
lbl_80539134:
/* 80539134  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80539138  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8053913C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80539140  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80539144  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80539148  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8053914C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80539150  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80539154  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80539158  4B AD 32 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 8053915C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80539160  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80539164  38 81 00 64 */	addi r4, r1, 0x64
/* 80539168  7C 85 23 78 */	mr r5, r4
/* 8053916C  4B E0 DC 01 */	bl PSMTXMultVec
/* 80539170  38 61 00 10 */	addi r3, r1, 0x10
/* 80539174  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80539178  38 A1 00 64 */	addi r5, r1, 0x64
/* 8053917C  4B D2 D9 69 */	bl __pl__4cXyzCFRC3Vec
/* 80539180  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80539184  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80539188  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8053918C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80539190  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80539194  D0 1F 05 58 */	stfs f0, 0x558(r31)
lbl_80539198:
/* 80539198  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 8053919C  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 805391A0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 805391A4  4B E2 90 7D */	bl _restgpr_27
/* 805391A8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 805391AC  7C 08 03 A6 */	mtlr r0
/* 805391B0  38 21 00 D0 */	addi r1, r1, 0xd0
/* 805391B4  4E 80 00 20 */	blr 
