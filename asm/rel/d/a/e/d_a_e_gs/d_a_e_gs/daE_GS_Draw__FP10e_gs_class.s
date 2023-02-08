lbl_806DF560:
/* 806DF560  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806DF564  7C 08 02 A6 */	mflr r0
/* 806DF568  90 01 00 34 */	stw r0, 0x34(r1)
/* 806DF56C  39 61 00 30 */	addi r11, r1, 0x30
/* 806DF570  4B C8 2C 69 */	bl _savegpr_28
/* 806DF574  7C 7F 1B 78 */	mr r31, r3
/* 806DF578  80 63 05 C8 */	lwz r3, 0x5c8(r3)
/* 806DF57C  83 C3 00 04 */	lwz r30, 4(r3)
/* 806DF580  C0 3F 05 D8 */	lfs f1, 0x5d8(r31)
/* 806DF584  3C 60 80 6E */	lis r3, lit_3687@ha /* 0x806DFE0C@ha */
/* 806DF588  C0 03 FE 0C */	lfs f0, lit_3687@l(r3)  /* 0x806DFE0C@l */
/* 806DF58C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806DF590  40 80 00 0C */	bge lbl_806DF59C
/* 806DF594  38 60 00 01 */	li r3, 1
/* 806DF598  48 00 00 B0 */	b lbl_806DF648
lbl_806DF59C:
/* 806DF59C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806DF5A0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806DF5A4  38 80 00 07 */	li r4, 7
/* 806DF5A8  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 806DF5AC  38 DF 01 0C */	addi r6, r31, 0x10c
/* 806DF5B0  4B AC 42 15 */	bl settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 806DF5B4  C0 1F 05 D8 */	lfs f0, 0x5d8(r31)
/* 806DF5B8  FC 00 00 1E */	fctiwz f0, f0
/* 806DF5BC  D8 01 00 08 */	stfd f0, 8(r1)
/* 806DF5C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 806DF5C4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 806DF5C8  B0 1F 04 6A */	sth r0, 0x46a(r31)
/* 806DF5CC  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 806DF5D0  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 806DF5D4  80 9E 00 04 */	lwz r4, 4(r30)
/* 806DF5D8  38 BF 01 0C */	addi r5, r31, 0x10c
/* 806DF5DC  4B AC 57 C5 */	bl setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 806DF5E0  83 DE 00 04 */	lwz r30, 4(r30)
/* 806DF5E4  C0 1F 05 D8 */	lfs f0, 0x5d8(r31)
/* 806DF5E8  FC 00 00 1E */	fctiwz f0, f0
/* 806DF5EC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806DF5F0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 806DF5F4  3B 80 00 00 */	li r28, 0
/* 806DF5F8  48 00 00 30 */	b lbl_806DF628
lbl_806DF5FC:
/* 806DF5FC  80 7E 00 60 */	lwz r3, 0x60(r30)
/* 806DF600  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 806DF604  7C 63 00 2E */	lwzx r3, r3, r0
/* 806DF608  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 806DF60C  38 80 00 03 */	li r4, 3
/* 806DF610  81 83 00 00 */	lwz r12, 0(r3)
/* 806DF614  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 806DF618  7D 89 03 A6 */	mtctr r12
/* 806DF61C  4E 80 04 21 */	bctrl 
/* 806DF620  9B A3 00 03 */	stb r29, 3(r3)
/* 806DF624  3B 9C 00 01 */	addi r28, r28, 1
lbl_806DF628:
/* 806DF628  57 83 04 3E */	clrlwi r3, r28, 0x10
/* 806DF62C  A0 1E 00 5C */	lhz r0, 0x5c(r30)
/* 806DF630  7C 03 00 40 */	cmplw r3, r0
/* 806DF634  41 80 FF C8 */	blt lbl_806DF5FC
/* 806DF638  38 7F 05 D0 */	addi r3, r31, 0x5d0
/* 806DF63C  38 80 00 00 */	li r4, 0
/* 806DF640  4B 92 F1 81 */	bl entryDL__21mDoExt_invisibleModelFP4cXyz
/* 806DF644  38 60 00 01 */	li r3, 1
lbl_806DF648:
/* 806DF648  39 61 00 30 */	addi r11, r1, 0x30
/* 806DF64C  4B C8 2B D9 */	bl _restgpr_28
/* 806DF650  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806DF654  7C 08 03 A6 */	mtlr r0
/* 806DF658  38 21 00 30 */	addi r1, r1, 0x30
/* 806DF65C  4E 80 00 20 */	blr 
