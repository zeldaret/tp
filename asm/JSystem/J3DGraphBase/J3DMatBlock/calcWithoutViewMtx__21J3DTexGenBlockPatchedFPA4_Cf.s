lbl_80321584:
/* 80321584  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80321588  7C 08 02 A6 */	mflr r0
/* 8032158C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80321590  39 61 00 60 */	addi r11, r1, 0x60
/* 80321594  48 04 0C 39 */	bl _savegpr_25
/* 80321598  7C 7B 1B 78 */	mr r27, r3
/* 8032159C  7C 9C 23 78 */	mr r28, r4
/* 803215A0  3B A0 00 00 */	li r29, 0
/* 803215A4  3B 40 00 00 */	li r26, 0
/* 803215A8  3B 20 00 00 */	li r25, 0
/* 803215AC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 803215B0  3B E3 4A C8 */	addi r31, r3, j3dSys@l /* 0x80434AC8@l */
lbl_803215B4:
/* 803215B4  3B D9 00 38 */	addi r30, r25, 0x38
/* 803215B8  7C 7B F0 2E */	lwzx r3, r27, r30
/* 803215BC  28 03 00 00 */	cmplwi r3, 0
/* 803215C0  41 82 00 EC */	beq lbl_803216AC
/* 803215C4  88 03 00 01 */	lbz r0, 1(r3)
/* 803215C8  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 803215CC  7C 7B D2 14 */	add r3, r27, r26
/* 803215D0  88 03 00 0A */	lbz r0, 0xa(r3)
/* 803215D4  B0 03 00 0C */	sth r0, 0xc(r3)
/* 803215D8  28 04 00 0B */	cmplwi r4, 0xb
/* 803215DC  41 81 00 C0 */	bgt lbl_8032169C
/* 803215E0  3C 60 80 3D */	lis r3, lit_5110@ha /* 0x803CDF60@ha */
/* 803215E4  38 63 DF 60 */	addi r3, r3, lit_5110@l /* 0x803CDF60@l */
/* 803215E8  54 80 10 3A */	slwi r0, r4, 2
/* 803215EC  7C 03 00 2E */	lwzx r0, r3, r0
/* 803215F0  7C 09 03 A6 */	mtctr r0
/* 803215F4  4E 80 04 20 */	bctr 
/* 803215F8  7C 7B F0 2E */	lwzx r3, r27, r30
/* 803215FC  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 80321600  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 80321604  48 00 22 FD */	bl calc__9J3DTexMtxFPA4_Cf
/* 80321608  48 00 00 A4 */	b lbl_803216AC
/* 8032160C  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80321610  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80321614  40 82 00 14 */	bne lbl_80321628
/* 80321618  7C 7B F0 2E */	lwzx r3, r27, r30
/* 8032161C  7F 84 E3 78 */	mr r4, r28
/* 80321620  48 00 22 E1 */	bl calc__9J3DTexMtxFPA4_Cf
/* 80321624  48 00 00 88 */	b lbl_803216AC
lbl_80321628:
/* 80321628  7C 7B F0 2E */	lwzx r3, r27, r30
/* 8032162C  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 80321630  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 80321634  48 00 22 CD */	bl calc__9J3DTexMtxFPA4_Cf
/* 80321638  48 00 00 74 */	b lbl_803216AC
/* 8032163C  7C 7B F0 2E */	lwzx r3, r27, r30
/* 80321640  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 80321644  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 80321648  48 00 22 B9 */	bl calc__9J3DTexMtxFPA4_Cf
/* 8032164C  48 00 00 60 */	b lbl_803216AC
/* 80321650  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80321654  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80321658  40 82 00 30 */	bne lbl_80321688
/* 8032165C  7F 83 E3 78 */	mr r3, r28
/* 80321660  38 81 00 08 */	addi r4, r1, 8
/* 80321664  48 02 4E 4D */	bl PSMTXCopy
/* 80321668  C0 02 C9 AC */	lfs f0, lit_5060(r2)
/* 8032166C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80321670  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80321674  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80321678  7C 7B F0 2E */	lwzx r3, r27, r30
/* 8032167C  38 81 00 08 */	addi r4, r1, 8
/* 80321680  48 00 22 81 */	bl calc__9J3DTexMtxFPA4_Cf
/* 80321684  48 00 00 28 */	b lbl_803216AC
lbl_80321688:
/* 80321688  7C 7B F0 2E */	lwzx r3, r27, r30
/* 8032168C  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 80321690  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 80321694  48 00 22 6D */	bl calc__9J3DTexMtxFPA4_Cf
/* 80321698  48 00 00 14 */	b lbl_803216AC
lbl_8032169C:
/* 8032169C  7C 7B F0 2E */	lwzx r3, r27, r30
/* 803216A0  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha /* 0x803A1E5C@ha */
/* 803216A4  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l /* 0x803A1E5C@l */
/* 803216A8  48 00 22 59 */	bl calc__9J3DTexMtxFPA4_Cf
lbl_803216AC:
/* 803216AC  3B BD 00 01 */	addi r29, r29, 1
/* 803216B0  2C 1D 00 08 */	cmpwi r29, 8
/* 803216B4  3B 5A 00 06 */	addi r26, r26, 6
/* 803216B8  3B 39 00 04 */	addi r25, r25, 4
/* 803216BC  41 80 FE F8 */	blt lbl_803215B4
/* 803216C0  39 61 00 60 */	addi r11, r1, 0x60
/* 803216C4  48 04 0B 55 */	bl _restgpr_25
/* 803216C8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803216CC  7C 08 03 A6 */	mtlr r0
/* 803216D0  38 21 00 60 */	addi r1, r1, 0x60
/* 803216D4  4E 80 00 20 */	blr 
