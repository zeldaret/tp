lbl_80528D78:
/* 80528D78  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80528D7C  7C 08 02 A6 */	mflr r0
/* 80528D80  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80528D84  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80528D88  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80528D8C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80528D90  4B E3 94 45 */	bl _savegpr_27
/* 80528D94  7C 7E 1B 78 */	mr r30, r3
/* 80528D98  3C 80 80 53 */	lis r4, lit_3788@ha /* 0x80529400@ha */
/* 80528D9C  3B E4 94 00 */	addi r31, r4, lit_3788@l /* 0x80529400@l */
/* 80528DA0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80528DA4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80528DA8  83 A4 5D 74 */	lwz r29, 0x5d74(r4)
/* 80528DAC  83 83 05 68 */	lwz r28, 0x568(r3)
/* 80528DB0  28 1C 00 00 */	cmplwi r28, 0
/* 80528DB4  41 82 03 74 */	beq lbl_80529128
/* 80528DB8  7F 84 E3 78 */	mr r4, r28
/* 80528DBC  38 BD 00 D8 */	addi r5, r29, 0xd8
/* 80528DC0  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80528DC4  38 C1 00 14 */	addi r6, r1, 0x14
/* 80528DC8  4B FF FF 8D */	bl get_Extent_pos_start_get__FP13kytag10_classP5dPathP4cXyzfPi
/* 80528DCC  7C 7B 1B 78 */	mr r27, r3
/* 80528DD0  7F C3 F3 78 */	mr r3, r30
/* 80528DD4  7F 84 E3 78 */	mr r4, r28
/* 80528DD8  38 BD 00 D8 */	addi r5, r29, 0xd8
/* 80528DDC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80528DE0  38 C1 00 10 */	addi r6, r1, 0x10
/* 80528DE4  4B FF FF 81 */	bl get_Extent_pos_end_get__FP13kytag10_classP5dPathP4cXyzfPi
/* 80528DE8  7C 7C 1B 78 */	mr r28, r3
/* 80528DEC  38 61 00 60 */	addi r3, r1, 0x60
/* 80528DF0  7F 64 DB 78 */	mr r4, r27
/* 80528DF4  38 A0 00 00 */	li r5, 0
/* 80528DF8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80528DFC  38 C1 00 0A */	addi r6, r1, 0xa
/* 80528E00  38 E1 00 08 */	addi r7, r1, 8
/* 80528E04  4B FF FD F5 */	bl get_rail_ratio_pos__FP5dPathifPsPs
/* 80528E08  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80528E0C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80528E10  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80528E14  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80528E18  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80528E1C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80528E20  38 61 00 54 */	addi r3, r1, 0x54
/* 80528E24  7F 84 E3 78 */	mr r4, r28
/* 80528E28  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 80528E2C  38 A5 FF FF */	addi r5, r5, -1
/* 80528E30  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80528E34  38 C1 00 0A */	addi r6, r1, 0xa
/* 80528E38  38 E1 00 08 */	addi r7, r1, 8
/* 80528E3C  4B FF FD BD */	bl get_rail_ratio_pos__FP5dPathifPsPs
/* 80528E40  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80528E44  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80528E48  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80528E4C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80528E50  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80528E54  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80528E58  38 61 00 48 */	addi r3, r1, 0x48
/* 80528E5C  7F 64 DB 78 */	mr r4, r27
/* 80528E60  80 BE 05 98 */	lwz r5, 0x598(r30)
/* 80528E64  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80528E68  38 C1 00 0A */	addi r6, r1, 0xa
/* 80528E6C  38 E1 00 08 */	addi r7, r1, 8
/* 80528E70  4B FF FD 89 */	bl get_rail_ratio_pos__FP5dPathifPsPs
/* 80528E74  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80528E78  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80528E7C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80528E80  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80528E84  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80528E88  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80528E8C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80528E90  7F 64 DB 78 */	mr r4, r27
/* 80528E94  80 BE 05 98 */	lwz r5, 0x598(r30)
/* 80528E98  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80528E9C  38 C1 00 0A */	addi r6, r1, 0xa
/* 80528EA0  38 E1 00 08 */	addi r7, r1, 8
/* 80528EA4  4B FF FD 55 */	bl get_rail_ratio_pos__FP5dPathifPsPs
/* 80528EA8  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80528EAC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80528EB0  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80528EB4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80528EB8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80528EBC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80528EC0  38 61 00 78 */	addi r3, r1, 0x78
/* 80528EC4  38 81 00 6C */	addi r4, r1, 0x6c
/* 80528EC8  4B E1 E4 D5 */	bl PSVECSquareDistance
/* 80528ECC  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80528ED0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80528ED4  40 81 00 58 */	ble lbl_80528F2C
/* 80528ED8  FC 00 08 34 */	frsqrte f0, f1
/* 80528EDC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80528EE0  FC 44 00 32 */	fmul f2, f4, f0
/* 80528EE4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80528EE8  FC 00 00 32 */	fmul f0, f0, f0
/* 80528EEC  FC 01 00 32 */	fmul f0, f1, f0
/* 80528EF0  FC 03 00 28 */	fsub f0, f3, f0
/* 80528EF4  FC 02 00 32 */	fmul f0, f2, f0
/* 80528EF8  FC 44 00 32 */	fmul f2, f4, f0
/* 80528EFC  FC 00 00 32 */	fmul f0, f0, f0
/* 80528F00  FC 01 00 32 */	fmul f0, f1, f0
/* 80528F04  FC 03 00 28 */	fsub f0, f3, f0
/* 80528F08  FC 02 00 32 */	fmul f0, f2, f0
/* 80528F0C  FC 44 00 32 */	fmul f2, f4, f0
/* 80528F10  FC 00 00 32 */	fmul f0, f0, f0
/* 80528F14  FC 01 00 32 */	fmul f0, f1, f0
/* 80528F18  FC 03 00 28 */	fsub f0, f3, f0
/* 80528F1C  FC 02 00 32 */	fmul f0, f2, f0
/* 80528F20  FC 21 00 32 */	fmul f1, f1, f0
/* 80528F24  FC 20 08 18 */	frsp f1, f1
/* 80528F28  48 00 00 88 */	b lbl_80528FB0
lbl_80528F2C:
/* 80528F2C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80528F30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80528F34  40 80 00 10 */	bge lbl_80528F44
/* 80528F38  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80528F3C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80528F40  48 00 00 70 */	b lbl_80528FB0
lbl_80528F44:
/* 80528F44  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80528F48  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80528F4C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80528F50  3C 00 7F 80 */	lis r0, 0x7f80
/* 80528F54  7C 03 00 00 */	cmpw r3, r0
/* 80528F58  41 82 00 14 */	beq lbl_80528F6C
/* 80528F5C  40 80 00 40 */	bge lbl_80528F9C
/* 80528F60  2C 03 00 00 */	cmpwi r3, 0
/* 80528F64  41 82 00 20 */	beq lbl_80528F84
/* 80528F68  48 00 00 34 */	b lbl_80528F9C
lbl_80528F6C:
/* 80528F6C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80528F70  41 82 00 0C */	beq lbl_80528F7C
/* 80528F74  38 00 00 01 */	li r0, 1
/* 80528F78  48 00 00 28 */	b lbl_80528FA0
lbl_80528F7C:
/* 80528F7C  38 00 00 02 */	li r0, 2
/* 80528F80  48 00 00 20 */	b lbl_80528FA0
lbl_80528F84:
/* 80528F84  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80528F88  41 82 00 0C */	beq lbl_80528F94
/* 80528F8C  38 00 00 05 */	li r0, 5
/* 80528F90  48 00 00 10 */	b lbl_80528FA0
lbl_80528F94:
/* 80528F94  38 00 00 03 */	li r0, 3
/* 80528F98  48 00 00 08 */	b lbl_80528FA0
lbl_80528F9C:
/* 80528F9C  38 00 00 04 */	li r0, 4
lbl_80528FA0:
/* 80528FA0  2C 00 00 01 */	cmpwi r0, 1
/* 80528FA4  40 82 00 0C */	bne lbl_80528FB0
/* 80528FA8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80528FAC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80528FB0:
/* 80528FB0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80528FB4  EF E0 08 24 */	fdivs f31, f0, f1
/* 80528FB8  38 61 00 30 */	addi r3, r1, 0x30
/* 80528FBC  7F 64 DB 78 */	mr r4, r27
/* 80528FC0  80 BE 05 98 */	lwz r5, 0x598(r30)
/* 80528FC4  C0 3E 05 94 */	lfs f1, 0x594(r30)
/* 80528FC8  38 C1 00 0A */	addi r6, r1, 0xa
/* 80528FCC  38 E1 00 08 */	addi r7, r1, 8
/* 80528FD0  4B FF FC 29 */	bl get_rail_ratio_pos__FP5dPathifPsPs
/* 80528FD4  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 80528FD8  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80528FDC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80528FE0  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80528FE4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80528FE8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80528FEC  D0 5E 05 88 */	stfs f2, 0x588(r30)
/* 80528FF0  D0 3E 05 8C */	stfs f1, 0x58c(r30)
/* 80528FF4  D0 1E 05 90 */	stfs f0, 0x590(r30)
/* 80528FF8  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80528FFC  D0 43 00 A4 */	stfs f2, 0xa4(r3)
/* 80529000  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 80529004  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 80529008  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8052900C  D0 43 00 A4 */	stfs f2, 0xa4(r3)
/* 80529010  D0 23 00 A8 */	stfs f1, 0xa8(r3)
/* 80529014  D0 03 00 AC */	stfs f0, 0xac(r3)
/* 80529018  A8 1E 05 80 */	lha r0, 0x580(r30)
/* 8052901C  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80529020  B0 03 00 54 */	sth r0, 0x54(r3)
/* 80529024  A8 1E 05 82 */	lha r0, 0x582(r30)
/* 80529028  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 8052902C  B0 03 00 52 */	sth r0, 0x52(r3)
/* 80529030  A8 1E 05 80 */	lha r0, 0x580(r30)
/* 80529034  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80529038  B0 03 00 54 */	sth r0, 0x54(r3)
/* 8052903C  A8 1E 05 82 */	lha r0, 0x582(r30)
/* 80529040  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80529044  B0 03 00 52 */	sth r0, 0x52(r3)
/* 80529048  E0 3E 05 74 */	psq_l f1, 1396(r30), 0, 0 /* qr0 */
/* 8052904C  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80529050  F0 21 00 24 */	psq_st f1, 36(r1), 0, 0 /* qr0 */
/* 80529054  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80529058  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 8052905C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 80529060  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80529064  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 80529068  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 8052906C  E0 3E 05 74 */	psq_l f1, 1396(r30), 0, 0 /* qr0 */
/* 80529070  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80529074  F0 21 00 18 */	psq_st f1, 24(r1), 0, 0 /* qr0 */
/* 80529078  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8052907C  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80529080  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 80529084  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80529088  D0 03 00 B0 */	stfs f0, 0xb0(r3)
/* 8052908C  D0 23 00 B4 */	stfs f1, 0xb4(r3)
/* 80529090  88 1E 05 84 */	lbz r0, 0x584(r30)
/* 80529094  28 00 00 FF */	cmplwi r0, 0xff
/* 80529098  41 82 00 34 */	beq lbl_805290CC
/* 8052909C  C8 3F 00 38 */	lfd f1, 0x38(r31)
/* 805290A0  90 01 00 AC */	stw r0, 0xac(r1)
/* 805290A4  3C 00 43 30 */	lis r0, 0x4330
/* 805290A8  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 805290AC  C8 01 00 A8 */	lfd f0, 0xa8(r1)
/* 805290B0  EC 20 08 28 */	fsubs f1, f0, f1
/* 805290B4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 805290B8  EC 01 00 24 */	fdivs f0, f1, f0
/* 805290BC  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 805290C0  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 805290C4  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 805290C8  D0 03 00 28 */	stfs f0, 0x28(r3)
lbl_805290CC:
/* 805290CC  C0 5E 05 94 */	lfs f2, 0x594(r30)
/* 805290D0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805290D4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805290D8  EC 00 07 F2 */	fmuls f0, f0, f31
/* 805290DC  EC 01 00 28 */	fsubs f0, f1, f0
/* 805290E0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805290E4  4C 40 13 82 */	cror 2, 0, 2
/* 805290E8  40 82 00 10 */	bne lbl_805290F8
/* 805290EC  EC 02 F8 2A */	fadds f0, f2, f31
/* 805290F0  D0 1E 05 94 */	stfs f0, 0x594(r30)
/* 805290F4  48 00 00 34 */	b lbl_80529128
lbl_805290F8:
/* 805290F8  80 9E 05 98 */	lwz r4, 0x598(r30)
/* 805290FC  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80529100  38 03 FF FF */	addi r0, r3, -1
/* 80529104  7C 04 00 00 */	cmpw r4, r0
/* 80529108  41 80 00 10 */	blt lbl_80529118
/* 8052910C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529110  90 1E 05 98 */	stw r0, 0x598(r30)
/* 80529114  48 00 00 0C */	b lbl_80529120
lbl_80529118:
/* 80529118  38 04 00 01 */	addi r0, r4, 1
/* 8052911C  90 1E 05 98 */	stw r0, 0x598(r30)
lbl_80529120:
/* 80529120  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80529124  D0 1E 05 94 */	stfs f0, 0x594(r30)
lbl_80529128:
/* 80529128  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 8052912C  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80529130  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80529134  4B E3 90 ED */	bl _restgpr_27
/* 80529138  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8052913C  7C 08 03 A6 */	mtlr r0
/* 80529140  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80529144  4E 80 00 20 */	blr 
