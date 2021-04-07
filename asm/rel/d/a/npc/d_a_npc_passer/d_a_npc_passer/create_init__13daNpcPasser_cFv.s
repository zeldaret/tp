lbl_80AA41E4:
/* 80AA41E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA41E8  7C 08 02 A6 */	mflr r0
/* 80AA41EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA41F0  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA41F4  4B 8B DF E9 */	bl _savegpr_29
/* 80AA41F8  7C 7E 1B 78 */	mr r30, r3
/* 80AA41FC  3C 80 80 AA */	lis r4, lit_4109@ha /* 0x80AA698C@ha */
/* 80AA4200  3B E4 69 8C */	addi r31, r4, lit_4109@l /* 0x80AA698C@l */
/* 80AA4204  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80AA4208  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80AA420C  80 83 05 8C */	lwz r4, 0x58c(r3)
/* 80AA4210  80 84 00 04 */	lwz r4, 4(r4)
/* 80AA4214  38 04 00 24 */	addi r0, r4, 0x24
/* 80AA4218  90 03 05 04 */	stw r0, 0x504(r3)
/* 80AA421C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80AA4220  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80AA4224  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 80AA4228  C0 9F 00 50 */	lfs f4, 0x50(r31)
/* 80AA422C  C0 BF 00 40 */	lfs f5, 0x40(r31)
/* 80AA4230  C0 DF 00 08 */	lfs f6, 8(r31)
/* 80AA4234  4B 57 63 15 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80AA4238  80 BE 0A 98 */	lwz r5, 0xa98(r30)
/* 80AA423C  2C 05 00 10 */	cmpwi r5, 0x10
/* 80AA4240  40 80 00 1C */	bge lbl_80AA425C
/* 80AA4244  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA4248  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA424C  1C 05 02 0C */	mulli r0, r5, 0x20c
/* 80AA4250  7C 63 02 14 */	add r3, r3, r0
/* 80AA4254  C0 43 02 0C */	lfs f2, 0x20c(r3)
/* 80AA4258  48 00 00 18 */	b lbl_80AA4270
lbl_80AA425C:
/* 80AA425C  3C 60 80 43 */	lis r3, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA4260  38 63 86 1C */	addi r3, r3, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA4264  1C 05 02 3C */	mulli r0, r5, 0x23c
/* 80AA4268  7C 63 02 14 */	add r3, r3, r0
/* 80AA426C  C0 43 FF 3C */	lfs f2, -0xc4(r3)
lbl_80AA4270:
/* 80AA4270  38 7E 08 10 */	addi r3, r30, 0x810
/* 80AA4274  2C 05 00 10 */	cmpwi r5, 0x10
/* 80AA4278  40 80 00 1C */	bge lbl_80AA4294
/* 80AA427C  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA4280  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA4284  1C 05 02 0C */	mulli r0, r5, 0x20c
/* 80AA4288  7C 84 02 14 */	add r4, r4, r0
/* 80AA428C  C0 24 02 08 */	lfs f1, 0x208(r4)
/* 80AA4290  48 00 00 18 */	b lbl_80AA42A8
lbl_80AA4294:
/* 80AA4294  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA4298  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA429C  1C 05 02 3C */	mulli r0, r5, 0x23c
/* 80AA42A0  7C 84 02 14 */	add r4, r4, r0
/* 80AA42A4  C0 24 FF 38 */	lfs f1, -0xc8(r4)
lbl_80AA42A8:
/* 80AA42A8  4B 5D 1C B1 */	bl SetWall__12dBgS_AcchCirFff
/* 80AA42AC  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80AA42B0  90 01 00 08 */	stw r0, 8(r1)
/* 80AA42B4  38 7E 06 38 */	addi r3, r30, 0x638
/* 80AA42B8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AA42BC  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80AA42C0  7F C6 F3 78 */	mr r6, r30
/* 80AA42C4  38 E0 00 01 */	li r7, 1
/* 80AA42C8  39 1E 08 10 */	addi r8, r30, 0x810
/* 80AA42CC  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80AA42D0  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80AA42D4  4B 5D 1F 75 */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80AA42D8  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 80AA42DC  60 00 00 08 */	ori r0, r0, 8
/* 80AA42E0  90 1E 06 64 */	stw r0, 0x664(r30)
/* 80AA42E4  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 80AA42E8  60 00 04 00 */	ori r0, r0, 0x400
/* 80AA42EC  90 1E 06 64 */	stw r0, 0x664(r30)
/* 80AA42F0  38 7E 06 38 */	addi r3, r30, 0x638
/* 80AA42F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA42F8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA42FC  3B A4 0F 38 */	addi r29, r4, 0xf38
/* 80AA4300  7F A4 EB 78 */	mr r4, r29
/* 80AA4304  4B 5D 27 A9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AA4308  7F C3 F3 78 */	mr r3, r30
/* 80AA430C  4B 6B 4A 7D */	bl setEnvTevCol__10daNpcCd2_cFv
/* 80AA4310  7F C3 F3 78 */	mr r3, r30
/* 80AA4314  4B 6B 4A D1 */	bl setRoomNo__10daNpcCd2_cFv
/* 80AA4318  7F C3 F3 78 */	mr r3, r30
/* 80AA431C  48 00 04 E1 */	bl initCollision__13daNpcPasser_cFv
/* 80AA4320  38 00 00 00 */	li r0, 0
/* 80AA4324  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80AA4328  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA432C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80AA4330  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80AA4334  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80AA4338  7C 05 07 74 */	extsb r5, r0
/* 80AA433C  38 C0 00 01 */	li r6, 1
/* 80AA4340  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80AA4344  39 00 00 01 */	li r8, 1
/* 80AA4348  4B 6B 56 F1 */	bl setPath__11PathTrace_cFiiiP4cXyzb
/* 80AA434C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AA4350  41 82 00 10 */	beq lbl_80AA4360
/* 80AA4354  7F C3 F3 78 */	mr r3, r30
/* 80AA4358  38 80 00 00 */	li r4, 0
/* 80AA435C  4B FF EE 91 */	bl setAction__13daNpcPasser_cFQ213daNpcPasser_c6Mode_e
lbl_80AA4360:
/* 80AA4360  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 80AA4364  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 80AA4368  4B 56 B8 15 */	bl setMorf__13mDoExt_morf_cFf
/* 80AA436C  38 7E 06 38 */	addi r3, r30, 0x638
/* 80AA4370  7F A4 EB 78 */	mr r4, r29
/* 80AA4374  4B 5D 27 39 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80AA4378  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 80AA437C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80AA4380  D0 1E 0B 18 */	stfs f0, 0xb18(r30)
/* 80AA4384  7F C3 F3 78 */	mr r3, r30
/* 80AA4388  48 00 03 F9 */	bl setBaseMtx__13daNpcPasser_cFv
/* 80AA438C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AA4390  4B 8B DE 99 */	bl _restgpr_29
/* 80AA4394  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA4398  7C 08 03 A6 */	mtlr r0
/* 80AA439C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA43A0  4E 80 00 20 */	blr 
