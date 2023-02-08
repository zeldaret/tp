lbl_80B5A128:
/* 80B5A128  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B5A12C  7C 08 02 A6 */	mflr r0
/* 80B5A130  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B5A134  39 61 00 20 */	addi r11, r1, 0x20
/* 80B5A138  4B 80 80 A1 */	bl _savegpr_28
/* 80B5A13C  7C 7C 1B 78 */	mr r28, r3
/* 80B5A140  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha /* 0x80B5D794@ha */
/* 80B5A144  3B E3 D7 94 */	addi r31, r3, m__17daNpc_ykM_Param_c@l /* 0x80B5D794@l */
/* 80B5A148  83 BC 15 4C */	lwz r29, 0x154c(r28)
/* 80B5A14C  7F BD 0E 70 */	srawi r29, r29, 1
/* 80B5A150  4B 70 D7 1D */	bl cM_rnd__Fv
/* 80B5A154  C0 1F 02 84 */	lfs f0, 0x284(r31)
/* 80B5A158  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B5A15C  40 80 00 28 */	bge lbl_80B5A184
/* 80B5A160  4B 70 D7 0D */	bl cM_rnd__Fv
/* 80B5A164  C0 1F 02 84 */	lfs f0, 0x284(r31)
/* 80B5A168  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B5A16C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5A170  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B5A174  40 80 00 0C */	bge lbl_80B5A180
/* 80B5A178  3B BD FF FF */	addi r29, r29, -1
/* 80B5A17C  48 00 00 08 */	b lbl_80B5A184
lbl_80B5A180:
/* 80B5A180  3B BD 00 01 */	addi r29, r29, 1
lbl_80B5A184:
/* 80B5A184  80 1C 15 4C */	lwz r0, 0x154c(r28)
/* 80B5A188  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B5A18C  41 82 00 44 */	beq lbl_80B5A1D0
/* 80B5A190  57 A0 17 3A */	rlwinm r0, r29, 2, 0x1c, 0x1d
/* 80B5A194  38 7F 02 6C */	addi r3, r31, 0x26c
/* 80B5A198  7F A3 00 2E */	lwzx r29, r3, r0
/* 80B5A19C  2C 1D 00 00 */	cmpwi r29, 0
/* 80B5A1A0  41 80 00 6C */	blt lbl_80B5A20C
/* 80B5A1A4  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5A1A8  7C 1D 00 00 */	cmpw r29, r0
/* 80B5A1AC  41 82 00 60 */	beq lbl_80B5A20C
/* 80B5A1B0  83 DC 0B 80 */	lwz r30, 0xb80(r28)
/* 80B5A1B4  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5A1B8  4B 5E B6 E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5A1BC  93 DC 0B 80 */	stw r30, 0xb80(r28)
/* 80B5A1C0  93 BC 0B 7C */	stw r29, 0xb7c(r28)
/* 80B5A1C4  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5A1C8  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B5A1CC  48 00 00 40 */	b lbl_80B5A20C
lbl_80B5A1D0:
/* 80B5A1D0  57 A0 17 7A */	rlwinm r0, r29, 2, 0x1d, 0x1d
/* 80B5A1D4  38 7F 02 7C */	addi r3, r31, 0x27c
/* 80B5A1D8  7F C3 00 2E */	lwzx r30, r3, r0
/* 80B5A1DC  2C 1E 00 00 */	cmpwi r30, 0
/* 80B5A1E0  41 80 00 2C */	blt lbl_80B5A20C
/* 80B5A1E4  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5A1E8  7C 1E 00 00 */	cmpw r30, r0
/* 80B5A1EC  41 82 00 20 */	beq lbl_80B5A20C
/* 80B5A1F0  83 BC 0B 80 */	lwz r29, 0xb80(r28)
/* 80B5A1F4  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5A1F8  4B 5E B6 A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5A1FC  93 BC 0B 80 */	stw r29, 0xb80(r28)
/* 80B5A200  93 DC 0B 7C */	stw r30, 0xb7c(r28)
/* 80B5A204  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5A208  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80B5A20C:
/* 80B5A20C  39 61 00 20 */	addi r11, r1, 0x20
/* 80B5A210  4B 80 80 15 */	bl _restgpr_28
/* 80B5A214  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B5A218  7C 08 03 A6 */	mtlr r0
/* 80B5A21C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B5A220  4E 80 00 20 */	blr 
