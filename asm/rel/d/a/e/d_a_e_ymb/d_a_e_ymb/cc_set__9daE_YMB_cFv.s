lbl_80820668:
/* 80820668  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8082066C  7C 08 02 A6 */	mflr r0
/* 80820670  90 01 00 34 */	stw r0, 0x34(r1)
/* 80820674  39 61 00 30 */	addi r11, r1, 0x30
/* 80820678  4B B4 1B 59 */	bl _savegpr_26
/* 8082067C  7C 7E 1B 78 */	mr r30, r3
/* 80820680  3C 80 80 82 */	lis r4, lit_3791@ha /* 0x808218AC@ha */
/* 80820684  3B E4 18 AC */	addi r31, r4, lit_3791@l /* 0x808218AC@l */
/* 80820688  80 83 05 BC */	lwz r4, 0x5bc(r3)
/* 8082068C  83 64 00 04 */	lwz r27, 4(r4)
/* 80820690  4B FF FD 49 */	bl setAttentionPos__9daE_YMB_cFv
/* 80820694  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80820698  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8082069C  38 63 00 30 */	addi r3, r3, 0x30
/* 808206A0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808206A4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808206A8  4B B2 5E 09 */	bl PSMTXCopy
/* 808206AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 808206B0  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 808206B4  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 808206B8  D0 01 00 08 */	stfs f0, 8(r1)
/* 808206BC  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 808206C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 808206C4  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 808206C8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 808206CC  38 7E 09 50 */	addi r3, r30, 0x950
/* 808206D0  38 81 00 08 */	addi r4, r1, 8
/* 808206D4  4B A4 EF 75 */	bl SetC__8cM3dGSphFRC4cXyz
/* 808206D8  38 7E 09 50 */	addi r3, r30, 0x950
/* 808206DC  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 808206E0  3C 80 80 82 */	lis r4, l_HIO@ha /* 0x80821E64@ha */
/* 808206E4  3B A4 1E 64 */	addi r29, r4, l_HIO@l /* 0x80821E64@l */
/* 808206E8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 808206EC  EC 21 00 32 */	fmuls f1, f1, f0
/* 808206F0  4B A4 F0 19 */	bl SetR__8cM3dGSphFf
/* 808206F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 808206F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 808206FC  3B 43 23 3C */	addi r26, r3, 0x233c
/* 80820700  7F 43 D3 78 */	mr r3, r26
/* 80820704  38 9E 08 2C */	addi r4, r30, 0x82c
/* 80820708  4B A4 44 A1 */	bl Set__4cCcSFP8cCcD_Obj
/* 8082070C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80820710  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80820714  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 80820718  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8082071C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80820720  4B B2 5D 91 */	bl PSMTXCopy
/* 80820724  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80820728  D0 01 00 08 */	stfs f0, 8(r1)
/* 8082072C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80820730  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80820734  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80820738  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8082073C  38 7E 0A 88 */	addi r3, r30, 0xa88
/* 80820740  38 81 00 08 */	addi r4, r1, 8
/* 80820744  4B A4 EF 05 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80820748  38 7E 0A 88 */	addi r3, r30, 0xa88
/* 8082074C  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 80820750  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80820754  EC 21 00 32 */	fmuls f1, f1, f0
/* 80820758  4B A4 EF B1 */	bl SetR__8cM3dGSphFf
/* 8082075C  7F 43 D3 78 */	mr r3, r26
/* 80820760  38 9E 09 64 */	addi r4, r30, 0x964
/* 80820764  4B A4 44 45 */	bl Set__4cCcSFP8cCcD_Obj
/* 80820768  38 7E 14 48 */	addi r3, r30, 0x1448
/* 8082076C  38 81 00 08 */	addi r4, r1, 8
/* 80820770  4B A4 EE D9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80820774  38 7E 14 48 */	addi r3, r30, 0x1448
/* 80820778  C0 3F 01 C8 */	lfs f1, 0x1c8(r31)
/* 8082077C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80820780  EC 21 00 32 */	fmuls f1, f1, f0
/* 80820784  4B A4 EF 85 */	bl SetR__8cM3dGSphFf
/* 80820788  7F 43 D3 78 */	mr r3, r26
/* 8082078C  38 9E 13 24 */	addi r4, r30, 0x1324
/* 80820790  4B A4 44 19 */	bl Set__4cCcSFP8cCcD_Obj
/* 80820794  39 61 00 30 */	addi r11, r1, 0x30
/* 80820798  4B B4 1A 85 */	bl _restgpr_26
/* 8082079C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 808207A0  7C 08 03 A6 */	mtlr r0
/* 808207A4  38 21 00 30 */	addi r1, r1, 0x30
/* 808207A8  4E 80 00 20 */	blr 
