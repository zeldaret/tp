lbl_80496AB8:
/* 80496AB8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80496ABC  7C 08 02 A6 */	mflr r0
/* 80496AC0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80496AC4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80496AC8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80496ACC  7C 7F 1B 78 */	mr r31, r3
/* 80496AD0  3C 80 80 4A */	lis r4, l_resInfo@ha /* 0x80498160@ha */
/* 80496AD4  3B C4 81 60 */	addi r30, r4, l_resInfo@l /* 0x80498160@l */
/* 80496AD8  48 00 0F 35 */	bl init_actionOpenWait__9daTbox2_cFv
/* 80496ADC  7F E3 FB 78 */	mr r3, r31
/* 80496AE0  4B FF FF 39 */	bl initBaseMtx__9daTbox2_cFv
/* 80496AE4  80 7F 07 24 */	lwz r3, 0x724(r31)
/* 80496AE8  38 03 00 24 */	addi r0, r3, 0x24
/* 80496AEC  90 1F 05 04 */	stw r0, 0x504(r31)
/* 80496AF0  80 7F 07 24 */	lwz r3, 0x724(r31)
/* 80496AF4  80 83 00 04 */	lwz r4, 4(r3)
/* 80496AF8  7F E3 FB 78 */	mr r3, r31
/* 80496AFC  4B B8 3A 7D */	bl fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80496B00  38 00 00 40 */	li r0, 0x40
/* 80496B04  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80496B08  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80496B0C  64 00 00 40 */	oris r0, r0, 0x40
/* 80496B10  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80496B14  38 7F 09 04 */	addi r3, r31, 0x904
/* 80496B18  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80496B1C  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 80496B20  4B BD F4 39 */	bl SetWall__12dBgS_AcchCirFff
/* 80496B24  38 1F 04 E4 */	addi r0, r31, 0x4e4
/* 80496B28  90 01 00 08 */	stw r0, 8(r1)
/* 80496B2C  38 7F 07 2C */	addi r3, r31, 0x72c
/* 80496B30  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80496B34  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 80496B38  7F E6 FB 78 */	mr r6, r31
/* 80496B3C  38 E0 00 01 */	li r7, 1
/* 80496B40  39 1F 09 04 */	addi r8, r31, 0x904
/* 80496B44  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 80496B48  39 5F 04 DC */	addi r10, r31, 0x4dc
/* 80496B4C  4B BD F6 FD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80496B50  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80496B54  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80496B58  38 7F 09 44 */	addi r3, r31, 0x944
/* 80496B5C  38 80 00 FF */	li r4, 0xff
/* 80496B60  38 A0 00 FF */	li r5, 0xff
/* 80496B64  7F E6 FB 78 */	mr r6, r31
/* 80496B68  4B BE CC F9 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80496B6C  38 7F 09 80 */	addi r3, r31, 0x980
/* 80496B70  3C 80 80 4A */	lis r4, l_cyl_src@ha /* 0x80498284@ha */
/* 80496B74  38 84 82 84 */	addi r4, r4, l_cyl_src@l /* 0x80498284@l */
/* 80496B78  4B BE DD 3D */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80496B7C  38 1F 09 44 */	addi r0, r31, 0x944
/* 80496B80  90 1F 09 C4 */	stw r0, 0x9c4(r31)
/* 80496B84  38 7F 0A A4 */	addi r3, r31, 0xaa4
/* 80496B88  88 1F 0A BC */	lbz r0, 0xabc(r31)
/* 80496B8C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80496B90  38 9E 00 20 */	addi r4, r30, 0x20
/* 80496B94  7C 84 02 14 */	add r4, r4, r0
/* 80496B98  4B DD 85 7D */	bl Set__8cM3dGCylFRC9cM3dGCylS
/* 80496B9C  C0 5F 04 A8 */	lfs f2, 0x4a8(r31)
/* 80496BA0  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80496BA4  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 80496BA8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80496BAC  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80496BB0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80496BB4  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80496BB8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80496BBC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80496BC0  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80496BC4  EC 01 00 2A */	fadds f0, f1, f0
/* 80496BC8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80496BCC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80496BD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80496BD4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80496BD8  38 61 00 1C */	addi r3, r1, 0x1c
/* 80496BDC  38 81 00 10 */	addi r4, r1, 0x10
/* 80496BE0  7F E5 FB 78 */	mr r5, r31
/* 80496BE4  4B B8 70 85 */	bl lineCheck__11fopAcM_lc_cFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80496BE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80496BEC  40 82 00 10 */	bne lbl_80496BFC
/* 80496BF0  38 00 00 00 */	li r0, 0
/* 80496BF4  98 1F 0A BE */	stb r0, 0xabe(r31)
/* 80496BF8  48 00 00 0C */	b lbl_80496C04
lbl_80496BFC:
/* 80496BFC  38 00 00 01 */	li r0, 1
/* 80496C00  98 1F 0A BE */	stb r0, 0xabe(r31)
lbl_80496C04:
/* 80496C04  38 60 00 01 */	li r3, 1
/* 80496C08  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80496C0C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80496C10  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80496C14  7C 08 03 A6 */	mtlr r0
/* 80496C18  38 21 00 30 */	addi r1, r1, 0x30
/* 80496C1C  4E 80 00 20 */	blr 
