lbl_802E8E20:
/* 802E8E20  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 802E8E24  7C 08 02 A6 */	mflr r0
/* 802E8E28  90 01 00 74 */	stw r0, 0x74(r1)
/* 802E8E2C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 802E8E30  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 802E8E34  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 802E8E38  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 802E8E3C  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 802E8E40  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 802E8E44  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 802E8E48  F3 81 00 38 */	psq_st f28, 56(r1), 0, 0 /* qr0 */
/* 802E8E4C  39 61 00 30 */	addi r11, r1, 0x30
/* 802E8E50  48 07 93 8D */	bl _savegpr_29
/* 802E8E54  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 802E8E58  C3 A3 00 18 */	lfs f29, 0x18(r3)
/* 802E8E5C  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 802E8E60  C3 C3 00 20 */	lfs f30, 0x20(r3)
/* 802E8E64  C0 02 C7 48 */	lfs f0, lit_627(r2)
/* 802E8E68  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802E8E6C  4C 40 13 82 */	cror 2, 0, 2
/* 802E8E70  40 82 00 08 */	bne lbl_802E8E78
/* 802E8E74  D0 03 00 14 */	stfs f0, 0x14(r3)
lbl_802E8E78:
/* 802E8E78  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 802E8E7C  C0 02 C7 48 */	lfs f0, lit_627(r2)
/* 802E8E80  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802E8E84  4C 40 13 82 */	cror 2, 0, 2
/* 802E8E88  40 82 00 08 */	bne lbl_802E8E90
/* 802E8E8C  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_802E8E90:
/* 802E8E90  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 802E8E94  C0 02 C7 50 */	lfs f0, lit_730(r2)
/* 802E8E98  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802E8E9C  4C 41 13 82 */	cror 2, 1, 2
/* 802E8EA0  40 82 00 08 */	bne lbl_802E8EA8
/* 802E8EA4  D0 03 00 1C */	stfs f0, 0x1c(r3)
lbl_802E8EA8:
/* 802E8EA8  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 802E8EAC  C0 02 C7 50 */	lfs f0, lit_730(r2)
/* 802E8EB0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 802E8EB4  4C 41 13 82 */	cror 2, 1, 2
/* 802E8EB8  40 82 00 08 */	bne lbl_802E8EC0
/* 802E8EBC  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_802E8EC0:
/* 802E8EC0  38 00 00 00 */	li r0, 0
/* 802E8EC4  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 802E8EC8  4C 41 13 82 */	cror 2, 1, 2
/* 802E8ECC  40 82 00 14 */	bne lbl_802E8EE0
/* 802E8ED0  FC 1E E8 40 */	fcmpo cr0, f30, f29
/* 802E8ED4  4C 41 13 82 */	cror 2, 1, 2
/* 802E8ED8  40 82 00 08 */	bne lbl_802E8EE0
/* 802E8EDC  38 00 00 01 */	li r0, 1
lbl_802E8EE0:
/* 802E8EE0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802E8EE4  40 82 00 84 */	bne lbl_802E8F68
/* 802E8EE8  FC 00 08 90 */	fmr f0, f1
/* 802E8EEC  FC 40 E8 90 */	fmr f2, f29
/* 802E8EF0  FC 60 F8 90 */	fmr f3, f31
/* 802E8EF4  FC 80 F0 90 */	fmr f4, f30
/* 802E8EF8  FC 01 08 40 */	fcmpo cr0, f1, f1
/* 802E8EFC  4C 41 13 82 */	cror 2, 1, 2
/* 802E8F00  FC 1D E8 40 */	fcmpo cr0, f29, f29
/* 802E8F04  4C 41 13 82 */	cror 2, 1, 2
/* 802E8F08  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 802E8F0C  4C 41 13 82 */	cror 2, 1, 2
/* 802E8F10  40 82 00 08 */	bne lbl_802E8F18
/* 802E8F14  FC 20 F8 90 */	fmr f1, f31
lbl_802E8F18:
/* 802E8F18  FC 1D F0 40 */	fcmpo cr0, f29, f30
/* 802E8F1C  4C 41 13 82 */	cror 2, 1, 2
/* 802E8F20  40 82 00 08 */	bne lbl_802E8F28
/* 802E8F24  FF A0 F0 90 */	fmr f29, f30
lbl_802E8F28:
/* 802E8F28  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802E8F2C  4C 40 13 82 */	cror 2, 0, 2
/* 802E8F30  40 82 00 08 */	bne lbl_802E8F38
/* 802E8F34  FF E0 00 90 */	fmr f31, f0
lbl_802E8F38:
/* 802E8F38  FC 1E 10 40 */	fcmpo cr0, f30, f2
/* 802E8F3C  4C 40 13 82 */	cror 2, 0, 2
/* 802E8F40  40 82 00 08 */	bne lbl_802E8F48
/* 802E8F44  FF C0 10 90 */	fmr f30, f2
lbl_802E8F48:
/* 802E8F48  FC 1F 18 40 */	fcmpo cr0, f31, f3
/* 802E8F4C  4C 40 13 82 */	cror 2, 0, 2
/* 802E8F50  40 82 00 08 */	bne lbl_802E8F58
/* 802E8F54  FF E0 18 90 */	fmr f31, f3
lbl_802E8F58:
/* 802E8F58  FC 1E 20 40 */	fcmpo cr0, f30, f4
/* 802E8F5C  4C 40 13 82 */	cror 2, 0, 2
/* 802E8F60  40 82 00 08 */	bne lbl_802E8F68
/* 802E8F64  FF C0 20 90 */	fmr f30, f4
lbl_802E8F68:
/* 802E8F68  C0 02 C7 48 */	lfs f0, lit_627(r2)
/* 802E8F6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802E8F70  4C 40 13 82 */	cror 2, 0, 2
/* 802E8F74  40 82 00 08 */	bne lbl_802E8F7C
/* 802E8F78  FC 20 00 90 */	fmr f1, f0
lbl_802E8F7C:
/* 802E8F7C  C0 02 C7 48 */	lfs f0, lit_627(r2)
/* 802E8F80  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 802E8F84  4C 40 13 82 */	cror 2, 0, 2
/* 802E8F88  40 82 00 08 */	bne lbl_802E8F90
/* 802E8F8C  FF A0 00 90 */	fmr f29, f0
lbl_802E8F90:
/* 802E8F90  C0 02 C7 50 */	lfs f0, lit_730(r2)
/* 802E8F94  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 802E8F98  4C 41 13 82 */	cror 2, 1, 2
/* 802E8F9C  40 82 00 08 */	bne lbl_802E8FA4
/* 802E8FA0  FF E0 00 90 */	fmr f31, f0
lbl_802E8FA4:
/* 802E8FA4  C0 02 C7 50 */	lfs f0, lit_730(r2)
/* 802E8FA8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 802E8FAC  4C 41 13 82 */	cror 2, 1, 2
/* 802E8FB0  40 82 00 08 */	bne lbl_802E8FB8
/* 802E8FB4  FF C0 00 90 */	fmr f30, f0
lbl_802E8FB8:
/* 802E8FB8  38 00 00 00 */	li r0, 0
/* 802E8FBC  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 802E8FC0  4C 41 13 82 */	cror 2, 1, 2
/* 802E8FC4  40 82 00 14 */	bne lbl_802E8FD8
/* 802E8FC8  FC 1E E8 40 */	fcmpo cr0, f30, f29
/* 802E8FCC  4C 41 13 82 */	cror 2, 1, 2
/* 802E8FD0  40 82 00 08 */	bne lbl_802E8FD8
/* 802E8FD4  38 00 00 01 */	li r0, 1
lbl_802E8FD8:
/* 802E8FD8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 802E8FDC  41 82 00 98 */	beq lbl_802E9074
/* 802E8FE0  48 07 90 CD */	bl __cvt_fp2unsigned
/* 802E8FE4  C8 22 C7 58 */	lfd f1, lit_732(r2)
/* 802E8FE8  90 61 00 0C */	stw r3, 0xc(r1)
/* 802E8FEC  3C 00 43 30 */	lis r0, 0x4330
/* 802E8FF0  90 01 00 08 */	stw r0, 8(r1)
/* 802E8FF4  C8 01 00 08 */	lfd f0, 8(r1)
/* 802E8FF8  EF 80 08 28 */	fsubs f28, f0, f1
/* 802E8FFC  FC 20 E8 90 */	fmr f1, f29
/* 802E9000  48 07 90 AD */	bl __cvt_fp2unsigned
/* 802E9004  C8 22 C7 58 */	lfd f1, lit_732(r2)
/* 802E9008  90 61 00 14 */	stw r3, 0x14(r1)
/* 802E900C  3C 00 43 30 */	lis r0, 0x4330
/* 802E9010  90 01 00 10 */	stw r0, 0x10(r1)
/* 802E9014  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802E9018  EF A0 08 28 */	fsubs f29, f0, f1
/* 802E901C  FC 20 F8 90 */	fmr f1, f31
/* 802E9020  48 08 2E 9D */	bl ceil
/* 802E9024  FF E0 08 18 */	frsp f31, f1
/* 802E9028  FC 20 F0 90 */	fmr f1, f30
/* 802E902C  48 08 2E 91 */	bl ceil
/* 802E9030  FC 00 08 18 */	frsp f0, f1
/* 802E9034  EC 20 E8 28 */	fsubs f1, f0, f29
/* 802E9038  48 07 90 75 */	bl __cvt_fp2unsigned
/* 802E903C  7C 7D 1B 78 */	mr r29, r3
/* 802E9040  EC 3F E0 28 */	fsubs f1, f31, f28
/* 802E9044  48 07 90 69 */	bl __cvt_fp2unsigned
/* 802E9048  7C 7E 1B 78 */	mr r30, r3
/* 802E904C  FC 20 E8 90 */	fmr f1, f29
/* 802E9050  48 07 90 5D */	bl __cvt_fp2unsigned
/* 802E9054  7C 7F 1B 78 */	mr r31, r3
/* 802E9058  FC 20 E0 90 */	fmr f1, f28
/* 802E905C  48 07 90 51 */	bl __cvt_fp2unsigned
/* 802E9060  7F E4 FB 78 */	mr r4, r31
/* 802E9064  7F C5 F3 78 */	mr r5, r30
/* 802E9068  7F A6 EB 78 */	mr r6, r29
/* 802E906C  48 07 74 65 */	bl GXSetScissor
/* 802E9070  48 00 00 18 */	b lbl_802E9088
lbl_802E9074:
/* 802E9074  38 60 00 00 */	li r3, 0
/* 802E9078  38 80 00 00 */	li r4, 0
/* 802E907C  38 A0 00 00 */	li r5, 0
/* 802E9080  38 C0 00 00 */	li r6, 0
/* 802E9084  48 07 74 4D */	bl GXSetScissor
lbl_802E9088:
/* 802E9088  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 802E908C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 802E9090  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 802E9094  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 802E9098  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 802E909C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 802E90A0  E3 81 00 38 */	psq_l f28, 56(r1), 0, 0 /* qr0 */
/* 802E90A4  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 802E90A8  39 61 00 30 */	addi r11, r1, 0x30
/* 802E90AC  48 07 91 7D */	bl _restgpr_29
/* 802E90B0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 802E90B4  7C 08 03 A6 */	mtlr r0
/* 802E90B8  38 21 00 70 */	addi r1, r1, 0x70
/* 802E90BC  4E 80 00 20 */	blr 
