lbl_80A562EC:
/* 80A562EC  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80A562F0  7C 08 02 A6 */	mflr r0
/* 80A562F4  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A562F8  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80A562FC  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80A56300  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80A56304  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80A56308  39 61 00 60 */	addi r11, r1, 0x60
/* 80A5630C  4B 90 BE B5 */	bl _savegpr_22
/* 80A56310  7C 77 1B 78 */	mr r23, r3
/* 80A56314  3C 60 80 A6 */	lis r3, lit_1109@ha /* 0x80A5FE48@ha */
/* 80A56318  3B A3 FE 48 */	addi r29, r3, lit_1109@l /* 0x80A5FE48@l */
/* 80A5631C  3C 60 80 A6 */	lis r3, lit_4030@ha /* 0x80A5DEFC@ha */
/* 80A56320  3B C3 DE FC */	addi r30, r3, lit_4030@l /* 0x80A5DEFC@l */
/* 80A56324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A56328  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A5632C  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 80A56330  3B 60 00 01 */	li r27, 1
/* 80A56334  88 17 05 B6 */	lbz r0, 0x5b6(r23)
/* 80A56338  28 00 00 00 */	cmplwi r0, 0
/* 80A5633C  40 82 00 0C */	bne lbl_80A56348
/* 80A56340  C3 DE 00 38 */	lfs f30, 0x38(r30)
/* 80A56344  48 00 00 08 */	b lbl_80A5634C
lbl_80A56348:
/* 80A56348  C3 DE 03 FC */	lfs f30, 0x3fc(r30)
lbl_80A5634C:
/* 80A5634C  A8 17 05 EA */	lha r0, 0x5ea(r23)
/* 80A56350  2C 00 00 05 */	cmpwi r0, 5
/* 80A56354  41 82 01 8C */	beq lbl_80A564E0
/* 80A56358  40 80 00 1C */	bge lbl_80A56374
/* 80A5635C  2C 00 00 01 */	cmpwi r0, 1
/* 80A56360  41 82 00 68 */	beq lbl_80A563C8
/* 80A56364  40 80 06 24 */	bge lbl_80A56988
/* 80A56368  2C 00 00 00 */	cmpwi r0, 0
/* 80A5636C  40 80 00 14 */	bge lbl_80A56380
/* 80A56370  48 00 06 18 */	b lbl_80A56988
lbl_80A56374:
/* 80A56374  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A56378  41 82 01 F8 */	beq lbl_80A56570
/* 80A5637C  48 00 06 0C */	b lbl_80A56988
lbl_80A56380:
/* 80A56380  7E E3 BB 78 */	mr r3, r23
/* 80A56384  38 80 00 1A */	li r4, 0x1a
/* 80A56388  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A5638C  38 A0 00 02 */	li r5, 2
/* 80A56390  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A56394  4B FF 2E 11 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A56398  38 00 00 01 */	li r0, 1
/* 80A5639C  B0 17 05 EA */	sth r0, 0x5ea(r23)
/* 80A563A0  88 17 05 B6 */	lbz r0, 0x5b6(r23)
/* 80A563A4  28 00 00 00 */	cmplwi r0, 0
/* 80A563A8  40 82 00 10 */	bne lbl_80A563B8
/* 80A563AC  38 00 00 00 */	li r0, 0
/* 80A563B0  90 17 09 04 */	stw r0, 0x904(r23)
/* 80A563B4  48 00 00 0C */	b lbl_80A563C0
lbl_80A563B8:
/* 80A563B8  38 00 00 0B */	li r0, 0xb
/* 80A563BC  90 17 09 04 */	stw r0, 0x904(r23)
lbl_80A563C0:
/* 80A563C0  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A563C4  D0 17 05 2C */	stfs f0, 0x52c(r23)
lbl_80A563C8:
/* 80A563C8  A8 17 05 F4 */	lha r0, 0x5f4(r23)
/* 80A563CC  2C 00 00 00 */	cmpwi r0, 0
/* 80A563D0  40 82 00 A4 */	bne lbl_80A56474
/* 80A563D4  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80A563D8  C0 17 04 D4 */	lfs f0, 0x4d4(r23)
/* 80A563DC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A563E0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80A563E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A563E8  40 80 00 10 */	bge lbl_80A563F8
/* 80A563EC  C0 17 05 C4 */	lfs f0, 0x5c4(r23)
/* 80A563F0  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 80A563F4  41 81 00 20 */	bgt lbl_80A56414
lbl_80A563F8:
/* 80A563F8  80 17 09 04 */	lwz r0, 0x904(r23)
/* 80A563FC  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A56400  3C 60 80 A6 */	lis r3, guide_path_02@ha /* 0x80A5F140@ha */
/* 80A56404  38 63 F1 40 */	addi r3, r3, guide_path_02@l /* 0x80A5F140@l */
/* 80A56408  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A5640C  2C 00 00 00 */	cmpwi r0, 0
/* 80A56410  40 80 00 64 */	bge lbl_80A56474
lbl_80A56414:
/* 80A56414  80 1D 00 5C */	lwz r0, 0x5c(r29)
/* 80A56418  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A5641C  41 82 00 20 */	beq lbl_80A5643C
/* 80A56420  7E E3 BB 78 */	mr r3, r23
/* 80A56424  38 80 00 08 */	li r4, 8
/* 80A56428  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A5642C  38 A0 00 02 */	li r5, 2
/* 80A56430  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A56434  4B FF 2D 71 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A56438  48 00 00 1C */	b lbl_80A56454
lbl_80A5643C:
/* 80A5643C  7E E3 BB 78 */	mr r3, r23
/* 80A56440  38 80 00 07 */	li r4, 7
/* 80A56444  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80A56448  38 A0 00 02 */	li r5, 2
/* 80A5644C  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A56450  4B FF 2D 55 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A56454:
/* 80A56454  80 7D 00 5C */	lwz r3, 0x5c(r29)
/* 80A56458  38 03 00 01 */	addi r0, r3, 1
/* 80A5645C  90 1D 00 5C */	stw r0, 0x5c(r29)
/* 80A56460  38 00 00 0A */	li r0, 0xa
/* 80A56464  B0 17 05 EA */	sth r0, 0x5ea(r23)
/* 80A56468  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A5646C  D0 17 05 2C */	stfs f0, 0x52c(r23)
/* 80A56470  48 00 05 18 */	b lbl_80A56988
lbl_80A56474:
/* 80A56474  3C 60 80 A6 */	lis r3, guide_path_02@ha /* 0x80A5F140@ha */
/* 80A56478  38 83 F1 40 */	addi r4, r3, guide_path_02@l /* 0x80A5F140@l */
/* 80A5647C  80 17 09 04 */	lwz r0, 0x904(r23)
/* 80A56480  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A56484  7C 64 02 14 */	add r3, r4, r0
/* 80A56488  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A5648C  D0 17 08 F0 */	stfs f0, 0x8f0(r23)
/* 80A56490  80 17 09 04 */	lwz r0, 0x904(r23)
/* 80A56494  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A56498  7C 64 02 14 */	add r3, r4, r0
/* 80A5649C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A564A0  D0 17 08 F8 */	stfs f0, 0x8f8(r23)
/* 80A564A4  38 00 00 05 */	li r0, 5
/* 80A564A8  B0 17 05 EA */	sth r0, 0x5ea(r23)
/* 80A564AC  38 7D 00 70 */	addi r3, r29, 0x70
/* 80A564B0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A564B4  D0 17 05 2C */	stfs f0, 0x52c(r23)
/* 80A564B8  80 17 05 D0 */	lwz r0, 0x5d0(r23)
/* 80A564BC  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A564C0  41 82 04 C8 */	beq lbl_80A56988
/* 80A564C4  7E E3 BB 78 */	mr r3, r23
/* 80A564C8  38 80 00 1A */	li r4, 0x1a
/* 80A564CC  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A564D0  38 A0 00 02 */	li r5, 2
/* 80A564D4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 80A564D8  4B FF 2C CD */	bl anm_init__FP12npc_ks_classifUcf
/* 80A564DC  48 00 04 AC */	b lbl_80A56988
lbl_80A564E0:
/* 80A564E0  80 17 06 AC */	lwz r0, 0x6ac(r23)
/* 80A564E4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80A564E8  41 82 00 0C */	beq lbl_80A564F4
/* 80A564EC  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80A564F0  D0 17 04 FC */	stfs f0, 0x4fc(r23)
lbl_80A564F4:
/* 80A564F4  C0 37 08 F0 */	lfs f1, 0x8f0(r23)
/* 80A564F8  C0 17 04 D0 */	lfs f0, 0x4d0(r23)
/* 80A564FC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A56500  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80A56504  C0 57 08 F8 */	lfs f2, 0x8f8(r23)
/* 80A56508  C0 17 04 D8 */	lfs f0, 0x4d8(r23)
/* 80A5650C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A56510  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80A56514  4B 81 11 61 */	bl cM_atan2s__Fff
/* 80A56518  B0 77 08 FE */	sth r3, 0x8fe(r23)
/* 80A5651C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A56520  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A56524  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80A56528  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A5652C  EC 41 00 2A */	fadds f2, f1, f0
/* 80A56530  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A56534  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A56538  40 81 00 0C */	ble lbl_80A56544
/* 80A5653C  FC 00 10 34 */	frsqrte f0, f2
/* 80A56540  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A56544:
/* 80A56544  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80A56548  C0 17 05 2C */	lfs f0, 0x52c(r23)
/* 80A5654C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A56550  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A56554  40 80 04 34 */	bge lbl_80A56988
/* 80A56558  80 77 09 04 */	lwz r3, 0x904(r23)
/* 80A5655C  38 03 00 01 */	addi r0, r3, 1
/* 80A56560  90 17 09 04 */	stw r0, 0x904(r23)
/* 80A56564  38 00 00 01 */	li r0, 1
/* 80A56568  B0 17 05 EA */	sth r0, 0x5ea(r23)
/* 80A5656C  48 00 04 1C */	b lbl_80A56988
lbl_80A56570:
/* 80A56570  80 17 05 D0 */	lwz r0, 0x5d0(r23)
/* 80A56574  2C 00 00 07 */	cmpwi r0, 7
/* 80A56578  40 82 00 10 */	bne lbl_80A56588
/* 80A5657C  A8 17 05 C8 */	lha r0, 0x5c8(r23)
/* 80A56580  B0 17 08 FE */	sth r0, 0x8fe(r23)
/* 80A56584  48 00 00 14 */	b lbl_80A56598
lbl_80A56588:
/* 80A56588  A8 77 05 C8 */	lha r3, 0x5c8(r23)
/* 80A5658C  3C 63 00 01 */	addis r3, r3, 1
/* 80A56590  38 03 80 00 */	addi r0, r3, -32768
/* 80A56594  B0 17 08 FE */	sth r0, 0x8fe(r23)
lbl_80A56598:
/* 80A56598  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80A5659C  C0 17 04 D4 */	lfs f0, 0x4d4(r23)
/* 80A565A0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A565A4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80A565A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A565AC  41 81 00 18 */	bgt lbl_80A565C4
/* 80A565B0  C0 37 05 C4 */	lfs f1, 0x5c4(r23)
/* 80A565B4  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80A565B8  EC 1E 00 28 */	fsubs f0, f30, f0
/* 80A565BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A565C0  40 80 00 28 */	bge lbl_80A565E8
lbl_80A565C4:
/* 80A565C4  80 17 09 04 */	lwz r0, 0x904(r23)
/* 80A565C8  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A565CC  3C 60 80 A6 */	lis r3, guide_path_02@ha /* 0x80A5F140@ha */
/* 80A565D0  38 63 F1 40 */	addi r3, r3, guide_path_02@l /* 0x80A5F140@l */
/* 80A565D4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A565D8  2C 00 00 00 */	cmpwi r0, 0
/* 80A565DC  41 80 00 0C */	blt lbl_80A565E8
/* 80A565E0  38 00 00 01 */	li r0, 1
/* 80A565E4  B0 17 05 EA */	sth r0, 0x5ea(r23)
lbl_80A565E8:
/* 80A565E8  80 17 09 04 */	lwz r0, 0x904(r23)
/* 80A565EC  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A565F0  3C 60 80 A6 */	lis r3, guide_path_02@ha /* 0x80A5F140@ha */
/* 80A565F4  38 63 F1 40 */	addi r3, r3, guide_path_02@l /* 0x80A5F140@l */
/* 80A565F8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A565FC  2C 00 00 00 */	cmpwi r0, 0
/* 80A56600  40 80 03 88 */	bge lbl_80A56988
/* 80A56604  88 17 05 B6 */	lbz r0, 0x5b6(r23)
/* 80A56608  28 00 00 00 */	cmplwi r0, 0
/* 80A5660C  40 82 03 7C */	bne lbl_80A56988
/* 80A56610  7E E3 BB 78 */	mr r3, r23
/* 80A56614  4B FF C1 F9 */	bl saru_count_check__FP12npc_ks_class
/* 80A56618  2C 03 00 00 */	cmpwi r3, 0
/* 80A5661C  41 82 03 6C */	beq lbl_80A56988
/* 80A56620  83 5F 5D AC */	lwz r26, 0x5dac(r31)
/* 80A56624  3B 20 00 00 */	li r25, 0
/* 80A56628  3B 00 00 00 */	li r24, 0
/* 80A5662C  3A C0 00 00 */	li r22, 0
/* 80A56630  3C 60 80 A6 */	lis r3, saru_p@ha /* 0x80A5E478@ha */
/* 80A56634  3B E3 E4 78 */	addi r31, r3, saru_p@l /* 0x80A5E478@l */
/* 80A56638  C3 FE 00 30 */	lfs f31, 0x30(r30)
/* 80A5663C  C3 DE 00 70 */	lfs f30, 0x70(r30)
/* 80A56640  48 00 01 2C */	b lbl_80A5676C
lbl_80A56644:
/* 80A56644  38 61 00 1C */	addi r3, r1, 0x1c
/* 80A56648  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80A5664C  7C BF B0 2E */	lwzx r5, r31, r22
/* 80A56650  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80A56654  4B 81 04 E1 */	bl __mi__4cXyzCFRC3Vec
/* 80A56658  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A5665C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A56660  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A56664  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A56668  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80A5666C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A56670  38 61 00 28 */	addi r3, r1, 0x28
/* 80A56674  4B 8F 0A C5 */	bl PSVECSquareMag
/* 80A56678  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A5667C  40 81 00 58 */	ble lbl_80A566D4
/* 80A56680  FC 00 08 34 */	frsqrte f0, f1
/* 80A56684  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80A56688  FC 44 00 32 */	fmul f2, f4, f0
/* 80A5668C  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80A56690  FC 00 00 32 */	fmul f0, f0, f0
/* 80A56694  FC 01 00 32 */	fmul f0, f1, f0
/* 80A56698  FC 03 00 28 */	fsub f0, f3, f0
/* 80A5669C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A566A0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A566A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A566A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A566AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A566B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80A566B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80A566B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80A566BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80A566C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80A566C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80A566C8  FC 21 00 32 */	fmul f1, f1, f0
/* 80A566CC  FC 20 08 18 */	frsp f1, f1
/* 80A566D0  48 00 00 88 */	b lbl_80A56758
lbl_80A566D4:
/* 80A566D4  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80A566D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A566DC  40 80 00 10 */	bge lbl_80A566EC
/* 80A566E0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A566E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A566E8  48 00 00 70 */	b lbl_80A56758
lbl_80A566EC:
/* 80A566EC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A566F0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A566F4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A566F8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A566FC  7C 03 00 00 */	cmpw r3, r0
/* 80A56700  41 82 00 14 */	beq lbl_80A56714
/* 80A56704  40 80 00 40 */	bge lbl_80A56744
/* 80A56708  2C 03 00 00 */	cmpwi r3, 0
/* 80A5670C  41 82 00 20 */	beq lbl_80A5672C
/* 80A56710  48 00 00 34 */	b lbl_80A56744
lbl_80A56714:
/* 80A56714  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A56718  41 82 00 0C */	beq lbl_80A56724
/* 80A5671C  38 00 00 01 */	li r0, 1
/* 80A56720  48 00 00 28 */	b lbl_80A56748
lbl_80A56724:
/* 80A56724  38 00 00 02 */	li r0, 2
/* 80A56728  48 00 00 20 */	b lbl_80A56748
lbl_80A5672C:
/* 80A5672C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A56730  41 82 00 0C */	beq lbl_80A5673C
/* 80A56734  38 00 00 05 */	li r0, 5
/* 80A56738  48 00 00 10 */	b lbl_80A56748
lbl_80A5673C:
/* 80A5673C  38 00 00 03 */	li r0, 3
/* 80A56740  48 00 00 08 */	b lbl_80A56748
lbl_80A56744:
/* 80A56744  38 00 00 04 */	li r0, 4
lbl_80A56748:
/* 80A56748  2C 00 00 01 */	cmpwi r0, 1
/* 80A5674C  40 82 00 0C */	bne lbl_80A56758
/* 80A56750  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A56754  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A56758:
/* 80A56758  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80A5675C  40 81 00 08 */	ble lbl_80A56764
/* 80A56760  3B 20 00 01 */	li r25, 1
lbl_80A56764:
/* 80A56764  3B 18 00 01 */	addi r24, r24, 1
/* 80A56768  3A D6 00 04 */	addi r22, r22, 4
lbl_80A5676C:
/* 80A5676C  80 77 09 34 */	lwz r3, 0x934(r23)
/* 80A56770  80 03 09 1C */	lwz r0, 0x91c(r3)
/* 80A56774  7C 18 00 00 */	cmpw r24, r0
/* 80A56778  41 80 FE CC */	blt lbl_80A56644
/* 80A5677C  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80A56780  C0 03 09 04 */	lfs f0, 0x904(r3)
/* 80A56784  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A56788  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A5678C  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80A56790  C0 23 09 08 */	lfs f1, 0x908(r3)
/* 80A56794  C0 1E 03 F0 */	lfs f0, 0x3f0(r30)
/* 80A56798  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A5679C  EC 02 00 28 */	fsubs f0, f2, f0
/* 80A567A0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A567A4  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 80A567A8  C0 03 09 0C */	lfs f0, 0x90c(r3)
/* 80A567AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A567B0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80A567B4  2C 19 00 00 */	cmpwi r25, 0
/* 80A567B8  40 82 01 D0 */	bne lbl_80A56988
/* 80A567BC  38 61 00 28 */	addi r3, r1, 0x28
/* 80A567C0  4B 8F 09 79 */	bl PSVECSquareMag
/* 80A567C4  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80A567C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A567CC  40 81 00 58 */	ble lbl_80A56824
/* 80A567D0  FC 00 08 34 */	frsqrte f0, f1
/* 80A567D4  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80A567D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80A567DC  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80A567E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80A567E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80A567E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80A567EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80A567F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80A567F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80A567F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80A567FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80A56800  FC 02 00 32 */	fmul f0, f2, f0
/* 80A56804  FC 44 00 32 */	fmul f2, f4, f0
/* 80A56808  FC 00 00 32 */	fmul f0, f0, f0
/* 80A5680C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A56810  FC 03 00 28 */	fsub f0, f3, f0
/* 80A56814  FC 02 00 32 */	fmul f0, f2, f0
/* 80A56818  FC 21 00 32 */	fmul f1, f1, f0
/* 80A5681C  FC 20 08 18 */	frsp f1, f1
/* 80A56820  48 00 00 88 */	b lbl_80A568A8
lbl_80A56824:
/* 80A56824  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80A56828  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5682C  40 80 00 10 */	bge lbl_80A5683C
/* 80A56830  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A56834  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80A56838  48 00 00 70 */	b lbl_80A568A8
lbl_80A5683C:
/* 80A5683C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A56840  80 81 00 08 */	lwz r4, 8(r1)
/* 80A56844  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A56848  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A5684C  7C 03 00 00 */	cmpw r3, r0
/* 80A56850  41 82 00 14 */	beq lbl_80A56864
/* 80A56854  40 80 00 40 */	bge lbl_80A56894
/* 80A56858  2C 03 00 00 */	cmpwi r3, 0
/* 80A5685C  41 82 00 20 */	beq lbl_80A5687C
/* 80A56860  48 00 00 34 */	b lbl_80A56894
lbl_80A56864:
/* 80A56864  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A56868  41 82 00 0C */	beq lbl_80A56874
/* 80A5686C  38 00 00 01 */	li r0, 1
/* 80A56870  48 00 00 28 */	b lbl_80A56898
lbl_80A56874:
/* 80A56874  38 00 00 02 */	li r0, 2
/* 80A56878  48 00 00 20 */	b lbl_80A56898
lbl_80A5687C:
/* 80A5687C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A56880  41 82 00 0C */	beq lbl_80A5688C
/* 80A56884  38 00 00 05 */	li r0, 5
/* 80A56888  48 00 00 10 */	b lbl_80A56898
lbl_80A5688C:
/* 80A5688C  38 00 00 03 */	li r0, 3
/* 80A56890  48 00 00 08 */	b lbl_80A56898
lbl_80A56894:
/* 80A56894  38 00 00 04 */	li r0, 4
lbl_80A56898:
/* 80A56898  2C 00 00 01 */	cmpwi r0, 1
/* 80A5689C  40 82 00 0C */	bne lbl_80A568A8
/* 80A568A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80A568A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80A568A8:
/* 80A568A8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80A568AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A568B0  40 80 00 D8 */	bge lbl_80A56988
/* 80A568B4  38 00 00 01 */	li r0, 1
/* 80A568B8  98 17 0B D9 */	stb r0, 0xbd9(r23)
/* 80A568BC  80 77 09 34 */	lwz r3, 0x934(r23)
/* 80A568C0  C0 03 09 04 */	lfs f0, 0x904(r3)
/* 80A568C4  D0 17 0B C8 */	stfs f0, 0xbc8(r23)
/* 80A568C8  C0 03 09 08 */	lfs f0, 0x908(r3)
/* 80A568CC  D0 17 0B CC */	stfs f0, 0xbcc(r23)
/* 80A568D0  C0 03 09 0C */	lfs f0, 0x90c(r3)
/* 80A568D4  D0 17 0B D0 */	stfs f0, 0xbd0(r23)
/* 80A568D8  38 00 00 14 */	li r0, 0x14
/* 80A568DC  B0 17 05 E8 */	sth r0, 0x5e8(r23)
/* 80A568E0  38 80 00 00 */	li r4, 0
/* 80A568E4  B0 97 05 EA */	sth r4, 0x5ea(r23)
/* 80A568E8  98 97 0A EC */	stb r4, 0xaec(r23)
/* 80A568EC  38 00 00 0A */	li r0, 0xa
/* 80A568F0  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 80A568F4  B0 03 0B 42 */	sth r0, 0xb42(r3)
/* 80A568F8  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 80A568FC  98 83 0B 40 */	stb r4, 0xb40(r3)
/* 80A56900  80 7D 00 58 */	lwz r3, 0x58(r29)
/* 80A56904  C0 17 0B C8 */	lfs f0, 0xbc8(r23)
/* 80A56908  D0 03 0B C8 */	stfs f0, 0xbc8(r3)
/* 80A5690C  C0 17 0B CC */	lfs f0, 0xbcc(r23)
/* 80A56910  D0 03 0B CC */	stfs f0, 0xbcc(r3)
/* 80A56914  C0 17 0B D0 */	lfs f0, 0xbd0(r23)
/* 80A56918  D0 03 0B D0 */	stfs f0, 0xbd0(r3)
/* 80A5691C  38 61 00 10 */	addi r3, r1, 0x10
/* 80A56920  80 97 09 34 */	lwz r4, 0x934(r23)
/* 80A56924  38 84 09 10 */	addi r4, r4, 0x910
/* 80A56928  38 B7 0B C8 */	addi r5, r23, 0xbc8
/* 80A5692C  4B 81 02 09 */	bl __mi__4cXyzCFRC3Vec
/* 80A56930  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 80A56934  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80A56938  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A5693C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80A56940  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A56944  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80A56948  4B 81 0D 2D */	bl cM_atan2s__Fff
/* 80A5694C  80 9D 00 58 */	lwz r4, 0x58(r29)
/* 80A56950  B0 64 0B D4 */	sth r3, 0xbd4(r4)
/* 80A56954  3C 60 80 A6 */	lis r3, saru_p@ha /* 0x80A5E478@ha */
/* 80A56958  3A C3 E4 78 */	addi r22, r3, saru_p@l /* 0x80A5E478@l */
/* 80A5695C  80 76 00 04 */	lwz r3, 4(r22)
/* 80A56960  4B FF BE AD */	bl saru_count_check__FP12npc_ks_class
/* 80A56964  38 00 00 16 */	li r0, 0x16
/* 80A56968  80 76 00 04 */	lwz r3, 4(r22)
/* 80A5696C  B0 03 05 E8 */	sth r0, 0x5e8(r3)
/* 80A56970  38 00 00 00 */	li r0, 0
/* 80A56974  80 76 00 04 */	lwz r3, 4(r22)
/* 80A56978  B0 03 05 EA */	sth r0, 0x5ea(r3)
/* 80A5697C  80 1D 00 58 */	lwz r0, 0x58(r29)
/* 80A56980  80 76 00 04 */	lwz r3, 4(r22)
/* 80A56984  90 03 09 30 */	stw r0, 0x930(r3)
lbl_80A56988:
/* 80A56988  38 77 04 DE */	addi r3, r23, 0x4de
/* 80A5698C  A8 97 08 FE */	lha r4, 0x8fe(r23)
/* 80A56990  38 A0 00 01 */	li r5, 1
/* 80A56994  38 C0 10 00 */	li r6, 0x1000
/* 80A56998  4B 81 9C 71 */	bl cLib_addCalcAngleS2__FPssss
/* 80A5699C  A8 77 08 FE */	lha r3, 0x8fe(r23)
/* 80A569A0  A8 17 04 DE */	lha r0, 0x4de(r23)
/* 80A569A4  7C 03 00 50 */	subf r0, r3, r0
/* 80A569A8  7C 00 07 34 */	extsh r0, r0
/* 80A569AC  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80A569B0  41 81 00 0C */	bgt lbl_80A569BC
/* 80A569B4  2C 00 F0 00 */	cmpwi r0, -4096
/* 80A569B8  40 80 00 08 */	bge lbl_80A569C0
lbl_80A569BC:
/* 80A569BC  3B 60 00 00 */	li r27, 0
lbl_80A569C0:
/* 80A569C0  38 77 04 DC */	addi r3, r23, 0x4dc
/* 80A569C4  38 80 00 00 */	li r4, 0
/* 80A569C8  38 A0 00 01 */	li r5, 1
/* 80A569CC  38 C0 08 00 */	li r6, 0x800
/* 80A569D0  4B 81 9C 39 */	bl cLib_addCalcAngleS2__FPssss
/* 80A569D4  4B FF 26 81 */	bl checkDoorDemo__Fv
/* 80A569D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A569DC  41 82 00 14 */	beq lbl_80A569F0
/* 80A569E0  38 00 00 64 */	li r0, 0x64
/* 80A569E4  B0 17 05 E8 */	sth r0, 0x5e8(r23)
/* 80A569E8  38 00 00 00 */	li r0, 0
/* 80A569EC  B0 17 05 EA */	sth r0, 0x5ea(r23)
lbl_80A569F0:
/* 80A569F0  7F 63 DB 78 */	mr r3, r27
/* 80A569F4  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80A569F8  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80A569FC  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80A56A00  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80A56A04  39 61 00 60 */	addi r11, r1, 0x60
/* 80A56A08  4B 90 B8 05 */	bl _restgpr_22
/* 80A56A0C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80A56A10  7C 08 03 A6 */	mtlr r0
/* 80A56A14  38 21 00 80 */	addi r1, r1, 0x80
/* 80A56A18  4E 80 00 20 */	blr 
