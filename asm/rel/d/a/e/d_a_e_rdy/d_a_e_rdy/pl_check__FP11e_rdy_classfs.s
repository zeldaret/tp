lbl_8076D004:
/* 8076D004  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8076D008  7C 08 02 A6 */	mflr r0
/* 8076D00C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8076D010  39 61 00 20 */	addi r11, r1, 0x20
/* 8076D014  4B BF 51 C1 */	bl _savegpr_27
/* 8076D018  7C 7F 1B 78 */	mr r31, r3
/* 8076D01C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076D020  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076D024  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 8076D028  28 00 00 00 */	cmplwi r0, 0
/* 8076D02C  41 82 00 0C */	beq lbl_8076D038
/* 8076D030  38 60 00 00 */	li r3, 0
/* 8076D034  48 00 00 C8 */	b lbl_8076D0FC
lbl_8076D038:
/* 8076D038  80 BD 5D AC */	lwz r5, 0x5dac(r29)
/* 8076D03C  3C 60 80 78 */	lis r3, S_find@ha /* 0x8077A8D4@ha */
/* 8076D040  A8 03 A8 D4 */	lha r0, S_find@l(r3)  /* 0x8077A8D4@l */
/* 8076D044  2C 00 00 00 */	cmpwi r0, 0
/* 8076D048  41 82 00 0C */	beq lbl_8076D054
/* 8076D04C  3C 60 80 78 */	lis r3, lit_4663@ha /* 0x80779E88@ha */
/* 8076D050  C0 23 9E 88 */	lfs f1, lit_4663@l(r3)  /* 0x80779E88@l */
lbl_8076D054:
/* 8076D054  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 8076D058  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8076D05C  40 80 00 9C */	bge lbl_8076D0F8
/* 8076D060  A8 7F 0A 4C */	lha r3, 0xa4c(r31)
/* 8076D064  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8076D068  7C 03 00 50 */	subf r0, r3, r0
/* 8076D06C  7C 03 07 34 */	extsh r3, r0
/* 8076D070  7C 80 07 34 */	extsh r0, r4
/* 8076D074  7C 03 00 00 */	cmpw r3, r0
/* 8076D078  40 80 00 30 */	bge lbl_8076D0A8
/* 8076D07C  7C 04 00 D0 */	neg r0, r4
/* 8076D080  7C 00 07 34 */	extsh r0, r0
/* 8076D084  7C 03 00 00 */	cmpw r3, r0
/* 8076D088  40 81 00 20 */	ble lbl_8076D0A8
/* 8076D08C  7F E3 FB 78 */	mr r3, r31
/* 8076D090  7C A4 2B 78 */	mr r4, r5
/* 8076D094  4B FF F9 3D */	bl other_bg_check__FP11e_rdy_classP10fopAc_ac_c
/* 8076D098  2C 03 00 00 */	cmpwi r3, 0
/* 8076D09C  40 82 00 0C */	bne lbl_8076D0A8
/* 8076D0A0  38 60 00 01 */	li r3, 1
/* 8076D0A4  48 00 00 58 */	b lbl_8076D0FC
lbl_8076D0A8:
/* 8076D0A8  3B 60 00 00 */	li r27, 0
/* 8076D0AC  3B C0 00 00 */	li r30, 0
lbl_8076D0B0:
/* 8076D0B0  3B 9E 0E 28 */	addi r28, r30, 0xe28
/* 8076D0B4  7F 9F E2 14 */	add r28, r31, r28
/* 8076D0B8  7F 83 E3 78 */	mr r3, r28
/* 8076D0BC  4B 91 75 9D */	bl ChkCoHit__12dCcD_GObjInfFv
/* 8076D0C0  28 03 00 00 */	cmplwi r3, 0
/* 8076D0C4  41 82 00 24 */	beq lbl_8076D0E8
/* 8076D0C8  7F 83 E3 78 */	mr r3, r28
/* 8076D0CC  4B 91 76 25 */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 8076D0D0  4B AF 69 79 */	bl GetAc__8cCcD_ObjFv
/* 8076D0D4  80 1D 5D AC */	lwz r0, 0x5dac(r29)
/* 8076D0D8  7C 00 18 40 */	cmplw r0, r3
/* 8076D0DC  40 82 00 0C */	bne lbl_8076D0E8
/* 8076D0E0  38 60 00 01 */	li r3, 1
/* 8076D0E4  48 00 00 18 */	b lbl_8076D0FC
lbl_8076D0E8:
/* 8076D0E8  3B 7B 00 01 */	addi r27, r27, 1
/* 8076D0EC  2C 1B 00 02 */	cmpwi r27, 2
/* 8076D0F0  3B DE 01 38 */	addi r30, r30, 0x138
/* 8076D0F4  40 81 FF BC */	ble lbl_8076D0B0
lbl_8076D0F8:
/* 8076D0F8  38 60 00 00 */	li r3, 0
lbl_8076D0FC:
/* 8076D0FC  39 61 00 20 */	addi r11, r1, 0x20
/* 8076D100  4B BF 51 21 */	bl _restgpr_27
/* 8076D104  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8076D108  7C 08 03 A6 */	mtlr r0
/* 8076D10C  38 21 00 20 */	addi r1, r1, 0x20
/* 8076D110  4E 80 00 20 */	blr 
