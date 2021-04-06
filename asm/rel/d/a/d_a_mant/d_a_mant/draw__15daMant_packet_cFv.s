lbl_80861298:
/* 80861298  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8086129C  7C 08 02 A6 */	mflr r0
/* 808612A0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 808612A4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 808612A8  4B B0 0F 29 */	bl _savegpr_26
/* 808612AC  7C 7F 1B 78 */	mr r31, r3
/* 808612B0  3C 60 80 86 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80862D20@ha */
/* 808612B4  3B 83 2D 20 */	addi r28, r3, cNullVec__6Z2Calc@l /* 0x80862D20@l */
/* 808612B8  3C 60 80 86 */	lis r3, lit_3815@ha /* 0x80862C4C@ha */
/* 808612BC  3B A3 2C 4C */	addi r29, r3, lit_3815@l /* 0x80862C4C@l */
/* 808612C0  3F DC 00 01 */	addis r30, r28, 1
/* 808612C4  83 7E 91 B0 */	lwz r27, -0x6e50(r30)
/* 808612C8  83 5E 91 AC */	lwz r26, -0x6e54(r30)
/* 808612CC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 808612D0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 808612D4  4B AA F4 69 */	bl reinitGX__6J3DSysFv
/* 808612D8  38 60 00 00 */	li r3, 0
/* 808612DC  4B AF DD F9 */	bl GXSetNumIndStages
/* 808612E0  4B 94 62 E1 */	bl dKy_setLight_again__Fv
/* 808612E4  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 808612E8  4B 94 73 69 */	bl dKy_GxFog_tevstr_set__FP12dKy_tevstr_c
/* 808612EC  4B AF A2 A1 */	bl GXClearVtxDesc
/* 808612F0  38 60 00 09 */	li r3, 9
/* 808612F4  38 80 00 02 */	li r4, 2
/* 808612F8  4B AF 9B C1 */	bl GXSetVtxDesc
/* 808612FC  38 60 00 0A */	li r3, 0xa
/* 80861300  38 80 00 02 */	li r4, 2
/* 80861304  4B AF 9B B5 */	bl GXSetVtxDesc
/* 80861308  38 60 00 0D */	li r3, 0xd
/* 8086130C  38 80 00 02 */	li r4, 2
/* 80861310  4B AF 9B A9 */	bl GXSetVtxDesc
/* 80861314  38 60 00 00 */	li r3, 0
/* 80861318  38 80 00 09 */	li r4, 9
/* 8086131C  38 A0 00 01 */	li r5, 1
/* 80861320  38 C0 00 04 */	li r6, 4
/* 80861324  38 E0 00 00 */	li r7, 0
/* 80861328  4B AF A2 9D */	bl GXSetVtxAttrFmt
/* 8086132C  38 60 00 00 */	li r3, 0
/* 80861330  38 80 00 0A */	li r4, 0xa
/* 80861334  38 A0 00 00 */	li r5, 0
/* 80861338  38 C0 00 04 */	li r6, 4
/* 8086133C  38 E0 00 00 */	li r7, 0
/* 80861340  4B AF A2 85 */	bl GXSetVtxAttrFmt
/* 80861344  38 60 00 00 */	li r3, 0
/* 80861348  38 80 00 0D */	li r4, 0xd
/* 8086134C  38 A0 00 01 */	li r5, 1
/* 80861350  38 C0 00 04 */	li r6, 4
/* 80861354  38 E0 00 00 */	li r7, 0
/* 80861358  4B AF A2 6D */	bl GXSetVtxAttrFmt
/* 8086135C  38 60 00 09 */	li r3, 9
/* 80861360  88 1F 00 74 */	lbz r0, 0x74(r31)
/* 80861364  1C 80 07 EC */	mulli r4, r0, 0x7ec
/* 80861368  38 84 00 78 */	addi r4, r4, 0x78
/* 8086136C  7C 9F 22 14 */	add r4, r31, r4
/* 80861370  38 A0 00 0C */	li r5, 0xc
/* 80861374  4B AF A7 B5 */	bl GXSetArray
/* 80861378  38 60 00 0A */	li r3, 0xa
/* 8086137C  88 1F 00 74 */	lbz r0, 0x74(r31)
/* 80861380  1C 80 07 EC */	mulli r4, r0, 0x7ec
/* 80861384  38 84 10 50 */	addi r4, r4, 0x1050
/* 80861388  7C 9F 22 14 */	add r4, r31, r4
/* 8086138C  38 A0 00 0C */	li r5, 0xc
/* 80861390  4B AF A7 99 */	bl GXSetArray
/* 80861394  38 60 00 0D */	li r3, 0xd
/* 80861398  38 9E 88 78 */	addi r4, r30, -30600
/* 8086139C  38 A0 00 08 */	li r5, 8
/* 808613A0  4B AF A7 89 */	bl GXSetArray
/* 808613A4  38 60 00 00 */	li r3, 0
/* 808613A8  4B AF E9 29 */	bl GXSetZCompLoc
/* 808613AC  38 60 00 01 */	li r3, 1
/* 808613B0  38 80 00 03 */	li r4, 3
/* 808613B4  38 A0 00 01 */	li r5, 1
/* 808613B8  4B AF E8 E5 */	bl GXSetZMode
/* 808613BC  38 60 00 01 */	li r3, 1
/* 808613C0  4B AF C7 71 */	bl GXSetNumChans
/* 808613C4  38 60 00 00 */	li r3, 0
/* 808613C8  38 80 00 01 */	li r4, 1
/* 808613CC  38 A0 00 00 */	li r5, 0
/* 808613D0  38 C0 00 00 */	li r6, 0
/* 808613D4  38 E0 00 FF */	li r7, 0xff
/* 808613D8  39 00 00 02 */	li r8, 2
/* 808613DC  39 20 00 01 */	li r9, 1
/* 808613E0  4B AF C7 8D */	bl GXSetChanCtrl
/* 808613E4  38 60 00 01 */	li r3, 1
/* 808613E8  4B AF AA 15 */	bl GXSetNumTexGens
/* 808613EC  38 60 00 00 */	li r3, 0
/* 808613F0  38 80 00 01 */	li r4, 1
/* 808613F4  38 A0 00 04 */	li r5, 4
/* 808613F8  38 C0 00 3C */	li r6, 0x3c
/* 808613FC  38 E0 00 00 */	li r7, 0
/* 80861400  39 00 00 7D */	li r8, 0x7d
/* 80861404  4B AF A7 79 */	bl GXSetTexCoordGen2
/* 80861408  38 60 00 01 */	li r3, 1
/* 8086140C  4B AF E4 85 */	bl GXSetNumTevStages
/* 80861410  38 60 00 00 */	li r3, 0
/* 80861414  38 80 00 00 */	li r4, 0
/* 80861418  38 A0 00 00 */	li r5, 0
/* 8086141C  4B AF E1 41 */	bl GXSetTevSwapMode
/* 80861420  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 80861424  4B 94 61 BD */	bl dKy_Global_amb_set__FP12dKy_tevstr_c
/* 80861428  38 60 00 00 */	li r3, 0
/* 8086142C  38 80 00 00 */	li r4, 0
/* 80861430  38 A0 00 00 */	li r5, 0
/* 80861434  38 C0 00 04 */	li r6, 4
/* 80861438  4B AF E2 BD */	bl GXSetTevOrder
/* 8086143C  80 1D 00 00 */	lwz r0, 0(r29)
/* 80861440  90 01 00 28 */	stw r0, 0x28(r1)
/* 80861444  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80861448  38 60 00 01 */	li r3, 1
/* 8086144C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80861450  4B AF DF 2D */	bl GXSetTevColor
/* 80861454  80 1D 00 04 */	lwz r0, 4(r29)
/* 80861458  90 01 00 20 */	stw r0, 0x20(r1)
/* 8086145C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80861460  38 60 00 00 */	li r3, 0
/* 80861464  38 81 00 24 */	addi r4, r1, 0x24
/* 80861468  4B AF DF D9 */	bl GXSetTevKColor
/* 8086146C  38 60 00 00 */	li r3, 0
/* 80861470  38 80 00 0C */	li r4, 0xc
/* 80861474  4B AF E0 31 */	bl GXSetTevKColorSel
/* 80861478  38 60 00 00 */	li r3, 0
/* 8086147C  38 80 00 0E */	li r4, 0xe
/* 80861480  38 A0 00 08 */	li r5, 8
/* 80861484  38 C0 00 0A */	li r6, 0xa
/* 80861488  38 E0 00 02 */	li r7, 2
/* 8086148C  4B AF DD 99 */	bl GXSetTevColorIn
/* 80861490  38 60 00 00 */	li r3, 0
/* 80861494  38 80 00 00 */	li r4, 0
/* 80861498  38 A0 00 00 */	li r5, 0
/* 8086149C  38 C0 00 02 */	li r6, 2
/* 808614A0  38 E0 00 01 */	li r7, 1
/* 808614A4  39 00 00 00 */	li r8, 0
/* 808614A8  4B AF DE 05 */	bl GXSetTevColorOp
/* 808614AC  38 60 00 00 */	li r3, 0
/* 808614B0  38 80 00 07 */	li r4, 7
/* 808614B4  38 A0 00 06 */	li r5, 6
/* 808614B8  38 C0 00 04 */	li r6, 4
/* 808614BC  38 E0 00 07 */	li r7, 7
/* 808614C0  4B AF DD A9 */	bl GXSetTevAlphaIn
/* 808614C4  38 60 00 00 */	li r3, 0
/* 808614C8  38 80 00 00 */	li r4, 0
/* 808614CC  38 A0 00 00 */	li r5, 0
/* 808614D0  38 C0 00 00 */	li r6, 0
/* 808614D4  38 E0 00 01 */	li r7, 1
/* 808614D8  39 00 00 00 */	li r8, 0
/* 808614DC  4B AF DE 39 */	bl GXSetTevAlphaOp
/* 808614E0  38 60 00 00 */	li r3, 0
/* 808614E4  38 80 00 1F */	li r4, 0x1f
/* 808614E8  4B AF E0 19 */	bl GXSetTevKAlphaSel
/* 808614EC  38 60 00 04 */	li r3, 4
/* 808614F0  38 80 00 00 */	li r4, 0
/* 808614F4  38 A0 00 01 */	li r5, 1
/* 808614F8  38 C0 00 04 */	li r6, 4
/* 808614FC  38 E0 00 00 */	li r7, 0
/* 80861500  4B AF E1 25 */	bl GXSetAlphaCompare
/* 80861504  38 61 00 30 */	addi r3, r1, 0x30
/* 80861508  7F 44 D3 78 */	mr r4, r26
/* 8086150C  38 A0 00 02 */	li r5, 2
/* 80861510  38 C0 01 00 */	li r6, 0x100
/* 80861514  4B AF CF 55 */	bl GXInitTlutObj
/* 80861518  38 00 00 00 */	li r0, 0
/* 8086151C  90 01 00 08 */	stw r0, 8(r1)
/* 80861520  38 61 00 3C */	addi r3, r1, 0x3c
/* 80861524  7F 64 DB 78 */	mr r4, r27
/* 80861528  38 A0 00 80 */	li r5, 0x80
/* 8086152C  38 C0 00 80 */	li r6, 0x80
/* 80861530  38 E0 00 09 */	li r7, 9
/* 80861534  39 00 00 00 */	li r8, 0
/* 80861538  39 20 00 00 */	li r9, 0
/* 8086153C  39 40 00 00 */	li r10, 0
/* 80861540  4B AF CB 4D */	bl GXInitTexObjCI
/* 80861544  38 61 00 3C */	addi r3, r1, 0x3c
/* 80861548  38 80 00 01 */	li r4, 1
/* 8086154C  38 A0 00 01 */	li r5, 1
/* 80861550  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 80861554  FC 40 08 90 */	fmr f2, f1
/* 80861558  FC 60 08 90 */	fmr f3, f1
/* 8086155C  38 C0 00 00 */	li r6, 0
/* 80861560  38 E0 00 00 */	li r7, 0
/* 80861564  39 00 00 00 */	li r8, 0
/* 80861568  4B AF CB 6D */	bl GXInitTexObjLOD
/* 8086156C  38 61 00 30 */	addi r3, r1, 0x30
/* 80861570  38 80 00 00 */	li r4, 0
/* 80861574  4B AF CF 2D */	bl GXLoadTlut
/* 80861578  38 61 00 3C */	addi r3, r1, 0x3c
/* 8086157C  38 80 00 00 */	li r4, 0
/* 80861580  4B AF CE 95 */	bl GXLoadTexObj
/* 80861584  38 60 00 02 */	li r3, 2
/* 80861588  4B AF B3 FD */	bl GXSetCullMode
/* 8086158C  38 7F 00 10 */	addi r3, r31, 0x10
/* 80861590  38 80 00 00 */	li r4, 0
/* 80861594  4B AF EC B9 */	bl GXLoadPosMtxImm
/* 80861598  38 7F 00 10 */	addi r3, r31, 0x10
/* 8086159C  38 81 00 5C */	addi r4, r1, 0x5c
/* 808615A0  4B 7A B4 11 */	bl mDoMtx_inverseTranspose__FPA4_CfPA4_f
/* 808615A4  38 61 00 5C */	addi r3, r1, 0x5c
/* 808615A8  38 80 00 00 */	li r4, 0
/* 808615AC  4B AF EC F1 */	bl GXLoadNrmMtxImm
/* 808615B0  38 7E 8D C0 */	addi r3, r30, -29248
/* 808615B4  38 80 03 E0 */	li r4, 0x3e0
/* 808615B8  4B AF E9 39 */	bl GXCallDisplayList
/* 808615BC  38 00 00 00 */	li r0, 0
/* 808615C0  90 01 00 08 */	stw r0, 8(r1)
/* 808615C4  38 61 00 3C */	addi r3, r1, 0x3c
/* 808615C8  38 9C 40 20 */	addi r4, r28, 0x4020
/* 808615CC  38 A0 00 80 */	li r5, 0x80
/* 808615D0  38 C0 00 80 */	li r6, 0x80
/* 808615D4  38 E0 00 09 */	li r7, 9
/* 808615D8  39 00 00 00 */	li r8, 0
/* 808615DC  39 20 00 00 */	li r9, 0
/* 808615E0  39 40 00 00 */	li r10, 0
/* 808615E4  4B AF CA A9 */	bl GXInitTexObjCI
/* 808615E8  38 61 00 3C */	addi r3, r1, 0x3c
/* 808615EC  38 80 00 01 */	li r4, 1
/* 808615F0  38 A0 00 01 */	li r5, 1
/* 808615F4  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 808615F8  FC 40 08 90 */	fmr f2, f1
/* 808615FC  FC 60 08 90 */	fmr f3, f1
/* 80861600  38 C0 00 00 */	li r6, 0
/* 80861604  38 E0 00 00 */	li r7, 0
/* 80861608  39 00 00 00 */	li r8, 0
/* 8086160C  4B AF CA C9 */	bl GXInitTexObjLOD
/* 80861610  38 61 00 3C */	addi r3, r1, 0x3c
/* 80861614  38 80 00 00 */	li r4, 0
/* 80861618  4B AF CD FD */	bl GXLoadTexObj
/* 8086161C  80 1D 00 08 */	lwz r0, 8(r29)
/* 80861620  90 01 00 18 */	stw r0, 0x18(r1)
/* 80861624  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80861628  38 60 00 01 */	li r3, 1
/* 8086162C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80861630  4B AF DD 4D */	bl GXSetTevColor
/* 80861634  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80861638  90 01 00 10 */	stw r0, 0x10(r1)
/* 8086163C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80861640  38 60 00 00 */	li r3, 0
/* 80861644  38 81 00 14 */	addi r4, r1, 0x14
/* 80861648  4B AF DD F9 */	bl GXSetTevKColor
/* 8086164C  38 60 00 01 */	li r3, 1
/* 80861650  4B AF B3 35 */	bl GXSetCullMode
/* 80861654  38 7F 00 40 */	addi r3, r31, 0x40
/* 80861658  38 80 00 00 */	li r4, 0
/* 8086165C  4B AF EB F1 */	bl GXLoadPosMtxImm
/* 80861660  38 7F 00 40 */	addi r3, r31, 0x40
/* 80861664  38 81 00 5C */	addi r4, r1, 0x5c
/* 80861668  4B 7A B3 49 */	bl mDoMtx_inverseTranspose__FPA4_CfPA4_f
/* 8086166C  38 61 00 5C */	addi r3, r1, 0x5c
/* 80861670  38 80 00 00 */	li r4, 0
/* 80861674  4B AF EC 29 */	bl GXLoadNrmMtxImm
/* 80861678  38 7E 8D C0 */	addi r3, r30, -29248
/* 8086167C  38 80 03 E0 */	li r4, 0x3e0
/* 80861680  4B AF E8 71 */	bl GXCallDisplayList
/* 80861684  3C 60 80 87 */	lis r3, data_8086BF70@ha /* 0x8086BF70@ha */
/* 80861688  88 03 BF 70 */	lbz r0, data_8086BF70@l(r3)  /* 0x8086BF70@l */
/* 8086168C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80861690  98 1F 00 74 */	stb r0, 0x74(r31)
/* 80861694  38 00 00 00 */	li r0, 0
/* 80861698  3C 60 80 45 */	lis r3, sOldVcdVatCmd__8J3DShape@ha /* 0x804515D0@ha */
/* 8086169C  90 03 15 D0 */	stw r0, sOldVcdVatCmd__8J3DShape@l(r3)  /* 0x804515D0@l */
/* 808616A0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 808616A4  4B B0 0B 79 */	bl _restgpr_26
/* 808616A8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 808616AC  7C 08 03 A6 */	mtlr r0
/* 808616B0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 808616B4  4E 80 00 20 */	blr 
