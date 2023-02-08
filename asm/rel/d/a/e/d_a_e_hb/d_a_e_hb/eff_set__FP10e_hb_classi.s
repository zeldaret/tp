lbl_804FF214:
/* 804FF214  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 804FF218  7C 08 02 A6 */	mflr r0
/* 804FF21C  90 01 00 64 */	stw r0, 0x64(r1)
/* 804FF220  39 61 00 60 */	addi r11, r1, 0x60
/* 804FF224  4B E6 2F 9D */	bl _savegpr_22
/* 804FF228  7C 79 1B 78 */	mr r25, r3
/* 804FF22C  7C 9A 23 78 */	mr r26, r4
/* 804FF230  3C 60 80 50 */	lis r3, lit_3788@ha /* 0x80500B04@ha */
/* 804FF234  3B A3 0B 04 */	addi r29, r3, lit_3788@l /* 0x80500B04@l */
/* 804FF238  80 79 05 B8 */	lwz r3, 0x5b8(r25)
/* 804FF23C  83 83 00 04 */	lwz r28, 4(r3)
/* 804FF240  88 79 12 30 */	lbz r3, 0x1230(r25)
/* 804FF244  7C 60 07 75 */	extsb. r0, r3
/* 804FF248  41 82 00 14 */	beq lbl_804FF25C
/* 804FF24C  38 03 FF FF */	addi r0, r3, -1
/* 804FF250  98 19 12 30 */	stb r0, 0x1230(r25)
/* 804FF254  38 00 00 03 */	li r0, 3
/* 804FF258  98 19 12 31 */	stb r0, 0x1231(r25)
lbl_804FF25C:
/* 804FF25C  38 79 12 4C */	addi r3, r25, 0x124c
/* 804FF260  88 19 12 31 */	lbz r0, 0x1231(r25)
/* 804FF264  2C 00 00 01 */	cmpwi r0, 1
/* 804FF268  41 82 00 0C */	beq lbl_804FF274
/* 804FF26C  C0 3D 00 04 */	lfs f1, 4(r29)
/* 804FF270  48 00 00 08 */	b lbl_804FF278
lbl_804FF274:
/* 804FF274  C0 3D 00 08 */	lfs f1, 8(r29)
lbl_804FF278:
/* 804FF278  C0 5D 00 08 */	lfs f2, 8(r29)
/* 804FF27C  C0 7D 00 60 */	lfs f3, 0x60(r29)
/* 804FF280  4B D7 07 BD */	bl cLib_addCalc2__FPffff
/* 804FF284  3B 60 00 00 */	li r27, 0
/* 804FF288  3B 00 00 00 */	li r24, 0
/* 804FF28C  3A E0 00 00 */	li r23, 0
/* 804FF290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804FF294  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
lbl_804FF298:
/* 804FF298  2C 1A 00 00 */	cmpwi r26, 0
/* 804FF29C  40 82 00 60 */	bne lbl_804FF2FC
/* 804FF2A0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804FF2A4  38 00 00 FF */	li r0, 0xff
/* 804FF2A8  90 01 00 08 */	stw r0, 8(r1)
/* 804FF2AC  38 80 00 00 */	li r4, 0
/* 804FF2B0  90 81 00 0C */	stw r4, 0xc(r1)
/* 804FF2B4  38 00 FF FF */	li r0, -1
/* 804FF2B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804FF2BC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804FF2C0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804FF2C4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804FF2C8  3B F7 12 34 */	addi r31, r23, 0x1234
/* 804FF2CC  7C 99 F8 2E */	lwzx r4, r25, r31
/* 804FF2D0  38 A0 00 00 */	li r5, 0
/* 804FF2D4  3C C0 80 50 */	lis r6, p_name@ha /* 0x80500CB4@ha */
/* 804FF2D8  38 C6 0C B4 */	addi r6, r6, p_name@l /* 0x80500CB4@l */
/* 804FF2DC  7C C6 C2 2E */	lhzx r6, r6, r24
/* 804FF2E0  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 804FF2E4  39 00 00 00 */	li r8, 0
/* 804FF2E8  39 20 00 00 */	li r9, 0
/* 804FF2EC  39 40 00 00 */	li r10, 0
/* 804FF2F0  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804FF2F4  4B B4 E1 D9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804FF2F8  7C 79 F9 2E */	stwx r3, r25, r31
lbl_804FF2FC:
/* 804FF2FC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804FF300  38 63 02 10 */	addi r3, r3, 0x210
/* 804FF304  3A D7 12 34 */	addi r22, r23, 0x1234
/* 804FF308  7C 99 B0 2E */	lwzx r4, r25, r22
/* 804FF30C  4B B4 C6 0D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804FF310  7C 7F 1B 79 */	or. r31, r3, r3
/* 804FF314  41 82 00 90 */	beq lbl_804FF3A4
/* 804FF318  2C 1A 00 00 */	cmpwi r26, 0
/* 804FF31C  41 82 00 1C */	beq lbl_804FF338
/* 804FF320  4B D7 F9 41 */	bl deleteAllParticle__14JPABaseEmitterFv
/* 804FF324  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804FF328  38 63 02 10 */	addi r3, r3, 0x210
/* 804FF32C  7C 99 B0 2E */	lwzx r4, r25, r22
/* 804FF330  4B B4 C5 85 */	bl forceOnEventMove__Q213dPa_control_c7level_cFUl
/* 804FF334  48 00 00 70 */	b lbl_804FF3A4
lbl_804FF338:
/* 804FF338  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 804FF33C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 804FF340  3C 60 80 50 */	lis r3, p_idx@ha /* 0x80500CBC@ha */
/* 804FF344  38 63 0C BC */	addi r3, r3, p_idx@l /* 0x80500CBC@l */
/* 804FF348  7C 03 B8 2E */	lwzx r0, r3, r23
/* 804FF34C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 804FF350  7C 64 02 14 */	add r3, r4, r0
/* 804FF354  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804FF358  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804FF35C  80 84 00 00 */	lwz r4, 0(r4)
/* 804FF360  4B E4 71 51 */	bl PSMTXCopy
/* 804FF364  C0 39 12 4C */	lfs f1, 0x124c(r25)
/* 804FF368  FC 40 08 90 */	fmr f2, f1
/* 804FF36C  FC 60 08 90 */	fmr f3, f1
/* 804FF370  38 60 00 01 */	li r3, 1
/* 804FF374  4B D7 1B 31 */	bl MtxScale__FfffUc
/* 804FF378  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FF37C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FF380  80 63 00 00 */	lwz r3, 0(r3)
/* 804FF384  38 9F 00 68 */	addi r4, r31, 0x68
/* 804FF388  38 BF 00 98 */	addi r5, r31, 0x98
/* 804FF38C  38 DF 00 A4 */	addi r6, r31, 0xa4
/* 804FF390  4B D8 14 79 */	bl func_80280808
/* 804FF394  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804FF398  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 804FF39C  D0 1F 00 B0 */	stfs f0, 0xb0(r31)
/* 804FF3A0  D0 3F 00 B4 */	stfs f1, 0xb4(r31)
lbl_804FF3A4:
/* 804FF3A4  3B 7B 00 01 */	addi r27, r27, 1
/* 804FF3A8  2C 1B 00 02 */	cmpwi r27, 2
/* 804FF3AC  3B 18 00 02 */	addi r24, r24, 2
/* 804FF3B0  3A F7 00 04 */	addi r23, r23, 4
/* 804FF3B4  40 81 FE E4 */	ble lbl_804FF298
/* 804FF3B8  88 79 12 31 */	lbz r3, 0x1231(r25)
/* 804FF3BC  7C 60 07 75 */	extsb. r0, r3
/* 804FF3C0  41 82 02 04 */	beq lbl_804FF5C4
/* 804FF3C4  7C 60 07 74 */	extsb r0, r3
/* 804FF3C8  2C 00 00 01 */	cmpwi r0, 1
/* 804FF3CC  40 82 00 9C */	bne lbl_804FF468
/* 804FF3D0  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 804FF3D4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804FF3D8  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 804FF3DC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804FF3E0  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 804FF3E4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804FF3E8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 804FF3EC  EC 01 00 2A */	fadds f0, f1, f0
/* 804FF3F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804FF3F4  38 61 00 20 */	addi r3, r1, 0x20
/* 804FF3F8  4B B1 E8 C5 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 804FF3FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804FF400  41 82 00 10 */	beq lbl_804FF410
/* 804FF404  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 804FF408  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 804FF40C  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_804FF410:
/* 804FF410  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804FF414  38 00 00 FF */	li r0, 0xff
/* 804FF418  90 01 00 08 */	stw r0, 8(r1)
/* 804FF41C  38 80 00 00 */	li r4, 0
/* 804FF420  90 81 00 0C */	stw r4, 0xc(r1)
/* 804FF424  38 00 FF FF */	li r0, -1
/* 804FF428  90 01 00 10 */	stw r0, 0x10(r1)
/* 804FF42C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804FF430  90 81 00 18 */	stw r4, 0x18(r1)
/* 804FF434  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804FF438  80 99 12 44 */	lwz r4, 0x1244(r25)
/* 804FF43C  38 A0 00 00 */	li r5, 0
/* 804FF440  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008338@ha */
/* 804FF444  38 C6 83 38 */	addi r6, r6, 0x8338 /* 0x00008338@l */
/* 804FF448  38 E1 00 20 */	addi r7, r1, 0x20
/* 804FF44C  39 00 00 00 */	li r8, 0
/* 804FF450  39 20 00 00 */	li r9, 0
/* 804FF454  39 40 00 00 */	li r10, 0
/* 804FF458  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804FF45C  4B B4 E0 71 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804FF460  90 79 12 44 */	stw r3, 0x1244(r25)
/* 804FF464  48 00 01 58 */	b lbl_804FF5BC
lbl_804FF468:
/* 804FF468  2C 00 00 02 */	cmpwi r0, 2
/* 804FF46C  40 82 00 A8 */	bne lbl_804FF514
/* 804FF470  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804FF474  38 00 00 FF */	li r0, 0xff
/* 804FF478  90 01 00 08 */	stw r0, 8(r1)
/* 804FF47C  38 80 00 00 */	li r4, 0
/* 804FF480  90 81 00 0C */	stw r4, 0xc(r1)
/* 804FF484  38 00 FF FF */	li r0, -1
/* 804FF488  90 01 00 10 */	stw r0, 0x10(r1)
/* 804FF48C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804FF490  90 81 00 18 */	stw r4, 0x18(r1)
/* 804FF494  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804FF498  80 99 12 40 */	lwz r4, 0x1240(r25)
/* 804FF49C  38 A0 00 00 */	li r5, 0
/* 804FF4A0  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008336@ha */
/* 804FF4A4  38 C6 83 36 */	addi r6, r6, 0x8336 /* 0x00008336@l */
/* 804FF4A8  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 804FF4AC  39 00 00 00 */	li r8, 0
/* 804FF4B0  39 20 00 00 */	li r9, 0
/* 804FF4B4  39 40 00 00 */	li r10, 0
/* 804FF4B8  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804FF4BC  4B B4 E0 11 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804FF4C0  90 79 12 40 */	stw r3, 0x1240(r25)
/* 804FF4C4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804FF4C8  38 63 02 10 */	addi r3, r3, 0x210
/* 804FF4CC  80 99 12 40 */	lwz r4, 0x1240(r25)
/* 804FF4D0  4B B4 C4 49 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804FF4D4  7C 77 1B 79 */	or. r23, r3, r3
/* 804FF4D8  41 82 00 E4 */	beq lbl_804FF5BC
/* 804FF4DC  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 804FF4E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804FF4E4  38 63 00 30 */	addi r3, r3, 0x30
/* 804FF4E8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804FF4EC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804FF4F0  80 84 00 00 */	lwz r4, 0(r4)
/* 804FF4F4  4B E4 6F BD */	bl PSMTXCopy
/* 804FF4F8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FF4FC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FF500  80 63 00 00 */	lwz r3, 0(r3)
/* 804FF504  38 97 00 68 */	addi r4, r23, 0x68
/* 804FF508  38 B7 00 A4 */	addi r5, r23, 0xa4
/* 804FF50C  4B D8 12 D5 */	bl func_802807E0
/* 804FF510  48 00 00 AC */	b lbl_804FF5BC
lbl_804FF514:
/* 804FF514  2C 00 00 03 */	cmpwi r0, 3
/* 804FF518  40 82 00 A4 */	bne lbl_804FF5BC
/* 804FF51C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804FF520  38 00 00 FF */	li r0, 0xff
/* 804FF524  90 01 00 08 */	stw r0, 8(r1)
/* 804FF528  38 80 00 00 */	li r4, 0
/* 804FF52C  90 81 00 0C */	stw r4, 0xc(r1)
/* 804FF530  38 00 FF FF */	li r0, -1
/* 804FF534  90 01 00 10 */	stw r0, 0x10(r1)
/* 804FF538  90 81 00 14 */	stw r4, 0x14(r1)
/* 804FF53C  90 81 00 18 */	stw r4, 0x18(r1)
/* 804FF540  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804FF544  80 99 12 48 */	lwz r4, 0x1248(r25)
/* 804FF548  38 A0 00 00 */	li r5, 0
/* 804FF54C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008337@ha */
/* 804FF550  38 C6 83 37 */	addi r6, r6, 0x8337 /* 0x00008337@l */
/* 804FF554  38 F9 04 D0 */	addi r7, r25, 0x4d0
/* 804FF558  39 00 00 00 */	li r8, 0
/* 804FF55C  39 20 00 00 */	li r9, 0
/* 804FF560  39 40 00 00 */	li r10, 0
/* 804FF564  C0 3D 00 08 */	lfs f1, 8(r29)
/* 804FF568  4B B4 DF 65 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804FF56C  90 79 12 48 */	stw r3, 0x1248(r25)
/* 804FF570  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 804FF574  38 63 02 10 */	addi r3, r3, 0x210
/* 804FF578  80 99 12 48 */	lwz r4, 0x1248(r25)
/* 804FF57C  4B B4 C3 9D */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 804FF580  7C 77 1B 79 */	or. r23, r3, r3
/* 804FF584  41 82 00 38 */	beq lbl_804FF5BC
/* 804FF588  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 804FF58C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804FF590  38 63 00 30 */	addi r3, r3, 0x30
/* 804FF594  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804FF598  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804FF59C  80 84 00 00 */	lwz r4, 0(r4)
/* 804FF5A0  4B E4 6F 11 */	bl PSMTXCopy
/* 804FF5A4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804FF5A8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804FF5AC  80 63 00 00 */	lwz r3, 0(r3)
/* 804FF5B0  38 97 00 68 */	addi r4, r23, 0x68
/* 804FF5B4  38 B7 00 A4 */	addi r5, r23, 0xa4
/* 804FF5B8  4B D8 12 29 */	bl func_802807E0
lbl_804FF5BC:
/* 804FF5BC  38 00 00 00 */	li r0, 0
/* 804FF5C0  98 19 12 31 */	stb r0, 0x1231(r25)
lbl_804FF5C4:
/* 804FF5C4  39 61 00 60 */	addi r11, r1, 0x60
/* 804FF5C8  4B E6 2C 45 */	bl _restgpr_22
/* 804FF5CC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804FF5D0  7C 08 03 A6 */	mtlr r0
/* 804FF5D4  38 21 00 60 */	addi r1, r1, 0x60
/* 804FF5D8  4E 80 00 20 */	blr 
