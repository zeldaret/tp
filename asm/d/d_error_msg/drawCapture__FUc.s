lbl_8009D410:
/* 8009D410  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8009D414  7C 08 02 A6 */	mflr r0
/* 8009D418  90 01 00 74 */	stw r0, 0x74(r1)
/* 8009D41C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8009D420  7C 7F 1B 78 */	mr r31, r3
/* 8009D424  88 0D 8A 32 */	lbz r0, struct_80450FB0+0x2(r13)
/* 8009D428  7C 00 07 75 */	extsb. r0, r0
/* 8009D42C  40 82 00 14 */	bne lbl_8009D440
/* 8009D430  38 00 00 00 */	li r0, 0
/* 8009D434  98 0D 8A 31 */	stb r0, struct_80450FB0+0x1(r13)
/* 8009D438  38 00 00 01 */	li r0, 1
/* 8009D43C  98 0D 8A 32 */	stb r0, struct_80450FB0+0x2(r13)
lbl_8009D440:
/* 8009D440  88 0D 8A 31 */	lbz r0, struct_80450FB0+0x1(r13)
/* 8009D444  28 00 00 00 */	cmplwi r0, 0
/* 8009D448  40 82 00 44 */	bne lbl_8009D48C
/* 8009D44C  38 60 00 00 */	li r3, 0
/* 8009D450  38 80 00 00 */	li r4, 0
/* 8009D454  38 A0 02 60 */	li r5, 0x260
/* 8009D458  38 C0 01 C0 */	li r6, 0x1c0
/* 8009D45C  48 2B F6 25 */	bl GXSetTexCopySrc
/* 8009D460  38 60 01 30 */	li r3, 0x130
/* 8009D464  38 80 00 E0 */	li r4, 0xe0
/* 8009D468  80 AD 86 4C */	lwz r5, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 8009D46C  88 A5 00 00 */	lbz r5, 0(r5)
/* 8009D470  38 C0 00 01 */	li r6, 1
/* 8009D474  48 2B F6 BD */	bl GXSetTexCopyDst
/* 8009D478  80 6D 86 50 */	lwz r3, mFrameBufferTex__13mDoGph_gInf_c(r13)
/* 8009D47C  38 80 00 00 */	li r4, 0
/* 8009D480  48 2B FF ED */	bl GXCopyTex
/* 8009D484  38 00 00 01 */	li r0, 1
/* 8009D488  98 0D 8A 31 */	stb r0, struct_80450FB0+0x1(r13)
lbl_8009D48C:
/* 8009D48C  80 0D 80 80 */	lwz r0, g_clearColor(r13)
/* 8009D490  90 01 00 08 */	stw r0, 8(r1)
/* 8009D494  88 01 00 08 */	lbz r0, 8(r1)
/* 8009D498  98 01 00 18 */	stb r0, 0x18(r1)
/* 8009D49C  88 01 00 09 */	lbz r0, 9(r1)
/* 8009D4A0  98 01 00 19 */	stb r0, 0x19(r1)
/* 8009D4A4  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8009D4A8  98 01 00 1A */	stb r0, 0x1a(r1)
/* 8009D4AC  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8009D4B0  98 01 00 1B */	stb r0, 0x1b(r1)
/* 8009D4B4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8009D4B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8009D4BC  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8009D4C0  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8009D4C4  98 03 00 08 */	stb r0, 8(r3)
/* 8009D4C8  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8009D4CC  98 03 00 09 */	stb r0, 9(r3)
/* 8009D4D0  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8009D4D4  98 03 00 0A */	stb r0, 0xa(r3)
/* 8009D4D8  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8009D4DC  98 03 00 0B */	stb r0, 0xb(r3)
/* 8009D4E0  4B F6 AA B1 */	bl beginRender__13mDoGph_gInf_cFv
/* 8009D4E4  38 60 00 00 */	li r3, 0
/* 8009D4E8  48 2C 27 89 */	bl GXSetAlphaUpdate
/* 8009D4EC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8009D4F0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8009D4F4  48 27 2B C9 */	bl drawInit__6J3DSysFv
/* 8009D4F8  3C 60 80 3E */	lis r3, mFrameBufferTexObj__13mDoGph_gInf_c@ha
/* 8009D4FC  38 63 D3 E8 */	addi r3, r3, mFrameBufferTexObj__13mDoGph_gInf_c@l
/* 8009D500  80 8D 86 50 */	lwz r4, mFrameBufferTex__13mDoGph_gInf_c(r13)
/* 8009D504  38 A0 01 30 */	li r5, 0x130
/* 8009D508  38 C0 00 E0 */	li r6, 0xe0
/* 8009D50C  80 ED 86 4C */	lwz r7, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 8009D510  88 E7 00 00 */	lbz r7, 0(r7)
/* 8009D514  39 00 00 00 */	li r8, 0
/* 8009D518  39 20 00 00 */	li r9, 0
/* 8009D51C  39 40 00 00 */	li r10, 0
/* 8009D520  48 2C 09 21 */	bl GXInitTexObj
/* 8009D524  3C 60 80 3E */	lis r3, mFrameBufferTexObj__13mDoGph_gInf_c@ha
/* 8009D528  38 63 D3 E8 */	addi r3, r3, mFrameBufferTexObj__13mDoGph_gInf_c@l
/* 8009D52C  38 80 00 01 */	li r4, 1
/* 8009D530  38 A0 00 01 */	li r5, 1
/* 8009D534  C0 22 92 18 */	lfs f1, lit_3758(r2)
/* 8009D538  FC 40 08 90 */	fmr f2, f1
/* 8009D53C  FC 60 08 90 */	fmr f3, f1
/* 8009D540  38 C0 00 00 */	li r6, 0
/* 8009D544  38 E0 00 00 */	li r7, 0
/* 8009D548  39 00 00 00 */	li r8, 0
/* 8009D54C  48 2C 0B 89 */	bl GXInitTexObjLOD
/* 8009D550  3C 60 80 3E */	lis r3, mFrameBufferTexObj__13mDoGph_gInf_c@ha
/* 8009D554  38 63 D3 E8 */	addi r3, r3, mFrameBufferTexObj__13mDoGph_gInf_c@l
/* 8009D558  38 80 00 00 */	li r4, 0
/* 8009D55C  48 2C 0E B9 */	bl GXLoadTexObj
/* 8009D560  38 60 00 00 */	li r3, 0
/* 8009D564  48 2C 05 CD */	bl GXSetNumChans
/* 8009D568  38 60 00 00 */	li r3, 0
/* 8009D56C  48 2C 1B 69 */	bl GXSetNumIndStages
/* 8009D570  38 60 00 01 */	li r3, 1
/* 8009D574  48 2B E8 89 */	bl GXSetNumTexGens
/* 8009D578  38 60 00 00 */	li r3, 0
/* 8009D57C  38 80 00 01 */	li r4, 1
/* 8009D580  38 A0 00 04 */	li r5, 4
/* 8009D584  38 C0 00 3C */	li r6, 0x3c
/* 8009D588  38 E0 00 00 */	li r7, 0
/* 8009D58C  39 00 00 7D */	li r8, 0x7d
/* 8009D590  48 2B E5 ED */	bl GXSetTexCoordGen2
/* 8009D594  38 60 00 01 */	li r3, 1
/* 8009D598  48 2C 22 F9 */	bl GXSetNumTevStages
/* 8009D59C  80 02 D1 78 */	lwz r0, lit_3873(r2)
/* 8009D5A0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8009D5A4  9B E1 00 1F */	stb r31, 0x1f(r1)
/* 8009D5A8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8009D5AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009D5B0  38 60 00 01 */	li r3, 1
/* 8009D5B4  38 81 00 14 */	addi r4, r1, 0x14
/* 8009D5B8  48 2C 1D C5 */	bl GXSetTevColor
/* 8009D5BC  38 60 00 00 */	li r3, 0
/* 8009D5C0  38 80 00 00 */	li r4, 0
/* 8009D5C4  38 A0 00 00 */	li r5, 0
/* 8009D5C8  38 C0 00 FF */	li r6, 0xff
/* 8009D5CC  48 2C 21 29 */	bl GXSetTevOrder
/* 8009D5D0  38 60 00 00 */	li r3, 0
/* 8009D5D4  38 80 00 0F */	li r4, 0xf
/* 8009D5D8  38 A0 00 08 */	li r5, 8
/* 8009D5DC  38 C0 00 03 */	li r6, 3
/* 8009D5E0  38 E0 00 0F */	li r7, 0xf
/* 8009D5E4  48 2C 1C 41 */	bl GXSetTevColorIn
/* 8009D5E8  38 60 00 00 */	li r3, 0
/* 8009D5EC  38 80 00 00 */	li r4, 0
/* 8009D5F0  38 A0 00 00 */	li r5, 0
/* 8009D5F4  38 C0 00 00 */	li r6, 0
/* 8009D5F8  38 E0 00 01 */	li r7, 1
/* 8009D5FC  39 00 00 00 */	li r8, 0
/* 8009D600  48 2C 1C AD */	bl GXSetTevColorOp
/* 8009D604  38 60 00 00 */	li r3, 0
/* 8009D608  38 80 00 07 */	li r4, 7
/* 8009D60C  38 A0 00 07 */	li r5, 7
/* 8009D610  38 C0 00 07 */	li r6, 7
/* 8009D614  38 E0 00 07 */	li r7, 7
/* 8009D618  48 2C 1C 51 */	bl GXSetTevAlphaIn
/* 8009D61C  38 60 00 00 */	li r3, 0
/* 8009D620  38 80 00 00 */	li r4, 0
/* 8009D624  38 A0 00 00 */	li r5, 0
/* 8009D628  38 C0 00 00 */	li r6, 0
/* 8009D62C  38 E0 00 01 */	li r7, 1
/* 8009D630  39 00 00 00 */	li r8, 0
/* 8009D634  48 2C 1C E1 */	bl GXSetTevAlphaOp
/* 8009D638  38 60 00 01 */	li r3, 1
/* 8009D63C  48 2C 26 95 */	bl GXSetZCompLoc
/* 8009D640  38 60 00 00 */	li r3, 0
/* 8009D644  38 80 00 07 */	li r4, 7
/* 8009D648  38 A0 00 00 */	li r5, 0
/* 8009D64C  48 2C 26 51 */	bl GXSetZMode
/* 8009D650  38 60 00 00 */	li r3, 0
/* 8009D654  38 80 00 04 */	li r4, 4
/* 8009D658  38 A0 00 01 */	li r5, 1
/* 8009D65C  38 C0 00 00 */	li r6, 0
/* 8009D660  48 2C 25 91 */	bl GXSetBlendMode
/* 8009D664  38 60 00 07 */	li r3, 7
/* 8009D668  38 80 00 00 */	li r4, 0
/* 8009D66C  38 A0 00 01 */	li r5, 1
/* 8009D670  38 C0 00 07 */	li r6, 7
/* 8009D674  38 E0 00 00 */	li r7, 0
/* 8009D678  48 2C 1F AD */	bl GXSetAlphaCompare
/* 8009D67C  80 0D 80 80 */	lwz r0, g_clearColor(r13)
/* 8009D680  90 01 00 10 */	stw r0, 0x10(r1)
/* 8009D684  38 60 00 00 */	li r3, 0
/* 8009D688  C0 22 92 18 */	lfs f1, lit_3758(r2)
/* 8009D68C  FC 40 08 90 */	fmr f2, f1
/* 8009D690  FC 60 08 90 */	fmr f3, f1
/* 8009D694  FC 80 08 90 */	fmr f4, f1
/* 8009D698  38 81 00 10 */	addi r4, r1, 0x10
/* 8009D69C  48 2C 22 1D */	bl GXSetFog
/* 8009D6A0  38 60 00 00 */	li r3, 0
/* 8009D6A4  38 80 00 00 */	li r4, 0
/* 8009D6A8  38 A0 00 00 */	li r5, 0
/* 8009D6AC  48 2C 24 21 */	bl GXSetFogRangeAdj
/* 8009D6B0  38 60 00 00 */	li r3, 0
/* 8009D6B4  48 2B F2 D1 */	bl GXSetCullMode
/* 8009D6B8  38 60 00 01 */	li r3, 1
/* 8009D6BC  48 2C 27 1D */	bl GXSetDither
/* 8009D6C0  38 61 00 20 */	addi r3, r1, 0x20
/* 8009D6C4  C0 22 92 18 */	lfs f1, lit_3758(r2)
/* 8009D6C8  C0 42 92 30 */	lfs f2, lit_3764(r2)
/* 8009D6CC  FC 60 08 90 */	fmr f3, f1
/* 8009D6D0  FC 80 10 90 */	fmr f4, f2
/* 8009D6D4  FC A0 08 90 */	fmr f5, f1
/* 8009D6D8  C0 C2 92 3C */	lfs f6, lit_3767(r2)
/* 8009D6DC  48 2A 99 1D */	bl C_MTXOrtho
/* 8009D6E0  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha
/* 8009D6E4  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l
/* 8009D6E8  38 80 00 00 */	li r4, 0
/* 8009D6EC  48 2C 2B 61 */	bl GXLoadPosMtxImm
/* 8009D6F0  38 61 00 20 */	addi r3, r1, 0x20
/* 8009D6F4  38 80 00 01 */	li r4, 1
/* 8009D6F8  48 2C 29 DD */	bl GXSetProjection
/* 8009D6FC  38 60 00 00 */	li r3, 0
/* 8009D700  48 2C 2B ED */	bl GXSetCurrentMtx
/* 8009D704  48 2B DE 89 */	bl GXClearVtxDesc
/* 8009D708  38 60 00 09 */	li r3, 9
/* 8009D70C  38 80 00 01 */	li r4, 1
/* 8009D710  48 2B D7 A9 */	bl GXSetVtxDesc
/* 8009D714  38 60 00 0D */	li r3, 0xd
/* 8009D718  38 80 00 01 */	li r4, 1
/* 8009D71C  48 2B D7 9D */	bl GXSetVtxDesc
/* 8009D720  38 60 00 00 */	li r3, 0
/* 8009D724  38 80 00 09 */	li r4, 9
/* 8009D728  38 A0 00 00 */	li r5, 0
/* 8009D72C  38 C0 00 01 */	li r6, 1
/* 8009D730  38 E0 00 00 */	li r7, 0
/* 8009D734  48 2B DE 91 */	bl GXSetVtxAttrFmt
/* 8009D738  38 60 00 00 */	li r3, 0
/* 8009D73C  38 80 00 0D */	li r4, 0xd
/* 8009D740  38 A0 00 01 */	li r5, 1
/* 8009D744  38 C0 00 01 */	li r6, 1
/* 8009D748  38 E0 00 00 */	li r7, 0
/* 8009D74C  48 2B DE 79 */	bl GXSetVtxAttrFmt
/* 8009D750  38 60 00 01 */	li r3, 1
/* 8009D754  38 80 00 01 */	li r4, 1
/* 8009D758  4B F6 BD 5D */	bl mDoGph_drawFilterQuad__FScSc
/* 8009D75C  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8009D760  81 83 00 00 */	lwz r12, 0(r3)
/* 8009D764  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8009D768  7D 89 03 A6 */	mtctr r12
/* 8009D76C  4E 80 04 21 */	bctrl 
/* 8009D770  38 00 00 00 */	li r0, 0
/* 8009D774  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8009D778  90 03 00 04 */	stw r0, 4(r3)
/* 8009D77C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8009D780  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8009D784  7C 08 03 A6 */	mtlr r0
/* 8009D788  38 21 00 70 */	addi r1, r1, 0x70
/* 8009D78C  4E 80 00 20 */	blr 
