lbl_80C6CED0:
/* 80C6CED0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80C6CED4  7C 08 02 A6 */	mflr r0
/* 80C6CED8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80C6CEDC  39 61 00 60 */	addi r11, r1, 0x60
/* 80C6CEE0  4B 6F 52 E8 */	b _savegpr_24
/* 80C6CEE4  7C 7E 1B 78 */	mr r30, r3
/* 80C6CEE8  3C 60 80 C7 */	lis r3, mCcDObjInfo__12daLv5SwIce_c@ha
/* 80C6CEEC  3B E3 D5 08 */	addi r31, r3, mCcDObjInfo__12daLv5SwIce_c@l
/* 80C6CEF0  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 80C6CEF4  4B 41 75 6C */	b ChkTgHit__12dCcD_GObjInfFv
/* 80C6CEF8  28 03 00 00 */	cmplwi r3, 0
/* 80C6CEFC  41 82 01 18 */	beq lbl_80C6D014
/* 80C6CF00  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 80C6CF04  4B 41 76 44 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80C6CF08  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80C6CF0C  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80C6CF10  41 82 01 04 */	beq lbl_80C6D014
/* 80C6CF14  88 03 00 14 */	lbz r0, 0x14(r3)
/* 80C6CF18  28 00 00 64 */	cmplwi r0, 0x64
/* 80C6CF1C  41 82 00 10 */	beq lbl_80C6CF2C
/* 80C6CF20  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80C6CF24  28 00 00 03 */	cmplwi r0, 3
/* 80C6CF28  40 82 00 10 */	bne lbl_80C6CF38
lbl_80C6CF2C:
/* 80C6CF2C  7F C3 F3 78 */	mr r3, r30
/* 80C6CF30  48 00 01 C5 */	bl init_modeBreak__12daLv5SwIce_cFv
/* 80C6CF34  48 00 00 E0 */	b lbl_80C6D014
lbl_80C6CF38:
/* 80C6CF38  28 00 00 02 */	cmplwi r0, 2
/* 80C6CF3C  40 82 00 D8 */	bne lbl_80C6D014
/* 80C6CF40  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C6CF44  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C6CF48  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C6CF4C  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 80C6CF50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6CF54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6CF58  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C6CF5C  38 00 00 FF */	li r0, 0xff
/* 80C6CF60  90 01 00 08 */	stw r0, 8(r1)
/* 80C6CF64  38 80 00 00 */	li r4, 0
/* 80C6CF68  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C6CF6C  38 00 FF FF */	li r0, -1
/* 80C6CF70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C6CF74  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C6CF78  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C6CF7C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C6CF80  80 9E 07 30 */	lwz r4, 0x730(r30)
/* 80C6CF84  38 A0 00 00 */	li r5, 0
/* 80C6CF88  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008678@ha */
/* 80C6CF8C  38 C6 86 78 */	addi r6, r6, 0x8678 /* 0x00008678@l */
/* 80C6CF90  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80C6CF94  39 00 00 00 */	li r8, 0
/* 80C6CF98  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 80C6CF9C  39 41 00 30 */	addi r10, r1, 0x30
/* 80C6CFA0  4B 3E 05 2C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C6CFA4  90 7E 07 30 */	stw r3, 0x730(r30)
/* 80C6CFA8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C6CFAC  7C 03 07 74 */	extsb r3, r0
/* 80C6CFB0  4B 3C 00 BC */	b dComIfGp_getReverb__Fi
/* 80C6CFB4  7C 67 1B 78 */	mr r7, r3
/* 80C6CFB8  3C 60 00 08 */	lis r3, 0x0008 /* 0x000801C8@ha */
/* 80C6CFBC  38 03 01 C8 */	addi r0, r3, 0x01C8 /* 0x000801C8@l */
/* 80C6CFC0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C6CFC4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C6CFC8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C6CFCC  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6CFD0  38 81 00 20 */	addi r4, r1, 0x20
/* 80C6CFD4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C6CFD8  38 C0 00 00 */	li r6, 0
/* 80C6CFDC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C6CFE0  FC 40 08 90 */	fmr f2, f1
/* 80C6CFE4  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80C6CFE8  FC 80 18 90 */	fmr f4, f3
/* 80C6CFEC  39 00 00 00 */	li r8, 0
/* 80C6CFF0  4B 63 E9 94 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C6CFF4  88 7E 07 25 */	lbz r3, 0x725(r30)
/* 80C6CFF8  38 03 FF FF */	addi r0, r3, -1
/* 80C6CFFC  98 1E 07 25 */	stb r0, 0x725(r30)
/* 80C6D000  88 1E 07 25 */	lbz r0, 0x725(r30)
/* 80C6D004  28 00 00 00 */	cmplwi r0, 0
/* 80C6D008  40 82 00 0C */	bne lbl_80C6D014
/* 80C6D00C  7F C3 F3 78 */	mr r3, r30
/* 80C6D010  48 00 00 E5 */	bl init_modeBreak__12daLv5SwIce_cFv
lbl_80C6D014:
/* 80C6D014  38 7E 07 00 */	addi r3, r30, 0x700
/* 80C6D018  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80C6D01C  4B 60 21 E4 */	b SetR__8cM3dGCylFf
/* 80C6D020  38 7E 07 00 */	addi r3, r30, 0x700
/* 80C6D024  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 80C6D028  4B 60 21 D0 */	b SetH__8cM3dGCylFf
/* 80C6D02C  38 7E 07 00 */	addi r3, r30, 0x700
/* 80C6D030  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80C6D034  4B 60 21 A8 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C6D038  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6D03C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6D040  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C6D044  38 9E 05 DC */	addi r4, r30, 0x5dc
/* 80C6D048  4B 5F 7B 60 */	b Set__4cCcSFP8cCcD_Obj
/* 80C6D04C  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80C6D050  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C6D054  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C6D058  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C6D05C  3B 00 00 00 */	li r24, 0
/* 80C6D060  3B A0 00 00 */	li r29, 0
/* 80C6D064  3B 80 00 00 */	li r28, 0
/* 80C6D068  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6D06C  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 80C6D070  3B 7F 00 30 */	addi r27, r31, 0x30
lbl_80C6D074:
/* 80C6D074  80 7A 5D 3C */	lwz r3, 0x5d3c(r26)
/* 80C6D078  38 00 00 FF */	li r0, 0xff
/* 80C6D07C  90 01 00 08 */	stw r0, 8(r1)
/* 80C6D080  38 80 00 00 */	li r4, 0
/* 80C6D084  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C6D088  38 00 FF FF */	li r0, -1
/* 80C6D08C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C6D090  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C6D094  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C6D098  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C6D09C  3B 3C 07 28 */	addi r25, r28, 0x728
/* 80C6D0A0  7C 9E C8 2E */	lwzx r4, r30, r25
/* 80C6D0A4  38 A0 00 00 */	li r5, 0
/* 80C6D0A8  7C DB EA 2E */	lhzx r6, r27, r29
/* 80C6D0AC  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80C6D0B0  39 00 00 00 */	li r8, 0
/* 80C6D0B4  39 20 00 00 */	li r9, 0
/* 80C6D0B8  39 41 00 24 */	addi r10, r1, 0x24
/* 80C6D0BC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 80C6D0C0  4B 3E 04 0C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C6D0C4  7C 7E C9 2E */	stwx r3, r30, r25
/* 80C6D0C8  3B 18 00 01 */	addi r24, r24, 1
/* 80C6D0CC  2C 18 00 02 */	cmpwi r24, 2
/* 80C6D0D0  3B BD 00 02 */	addi r29, r29, 2
/* 80C6D0D4  3B 9C 00 04 */	addi r28, r28, 4
/* 80C6D0D8  41 80 FF 9C */	blt lbl_80C6D074
/* 80C6D0DC  39 61 00 60 */	addi r11, r1, 0x60
/* 80C6D0E0  4B 6F 51 34 */	b _restgpr_24
/* 80C6D0E4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80C6D0E8  7C 08 03 A6 */	mtlr r0
/* 80C6D0EC  38 21 00 60 */	addi r1, r1, 0x60
/* 80C6D0F0  4E 80 00 20 */	blr 
