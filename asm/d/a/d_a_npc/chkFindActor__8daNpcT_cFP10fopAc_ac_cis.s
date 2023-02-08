lbl_8014AE1C:
/* 8014AE1C  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8014AE20  7C 08 02 A6 */	mflr r0
/* 8014AE24  90 01 00 94 */	stw r0, 0x94(r1)
/* 8014AE28  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8014AE2C  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8014AE30  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8014AE34  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8014AE38  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8014AE3C  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8014AE40  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 8014AE44  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 8014AE48  39 61 00 50 */	addi r11, r1, 0x50
/* 8014AE4C  48 21 73 89 */	bl _savegpr_27
/* 8014AE50  7C 7B 1B 78 */	mr r27, r3
/* 8014AE54  7C 9C 23 78 */	mr r28, r4
/* 8014AE58  7C BD 2B 78 */	mr r29, r5
/* 8014AE5C  7C DE 33 78 */	mr r30, r6
/* 8014AE60  38 61 00 20 */	addi r3, r1, 0x20
/* 8014AE64  7F 64 DB 78 */	mr r4, r27
/* 8014AE68  7F 85 E3 78 */	mr r5, r28
/* 8014AE6C  48 00 05 81 */	bl getAttnPos__8daNpcT_cFP10fopAc_ac_c
/* 8014AE70  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8014AE74  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8014AE78  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8014AE7C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8014AE80  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8014AE84  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8014AE88  2C 1D 00 00 */	cmpwi r29, 0
/* 8014AE8C  40 82 00 0C */	bne lbl_8014AE98
/* 8014AE90  88 1B 05 47 */	lbz r0, 0x547(r27)
/* 8014AE94  48 00 00 08 */	b lbl_8014AE9C
lbl_8014AE98:
/* 8014AE98  88 1B 05 45 */	lbz r0, 0x545(r27)
lbl_8014AE9C:
/* 8014AE9C  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 8014AEA0  2C 1D 00 00 */	cmpwi r29, 0
/* 8014AEA4  40 82 00 14 */	bne lbl_8014AEB8
/* 8014AEA8  7F E3 FB 78 */	mr r3, r31
/* 8014AEAC  48 00 01 65 */	bl getDistTable__12dAttention_cFi
/* 8014AEB0  C3 E3 00 00 */	lfs f31, 0(r3)
/* 8014AEB4  48 00 00 10 */	b lbl_8014AEC4
lbl_8014AEB8:
/* 8014AEB8  7F E3 FB 78 */	mr r3, r31
/* 8014AEBC  48 00 01 55 */	bl getDistTable__12dAttention_cFi
/* 8014AEC0  C3 E3 00 04 */	lfs f31, 4(r3)
lbl_8014AEC4:
/* 8014AEC4  7F E3 FB 78 */	mr r3, r31
/* 8014AEC8  48 00 01 49 */	bl getDistTable__12dAttention_cFi
/* 8014AECC  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8014AED0  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 8014AED4  EF C0 00 72 */	fmuls f30, f0, f1
/* 8014AED8  7F E3 FB 78 */	mr r3, r31
/* 8014AEDC  48 00 01 35 */	bl getDistTable__12dAttention_cFi
/* 8014AEE0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8014AEE4  C0 02 99 E8 */	lfs f0, lit_4148(r2)
/* 8014AEE8  EF A0 00 72 */	fmuls f29, f0, f1
/* 8014AEEC  7F E3 FB 78 */	mr r3, r31
/* 8014AEF0  48 00 01 21 */	bl getDistTable__12dAttention_cFi
/* 8014AEF4  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8014AEF8  C3 82 9A 4C */	lfs f28, lit_6775(r2)
/* 8014AEFC  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 8014AF00  41 82 00 0C */	beq lbl_8014AF0C
/* 8014AF04  C3 82 9A 50 */	lfs f28, lit_6904(r2)
/* 8014AF08  48 00 00 50 */	b lbl_8014AF58
lbl_8014AF0C:
/* 8014AF0C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 8014AF10  41 82 00 0C */	beq lbl_8014AF1C
/* 8014AF14  C3 82 9A 54 */	lfs f28, lit_6905(r2)
/* 8014AF18  48 00 00 40 */	b lbl_8014AF58
lbl_8014AF1C:
/* 8014AF1C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8014AF20  41 82 00 0C */	beq lbl_8014AF2C
/* 8014AF24  C3 82 9A 58 */	lfs f28, lit_6906(r2)
/* 8014AF28  48 00 00 30 */	b lbl_8014AF58
lbl_8014AF2C:
/* 8014AF2C  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 8014AF30  41 82 00 0C */	beq lbl_8014AF3C
/* 8014AF34  C3 82 9A 5C */	lfs f28, lit_6907(r2)
/* 8014AF38  48 00 00 20 */	b lbl_8014AF58
lbl_8014AF3C:
/* 8014AF3C  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8014AF40  41 82 00 0C */	beq lbl_8014AF4C
/* 8014AF44  C3 82 9A 60 */	lfs f28, lit_6908(r2)
/* 8014AF48  48 00 00 10 */	b lbl_8014AF58
lbl_8014AF4C:
/* 8014AF4C  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 8014AF50  41 82 00 08 */	beq lbl_8014AF58
/* 8014AF54  C3 82 9A 64 */	lfs f28, lit_6909(r2)
lbl_8014AF58:
/* 8014AF58  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8014AF5C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8014AF60  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8014AF64  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8014AF68  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8014AF6C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8014AF70  C0 1B 05 50 */	lfs f0, 0x550(r27)
/* 8014AF74  D0 01 00 08 */	stfs f0, 8(r1)
/* 8014AF78  C0 1B 05 54 */	lfs f0, 0x554(r27)
/* 8014AF7C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8014AF80  C0 1B 05 58 */	lfs f0, 0x558(r27)
/* 8014AF84  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8014AF88  7F 63 DB 78 */	mr r3, r27
/* 8014AF8C  38 81 00 14 */	addi r4, r1, 0x14
/* 8014AF90  38 A1 00 08 */	addi r5, r1, 8
/* 8014AF94  FC 20 F8 90 */	fmr f1, f31
/* 8014AF98  FC 40 F0 90 */	fmr f2, f30
/* 8014AF9C  FC 60 E8 90 */	fmr f3, f29
/* 8014AFA0  38 C0 00 00 */	li r6, 0
/* 8014AFA4  4B FF FD 4D */	bl chkPointInArea__8daNpcT_cF4cXyz4cXyzfffs
/* 8014AFA8  2C 03 00 00 */	cmpwi r3, 0
/* 8014AFAC  41 82 00 28 */	beq lbl_8014AFD4
/* 8014AFB0  7F 63 DB 78 */	mr r3, r27
/* 8014AFB4  7F 84 E3 78 */	mr r4, r28
/* 8014AFB8  FC 20 E0 90 */	fmr f1, f28
/* 8014AFBC  7F C5 F3 78 */	mr r5, r30
/* 8014AFC0  4B FF FC 11 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 8014AFC4  2C 03 00 00 */	cmpwi r3, 0
/* 8014AFC8  41 82 00 0C */	beq lbl_8014AFD4
/* 8014AFCC  38 60 00 01 */	li r3, 1
/* 8014AFD0  48 00 00 08 */	b lbl_8014AFD8
lbl_8014AFD4:
/* 8014AFD4  38 60 00 00 */	li r3, 0
lbl_8014AFD8:
/* 8014AFD8  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8014AFDC  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8014AFE0  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8014AFE4  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8014AFE8  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8014AFEC  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8014AFF0  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 8014AFF4  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 8014AFF8  39 61 00 50 */	addi r11, r1, 0x50
/* 8014AFFC  48 21 72 25 */	bl _restgpr_27
/* 8014B000  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8014B004  7C 08 03 A6 */	mtlr r0
/* 8014B008  38 21 00 90 */	addi r1, r1, 0x90
/* 8014B00C  4E 80 00 20 */	blr 
