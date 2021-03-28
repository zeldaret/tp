lbl_80D4F224:
/* 80D4F224  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4F228  7C 08 02 A6 */	mflr r0
/* 80D4F22C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4F230  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4F234  4B 61 2F 9C */	b _savegpr_26
/* 80D4F238  7C 7D 1B 78 */	mr r29, r3
/* 80D4F23C  3C 60 80 D5 */	lis r3, lit_3723@ha
/* 80D4F240  3B E3 F4 D0 */	addi r31, r3, lit_3723@l
/* 80D4F244  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80D4F248  54 00 27 BF */	rlwinm. r0, r0, 4, 0x1e, 0x1f
/* 80D4F24C  40 82 01 E0 */	bne lbl_80D4F42C
/* 80D4F250  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D4F254  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80D4F258  83 DC 5D AC */	lwz r30, 0x5dac(r28)
/* 80D4F25C  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D4F260  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D4F264  4B 52 19 A0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80D4F268  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 80D4F26C  7C 00 18 50 */	subf r0, r0, r3
/* 80D4F270  7C 1B 07 34 */	extsh r27, r0
/* 80D4F274  7F A3 EB 78 */	mr r3, r29
/* 80D4F278  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80D4F27C  4B 2C B6 E8 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D4F280  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80D4F284  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D4F288  40 80 00 90 */	bge lbl_80D4F318
/* 80D4F28C  2C 1B 40 00 */	cmpwi r27, 0x4000
/* 80D4F290  40 80 00 88 */	bge lbl_80D4F318
/* 80D4F294  7F C3 F3 78 */	mr r3, r30
/* 80D4F298  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D4F29C  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80D4F2A0  7D 89 03 A6 */	mtctr r12
/* 80D4F2A4  4E 80 04 21 */	bctrl 
/* 80D4F2A8  90 61 00 0C */	stw r3, 0xc(r1)
/* 80D4F2AC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80D4F2B0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80D4F2B4  38 81 00 0C */	addi r4, r1, 0xc
/* 80D4F2B8  4B 2C A5 40 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80D4F2BC  7C 7C 1B 79 */	or. r28, r3, r3
/* 80D4F2C0  41 82 00 58 */	beq lbl_80D4F318
/* 80D4F2C4  4B 2C 9A 1C */	b fopAc_IsActor__FPv
/* 80D4F2C8  2C 03 00 00 */	cmpwi r3, 0
/* 80D4F2CC  41 82 00 4C */	beq lbl_80D4F318
/* 80D4F2D0  A8 1C 00 08 */	lha r0, 8(r28)
/* 80D4F2D4  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80D4F2D8  40 82 00 40 */	bne lbl_80D4F318
/* 80D4F2DC  38 00 00 00 */	li r0, 0
/* 80D4F2E0  88 7C 0C F0 */	lbz r3, 0xcf0(r28)
/* 80D4F2E4  2C 03 00 08 */	cmpwi r3, 8
/* 80D4F2E8  41 82 00 0C */	beq lbl_80D4F2F4
/* 80D4F2EC  2C 03 00 09 */	cmpwi r3, 9
/* 80D4F2F0  40 82 00 08 */	bne lbl_80D4F2F8
lbl_80D4F2F4:
/* 80D4F2F4  38 00 00 01 */	li r0, 1
lbl_80D4F2F8:
/* 80D4F2F8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D4F2FC  41 82 00 1C */	beq lbl_80D4F318
/* 80D4F300  7F C3 F3 78 */	mr r3, r30
/* 80D4F304  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80D4F308  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D4F30C  81 8C 01 08 */	lwz r12, 0x108(r12)
/* 80D4F310  7D 89 03 A6 */	mtctr r12
/* 80D4F314  4E 80 04 21 */	bctrl 
lbl_80D4F318:
/* 80D4F318  3B C0 00 00 */	li r30, 0
/* 80D4F31C  3B 80 00 00 */	li r28, 0
lbl_80D4F320:
/* 80D4F320  38 1C 05 68 */	addi r0, r28, 0x568
/* 80D4F324  7C 7D 00 2E */	lwzx r3, r29, r0
/* 80D4F328  3C 03 00 01 */	addis r0, r3, 1
/* 80D4F32C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D4F330  41 82 00 20 */	beq lbl_80D4F350
/* 80D4F334  90 61 00 08 */	stw r3, 8(r1)
/* 80D4F338  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80D4F33C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80D4F340  38 81 00 08 */	addi r4, r1, 8
/* 80D4F344  4B 2C A4 B4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80D4F348  7C 7A 1B 78 */	mr r26, r3
/* 80D4F34C  48 00 00 08 */	b lbl_80D4F354
lbl_80D4F350:
/* 80D4F350  3B 40 00 00 */	li r26, 0
lbl_80D4F354:
/* 80D4F354  28 1A 00 00 */	cmplwi r26, 0
/* 80D4F358  41 82 00 C4 */	beq lbl_80D4F41C
/* 80D4F35C  7F 7D F2 14 */	add r27, r29, r30
/* 80D4F360  88 1B 05 75 */	lbz r0, 0x575(r27)
/* 80D4F364  2C 00 00 01 */	cmpwi r0, 1
/* 80D4F368  41 82 00 64 */	beq lbl_80D4F3CC
/* 80D4F36C  40 80 00 A4 */	bge lbl_80D4F410
/* 80D4F370  2C 00 00 00 */	cmpwi r0, 0
/* 80D4F374  40 80 00 08 */	bge lbl_80D4F37C
/* 80D4F378  48 00 00 98 */	b lbl_80D4F410
lbl_80D4F37C:
/* 80D4F37C  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80D4F380  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80D4F384  40 82 00 8C */	bne lbl_80D4F410
/* 80D4F388  7F A3 EB 78 */	mr r3, r29
/* 80D4F38C  7F 44 D3 78 */	mr r4, r26
/* 80D4F390  4B FF F7 FD */	bl checkArea_sub__11daSwLBall_cFP10fopAc_ac_c
/* 80D4F394  2C 03 00 00 */	cmpwi r3, 0
/* 80D4F398  41 82 00 78 */	beq lbl_80D4F410
/* 80D4F39C  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80D4F3A0  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80D4F3A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D4F3A8  40 82 00 14 */	bne lbl_80D4F3BC
/* 80D4F3AC  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80D4F3B0  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80D4F3B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D4F3B8  41 82 00 58 */	beq lbl_80D4F410
lbl_80D4F3BC:
/* 80D4F3BC  38 00 00 01 */	li r0, 1
/* 80D4F3C0  98 1A 0D B8 */	stb r0, 0xdb8(r26)
/* 80D4F3C4  98 1B 05 75 */	stb r0, 0x575(r27)
/* 80D4F3C8  48 00 00 48 */	b lbl_80D4F410
lbl_80D4F3CC:
/* 80D4F3CC  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80D4F3D0  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80D4F3D4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D4F3D8  4B 52 13 68 */	b cLib_chaseF__FPfff
/* 80D4F3DC  38 7A 04 D8 */	addi r3, r26, 0x4d8
/* 80D4F3E0  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80D4F3E4  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80D4F3E8  4B 52 13 58 */	b cLib_chaseF__FPfff
/* 80D4F3EC  7F A3 EB 78 */	mr r3, r29
/* 80D4F3F0  7F 44 D3 78 */	mr r4, r26
/* 80D4F3F4  4B 2C B5 70 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D4F3F8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80D4F3FC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80D4F400  40 82 00 10 */	bne lbl_80D4F410
/* 80D4F404  38 00 00 00 */	li r0, 0
/* 80D4F408  98 1A 0D B8 */	stb r0, 0xdb8(r26)
/* 80D4F40C  98 1B 05 75 */	stb r0, 0x575(r27)
lbl_80D4F410:
/* 80D4F410  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 80D4F414  54 00 9F FE */	rlwinm r0, r0, 0x13, 0x1f, 0x1f
/* 80D4F418  98 1B 05 73 */	stb r0, 0x573(r27)
lbl_80D4F41C:
/* 80D4F41C  3B DE 00 01 */	addi r30, r30, 1
/* 80D4F420  2C 1E 00 02 */	cmpwi r30, 2
/* 80D4F424  3B 9C 00 04 */	addi r28, r28, 4
/* 80D4F428  41 80 FE F8 */	blt lbl_80D4F320
lbl_80D4F42C:
/* 80D4F42C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4F430  4B 61 2D EC */	b _restgpr_26
/* 80D4F434  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4F438  7C 08 03 A6 */	mtlr r0
/* 80D4F43C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4F440  4E 80 00 20 */	blr 
