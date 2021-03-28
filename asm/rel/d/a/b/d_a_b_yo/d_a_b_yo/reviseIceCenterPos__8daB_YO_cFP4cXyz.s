lbl_80636E9C:
/* 80636E9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80636EA0  7C 08 02 A6 */	mflr r0
/* 80636EA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80636EA8  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80636EAC  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80636EB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80636EB4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80636EB8  7C 9E 23 78 */	mr r30, r4
/* 80636EBC  3C 80 80 64 */	lis r4, lit_3788@ha
/* 80636EC0  3B E4 97 F4 */	addi r31, r4, lit_3788@l
/* 80636EC4  C0 43 0F 4C */	lfs f2, 0xf4c(r3)
/* 80636EC8  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80636ECC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80636ED0  40 81 00 08 */	ble lbl_80636ED8
/* 80636ED4  FC 40 00 90 */	fmr f2, f0
lbl_80636ED8:
/* 80636ED8  C0 3F 02 18 */	lfs f1, 0x218(r31)
/* 80636EDC  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80636EE0  EC 00 10 2A */	fadds f0, f0, f2
/* 80636EE4  EF E1 00 28 */	fsubs f31, f1, f0
/* 80636EE8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80636EEC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80636EF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80636EF4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80636EF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80636EFC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80636F00  38 61 00 0C */	addi r3, r1, 0xc
/* 80636F04  4B D1 02 34 */	b PSVECSquareMag
/* 80636F08  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80636F0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80636F10  40 81 00 58 */	ble lbl_80636F68
/* 80636F14  FC 00 08 34 */	frsqrte f0, f1
/* 80636F18  C8 9F 01 40 */	lfd f4, 0x140(r31)
/* 80636F1C  FC 44 00 32 */	fmul f2, f4, f0
/* 80636F20  C8 7F 01 48 */	lfd f3, 0x148(r31)
/* 80636F24  FC 00 00 32 */	fmul f0, f0, f0
/* 80636F28  FC 01 00 32 */	fmul f0, f1, f0
/* 80636F2C  FC 03 00 28 */	fsub f0, f3, f0
/* 80636F30  FC 02 00 32 */	fmul f0, f2, f0
/* 80636F34  FC 44 00 32 */	fmul f2, f4, f0
/* 80636F38  FC 00 00 32 */	fmul f0, f0, f0
/* 80636F3C  FC 01 00 32 */	fmul f0, f1, f0
/* 80636F40  FC 03 00 28 */	fsub f0, f3, f0
/* 80636F44  FC 02 00 32 */	fmul f0, f2, f0
/* 80636F48  FC 44 00 32 */	fmul f2, f4, f0
/* 80636F4C  FC 00 00 32 */	fmul f0, f0, f0
/* 80636F50  FC 01 00 32 */	fmul f0, f1, f0
/* 80636F54  FC 03 00 28 */	fsub f0, f3, f0
/* 80636F58  FC 02 00 32 */	fmul f0, f2, f0
/* 80636F5C  FC 21 00 32 */	fmul f1, f1, f0
/* 80636F60  FC 20 08 18 */	frsp f1, f1
/* 80636F64  48 00 00 88 */	b lbl_80636FEC
lbl_80636F68:
/* 80636F68  C8 1F 01 50 */	lfd f0, 0x150(r31)
/* 80636F6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80636F70  40 80 00 10 */	bge lbl_80636F80
/* 80636F74  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80636F78  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80636F7C  48 00 00 70 */	b lbl_80636FEC
lbl_80636F80:
/* 80636F80  D0 21 00 08 */	stfs f1, 8(r1)
/* 80636F84  80 81 00 08 */	lwz r4, 8(r1)
/* 80636F88  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80636F8C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80636F90  7C 03 00 00 */	cmpw r3, r0
/* 80636F94  41 82 00 14 */	beq lbl_80636FA8
/* 80636F98  40 80 00 40 */	bge lbl_80636FD8
/* 80636F9C  2C 03 00 00 */	cmpwi r3, 0
/* 80636FA0  41 82 00 20 */	beq lbl_80636FC0
/* 80636FA4  48 00 00 34 */	b lbl_80636FD8
lbl_80636FA8:
/* 80636FA8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80636FAC  41 82 00 0C */	beq lbl_80636FB8
/* 80636FB0  38 00 00 01 */	li r0, 1
/* 80636FB4  48 00 00 28 */	b lbl_80636FDC
lbl_80636FB8:
/* 80636FB8  38 00 00 02 */	li r0, 2
/* 80636FBC  48 00 00 20 */	b lbl_80636FDC
lbl_80636FC0:
/* 80636FC0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80636FC4  41 82 00 0C */	beq lbl_80636FD0
/* 80636FC8  38 00 00 05 */	li r0, 5
/* 80636FCC  48 00 00 10 */	b lbl_80636FDC
lbl_80636FD0:
/* 80636FD0  38 00 00 03 */	li r0, 3
/* 80636FD4  48 00 00 08 */	b lbl_80636FDC
lbl_80636FD8:
/* 80636FD8  38 00 00 04 */	li r0, 4
lbl_80636FDC:
/* 80636FDC  2C 00 00 01 */	cmpwi r0, 1
/* 80636FE0  40 82 00 0C */	bne lbl_80636FEC
/* 80636FE4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80636FE8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80636FEC:
/* 80636FEC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80636FF0  40 81 00 38 */	ble lbl_80637028
/* 80636FF4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80636FF8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80636FFC  4B C3 06 78 */	b cM_atan2s__Fff
/* 80637000  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 80637004  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80637008  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8063700C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80637010  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80637014  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80637018  7C 63 02 14 */	add r3, r3, r0
/* 8063701C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80637020  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80637024  D0 1E 00 08 */	stfs f0, 8(r30)
lbl_80637028:
/* 80637028  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8063702C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80637030  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80637034  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80637038  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063703C  7C 08 03 A6 */	mtlr r0
/* 80637040  38 21 00 30 */	addi r1, r1, 0x30
/* 80637044  4E 80 00 20 */	blr 
