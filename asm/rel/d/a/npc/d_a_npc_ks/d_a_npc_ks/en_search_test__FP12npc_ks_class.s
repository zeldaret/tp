lbl_80A49F30:
/* 80A49F30  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A49F34  7C 08 02 A6 */	mflr r0
/* 80A49F38  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A49F3C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A49F40  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A49F44  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80A49F48  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80A49F4C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A49F50  4B 91 82 80 */	b _savegpr_26
/* 80A49F54  7C 7C 1B 78 */	mr r28, r3
/* 80A49F58  3C 60 80 A6 */	lis r3, lit_4030@ha
/* 80A49F5C  3B C3 DE FC */	addi r30, r3, lit_4030@l
/* 80A49F60  38 A0 00 00 */	li r5, 0
/* 80A49F64  3C 60 80 A6 */	lis r3, target_info_count@ha
/* 80A49F68  90 A3 FF 18 */	stw r5, target_info_count@l(r3)
/* 80A49F6C  7C A3 2B 78 */	mr r3, r5
/* 80A49F70  3C 80 80 A6 */	lis r4, target_info@ha
/* 80A49F74  38 84 FE F0 */	addi r4, r4, target_info@l
/* 80A49F78  38 00 00 0A */	li r0, 0xa
/* 80A49F7C  7C 09 03 A6 */	mtctr r0
lbl_80A49F80:
/* 80A49F80  7C A4 19 2E */	stwx r5, r4, r3
/* 80A49F84  38 63 00 04 */	addi r3, r3, 4
/* 80A49F88  42 00 FF F8 */	bdnz lbl_80A49F80
/* 80A49F8C  3C 60 80 A5 */	lis r3, s_en_sub__FPvPv@ha
/* 80A49F90  38 63 9E C0 */	addi r3, r3, s_en_sub__FPvPv@l
/* 80A49F94  7F 84 E3 78 */	mr r4, r28
/* 80A49F98  4B 5D 73 A0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80A49F9C  C3 DE 00 40 */	lfs f30, 0x40(r30)
/* 80A49FA0  3C 60 80 A6 */	lis r3, target_info_count@ha
/* 80A49FA4  3B E3 FF 18 */	addi r31, r3, target_info_count@l
/* 80A49FA8  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A49FAC  2C 00 00 00 */	cmpwi r0, 0
/* 80A49FB0  41 82 01 80 */	beq lbl_80A4A130
/* 80A49FB4  3B A0 00 00 */	li r29, 0
/* 80A49FB8  48 00 01 5C */	b lbl_80A4A114
lbl_80A49FBC:
/* 80A49FBC  57 A0 10 3A */	slwi r0, r29, 2
/* 80A49FC0  7F 5B 00 2E */	lwzx r26, r27, r0
/* 80A49FC4  38 61 00 0C */	addi r3, r1, 0xc
/* 80A49FC8  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80A49FCC  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80A49FD0  4B 81 CB 64 */	b __mi__4cXyzCFRC3Vec
/* 80A49FD4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80A49FD8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A49FDC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A49FE0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A49FE4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80A49FE8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80A49FEC  38 61 00 18 */	addi r3, r1, 0x18
/* 80A49FF0  4B 8F D1 48 */	b PSVECSquareMag
/* 80A49FF4  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A49FF8  40 81 00 58 */	ble lbl_80A4A050
/* 80A49FFC  FC 00 08 34 */	frsqrte f0, f1
/* 80A4A000  C8 9E 00 50 */	lfd f4, 0x50(r30)
/* 80A4A004  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4A008  C8 7E 00 58 */	lfd f3, 0x58(r30)
/* 80A4A00C  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4A010  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4A014  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4A018  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4A01C  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4A020  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4A024  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4A028  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4A02C  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4A030  FC 44 00 32 */	fmul f2, f4, f0
/* 80A4A034  FC 00 00 32 */	fmul f0, f0, f0
/* 80A4A038  FC 01 00 32 */	fmul f0, f1, f0
/* 80A4A03C  FC 03 00 28 */	fsub f0, f3, f0
/* 80A4A040  FC 02 00 32 */	fmul f0, f2, f0
/* 80A4A044  FC 21 00 32 */	fmul f1, f1, f0
/* 80A4A048  FC 20 08 18 */	frsp f1, f1
/* 80A4A04C  48 00 00 88 */	b lbl_80A4A0D4
lbl_80A4A050:
/* 80A4A050  C8 1E 00 60 */	lfd f0, 0x60(r30)
/* 80A4A054  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A4A058  40 80 00 10 */	bge lbl_80A4A068
/* 80A4A05C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A4A060  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80A4A064  48 00 00 70 */	b lbl_80A4A0D4
lbl_80A4A068:
/* 80A4A068  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A4A06C  80 81 00 08 */	lwz r4, 8(r1)
/* 80A4A070  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80A4A074  3C 00 7F 80 */	lis r0, 0x7f80
/* 80A4A078  7C 03 00 00 */	cmpw r3, r0
/* 80A4A07C  41 82 00 14 */	beq lbl_80A4A090
/* 80A4A080  40 80 00 40 */	bge lbl_80A4A0C0
/* 80A4A084  2C 03 00 00 */	cmpwi r3, 0
/* 80A4A088  41 82 00 20 */	beq lbl_80A4A0A8
/* 80A4A08C  48 00 00 34 */	b lbl_80A4A0C0
lbl_80A4A090:
/* 80A4A090  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4A094  41 82 00 0C */	beq lbl_80A4A0A0
/* 80A4A098  38 00 00 01 */	li r0, 1
/* 80A4A09C  48 00 00 28 */	b lbl_80A4A0C4
lbl_80A4A0A0:
/* 80A4A0A0  38 00 00 02 */	li r0, 2
/* 80A4A0A4  48 00 00 20 */	b lbl_80A4A0C4
lbl_80A4A0A8:
/* 80A4A0A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80A4A0AC  41 82 00 0C */	beq lbl_80A4A0B8
/* 80A4A0B0  38 00 00 05 */	li r0, 5
/* 80A4A0B4  48 00 00 10 */	b lbl_80A4A0C4
lbl_80A4A0B8:
/* 80A4A0B8  38 00 00 03 */	li r0, 3
/* 80A4A0BC  48 00 00 08 */	b lbl_80A4A0C4
lbl_80A4A0C0:
/* 80A4A0C0  38 00 00 04 */	li r0, 4
lbl_80A4A0C4:
/* 80A4A0C4  2C 00 00 01 */	cmpwi r0, 1
/* 80A4A0C8  40 82 00 0C */	bne lbl_80A4A0D4
/* 80A4A0CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80A4A0D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80A4A0D4:
/* 80A4A0D4  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 80A4A0D8  40 80 00 0C */	bge lbl_80A4A0E4
/* 80A4A0DC  7F 43 D3 78 */	mr r3, r26
/* 80A4A0E0  48 00 00 5C */	b lbl_80A4A13C
lbl_80A4A0E4:
/* 80A4A0E4  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A4A0E8  3B BD 00 01 */	addi r29, r29, 1
/* 80A4A0EC  7C 1D 00 00 */	cmpw r29, r0
/* 80A4A0F0  40 82 00 30 */	bne lbl_80A4A120
/* 80A4A0F4  3B A0 00 00 */	li r29, 0
/* 80A4A0F8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80A4A0FC  EF DE 00 2A */	fadds f30, f30, f0
/* 80A4A100  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80A4A104  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80A4A108  40 81 00 18 */	ble lbl_80A4A120
/* 80A4A10C  38 60 00 00 */	li r3, 0
/* 80A4A110  48 00 00 2C */	b lbl_80A4A13C
lbl_80A4A114:
/* 80A4A114  3C 60 80 A6 */	lis r3, target_info@ha
/* 80A4A118  3B 63 FE F0 */	addi r27, r3, target_info@l
/* 80A4A11C  C3 FE 00 30 */	lfs f31, 0x30(r30)
lbl_80A4A120:
/* 80A4A120  80 1F 00 00 */	lwz r0, 0(r31)
/* 80A4A124  7C 1D 00 00 */	cmpw r29, r0
/* 80A4A128  41 80 FE 94 */	blt lbl_80A49FBC
/* 80A4A12C  48 00 00 0C */	b lbl_80A4A138
lbl_80A4A130:
/* 80A4A130  38 60 00 00 */	li r3, 0
/* 80A4A134  48 00 00 08 */	b lbl_80A4A13C
lbl_80A4A138:
/* 80A4A138  38 60 00 00 */	li r3, 0
lbl_80A4A13C:
/* 80A4A13C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A4A140  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A4A144  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80A4A148  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80A4A14C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A4A150  4B 91 80 CC */	b _restgpr_26
/* 80A4A154  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A4A158  7C 08 03 A6 */	mtlr r0
/* 80A4A15C  38 21 00 60 */	addi r1, r1, 0x60
/* 80A4A160  4E 80 00 20 */	blr 
