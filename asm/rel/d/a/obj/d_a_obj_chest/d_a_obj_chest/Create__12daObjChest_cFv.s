lbl_80BC9088:
/* 80BC9088  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BC908C  7C 08 02 A6 */	mflr r0
/* 80BC9090  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BC9094  39 61 00 40 */	addi r11, r1, 0x40
/* 80BC9098  4B 79 91 38 */	b _savegpr_26
/* 80BC909C  7C 7E 1B 78 */	mr r30, r3
/* 80BC90A0  3C 60 80 BD */	lis r3, l_cyl_src@ha
/* 80BC90A4  3B E3 9F FC */	addi r31, r3, l_cyl_src@l
/* 80BC90A8  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BC90AC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BC90B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BC90B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BC90B8  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BC90BC  7C 05 07 74 */	extsb r5, r0
/* 80BC90C0  4B 46 C2 A0 */	b isSwitch__10dSv_info_cCFii
/* 80BC90C4  2C 03 00 00 */	cmpwi r3, 0
/* 80BC90C8  41 82 00 B0 */	beq lbl_80BC9178
/* 80BC90CC  38 00 40 00 */	li r0, 0x4000
/* 80BC90D0  B0 1E 0A 84 */	sth r0, 0xa84(r30)
/* 80BC90D4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80BC90D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BC90DC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80BC90E0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BC90E4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80BC90E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BC90EC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80BC90F0  EC 01 00 2A */	fadds f0, f1, f0
/* 80BC90F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BC90F8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80BC90FC  D0 3E 0A 78 */	stfs f1, 0xa78(r30)
/* 80BC9100  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80BC9104  D0 1E 0A 7C */	stfs f0, 0xa7c(r30)
/* 80BC9108  D0 3E 0A 80 */	stfs f1, 0xa80(r30)
/* 80BC910C  38 61 00 10 */	addi r3, r1, 0x10
/* 80BC9110  4B 44 3C 54 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BC9114  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC9118  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC911C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 80BC9120  4B 44 33 14 */	b mDoMtx_YrotM__FPA4_fs
/* 80BC9124  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC9128  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC912C  A8 9E 0A 84 */	lha r4, 0xa84(r30)
/* 80BC9130  4B 44 32 6C */	b mDoMtx_XrotM__FPA4_fs
/* 80BC9134  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BC9138  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BC913C  38 9E 0A 78 */	addi r4, r30, 0xa78
/* 80BC9140  7C 85 23 78 */	mr r5, r4
/* 80BC9144  4B 77 DC 28 */	b PSMTXMultVec
/* 80BC9148  38 7E 0A 78 */	addi r3, r30, 0xa78
/* 80BC914C  4B 45 4B 70 */	b gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80BC9150  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BC9154  41 82 00 10 */	beq lbl_80BC9164
/* 80BC9158  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha
/* 80BC915C  C0 03 0C D0 */	lfs f0, mGroundY__11fopAcM_gc_c@l(r3)
/* 80BC9160  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80BC9164:
/* 80BC9164  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80BC9168  D0 1E 0A A0 */	stfs f0, 0xaa0(r30)
/* 80BC916C  38 00 00 02 */	li r0, 2
/* 80BC9170  98 1E 0A 90 */	stb r0, 0xa90(r30)
/* 80BC9174  48 00 00 0C */	b lbl_80BC9180
lbl_80BC9178:
/* 80BC9178  38 00 00 00 */	li r0, 0
/* 80BC917C  98 1E 0A 90 */	stb r0, 0xa90(r30)
lbl_80BC9180:
/* 80BC9180  7F C3 F3 78 */	mr r3, r30
/* 80BC9184  4B FF FD 75 */	bl initBaseMtx__12daObjChest_cFv
/* 80BC9188  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BC918C  38 03 00 24 */	addi r0, r3, 0x24
/* 80BC9190  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80BC9194  38 7E 07 84 */	addi r3, r30, 0x784
/* 80BC9198  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80BC919C  FC 40 08 90 */	fmr f2, f1
/* 80BC91A0  4B 4A CD B8 */	b SetWall__12dBgS_AcchCirFff
/* 80BC91A4  38 00 00 00 */	li r0, 0
/* 80BC91A8  90 01 00 08 */	stw r0, 8(r1)
/* 80BC91AC  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80BC91B0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80BC91B4  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80BC91B8  7F C6 F3 78 */	mr r6, r30
/* 80BC91BC  38 E0 00 01 */	li r7, 1
/* 80BC91C0  39 1E 07 84 */	addi r8, r30, 0x784
/* 80BC91C4  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80BC91C8  39 40 00 00 */	li r10, 0
/* 80BC91CC  4B 4A D0 7C */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80BC91D0  38 7E 07 C4 */	addi r3, r30, 0x7c4
/* 80BC91D4  38 80 00 FF */	li r4, 0xff
/* 80BC91D8  38 A0 00 FF */	li r5, 0xff
/* 80BC91DC  7F C6 F3 78 */	mr r6, r30
/* 80BC91E0  4B 4B A6 80 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BC91E4  3B 40 00 00 */	li r26, 0
/* 80BC91E8  3B A0 00 00 */	li r29, 0
/* 80BC91EC  3B 9E 07 C4 */	addi r28, r30, 0x7c4
lbl_80BC91F0:
/* 80BC91F0  7F 7E EA 14 */	add r27, r30, r29
/* 80BC91F4  38 7B 08 00 */	addi r3, r27, 0x800
/* 80BC91F8  38 9F 00 00 */	addi r4, r31, 0
/* 80BC91FC  4B 4B B6 B8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BC9200  93 9B 08 44 */	stw r28, 0x844(r27)
/* 80BC9204  3B 5A 00 01 */	addi r26, r26, 1
/* 80BC9208  2C 1A 00 02 */	cmpwi r26, 2
/* 80BC920C  3B BD 01 3C */	addi r29, r29, 0x13c
/* 80BC9210  41 80 FF E0 */	blt lbl_80BC91F0
/* 80BC9214  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80BC9218  80 83 00 04 */	lwz r4, 4(r3)
/* 80BC921C  7F C3 F3 78 */	mr r3, r30
/* 80BC9220  4B 45 13 58 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80BC9224  38 60 00 01 */	li r3, 1
/* 80BC9228  39 61 00 40 */	addi r11, r1, 0x40
/* 80BC922C  4B 79 8F F0 */	b _restgpr_26
/* 80BC9230  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BC9234  7C 08 03 A6 */	mtlr r0
/* 80BC9238  38 21 00 40 */	addi r1, r1, 0x40
/* 80BC923C  4E 80 00 20 */	blr 
