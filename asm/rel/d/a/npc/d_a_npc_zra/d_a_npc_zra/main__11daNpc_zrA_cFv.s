lbl_80B7ADF0:
/* 80B7ADF0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B7ADF4  7C 08 02 A6 */	mflr r0
/* 80B7ADF8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B7ADFC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B7AE00  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B7AE04  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7AE08  4B 7E 73 D4 */	b _savegpr_29
/* 80B7AE0C  7C 7E 1B 78 */	mr r30, r3
/* 80B7AE10  3C 80 80 B9 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B7AE14  3B E4 CE 90 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80B7AE18  48 00 31 29 */	bl doEvent__11daNpc_zrA_cFv
/* 80B7AE1C  2C 03 00 00 */	cmpwi r3, 0
/* 80B7AE20  40 82 00 6C */	bne lbl_80B7AE8C
/* 80B7AE24  38 00 00 00 */	li r0, 0
/* 80B7AE28  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80B7AE2C  38 7E 14 74 */	addi r3, r30, 0x1474
/* 80B7AE30  4B 7E 71 E8 */	b __ptmf_test
/* 80B7AE34  2C 03 00 00 */	cmpwi r3, 0
/* 80B7AE38  41 82 00 54 */	beq lbl_80B7AE8C
/* 80B7AE3C  38 7E 14 80 */	addi r3, r30, 0x1480
/* 80B7AE40  38 9E 14 74 */	addi r4, r30, 0x1474
/* 80B7AE44  4B 7E 72 04 */	b __ptmf_cmpr
/* 80B7AE48  2C 03 00 00 */	cmpwi r3, 0
/* 80B7AE4C  40 82 00 1C */	bne lbl_80B7AE68
/* 80B7AE50  7F C3 F3 78 */	mr r3, r30
/* 80B7AE54  38 80 00 00 */	li r4, 0
/* 80B7AE58  39 9E 14 80 */	addi r12, r30, 0x1480
/* 80B7AE5C  4B 7E 72 28 */	b __ptmf_scall
/* 80B7AE60  60 00 00 00 */	nop 
/* 80B7AE64  48 00 00 28 */	b lbl_80B7AE8C
lbl_80B7AE68:
/* 80B7AE68  80 7E 14 74 */	lwz r3, 0x1474(r30)
/* 80B7AE6C  80 1E 14 78 */	lwz r0, 0x1478(r30)
/* 80B7AE70  90 61 00 08 */	stw r3, 8(r1)
/* 80B7AE74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B7AE78  80 1E 14 7C */	lwz r0, 0x147c(r30)
/* 80B7AE7C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B7AE80  7F C3 F3 78 */	mr r3, r30
/* 80B7AE84  38 81 00 08 */	addi r4, r1, 8
/* 80B7AE88  48 00 2C 99 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
lbl_80B7AE8C:
/* 80B7AE8C  3B A0 00 00 */	li r29, 0
/* 80B7AE90  88 1E 09 F2 */	lbz r0, 0x9f2(r30)
/* 80B7AE94  28 00 00 00 */	cmplwi r0, 0
/* 80B7AE98  40 82 00 1C */	bne lbl_80B7AEB4
/* 80B7AE9C  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 80B7AEA0  28 00 00 00 */	cmplwi r0, 0
/* 80B7AEA4  41 82 00 14 */	beq lbl_80B7AEB8
/* 80B7AEA8  4B 4B 4B AC */	b dComIfGs_wolfeye_effect_check__Fv
/* 80B7AEAC  2C 03 00 00 */	cmpwi r3, 0
/* 80B7AEB0  40 82 00 08 */	bne lbl_80B7AEB8
lbl_80B7AEB4:
/* 80B7AEB4  3B A0 00 01 */	li r29, 1
lbl_80B7AEB8:
/* 80B7AEB8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80B7AEBC  41 82 00 0C */	beq lbl_80B7AEC8
/* 80B7AEC0  38 00 00 00 */	li r0, 0
/* 80B7AEC4  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B7AEC8:
/* 80B7AEC8  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B7AECC  38 63 C4 58 */	addi r3, r3, m__17daNpc_zrA_Param_c@l
/* 80B7AED0  88 03 00 6A */	lbz r0, 0x6a(r3)
/* 80B7AED4  28 00 00 00 */	cmplwi r0, 0
/* 80B7AED8  40 82 00 DC */	bne lbl_80B7AFB4
/* 80B7AEDC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B7AEE0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B7AEE4  88 63 4F AD */	lbz r3, 0x4fad(r3)
/* 80B7AEE8  28 03 00 00 */	cmplwi r3, 0
/* 80B7AEEC  41 82 00 30 */	beq lbl_80B7AF1C
/* 80B7AEF0  88 1E 09 ED */	lbz r0, 0x9ed(r30)
/* 80B7AEF4  28 00 00 00 */	cmplwi r0, 0
/* 80B7AEF8  41 82 00 BC */	beq lbl_80B7AFB4
/* 80B7AEFC  38 00 00 00 */	li r0, 0
/* 80B7AF00  28 03 00 00 */	cmplwi r3, 0
/* 80B7AF04  41 82 00 0C */	beq lbl_80B7AF10
/* 80B7AF08  28 03 00 02 */	cmplwi r3, 2
/* 80B7AF0C  40 82 00 08 */	bne lbl_80B7AF14
lbl_80B7AF10:
/* 80B7AF10  38 00 00 01 */	li r0, 1
lbl_80B7AF14:
/* 80B7AF14  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B7AF18  41 82 00 9C */	beq lbl_80B7AFB4
lbl_80B7AF1C:
/* 80B7AF1C  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80B7AF20  28 00 00 00 */	cmplwi r0, 0
/* 80B7AF24  41 82 00 24 */	beq lbl_80B7AF48
/* 80B7AF28  38 7F 02 CC */	addi r3, r31, 0x2cc
/* 80B7AF2C  54 00 1B 78 */	rlwinm r0, r0, 3, 0xd, 0x1c
/* 80B7AF30  7C 63 02 14 */	add r3, r3, r0
/* 80B7AF34  80 03 00 04 */	lwz r0, 4(r3)
/* 80B7AF38  54 00 10 3A */	slwi r0, r0, 2
/* 80B7AF3C  38 7F 04 70 */	addi r3, r31, 0x470
/* 80B7AF40  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B7AF44  90 1E 01 00 */	stw r0, 0x100(r30)
lbl_80B7AF48:
/* 80B7AF48  7F C3 F3 78 */	mr r3, r30
/* 80B7AF4C  88 9E 09 E9 */	lbz r4, 0x9e9(r30)
/* 80B7AF50  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80B7AF54  54 00 18 38 */	slwi r0, r0, 3
/* 80B7AF58  38 BF 02 CC */	addi r5, r31, 0x2cc
/* 80B7AF5C  7C 05 00 2E */	lwzx r0, r5, r0
/* 80B7AF60  54 00 10 3A */	slwi r0, r0, 2
/* 80B7AF64  38 BF 03 34 */	addi r5, r31, 0x334
/* 80B7AF68  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B7AF6C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B7AF70  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B7AF74  38 E0 00 04 */	li r7, 4
/* 80B7AF78  39 00 00 FF */	li r8, 0xff
/* 80B7AF7C  39 20 00 02 */	li r9, 2
/* 80B7AF80  4B 5D 88 FC */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
/* 80B7AF84  88 1E 09 F4 */	lbz r0, 0x9f4(r30)
/* 80B7AF88  28 00 00 00 */	cmplwi r0, 0
/* 80B7AF8C  40 82 00 28 */	bne lbl_80B7AFB4
/* 80B7AF90  88 1E 14 E8 */	lbz r0, 0x14e8(r30)
/* 80B7AF94  28 00 00 00 */	cmplwi r0, 0
/* 80B7AF98  40 82 00 1C */	bne lbl_80B7AFB4
/* 80B7AF9C  88 1E 15 50 */	lbz r0, 0x1550(r30)
/* 80B7AFA0  28 00 00 00 */	cmplwi r0, 0
/* 80B7AFA4  40 82 00 10 */	bne lbl_80B7AFB4
/* 80B7AFA8  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80B7AFAC  60 00 00 20 */	ori r0, r0, 0x20
/* 80B7AFB0  B0 1E 00 FA */	sth r0, 0xfa(r30)
lbl_80B7AFB4:
/* 80B7AFB4  88 1E 09 EE */	lbz r0, 0x9ee(r30)
/* 80B7AFB8  28 00 00 00 */	cmplwi r0, 0
/* 80B7AFBC  41 82 00 1C */	beq lbl_80B7AFD8
/* 80B7AFC0  3C 60 80 B9 */	lis r3, lit_3939@ha
/* 80B7AFC4  C0 03 C5 08 */	lfs f0, lit_3939@l(r3)
/* 80B7AFC8  D0 1E 09 74 */	stfs f0, 0x974(r30)
/* 80B7AFCC  D0 1E 09 7C */	stfs f0, 0x97c(r30)
/* 80B7AFD0  38 00 00 00 */	li r0, 0
/* 80B7AFD4  98 1E 09 EE */	stb r0, 0x9ee(r30)
lbl_80B7AFD8:
/* 80B7AFD8  7F C3 F3 78 */	mr r3, r30
/* 80B7AFDC  48 00 1A B1 */	bl playExpression__11daNpc_zrA_cFv
/* 80B7AFE0  7F C3 F3 78 */	mr r3, r30
/* 80B7AFE4  48 00 21 19 */	bl playMotion__11daNpc_zrA_cFv
/* 80B7AFE8  80 1E 05 FC */	lwz r0, 0x5fc(r30)
/* 80B7AFEC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B7AFF0  41 82 00 14 */	beq lbl_80B7B004
/* 80B7AFF4  7F C3 F3 78 */	mr r3, r30
/* 80B7AFF8  38 80 00 01 */	li r4, 1
/* 80B7AFFC  48 00 10 75 */	bl setMotionWaterAnm__11daNpc_zrA_cFi
/* 80B7B000  48 00 00 10 */	b lbl_80B7B010
lbl_80B7B004:
/* 80B7B004  7F C3 F3 78 */	mr r3, r30
/* 80B7B008  38 80 00 00 */	li r4, 0
/* 80B7B00C  48 00 10 65 */	bl setMotionWaterAnm__11daNpc_zrA_cFi
lbl_80B7B010:
/* 80B7B010  80 7E 14 F8 */	lwz r3, 0x14f8(r30)
/* 80B7B014  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80B7B018  41 82 00 28 */	beq lbl_80B7B040
/* 80B7B01C  C3 FE 0B F4 */	lfs f31, 0xbf4(r30)
/* 80B7B020  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80B7B024  41 82 00 10 */	beq lbl_80B7B034
/* 80B7B028  3C 60 80 B9 */	lis r3, lit_3939@ha
/* 80B7B02C  C0 03 C5 08 */	lfs f0, lit_3939@l(r3)
/* 80B7B030  D0 1E 0B F4 */	stfs f0, 0xbf4(r30)
lbl_80B7B034:
/* 80B7B034  38 7E 0B E8 */	addi r3, r30, 0xbe8
/* 80B7B038  4B 49 23 F0 */	b play__14mDoExt_baseAnmFv
/* 80B7B03C  D3 FE 0B F4 */	stfs f31, 0xbf4(r30)
lbl_80B7B040:
/* 80B7B040  80 7E 14 F8 */	lwz r3, 0x14f8(r30)
/* 80B7B044  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 80B7B048  41 82 00 28 */	beq lbl_80B7B070
/* 80B7B04C  C3 FE 0C 0C */	lfs f31, 0xc0c(r30)
/* 80B7B050  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80B7B054  41 82 00 10 */	beq lbl_80B7B064
/* 80B7B058  3C 60 80 B9 */	lis r3, lit_3939@ha
/* 80B7B05C  C0 03 C5 08 */	lfs f0, lit_3939@l(r3)
/* 80B7B060  D0 1E 0C 0C */	stfs f0, 0xc0c(r30)
lbl_80B7B064:
/* 80B7B064  38 7E 0C 00 */	addi r3, r30, 0xc00
/* 80B7B068  4B 49 23 C0 */	b play__14mDoExt_baseAnmFv
/* 80B7B06C  D3 FE 0C 0C */	stfs f31, 0xc0c(r30)
lbl_80B7B070:
/* 80B7B070  80 7E 14 F8 */	lwz r3, 0x14f8(r30)
/* 80B7B074  38 00 CF 38 */	li r0, -12488
/* 80B7B078  7C 60 00 38 */	and r0, r3, r0
/* 80B7B07C  90 1E 14 F8 */	stw r0, 0x14f8(r30)
/* 80B7B080  38 60 00 01 */	li r3, 1
/* 80B7B084  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B7B088  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B7B08C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B7B090  4B 7E 71 98 */	b _restgpr_29
/* 80B7B094  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B7B098  7C 08 03 A6 */	mtlr r0
/* 80B7B09C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B7B0A0  4E 80 00 20 */	blr 
