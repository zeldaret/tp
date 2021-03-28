lbl_803213C0:
/* 803213C0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803213C4  7C 08 02 A6 */	mflr r0
/* 803213C8  90 01 00 64 */	stw r0, 0x64(r1)
/* 803213CC  39 61 00 60 */	addi r11, r1, 0x60
/* 803213D0  48 04 0D FD */	bl _savegpr_25
/* 803213D4  7C 7B 1B 78 */	mr r27, r3
/* 803213D8  7C 9C 23 78 */	mr r28, r4
/* 803213DC  3B A0 00 00 */	li r29, 0
/* 803213E0  3B 40 00 00 */	li r26, 0
/* 803213E4  3B 20 00 00 */	li r25, 0
/* 803213E8  3C 60 80 43 */	lis r3, j3dSys@ha
/* 803213EC  3B E3 4A C8 */	addi r31, r3, j3dSys@l
lbl_803213F0:
/* 803213F0  3B D9 00 38 */	addi r30, r25, 0x38
/* 803213F4  7C 7B F0 2E */	lwzx r3, r27, r30
/* 803213F8  28 03 00 00 */	cmplwi r3, 0
/* 803213FC  41 82 01 5C */	beq lbl_80321558
/* 80321400  88 03 00 01 */	lbz r0, 1(r3)
/* 80321404  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 80321408  7C 7B D2 14 */	add r3, r27, r26
/* 8032140C  88 03 00 0A */	lbz r0, 0xa(r3)
/* 80321410  B0 03 00 0C */	sth r0, 0xc(r3)
/* 80321414  28 04 00 0B */	cmplwi r4, 0xb
/* 80321418  41 81 01 30 */	bgt lbl_80321548
/* 8032141C  3C 60 80 3D */	lis r3, lit_5062@ha
/* 80321420  38 63 DF 30 */	addi r3, r3, lit_5062@l
/* 80321424  54 80 10 3A */	slwi r0, r4, 2
/* 80321428  7C 03 00 2E */	lwzx r0, r3, r0
/* 8032142C  7C 09 03 A6 */	mtctr r0
/* 80321430  4E 80 04 20 */	bctr 
/* 80321434  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80321438  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8032143C  40 82 00 1C */	bne lbl_80321458
/* 80321440  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80321444  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80321448  7F 84 E3 78 */	mr r4, r28
/* 8032144C  38 A1 00 08 */	addi r5, r1, 8
/* 80321450  48 02 50 95 */	bl PSMTXConcat
/* 80321454  48 00 00 14 */	b lbl_80321468
lbl_80321458:
/* 80321458  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8032145C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80321460  38 81 00 08 */	addi r4, r1, 8
/* 80321464  48 02 50 4D */	bl PSMTXCopy
lbl_80321468:
/* 80321468  C0 02 C9 AC */	lfs f0, lit_5060(r2)
/* 8032146C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80321470  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80321474  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80321478  7C 7B F0 2E */	lwzx r3, r27, r30
/* 8032147C  38 81 00 08 */	addi r4, r1, 8
/* 80321480  48 00 24 81 */	bl calc__9J3DTexMtxFPA4_Cf
/* 80321484  48 00 00 D4 */	b lbl_80321558
/* 80321488  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8032148C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 80321490  40 82 00 14 */	bne lbl_803214A4
/* 80321494  7C 7B F0 2E */	lwzx r3, r27, r30
/* 80321498  7F 84 E3 78 */	mr r4, r28
/* 8032149C  48 00 24 65 */	bl calc__9J3DTexMtxFPA4_Cf
/* 803214A0  48 00 00 B8 */	b lbl_80321558
lbl_803214A4:
/* 803214A4  7C 7B F0 2E */	lwzx r3, r27, r30
/* 803214A8  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha
/* 803214AC  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l
/* 803214B0  48 00 24 51 */	bl calc__9J3DTexMtxFPA4_Cf
/* 803214B4  48 00 00 A4 */	b lbl_80321558
/* 803214B8  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 803214BC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 803214C0  40 82 00 28 */	bne lbl_803214E8
/* 803214C4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 803214C8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 803214CC  7F 84 E3 78 */	mr r4, r28
/* 803214D0  38 A1 00 08 */	addi r5, r1, 8
/* 803214D4  48 02 50 11 */	bl PSMTXConcat
/* 803214D8  7C 7B F0 2E */	lwzx r3, r27, r30
/* 803214DC  38 81 00 08 */	addi r4, r1, 8
/* 803214E0  48 00 24 21 */	bl calc__9J3DTexMtxFPA4_Cf
/* 803214E4  48 00 00 74 */	b lbl_80321558
lbl_803214E8:
/* 803214E8  7C 7B F0 2E */	lwzx r3, r27, r30
/* 803214EC  3C 80 80 43 */	lis r4, j3dSys@ha
/* 803214F0  38 84 4A C8 */	addi r4, r4, j3dSys@l
/* 803214F4  48 00 24 0D */	bl calc__9J3DTexMtxFPA4_Cf
/* 803214F8  48 00 00 60 */	b lbl_80321558
/* 803214FC  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80321500  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80321504  40 82 00 30 */	bne lbl_80321534
/* 80321508  7F 83 E3 78 */	mr r3, r28
/* 8032150C  38 81 00 08 */	addi r4, r1, 8
/* 80321510  48 02 4F A1 */	bl PSMTXCopy
/* 80321514  C0 02 C9 AC */	lfs f0, lit_5060(r2)
/* 80321518  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8032151C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80321520  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80321524  7C 7B F0 2E */	lwzx r3, r27, r30
/* 80321528  38 81 00 08 */	addi r4, r1, 8
/* 8032152C  48 00 23 D5 */	bl calc__9J3DTexMtxFPA4_Cf
/* 80321530  48 00 00 28 */	b lbl_80321558
lbl_80321534:
/* 80321534  7C 7B F0 2E */	lwzx r3, r27, r30
/* 80321538  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha
/* 8032153C  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l
/* 80321540  48 00 23 C1 */	bl calc__9J3DTexMtxFPA4_Cf
/* 80321544  48 00 00 14 */	b lbl_80321558
lbl_80321548:
/* 80321548  7C 7B F0 2E */	lwzx r3, r27, r30
/* 8032154C  3C 80 80 3A */	lis r4, j3dDefaultMtx@ha
/* 80321550  38 84 1E 5C */	addi r4, r4, j3dDefaultMtx@l
/* 80321554  48 00 23 AD */	bl calc__9J3DTexMtxFPA4_Cf
lbl_80321558:
/* 80321558  3B BD 00 01 */	addi r29, r29, 1
/* 8032155C  2C 1D 00 08 */	cmpwi r29, 8
/* 80321560  3B 5A 00 06 */	addi r26, r26, 6
/* 80321564  3B 39 00 04 */	addi r25, r25, 4
/* 80321568  41 80 FE 88 */	blt lbl_803213F0
/* 8032156C  39 61 00 60 */	addi r11, r1, 0x60
/* 80321570  48 04 0C A9 */	bl _restgpr_25
/* 80321574  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80321578  7C 08 03 A6 */	mtlr r0
/* 8032157C  38 21 00 60 */	addi r1, r1, 0x60
/* 80321580  4E 80 00 20 */	blr 
