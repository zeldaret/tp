lbl_806CDFB0:
/* 806CDFB0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806CDFB4  7C 08 02 A6 */	mflr r0
/* 806CDFB8  90 01 00 94 */	stw r0, 0x94(r1)
/* 806CDFBC  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 806CDFC0  93 C1 00 88 */	stw r30, 0x88(r1)
/* 806CDFC4  7C 7F 1B 78 */	mr r31, r3
/* 806CDFC8  3C 60 80 6D */	lis r3, lit_3907@ha
/* 806CDFCC  3B C3 0E 60 */	addi r30, r3, lit_3907@l
/* 806CDFD0  3C 60 80 6D */	lis r3, l_HIO@ha
/* 806CDFD4  38 63 11 38 */	addi r3, r3, l_HIO@l
/* 806CDFD8  C0 03 00 08 */	lfs f0, 8(r3)
/* 806CDFDC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806CDFE0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806CDFE4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806CDFE8  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 806CDFEC  38 63 00 24 */	addi r3, r3, 0x24
/* 806CDFF0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806CDFF4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806CDFF8  4B C7 84 B8 */	b PSMTXCopy
/* 806CDFFC  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 806CE000  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 806CE004  C0 7E 00 04 */	lfs f3, 4(r30)
/* 806CE008  4B 93 ED 94 */	b transM__14mDoMtx_stack_cFfff
/* 806CE00C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806CE010  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806CE014  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806CE018  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806CE01C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806CE020  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806CE024  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806CE028  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806CE02C  38 61 00 30 */	addi r3, r1, 0x30
/* 806CE030  4B 9A 95 4C */	b __ct__11dBgS_GndChkFv
/* 806CE034  38 61 00 30 */	addi r3, r1, 0x30
/* 806CE038  38 81 00 18 */	addi r4, r1, 0x18
/* 806CE03C  4B B9 9C EC */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806CE040  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CE044  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CE048  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806CE04C  38 81 00 30 */	addi r4, r1, 0x30
/* 806CE050  4B 9A 64 50 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806CE054  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 806CE058  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806CE05C  41 82 00 08 */	beq lbl_806CE064
/* 806CE060  D0 21 00 1C */	stfs f1, 0x1c(r1)
lbl_806CE064:
/* 806CE064  38 60 00 00 */	li r3, 0
/* 806CE068  90 61 00 08 */	stw r3, 8(r1)
/* 806CE06C  90 61 00 0C */	stw r3, 0xc(r1)
/* 806CE070  38 00 FF FF */	li r0, -1
/* 806CE074  90 01 00 10 */	stw r0, 0x10(r1)
/* 806CE078  90 61 00 14 */	stw r3, 0x14(r1)
/* 806CE07C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806CE080  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806CE084  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806CE088  80 9F 10 74 */	lwz r4, 0x1074(r31)
/* 806CE08C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008689@ha */
/* 806CE090  38 A5 86 89 */	addi r5, r5, 0x8689 /* 0x00008689@l */
/* 806CE094  38 DF 07 DC */	addi r6, r31, 0x7dc
/* 806CE098  38 E1 00 18 */	addi r7, r1, 0x18
/* 806CE09C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 806CE0A0  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 806CE0A4  39 41 00 24 */	addi r10, r1, 0x24
/* 806CE0A8  4B 97 F5 FC */	b setPoly__13dPa_control_cFUlUsR13cBgS_PolyInfoPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyziP18dPa_levelEcallBackScPC4cXyz
/* 806CE0AC  90 7F 10 74 */	stw r3, 0x1074(r31)
/* 806CE0B0  38 61 00 30 */	addi r3, r1, 0x30
/* 806CE0B4  38 80 FF FF */	li r4, -1
/* 806CE0B8  4B 9A 95 38 */	b __dt__11dBgS_GndChkFv
/* 806CE0BC  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 806CE0C0  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 806CE0C4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806CE0C8  7C 08 03 A6 */	mtlr r0
/* 806CE0CC  38 21 00 90 */	addi r1, r1, 0x90
/* 806CE0D0  4E 80 00 20 */	blr 
