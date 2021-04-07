lbl_800134F8:
/* 800134F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800134FC  7C 08 02 A6 */	mflr r0
/* 80013500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80013504  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80013508  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8001350C  48 2F D2 31 */	bl reinitGX__6J3DSysFv
/* 80013510  38 60 00 00 */	li r3, 0
/* 80013514  48 34 BB C1 */	bl GXSetNumIndStages
/* 80013518  48 19 40 A9 */	bl dKy_setLight_again__Fv
/* 8001351C  48 34 80 71 */	bl GXClearVtxDesc
/* 80013520  38 60 00 09 */	li r3, 9
/* 80013524  38 80 00 03 */	li r4, 3
/* 80013528  48 34 79 91 */	bl GXSetVtxDesc
/* 8001352C  38 60 00 0A */	li r3, 0xa
/* 80013530  38 80 00 03 */	li r4, 3
/* 80013534  48 34 79 85 */	bl GXSetVtxDesc
/* 80013538  38 60 00 0D */	li r3, 0xd
/* 8001353C  38 80 00 03 */	li r4, 3
/* 80013540  48 34 79 79 */	bl GXSetVtxDesc
/* 80013544  38 60 00 00 */	li r3, 0
/* 80013548  38 80 00 09 */	li r4, 9
/* 8001354C  38 A0 00 01 */	li r5, 1
/* 80013550  38 C0 00 04 */	li r6, 4
/* 80013554  38 E0 00 00 */	li r7, 0
/* 80013558  48 34 80 6D */	bl GXSetVtxAttrFmt
/* 8001355C  38 60 00 00 */	li r3, 0
/* 80013560  38 80 00 0A */	li r4, 0xa
/* 80013564  38 A0 00 00 */	li r5, 0
/* 80013568  38 C0 00 01 */	li r6, 1
/* 8001356C  38 E0 00 06 */	li r7, 6
/* 80013570  48 34 80 55 */	bl GXSetVtxAttrFmt
/* 80013574  38 60 00 00 */	li r3, 0
/* 80013578  38 80 00 0D */	li r4, 0xd
/* 8001357C  38 A0 00 01 */	li r5, 1
/* 80013580  38 C0 00 04 */	li r6, 4
/* 80013584  38 E0 00 00 */	li r7, 0
/* 80013588  48 34 80 3D */	bl GXSetVtxAttrFmt
/* 8001358C  48 19 50 A1 */	bl dKy_GxFog_set__Fv
/* 80013590  3C 60 80 3A */	lis r3, l_mat1DL@ha /* 0x803A3160@ha */
/* 80013594  38 63 31 60 */	addi r3, r3, l_mat1DL@l /* 0x803A3160@l */
/* 80013598  38 80 00 80 */	li r4, 0x80
/* 8001359C  48 34 C9 55 */	bl GXCallDisplayList
/* 800135A0  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 800135A4  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 800135A8  38 80 00 00 */	li r4, 0
/* 800135AC  48 34 CC A1 */	bl GXLoadPosMtxImm
/* 800135B0  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha /* 0x803A2FD8@ha */
/* 800135B4  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l /* 0x803A2FD8@l */
/* 800135B8  38 80 00 00 */	li r4, 0
/* 800135BC  48 34 CC E1 */	bl GXLoadNrmMtxImm
/* 800135C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800135C4  7C 08 03 A6 */	mtlr r0
/* 800135C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800135CC  4E 80 00 20 */	blr 
