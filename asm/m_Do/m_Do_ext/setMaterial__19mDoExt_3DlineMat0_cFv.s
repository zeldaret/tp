lbl_800126C0:
/* 800126C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800126C4  7C 08 02 A6 */	mflr r0
/* 800126C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800126CC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 800126D0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 800126D4  48 2F E0 69 */	bl reinitGX__6J3DSysFv
/* 800126D8  38 60 00 00 */	li r3, 0
/* 800126DC  48 34 C9 F9 */	bl GXSetNumIndStages
/* 800126E0  48 19 4E E1 */	bl dKy_setLight_again__Fv
/* 800126E4  48 34 8E A9 */	bl GXClearVtxDesc
/* 800126E8  38 60 00 09 */	li r3, 9
/* 800126EC  38 80 00 03 */	li r4, 3
/* 800126F0  48 34 87 C9 */	bl GXSetVtxDesc
/* 800126F4  38 60 00 0A */	li r3, 0xa
/* 800126F8  38 80 00 03 */	li r4, 3
/* 800126FC  48 34 87 BD */	bl GXSetVtxDesc
/* 80012700  38 60 00 00 */	li r3, 0
/* 80012704  38 80 00 09 */	li r4, 9
/* 80012708  38 A0 00 01 */	li r5, 1
/* 8001270C  38 C0 00 04 */	li r6, 4
/* 80012710  38 E0 00 00 */	li r7, 0
/* 80012714  48 34 8E B1 */	bl GXSetVtxAttrFmt
/* 80012718  38 60 00 00 */	li r3, 0
/* 8001271C  38 80 00 0A */	li r4, 0xa
/* 80012720  38 A0 00 00 */	li r5, 0
/* 80012724  38 C0 00 01 */	li r6, 1
/* 80012728  38 E0 00 06 */	li r7, 6
/* 8001272C  48 34 8E 99 */	bl GXSetVtxAttrFmt
/* 80012730  48 19 5E FD */	bl dKy_GxFog_set__Fv
/* 80012734  3C 60 80 3A */	lis r3, l_matDL@ha
/* 80012738  38 63 30 C0 */	addi r3, r3, l_matDL@l
/* 8001273C  38 80 00 80 */	li r4, 0x80
/* 80012740  48 34 D7 B1 */	bl GXCallDisplayList
/* 80012744  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80012748  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8001274C  38 80 00 00 */	li r4, 0
/* 80012750  48 34 DA FD */	bl GXLoadPosMtxImm
/* 80012754  3C 60 80 3A */	lis r3, g_mDoMtx_identity@ha
/* 80012758  38 63 2F D8 */	addi r3, r3, g_mDoMtx_identity@l
/* 8001275C  38 80 00 00 */	li r4, 0
/* 80012760  48 34 DB 3D */	bl GXLoadNrmMtxImm
/* 80012764  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80012768  7C 08 03 A6 */	mtlr r0
/* 8001276C  38 21 00 10 */	addi r1, r1, 0x10
/* 80012770  4E 80 00 20 */	blr 
