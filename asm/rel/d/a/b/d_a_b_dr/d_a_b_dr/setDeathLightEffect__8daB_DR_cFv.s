lbl_805BBFC0:
/* 805BBFC0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BBFC4  7C 08 02 A6 */	mflr r0
/* 805BBFC8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BBFCC  39 61 00 40 */	addi r11, r1, 0x40
/* 805BBFD0  4B DA 62 01 */	bl _savegpr_26
/* 805BBFD4  7C 7F 1B 78 */	mr r31, r3
/* 805BBFD8  3B 40 00 00 */	li r26, 0
/* 805BBFDC  3B C0 00 00 */	li r30, 0
/* 805BBFE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805BBFE4  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805BBFE8  3C 60 80 5C */	lis r3, w_eff_id@ha /* 0x805C7554@ha */
/* 805BBFEC  3B 83 75 54 */	addi r28, r3, w_eff_id@l /* 0x805C7554@l */
/* 805BBFF0  3C 60 80 5C */	lis r3, lit_4012@ha /* 0x805C6CA8@ha */
/* 805BBFF4  3B A3 6C A8 */	addi r29, r3, lit_4012@l /* 0x805C6CA8@l */
lbl_805BBFF8:
/* 805BBFF8  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 805BBFFC  38 80 00 00 */	li r4, 0
/* 805BC000  90 81 00 08 */	stw r4, 8(r1)
/* 805BC004  38 00 FF FF */	li r0, -1
/* 805BC008  90 01 00 0C */	stw r0, 0xc(r1)
/* 805BC00C  90 81 00 10 */	stw r4, 0x10(r1)
/* 805BC010  90 81 00 14 */	stw r4, 0x14(r1)
/* 805BC014  90 81 00 18 */	stw r4, 0x18(r1)
/* 805BC018  38 80 00 00 */	li r4, 0
/* 805BC01C  7C BC F2 2E */	lhzx r5, r28, r30
/* 805BC020  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 805BC024  38 FF 01 0C */	addi r7, r31, 0x10c
/* 805BC028  39 00 00 00 */	li r8, 0
/* 805BC02C  39 20 00 00 */	li r9, 0
/* 805BC030  39 40 00 FF */	li r10, 0xff
/* 805BC034  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805BC038  4B A9 0A 59 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805BC03C  3B 5A 00 01 */	addi r26, r26, 1
/* 805BC040  2C 1A 00 04 */	cmpwi r26, 4
/* 805BC044  3B DE 00 02 */	addi r30, r30, 2
/* 805BC048  41 80 FF B0 */	blt lbl_805BBFF8
/* 805BC04C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805BC050  7C 03 07 74 */	extsb r3, r0
/* 805BC054  4B A7 10 19 */	bl dComIfGp_getReverb__Fi
/* 805BC058  7C 67 1B 78 */	mr r7, r3
/* 805BC05C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006000A@ha */
/* 805BC060  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0006000A@l */
/* 805BC064  90 01 00 20 */	stw r0, 0x20(r1)
/* 805BC068  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 805BC06C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 805BC070  80 63 00 00 */	lwz r3, 0(r3)
/* 805BC074  38 81 00 20 */	addi r4, r1, 0x20
/* 805BC078  38 BF 05 38 */	addi r5, r31, 0x538
/* 805BC07C  38 C0 00 00 */	li r6, 0
/* 805BC080  3D 00 80 5C */	lis r8, lit_4012@ha /* 0x805C6CA8@ha */
/* 805BC084  C0 28 6C A8 */	lfs f1, lit_4012@l(r8)  /* 0x805C6CA8@l */
/* 805BC088  FC 40 08 90 */	fmr f2, f1
/* 805BC08C  3D 00 80 5C */	lis r8, lit_4022@ha /* 0x805C6CAC@ha */
/* 805BC090  C0 68 6C AC */	lfs f3, lit_4022@l(r8)  /* 0x805C6CAC@l */
/* 805BC094  FC 80 18 90 */	fmr f4, f3
/* 805BC098  39 00 00 00 */	li r8, 0
/* 805BC09C  4B CE F8 E9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805BC0A0  39 61 00 40 */	addi r11, r1, 0x40
/* 805BC0A4  4B DA 61 79 */	bl _restgpr_26
/* 805BC0A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BC0AC  7C 08 03 A6 */	mtlr r0
/* 805BC0B0  38 21 00 40 */	addi r1, r1, 0x40
/* 805BC0B4  4E 80 00 20 */	blr 
