lbl_8003D3C0:
/* 8003D3C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8003D3C4  7C 08 02 A6 */	mflr r0
/* 8003D3C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8003D3CC  39 61 00 30 */	addi r11, r1, 0x30
/* 8003D3D0  48 32 4E 01 */	bl _savegpr_26
/* 8003D3D4  7C 7F 1B 78 */	mr r31, r3
/* 8003D3D8  7C 9A 23 78 */	mr r26, r4
/* 8003D3DC  88 84 00 01 */	lbz r4, 1(r4)
/* 8003D3E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8003D3E4  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 8003D3E8  7D 89 03 A6 */	mtctr r12
/* 8003D3EC  4E 80 04 21 */	bctrl 
/* 8003D3F0  7C 7D 1B 79 */	or. r29, r3, r3
/* 8003D3F4  40 81 02 80 */	ble lbl_8003D674
/* 8003D3F8  7F E3 FB 78 */	mr r3, r31
/* 8003D3FC  4B FF FB 45 */	bl setTevSettingIntensityTextureToCI__18dRenderingFDAmap_cCFv
/* 8003D400  48 31 E1 8D */	bl GXClearVtxDesc
/* 8003D404  38 60 00 09 */	li r3, 9
/* 8003D408  38 80 00 03 */	li r4, 3
/* 8003D40C  48 31 DA AD */	bl GXSetVtxDesc
/* 8003D410  38 60 00 0D */	li r3, 0xd
/* 8003D414  38 80 00 01 */	li r4, 1
/* 8003D418  48 31 DA A1 */	bl GXSetVtxDesc
/* 8003D41C  38 60 00 00 */	li r3, 0
/* 8003D420  38 80 00 09 */	li r4, 9
/* 8003D424  38 A0 00 00 */	li r5, 0
/* 8003D428  38 C0 00 04 */	li r6, 4
/* 8003D42C  38 E0 00 00 */	li r7, 0
/* 8003D430  48 31 E1 95 */	bl GXSetVtxAttrFmt
/* 8003D434  38 60 00 00 */	li r3, 0
/* 8003D438  38 80 00 0D */	li r4, 0xd
/* 8003D43C  38 A0 00 01 */	li r5, 1
/* 8003D440  38 C0 00 04 */	li r6, 4
/* 8003D444  38 E0 00 00 */	li r7, 0
/* 8003D448  48 31 E1 7D */	bl GXSetVtxAttrFmt
/* 8003D44C  38 60 00 01 */	li r3, 1
/* 8003D450  48 32 24 41 */	bl GXSetNumTevStages
/* 8003D454  3C 60 80 42 */	lis r3, m_texObjAgg__8dMpath_n@ha /* 0x80424684@ha */
/* 8003D458  38 63 46 84 */	addi r3, r3, m_texObjAgg__8dMpath_n@l /* 0x80424684@l */
/* 8003D45C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8003D460  38 80 00 00 */	li r4, 0
/* 8003D464  48 32 0F B1 */	bl GXLoadTexObj
/* 8003D468  83 9A 00 04 */	lwz r28, 4(r26)
/* 8003D46C  8B 7A 00 02 */	lbz r27, 2(r26)
/* 8003D470  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 8003D474  38 80 00 05 */	li r4, 5
/* 8003D478  48 31 F4 45 */	bl GXSetLineWidth
/* 8003D47C  57 A3 06 3E */	clrlwi r3, r29, 0x18
/* 8003D480  38 80 00 05 */	li r4, 5
/* 8003D484  48 31 F4 79 */	bl GXSetPointSize
/* 8003D488  7F E3 FB 78 */	mr r3, r31
/* 8003D48C  88 1A 00 00 */	lbz r0, 0(r26)
/* 8003D490  54 04 06 BE */	clrlwi r4, r0, 0x1a
/* 8003D494  88 BA 00 01 */	lbz r5, 1(r26)
/* 8003D498  81 9F 00 00 */	lwz r12, 0(r31)
/* 8003D49C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8003D4A0  7D 89 03 A6 */	mtctr r12
/* 8003D4A4  4E 80 04 21 */	bctrl 
/* 8003D4A8  80 03 00 00 */	lwz r0, 0(r3)
/* 8003D4AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8003D4B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8003D4B4  38 60 00 01 */	li r3, 1
/* 8003D4B8  38 81 00 0C */	addi r4, r1, 0xc
/* 8003D4BC  48 32 1E C1 */	bl GXSetTevColor
/* 8003D4C0  88 61 00 10 */	lbz r3, 0x10(r1)
/* 8003D4C4  38 03 FF FC */	addi r0, r3, -4
/* 8003D4C8  98 01 00 10 */	stb r0, 0x10(r1)
/* 8003D4CC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8003D4D0  90 01 00 08 */	stw r0, 8(r1)
/* 8003D4D4  38 60 00 02 */	li r3, 2
/* 8003D4D8  38 81 00 08 */	addi r4, r1, 8
/* 8003D4DC  48 32 1E A1 */	bl GXSetTevColor
/* 8003D4E0  3B 40 00 00 */	li r26, 0
/* 8003D4E4  3B BB FF FF */	addi r29, r27, -1
/* 8003D4E8  3F C0 CC 01 */	lis r30, 0xcc01
/* 8003D4EC  48 00 01 50 */	b lbl_8003D63C
lbl_8003D4F0:
/* 8003D4F0  7C 1A E8 00 */	cmpw r26, r29
/* 8003D4F4  40 80 00 B0 */	bge lbl_8003D5A4
/* 8003D4F8  38 60 00 00 */	li r3, 0
/* 8003D4FC  38 80 00 0F */	li r4, 0xf
/* 8003D500  38 A0 00 0F */	li r5, 0xf
/* 8003D504  38 C0 00 0F */	li r6, 0xf
/* 8003D508  38 E0 00 02 */	li r7, 2
/* 8003D50C  48 32 1D 19 */	bl GXSetTevColorIn
/* 8003D510  38 60 00 00 */	li r3, 0
/* 8003D514  38 80 00 00 */	li r4, 0
/* 8003D518  38 A0 00 00 */	li r5, 0
/* 8003D51C  38 C0 00 00 */	li r6, 0
/* 8003D520  38 E0 00 01 */	li r7, 1
/* 8003D524  39 00 00 00 */	li r8, 0
/* 8003D528  48 32 1D 85 */	bl GXSetTevColorOp
/* 8003D52C  38 60 00 00 */	li r3, 0
/* 8003D530  38 80 00 07 */	li r4, 7
/* 8003D534  38 A0 00 07 */	li r5, 7
/* 8003D538  38 C0 00 07 */	li r6, 7
/* 8003D53C  38 E0 00 06 */	li r7, 6
/* 8003D540  48 32 1D 29 */	bl GXSetTevAlphaIn
/* 8003D544  38 60 00 00 */	li r3, 0
/* 8003D548  38 80 00 00 */	li r4, 0
/* 8003D54C  38 A0 00 00 */	li r5, 0
/* 8003D550  38 C0 00 00 */	li r6, 0
/* 8003D554  38 E0 00 01 */	li r7, 1
/* 8003D558  39 00 00 00 */	li r8, 0
/* 8003D55C  48 32 1D B9 */	bl GXSetTevAlphaOp
/* 8003D560  38 60 00 B0 */	li r3, 0xb0
/* 8003D564  38 80 00 00 */	li r4, 0
/* 8003D568  38 A0 00 02 */	li r5, 2
/* 8003D56C  48 31 F1 F9 */	bl GXBegin
/* 8003D570  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8003D574  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8003D578  B0 03 80 00 */	sth r0, 0x8000(r3)  /* 0xCC008000@l */
/* 8003D57C  C0 02 84 08 */	lfs f0, lit_3836(r2)
/* 8003D580  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8003D584  C0 02 84 08 */	lfs f0, lit_3836(r2)
/* 8003D588  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8003D58C  A0 1C 00 02 */	lhz r0, 2(r28)
/* 8003D590  B0 03 80 00 */	sth r0, -0x8000(r3)
/* 8003D594  C0 02 84 08 */	lfs f0, lit_3836(r2)
/* 8003D598  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 8003D59C  C0 02 84 08 */	lfs f0, lit_3836(r2)
/* 8003D5A0  D0 03 80 00 */	stfs f0, -0x8000(r3)
lbl_8003D5A4:
/* 8003D5A4  38 60 00 00 */	li r3, 0
/* 8003D5A8  38 80 00 0F */	li r4, 0xf
/* 8003D5AC  38 A0 00 0E */	li r5, 0xe
/* 8003D5B0  38 C0 00 08 */	li r6, 8
/* 8003D5B4  38 E0 00 04 */	li r7, 4
/* 8003D5B8  48 32 1C 6D */	bl GXSetTevColorIn
/* 8003D5BC  38 60 00 00 */	li r3, 0
/* 8003D5C0  38 80 00 00 */	li r4, 0
/* 8003D5C4  38 A0 00 00 */	li r5, 0
/* 8003D5C8  38 C0 00 00 */	li r6, 0
/* 8003D5CC  38 E0 00 01 */	li r7, 1
/* 8003D5D0  39 00 00 00 */	li r8, 0
/* 8003D5D4  48 32 1C D9 */	bl GXSetTevColorOp
/* 8003D5D8  38 60 00 00 */	li r3, 0
/* 8003D5DC  38 80 00 07 */	li r4, 7
/* 8003D5E0  38 A0 00 07 */	li r5, 7
/* 8003D5E4  38 C0 00 07 */	li r6, 7
/* 8003D5E8  38 E0 00 04 */	li r7, 4
/* 8003D5EC  48 32 1C 7D */	bl GXSetTevAlphaIn
/* 8003D5F0  38 60 00 00 */	li r3, 0
/* 8003D5F4  38 80 00 00 */	li r4, 0
/* 8003D5F8  38 A0 00 00 */	li r5, 0
/* 8003D5FC  38 C0 00 00 */	li r6, 0
/* 8003D600  38 E0 00 01 */	li r7, 1
/* 8003D604  39 00 00 00 */	li r8, 0
/* 8003D608  48 32 1D 0D */	bl GXSetTevAlphaOp
/* 8003D60C  38 60 00 B8 */	li r3, 0xb8
/* 8003D610  38 80 00 00 */	li r4, 0
/* 8003D614  38 A0 00 01 */	li r5, 1
/* 8003D618  48 31 F1 4D */	bl GXBegin
/* 8003D61C  A0 1C 00 00 */	lhz r0, 0(r28)
/* 8003D620  B0 1E 80 00 */	sth r0, -0x8000(r30)
/* 8003D624  C0 02 84 08 */	lfs f0, lit_3836(r2)
/* 8003D628  D0 1E 80 00 */	stfs f0, -0x8000(r30)
/* 8003D62C  C0 02 84 08 */	lfs f0, lit_3836(r2)
/* 8003D630  D0 1E 80 00 */	stfs f0, -0x8000(r30)
/* 8003D634  3B 9C 00 02 */	addi r28, r28, 2
/* 8003D638  3B 5A 00 01 */	addi r26, r26, 1
lbl_8003D63C:
/* 8003D63C  7C 1A D8 00 */	cmpw r26, r27
/* 8003D640  41 80 FE B0 */	blt lbl_8003D4F0
/* 8003D644  7F E3 FB 78 */	mr r3, r31
/* 8003D648  4B FF F8 31 */	bl setTevSettingNonTextureDirectColor__18dRenderingFDAmap_cCFv
/* 8003D64C  48 31 DF 41 */	bl GXClearVtxDesc
/* 8003D650  38 60 00 09 */	li r3, 9
/* 8003D654  38 80 00 03 */	li r4, 3
/* 8003D658  48 31 D8 61 */	bl GXSetVtxDesc
/* 8003D65C  38 60 00 00 */	li r3, 0
/* 8003D660  38 80 00 09 */	li r4, 9
/* 8003D664  38 A0 00 00 */	li r5, 0
/* 8003D668  38 C0 00 04 */	li r6, 4
/* 8003D66C  38 E0 00 00 */	li r7, 0
/* 8003D670  48 31 DF 55 */	bl GXSetVtxAttrFmt
lbl_8003D674:
/* 8003D674  39 61 00 30 */	addi r11, r1, 0x30
/* 8003D678  48 32 4B A5 */	bl _restgpr_26
/* 8003D67C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8003D680  7C 08 03 A6 */	mtlr r0
/* 8003D684  38 21 00 30 */	addi r1, r1, 0x30
/* 8003D688  4E 80 00 20 */	blr 
