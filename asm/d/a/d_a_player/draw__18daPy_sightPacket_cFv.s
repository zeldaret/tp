lbl_8015F1A0:
/* 8015F1A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8015F1A4  7C 08 02 A6 */	mflr r0
/* 8015F1A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8015F1AC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8015F1B0  7C 7F 1B 78 */	mr r31, r3
/* 8015F1B4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8015F1B8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8015F1BC  48 1B 15 81 */	bl reinitGX__6J3DSysFv
/* 8015F1C0  38 60 00 00 */	li r3, 0
/* 8015F1C4  48 1F FF 11 */	bl GXSetNumIndStages
/* 8015F1C8  48 1F C3 C5 */	bl GXClearVtxDesc
/* 8015F1CC  38 60 00 09 */	li r3, 9
/* 8015F1D0  38 80 00 01 */	li r4, 1
/* 8015F1D4  48 1F BC E5 */	bl GXSetVtxDesc
/* 8015F1D8  38 60 00 0D */	li r3, 0xd
/* 8015F1DC  38 80 00 01 */	li r4, 1
/* 8015F1E0  48 1F BC D9 */	bl GXSetVtxDesc
/* 8015F1E4  38 60 00 00 */	li r3, 0
/* 8015F1E8  38 80 00 09 */	li r4, 9
/* 8015F1EC  38 A0 00 01 */	li r5, 1
/* 8015F1F0  38 C0 00 01 */	li r6, 1
/* 8015F1F4  38 E0 00 00 */	li r7, 0
/* 8015F1F8  48 1F C3 CD */	bl GXSetVtxAttrFmt
/* 8015F1FC  38 60 00 00 */	li r3, 0
/* 8015F200  38 80 00 0D */	li r4, 0xd
/* 8015F204  38 A0 00 01 */	li r5, 1
/* 8015F208  38 C0 00 00 */	li r6, 0
/* 8015F20C  38 E0 00 00 */	li r7, 0
/* 8015F210  48 1F C3 B5 */	bl GXSetVtxAttrFmt
/* 8015F214  80 02 9C 7C */	lwz r0, lit_4669(r2)
/* 8015F218  90 01 00 10 */	stw r0, 0x10(r1)
/* 8015F21C  80 02 9C 78 */	lwz r0, lit_4668(r2)
/* 8015F220  90 01 00 0C */	stw r0, 0xc(r1)
/* 8015F224  38 60 00 01 */	li r3, 1
/* 8015F228  38 81 00 0C */	addi r4, r1, 0xc
/* 8015F22C  48 20 01 51 */	bl GXSetTevColor
/* 8015F230  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8015F234  90 01 00 08 */	stw r0, 8(r1)
/* 8015F238  38 60 00 02 */	li r3, 2
/* 8015F23C  38 81 00 08 */	addi r4, r1, 8
/* 8015F240  48 20 01 3D */	bl GXSetTevColor
/* 8015F244  81 3F 00 44 */	lwz r9, 0x44(r31)
/* 8015F248  88 09 00 18 */	lbz r0, 0x18(r9)
/* 8015F24C  20 00 00 01 */	subfic r0, r0, 1
/* 8015F250  54 0A 0F FE */	srwi r10, r0, 0x1f
/* 8015F254  38 61 00 14 */	addi r3, r1, 0x14
/* 8015F258  80 9F 00 48 */	lwz r4, 0x48(r31)
/* 8015F25C  A0 A9 00 02 */	lhz r5, 2(r9)
/* 8015F260  A0 C9 00 04 */	lhz r6, 4(r9)
/* 8015F264  88 E9 00 00 */	lbz r7, 0(r9)
/* 8015F268  89 09 00 06 */	lbz r8, 6(r9)
/* 8015F26C  89 29 00 07 */	lbz r9, 7(r9)
/* 8015F270  48 1F EB D1 */	bl GXInitTexObj
/* 8015F274  38 61 00 14 */	addi r3, r1, 0x14
/* 8015F278  38 80 00 01 */	li r4, 1
/* 8015F27C  38 A0 00 01 */	li r5, 1
/* 8015F280  C0 22 9C 00 */	lfs f1, lit_4215(r2)
/* 8015F284  FC 40 08 90 */	fmr f2, f1
/* 8015F288  FC 60 08 90 */	fmr f3, f1
/* 8015F28C  38 C0 00 00 */	li r6, 0
/* 8015F290  38 E0 00 00 */	li r7, 0
/* 8015F294  39 00 00 00 */	li r8, 0
/* 8015F298  48 1F EE 3D */	bl GXInitTexObjLOD
/* 8015F29C  38 61 00 14 */	addi r3, r1, 0x14
/* 8015F2A0  38 80 00 00 */	li r4, 0
/* 8015F2A4  48 1F F1 71 */	bl GXLoadTexObj
/* 8015F2A8  38 7F 00 14 */	addi r3, r31, 0x14
/* 8015F2AC  38 80 00 00 */	li r4, 0
/* 8015F2B0  48 20 0F 9D */	bl GXLoadPosMtxImm
/* 8015F2B4  38 60 00 00 */	li r3, 0
/* 8015F2B8  48 20 10 35 */	bl GXSetCurrentMtx
/* 8015F2BC  38 60 00 00 */	li r3, 0
/* 8015F2C0  38 80 00 00 */	li r4, 0
/* 8015F2C4  38 A0 00 00 */	li r5, 0
/* 8015F2C8  38 C0 00 FF */	li r6, 0xff
/* 8015F2CC  48 20 04 29 */	bl GXSetTevOrder
/* 8015F2D0  3C 60 80 3C */	lis r3, l_sightDL@ha /* 0x803BA0C0@ha */
/* 8015F2D4  38 63 A0 C0 */	addi r3, r3, l_sightDL@l /* 0x803BA0C0@l */
/* 8015F2D8  38 80 00 80 */	li r4, 0x80
/* 8015F2DC  48 20 0C 15 */	bl GXCallDisplayList
/* 8015F2E0  38 00 00 00 */	li r0, 0
/* 8015F2E4  90 0D 90 50 */	stw r0, sOldVcdVatCmd__8J3DShape(r13)
/* 8015F2E8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8015F2EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8015F2F0  7C 08 03 A6 */	mtlr r0
/* 8015F2F4  38 21 00 40 */	addi r1, r1, 0x40
/* 8015F2F8  4E 80 00 20 */	blr 
