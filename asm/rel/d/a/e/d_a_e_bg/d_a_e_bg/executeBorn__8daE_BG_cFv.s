lbl_80685F88:
/* 80685F88  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80685F8C  7C 08 02 A6 */	mflr r0
/* 80685F90  90 01 00 94 */	stw r0, 0x94(r1)
/* 80685F94  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 80685F98  7C 7F 1B 78 */	mr r31, r3
/* 80685F9C  38 61 00 24 */	addi r3, r1, 0x24
/* 80685FA0  4B 9F 15 DD */	bl __ct__11dBgS_GndChkFv
/* 80685FA4  80 1F 06 74 */	lwz r0, 0x674(r31)
/* 80685FA8  2C 00 00 02 */	cmpwi r0, 2
/* 80685FAC  41 82 01 50 */	beq lbl_806860FC
/* 80685FB0  40 80 00 14 */	bge lbl_80685FC4
/* 80685FB4  2C 00 00 00 */	cmpwi r0, 0
/* 80685FB8  41 82 00 18 */	beq lbl_80685FD0
/* 80685FBC  40 80 00 84 */	bge lbl_80686040
/* 80685FC0  48 00 02 30 */	b lbl_806861F0
lbl_80685FC4:
/* 80685FC4  2C 00 00 04 */	cmpwi r0, 4
/* 80685FC8  40 80 02 28 */	bge lbl_806861F0
/* 80685FCC  48 00 01 C4 */	b lbl_80686190
lbl_80685FD0:
/* 80685FD0  38 80 00 00 */	li r4, 0
/* 80685FD4  B0 9F 06 AC */	sth r4, 0x6ac(r31)
/* 80685FD8  38 60 00 01 */	li r3, 1
/* 80685FDC  98 7F 06 AF */	stb r3, 0x6af(r31)
/* 80685FE0  38 00 FF FF */	li r0, -1
/* 80685FE4  90 1F 06 6C */	stw r0, 0x66c(r31)
/* 80685FE8  90 7F 06 74 */	stw r3, 0x674(r31)
/* 80685FEC  98 9F 06 8F */	stb r4, 0x68f(r31)
/* 80685FF0  90 9F 05 5C */	stw r4, 0x55c(r31)
/* 80685FF4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80685FF8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80685FFC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80686000  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80686004  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80686008  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8068600C  3C 60 80 69 */	lis r3, lit_3772@ha /* 0x8068A254@ha */
/* 80686010  C0 03 A2 54 */	lfs f0, lit_3772@l(r3)  /* 0x8068A254@l */
/* 80686014  EC 01 00 2A */	fadds f0, f1, f0
/* 80686018  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8068601C  38 61 00 24 */	addi r3, r1, 0x24
/* 80686020  38 81 00 18 */	addi r4, r1, 0x18
/* 80686024  4B BE 1D 05 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80686028  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068602C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80686030  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80686034  38 81 00 24 */	addi r4, r1, 0x24
/* 80686038  4B 9E E4 69 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8068603C  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
lbl_80686040:
/* 80686040  88 9F 06 8C */	lbz r4, 0x68c(r31)
/* 80686044  28 04 00 FF */	cmplwi r4, 0xff
/* 80686048  41 82 00 30 */	beq lbl_80686078
/* 8068604C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80686050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80686054  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80686058  7C 05 07 74 */	extsb r5, r0
/* 8068605C  4B 9A F3 05 */	bl isSwitch__10dSv_info_cCFii
/* 80686060  2C 03 00 00 */	cmpwi r3, 0
/* 80686064  41 82 00 14 */	beq lbl_80686078
/* 80686068  38 61 00 24 */	addi r3, r1, 0x24
/* 8068606C  38 80 FF FF */	li r4, -1
/* 80686070  4B 9F 15 81 */	bl __dt__11dBgS_GndChkFv
/* 80686074  48 00 01 88 */	b lbl_806861FC
lbl_80686078:
/* 80686078  80 7F 06 6C */	lwz r3, 0x66c(r31)
/* 8068607C  3C 03 00 01 */	addis r0, r3, 1
/* 80686080  28 00 FF FF */	cmplwi r0, 0xffff
/* 80686084  40 82 00 50 */	bne lbl_806860D4
/* 80686088  7F E3 FB 78 */	mr r3, r31
/* 8068608C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80686090  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80686094  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80686098  4B 99 47 49 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8068609C  3C 60 80 69 */	lis r3, lit_3771@ha /* 0x8068A250@ha */
/* 806860A0  C0 03 A2 50 */	lfs f0, lit_3771@l(r3)  /* 0x8068A250@l */
/* 806860A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806860A8  40 80 01 48 */	bge lbl_806861F0
/* 806860AC  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x8068A4C8@ha */
/* 806860B0  38 63 A4 C8 */	addi r3, r3, l_HIO@l /* 0x8068A4C8@l */
/* 806860B4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 806860B8  FC 00 00 1E */	fctiwz f0, f0
/* 806860BC  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 806860C0  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 806860C4  98 1F 06 8F */	stb r0, 0x68f(r31)
/* 806860C8  38 00 00 02 */	li r0, 2
/* 806860CC  90 1F 06 74 */	stw r0, 0x674(r31)
/* 806860D0  48 00 01 20 */	b lbl_806861F0
lbl_806860D4:
/* 806860D4  90 61 00 14 */	stw r3, 0x14(r1)
/* 806860D8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 806860DC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 806860E0  38 81 00 14 */	addi r4, r1, 0x14
/* 806860E4  4B 99 37 15 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 806860E8  28 03 00 00 */	cmplwi r3, 0
/* 806860EC  40 82 01 04 */	bne lbl_806861F0
/* 806860F0  38 00 FF FF */	li r0, -1
/* 806860F4  90 1F 06 6C */	stw r0, 0x66c(r31)
/* 806860F8  48 00 00 F8 */	b lbl_806861F0
lbl_806860FC:
/* 806860FC  88 9F 06 8C */	lbz r4, 0x68c(r31)
/* 80686100  28 04 00 FF */	cmplwi r4, 0xff
/* 80686104  41 82 00 30 */	beq lbl_80686134
/* 80686108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068610C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80686110  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80686114  7C 05 07 74 */	extsb r5, r0
/* 80686118  4B 9A F2 49 */	bl isSwitch__10dSv_info_cCFii
/* 8068611C  2C 03 00 00 */	cmpwi r3, 0
/* 80686120  41 82 00 14 */	beq lbl_80686134
/* 80686124  38 61 00 24 */	addi r3, r1, 0x24
/* 80686128  38 80 FF FF */	li r4, -1
/* 8068612C  4B 9F 14 C5 */	bl __dt__11dBgS_GndChkFv
/* 80686130  48 00 00 CC */	b lbl_806861FC
lbl_80686134:
/* 80686134  88 1F 06 8F */	lbz r0, 0x68f(r31)
/* 80686138  28 00 00 00 */	cmplwi r0, 0
/* 8068613C  40 82 00 B4 */	bne lbl_806861F0
/* 80686140  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80686144  7C 07 07 74 */	extsb r7, r0
/* 80686148  38 00 00 00 */	li r0, 0
/* 8068614C  90 01 00 08 */	stw r0, 8(r1)
/* 80686150  38 60 02 01 */	li r3, 0x201
/* 80686154  28 1F 00 00 */	cmplwi r31, 0
/* 80686158  41 82 00 0C */	beq lbl_80686164
/* 8068615C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80686160  48 00 00 08 */	b lbl_80686168
lbl_80686164:
/* 80686164  38 80 FF FF */	li r4, -1
lbl_80686168:
/* 80686168  38 A0 FF 02 */	li r5, -254
/* 8068616C  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80686170  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80686174  39 20 00 00 */	li r9, 0
/* 80686178  39 40 FF FF */	li r10, -1
/* 8068617C  4B 99 3D 75 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80686180  90 7F 06 6C */	stw r3, 0x66c(r31)
/* 80686184  38 00 00 03 */	li r0, 3
/* 80686188  90 1F 06 74 */	stw r0, 0x674(r31)
/* 8068618C  48 00 00 64 */	b lbl_806861F0
lbl_80686190:
/* 80686190  88 9F 06 8C */	lbz r4, 0x68c(r31)
/* 80686194  28 04 00 FF */	cmplwi r4, 0xff
/* 80686198  41 82 00 30 */	beq lbl_806861C8
/* 8068619C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806861A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806861A4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806861A8  7C 05 07 74 */	extsb r5, r0
/* 806861AC  4B 9A F1 B5 */	bl isSwitch__10dSv_info_cCFii
/* 806861B0  2C 03 00 00 */	cmpwi r3, 0
/* 806861B4  41 82 00 14 */	beq lbl_806861C8
/* 806861B8  38 61 00 24 */	addi r3, r1, 0x24
/* 806861BC  38 80 FF FF */	li r4, -1
/* 806861C0  4B 9F 14 31 */	bl __dt__11dBgS_GndChkFv
/* 806861C4  48 00 00 38 */	b lbl_806861FC
lbl_806861C8:
/* 806861C8  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 806861CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806861D0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 806861D4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 806861D8  38 81 00 10 */	addi r4, r1, 0x10
/* 806861DC  4B 99 36 1D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 806861E0  28 03 00 00 */	cmplwi r3, 0
/* 806861E4  41 82 00 0C */	beq lbl_806861F0
/* 806861E8  38 00 00 01 */	li r0, 1
/* 806861EC  90 1F 06 74 */	stw r0, 0x674(r31)
lbl_806861F0:
/* 806861F0  38 61 00 24 */	addi r3, r1, 0x24
/* 806861F4  38 80 FF FF */	li r4, -1
/* 806861F8  4B 9F 13 F9 */	bl __dt__11dBgS_GndChkFv
lbl_806861FC:
/* 806861FC  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 80686200  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80686204  7C 08 03 A6 */	mtlr r0
/* 80686208  38 21 00 90 */	addi r1, r1, 0x90
/* 8068620C  4E 80 00 20 */	blr 
