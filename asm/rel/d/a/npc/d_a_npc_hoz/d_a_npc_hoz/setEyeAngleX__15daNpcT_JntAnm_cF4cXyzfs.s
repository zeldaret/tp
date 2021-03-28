lbl_80A060D8:
/* 80A060D8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80A060DC  7C 08 02 A6 */	mflr r0
/* 80A060E0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80A060E4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80A060E8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80A060EC  39 61 00 60 */	addi r11, r1, 0x60
/* 80A060F0  4B 95 C0 EC */	b _savegpr_29
/* 80A060F4  7C 7F 1B 78 */	mr r31, r3
/* 80A060F8  7C 80 23 78 */	mr r0, r4
/* 80A060FC  FF E0 08 90 */	fmr f31, f1
/* 80A06100  7C BD 2B 78 */	mr r29, r5
/* 80A06104  3C 60 80 A0 */	lis r3, m__17daNpc_Hoz_Param_c@ha
/* 80A06108  3B C3 66 50 */	addi r30, r3, m__17daNpc_Hoz_Param_c@l
/* 80A0610C  38 A0 00 00 */	li r5, 0
/* 80A06110  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80A06114  28 04 00 00 */	cmplwi r4, 0
/* 80A06118  41 82 01 40 */	beq lbl_80A06258
/* 80A0611C  38 61 00 18 */	addi r3, r1, 0x18
/* 80A06120  7C 05 03 78 */	mr r5, r0
/* 80A06124  4B 86 0A 10 */	b __mi__4cXyzCFRC3Vec
/* 80A06128  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80A0612C  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 80A06130  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80A06134  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80A06138  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80A0613C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80A06140  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80A06144  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A06148  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A0614C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80A06150  38 61 00 0C */	addi r3, r1, 0xc
/* 80A06154  4B 94 0F E4 */	b PSVECSquareMag
/* 80A06158  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A0615C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A06160  40 81 00 58 */	ble lbl_80A061B8
/* 80A06164  FC 00 08 34 */	frsqrte f0, f1
/* 80A06168  C8 9E 00 E8 */	lfd f4, 0xe8(r30)
/* 80A0616C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A06170  C8 7E 00 F0 */	lfd f3, 0xf0(r30)
/* 80A06174  FC 00 00 32 */	fmul f0, f0, f0
/* 80A06178  FC 01 00 32 */	fmul f0, f1, f0
/* 80A0617C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A06180  FC 02 00 32 */	fmul f0, f2, f0
/* 80A06184  FC 44 00 32 */	fmul f2, f4, f0
/* 80A06188  FC 00 00 32 */	fmul f0, f0, f0
/* 80A0618C  FC 01 00 32 */	fmul f0, f1, f0
/* 80A06190  FC 03 00 28 */	fsub f0, f3, f0
/* 80A06194  FC 02 00 32 */	fmul f0, f2, f0
/* 80A06198  FC 44 00 32 */	fmul f2, f4, f0
/* 80A0619C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A061A0  FC 01 00 32 */	fmul f0, f1, f0
/* 80A061A4  FC 03 00 28 */	fsub f0, f3, f0
/* 80A061A8  FC 02 00 32 */	fmul f0, f2, f0
/* 80A061AC  FC 41 00 32 */	fmul f2, f1, f0
/* 80A061B0  FC 40 10 18 */	frsp f2, f2
/* 80A061B4  48 00 00 90 */	b lbl_80A06244
lbl_80A061B8:
/* 80A061B8  C8 1E 00 F8 */	lfd f0, 0xf8(r30)
/* 80A061BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A061C0  40 80 00 10 */	bge lbl_80A061D0
/* 80A061C4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A061C8  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A061CC  48 00 00 78 */	b lbl_80A06244
lbl_80A061D0:
/* 80A061D0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A061D4  80 81 00 08 */	lwz r4, 8(r1)
/* 80A061D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A061DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A061E0  7C 03 00 00 */	cmpw r3, r0
/* 80A061E4  41 82 00 14 */	beq lbl_80A061F8
/* 80A061E8  40 80 00 40 */	bge lbl_80A06228
/* 80A061EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A061F0  41 82 00 20 */	beq lbl_80A06210
/* 80A061F4  48 00 00 34 */	b lbl_80A06228
lbl_80A061F8:
/* 80A061F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A061FC  41 82 00 0C */	beq lbl_80A06208
/* 80A06200  38 00 00 01 */	li r0, 1
/* 80A06204  48 00 00 28 */	b lbl_80A0622C
lbl_80A06208:
/* 80A06208  38 00 00 02 */	li r0, 2
/* 80A0620C  48 00 00 20 */	b lbl_80A0622C
lbl_80A06210:
/* 80A06210  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A06214  41 82 00 0C */	beq lbl_80A06220
/* 80A06218  38 00 00 05 */	li r0, 5
/* 80A0621C  48 00 00 10 */	b lbl_80A0622C
lbl_80A06220:
/* 80A06220  38 00 00 03 */	li r0, 3
/* 80A06224  48 00 00 08 */	b lbl_80A0622C
lbl_80A06228:
/* 80A06228  38 00 00 04 */	li r0, 4
lbl_80A0622C:
/* 80A0622C  2C 00 00 01 */	cmpwi r0, 1
/* 80A06230  40 82 00 10 */	bne lbl_80A06240
/* 80A06234  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A06238  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80A0623C  48 00 00 08 */	b lbl_80A06244
lbl_80A06240:
/* 80A06240  FC 40 08 90 */	fmr f2, f1
lbl_80A06244:
/* 80A06244  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80A06248  4B 86 14 2C */	b cM_atan2s__Fff
/* 80A0624C  7C 03 00 D0 */	neg r0, r3
/* 80A06250  7C 05 07 34 */	extsh r5, r0
/* 80A06254  7C A5 EA 14 */	add r5, r5, r29
lbl_80A06258:
/* 80A06258  A8 1F 01 50 */	lha r0, 0x150(r31)
/* 80A0625C  7C A5 02 14 */	add r5, r5, r0
/* 80A06260  C0 7E 00 C8 */	lfs f3, 0xc8(r30)
/* 80A06264  EC 83 F8 24 */	fdivs f4, f3, f31
/* 80A06268  A8 1F 01 32 */	lha r0, 0x132(r31)
/* 80A0626C  C8 5E 00 E0 */	lfd f2, 0xe0(r30)
/* 80A06270  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A06274  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A06278  3C 60 43 30 */	lis r3, 0x4330
/* 80A0627C  90 61 00 30 */	stw r3, 0x30(r1)
/* 80A06280  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80A06284  EC 20 10 28 */	fsubs f1, f0, f2
/* 80A06288  EC 03 20 28 */	fsubs f0, f3, f4
/* 80A0628C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80A06290  7C A0 07 34 */	extsh r0, r5
/* 80A06294  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A06298  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A0629C  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A062A0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80A062A4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80A062A8  EC 00 01 32 */	fmuls f0, f0, f4
/* 80A062AC  EC 01 00 2A */	fadds f0, f1, f0
/* 80A062B0  FC 00 00 1E */	fctiwz f0, f0
/* 80A062B4  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80A062B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A062BC  B0 1F 01 2C */	sth r0, 0x12c(r31)
/* 80A062C0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80A062C4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80A062C8  39 61 00 60 */	addi r11, r1, 0x60
/* 80A062CC  4B 95 BF 5C */	b _restgpr_29
/* 80A062D0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80A062D4  7C 08 03 A6 */	mtlr r0
/* 80A062D8  38 21 00 70 */	addi r1, r1, 0x70
/* 80A062DC  4E 80 00 20 */	blr 
