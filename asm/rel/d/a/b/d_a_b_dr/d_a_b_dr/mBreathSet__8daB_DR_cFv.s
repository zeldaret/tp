lbl_805BF4C8:
/* 805BF4C8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 805BF4CC  7C 08 02 A6 */	mflr r0
/* 805BF4D0  90 01 00 84 */	stw r0, 0x84(r1)
/* 805BF4D4  39 61 00 80 */	addi r11, r1, 0x80
/* 805BF4D8  4B DA 2C F1 */	bl _savegpr_24
/* 805BF4DC  7C 7B 1B 78 */	mr r27, r3
/* 805BF4E0  3C 60 80 5C */	lis r3, lit_3800@ha /* 0x805C6C74@ha */
/* 805BF4E4  3B A3 6C 74 */	addi r29, r3, lit_3800@l /* 0x805C6C74@l */
/* 805BF4E8  38 7B 07 2C */	addi r3, r27, 0x72c
/* 805BF4EC  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805BF4F0  C0 5D 03 78 */	lfs f2, 0x378(r29)
/* 805BF4F4  C0 7D 03 70 */	lfs f3, 0x370(r29)
/* 805BF4F8  4B CB 05 45 */	bl cLib_addCalc2__FPffff
/* 805BF4FC  C0 1B 07 2C */	lfs f0, 0x72c(r27)
/* 805BF500  FC 00 00 1E */	fctiwz f0, f0
/* 805BF504  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 805BF508  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 805BF50C  3C 60 80 5C */	lis r3, data_805C7974@ha /* 0x805C7974@ha */
/* 805BF510  98 03 79 74 */	stb r0, data_805C7974@l(r3)  /* 0x805C7974@l */
/* 805BF514  80 1B 04 E4 */	lwz r0, 0x4e4(r27)
/* 805BF518  90 01 00 28 */	stw r0, 0x28(r1)
/* 805BF51C  A0 1B 04 E8 */	lhz r0, 0x4e8(r27)
/* 805BF520  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 805BF524  3B 80 00 00 */	li r28, 0
/* 805BF528  3B 40 00 00 */	li r26, 0
/* 805BF52C  3B 20 00 00 */	li r25, 0
/* 805BF530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BF534  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BF538  3C 60 80 5C */	lis r3, effId@ha /* 0x805C76A0@ha */
/* 805BF53C  3B E3 76 A0 */	addi r31, r3, effId@l /* 0x805C76A0@l */
lbl_805BF540:
/* 805BF540  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 805BF544  38 00 00 FF */	li r0, 0xff
/* 805BF548  90 01 00 08 */	stw r0, 8(r1)
/* 805BF54C  38 80 00 00 */	li r4, 0
/* 805BF550  90 81 00 0C */	stw r4, 0xc(r1)
/* 805BF554  38 00 FF FF */	li r0, -1
/* 805BF558  90 01 00 10 */	stw r0, 0x10(r1)
/* 805BF55C  90 81 00 14 */	stw r4, 0x14(r1)
/* 805BF560  90 81 00 18 */	stw r4, 0x18(r1)
/* 805BF564  90 81 00 1C */	stw r4, 0x1c(r1)
/* 805BF568  3B 19 27 DC */	addi r24, r25, 0x27dc
/* 805BF56C  7C 9B C0 2E */	lwzx r4, r27, r24
/* 805BF570  38 A0 00 00 */	li r5, 0
/* 805BF574  7C DF D2 2E */	lhzx r6, r31, r26
/* 805BF578  38 FB 07 60 */	addi r7, r27, 0x760
/* 805BF57C  39 00 00 00 */	li r8, 0
/* 805BF580  39 21 00 28 */	addi r9, r1, 0x28
/* 805BF584  39 40 00 00 */	li r10, 0
/* 805BF588  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 805BF58C  4B A8 DF 41 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805BF590  7C 7B C1 2E */	stwx r3, r27, r24
/* 805BF594  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 805BF598  38 63 02 10 */	addi r3, r3, 0x210
/* 805BF59C  7C 9B C0 2E */	lwzx r4, r27, r24
/* 805BF5A0  4B A8 C3 79 */	bl getEmitter__Q213dPa_control_c7level_cFUl
/* 805BF5A4  7C 78 1B 79 */	or. r24, r3, r3
/* 805BF5A8  41 82 00 F4 */	beq lbl_805BF69C
/* 805BF5AC  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 805BF5B0  80 63 00 04 */	lwz r3, 4(r3)
/* 805BF5B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805BF5B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805BF5BC  38 63 03 90 */	addi r3, r3, 0x390
/* 805BF5C0  38 98 00 68 */	addi r4, r24, 0x68
/* 805BF5C4  38 B8 00 98 */	addi r5, r24, 0x98
/* 805BF5C8  38 D8 00 A4 */	addi r6, r24, 0xa4
/* 805BF5CC  4B CC 12 3D */	bl func_80280808
/* 805BF5D0  C0 38 00 9C */	lfs f1, 0x9c(r24)
/* 805BF5D4  C0 18 00 98 */	lfs f0, 0x98(r24)
/* 805BF5D8  D0 18 00 B0 */	stfs f0, 0xb0(r24)
/* 805BF5DC  D0 38 00 B4 */	stfs f1, 0xb4(r24)
/* 805BF5E0  7F 63 DB 78 */	mr r3, r27
/* 805BF5E4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 805BF5E8  4B A5 B1 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805BF5EC  7C 64 1B 78 */	mr r4, r3
/* 805BF5F0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805BF5F4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805BF5F8  80 63 00 00 */	lwz r3, 0(r3)
/* 805BF5FC  4B A4 CD E1 */	bl mDoMtx_YrotS__FPA4_fs
/* 805BF600  C0 1D 00 30 */	lfs f0, 0x30(r29)
/* 805BF604  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 805BF608  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805BF60C  C0 1D 03 D8 */	lfs f0, 0x3d8(r29)
/* 805BF610  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805BF614  38 61 00 48 */	addi r3, r1, 0x48
/* 805BF618  38 81 00 3C */	addi r4, r1, 0x3c
/* 805BF61C  4B CB 18 D1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805BF620  38 61 00 3C */	addi r3, r1, 0x3c
/* 805BF624  38 9B 07 90 */	addi r4, r27, 0x790
/* 805BF628  7C 65 1B 78 */	mr r5, r3
/* 805BF62C  4B D8 7A 65 */	bl PSVECAdd
/* 805BF630  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 805BF634  D0 1B 07 84 */	stfs f0, 0x784(r27)
/* 805BF638  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805BF63C  D0 1B 07 88 */	stfs f0, 0x788(r27)
/* 805BF640  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805BF644  D0 1B 07 8C */	stfs f0, 0x78c(r27)
/* 805BF648  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047C@ha */
/* 805BF64C  38 03 04 7C */	addi r0, r3, 0x047C /* 0x0007047C@l */
/* 805BF650  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BF654  38 7B 05 C0 */	addi r3, r27, 0x5c0
/* 805BF658  38 81 00 24 */	addi r4, r1, 0x24
/* 805BF65C  38 A0 FF FF */	li r5, -1
/* 805BF660  81 9B 05 C0 */	lwz r12, 0x5c0(r27)
/* 805BF664  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 805BF668  7D 89 03 A6 */	mtctr r12
/* 805BF66C  4E 80 04 21 */	bctrl 
/* 805BF670  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007047C@ha */
/* 805BF674  38 03 04 7C */	addi r0, r3, 0x047C /* 0x0007047C@l */
/* 805BF678  90 01 00 20 */	stw r0, 0x20(r1)
/* 805BF67C  38 7B 06 64 */	addi r3, r27, 0x664
/* 805BF680  38 81 00 20 */	addi r4, r1, 0x20
/* 805BF684  38 A0 00 00 */	li r5, 0
/* 805BF688  38 C0 FF FF */	li r6, -1
/* 805BF68C  81 9B 06 64 */	lwz r12, 0x664(r27)
/* 805BF690  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805BF694  7D 89 03 A6 */	mtctr r12
/* 805BF698  4E 80 04 21 */	bctrl 
lbl_805BF69C:
/* 805BF69C  3B 9C 00 01 */	addi r28, r28, 1
/* 805BF6A0  2C 1C 00 04 */	cmpwi r28, 4
/* 805BF6A4  3B 5A 00 02 */	addi r26, r26, 2
/* 805BF6A8  3B 39 00 04 */	addi r25, r25, 4
/* 805BF6AC  41 80 FE 94 */	blt lbl_805BF540
/* 805BF6B0  38 7B 07 C4 */	addi r3, r27, 0x7c4
/* 805BF6B4  48 00 75 29 */	bl func_805C6BDC
/* 805BF6B8  2C 03 00 00 */	cmpwi r3, 0
/* 805BF6BC  40 82 00 94 */	bne lbl_805BF750
/* 805BF6C0  80 1B 07 08 */	lwz r0, 0x708(r27)
/* 805BF6C4  2C 00 00 06 */	cmpwi r0, 6
/* 805BF6C8  40 82 00 38 */	bne lbl_805BF700
/* 805BF6CC  38 61 00 30 */	addi r3, r1, 0x30
/* 805BF6D0  38 9B 07 78 */	addi r4, r27, 0x778
/* 805BF6D4  38 BB 07 60 */	addi r5, r27, 0x760
/* 805BF6D8  4B CA 74 5D */	bl __mi__4cXyzCFRC3Vec
/* 805BF6DC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805BF6E0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 805BF6E4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805BF6E8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805BF6EC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805BF6F0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805BF6F4  38 61 00 3C */	addi r3, r1, 0x3c
/* 805BF6F8  4B CA 7A 31 */	bl atan2sX_Z__4cXyzCFv
/* 805BF6FC  B0 61 00 2A */	sth r3, 0x2a(r1)
lbl_805BF700:
/* 805BF700  38 00 FC 18 */	li r0, -1000
/* 805BF704  B0 01 00 28 */	sth r0, 0x28(r1)
/* 805BF708  38 00 00 03 */	li r0, 3
/* 805BF70C  90 1B 07 C4 */	stw r0, 0x7c4(r27)
/* 805BF710  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 805BF714  7C 07 07 74 */	extsb r7, r0
/* 805BF718  38 00 00 00 */	li r0, 0
/* 805BF71C  90 01 00 08 */	stw r0, 8(r1)
/* 805BF720  38 60 00 F7 */	li r3, 0xf7
/* 805BF724  28 1B 00 00 */	cmplwi r27, 0
/* 805BF728  41 82 00 0C */	beq lbl_805BF734
/* 805BF72C  80 9B 00 04 */	lwz r4, 4(r27)
/* 805BF730  48 00 00 08 */	b lbl_805BF738
lbl_805BF734:
/* 805BF734  38 80 FF FF */	li r4, -1
lbl_805BF738:
/* 805BF738  38 A0 00 0A */	li r5, 0xa
/* 805BF73C  38 DB 07 60 */	addi r6, r27, 0x760
/* 805BF740  39 01 00 28 */	addi r8, r1, 0x28
/* 805BF744  39 20 00 00 */	li r9, 0
/* 805BF748  39 40 FF FF */	li r10, -1
/* 805BF74C  4B A5 A7 A5 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
lbl_805BF750:
/* 805BF750  39 61 00 80 */	addi r11, r1, 0x80
/* 805BF754  4B DA 2A C1 */	bl _restgpr_24
/* 805BF758  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805BF75C  7C 08 03 A6 */	mtlr r0
/* 805BF760  38 21 00 80 */	addi r1, r1, 0x80
/* 805BF764  4E 80 00 20 */	blr 
