lbl_80139DE0:
/* 80139DE0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80139DE4  7C 08 02 A6 */	mflr r0
/* 80139DE8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80139DEC  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80139DF0  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80139DF4  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80139DF8  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80139DFC  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 80139E00  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 80139E04  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 80139E08  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 80139E0C  DB 61 00 60 */	stfd f27, 0x60(r1)
/* 80139E10  F3 61 00 68 */	psq_st f27, 104(r1), 0, 0 /* qr0 */
/* 80139E14  DB 41 00 50 */	stfd f26, 0x50(r1)
/* 80139E18  F3 41 00 58 */	psq_st f26, 88(r1), 0, 0 /* qr0 */
/* 80139E1C  39 61 00 50 */	addi r11, r1, 0x50
/* 80139E20  48 22 83 BD */	bl _savegpr_29
/* 80139E24  7C 7D 1B 78 */	mr r29, r3
/* 80139E28  7C 9E 23 78 */	mr r30, r4
/* 80139E2C  3C 80 80 39 */	lis r4, lit_3757@ha
/* 80139E30  3B E4 D6 58 */	addi r31, r4, lit_3757@l
/* 80139E34  38 80 01 1C */	li r4, 0x11c
/* 80139E38  4B F8 81 35 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80139E3C  38 00 00 00 */	li r0, 0
/* 80139E40  B0 1D 30 08 */	sth r0, 0x3008(r29)
/* 80139E44  2C 1E 00 01 */	cmpwi r30, 1
/* 80139E48  40 82 01 18 */	bne lbl_80139F60
/* 80139E4C  7F A3 EB 78 */	mr r3, r29
/* 80139E50  38 80 00 39 */	li r4, 0x39
/* 80139E54  4B F9 76 D9 */	bl setCutType__9daAlink_cFUc
/* 80139E58  7F A3 EB 78 */	mr r3, r29
/* 80139E5C  3C 80 80 00 */	lis r4, 0x8000
/* 80139E60  38 A0 00 01 */	li r5, 1
/* 80139E64  38 C0 00 03 */	li r6, 3
/* 80139E68  38 E0 00 04 */	li r7, 4
/* 80139E6C  39 00 00 03 */	li r8, 3
/* 80139E70  39 3F 1F 5C */	addi r9, r31, 0x1f5c
/* 80139E74  C0 29 00 4C */	lfs f1, 0x4c(r9)
/* 80139E78  C0 49 00 50 */	lfs f2, 0x50(r9)
/* 80139E7C  4B F9 76 C5 */	bl setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff
/* 80139E80  38 7F 1F 5C */	addi r3, r31, 0x1f5c
/* 80139E84  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80139E88  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 80139E8C  C3 E3 00 30 */	lfs f31, 0x30(r3)
/* 80139E90  80 1D 27 EC */	lwz r0, 0x27ec(r29)
/* 80139E94  28 00 00 00 */	cmplwi r0, 0
/* 80139E98  41 82 00 10 */	beq lbl_80139EA8
/* 80139E9C  C3 C3 00 34 */	lfs f30, 0x34(r3)
/* 80139EA0  C3 83 00 28 */	lfs f28, 0x28(r3)
/* 80139EA4  48 00 00 0C */	b lbl_80139EB0
lbl_80139EA8:
/* 80139EA8  C3 C2 92 9C */	lfs f30, lit_5944(r2)
/* 80139EAC  C3 82 93 28 */	lfs f28, lit_7451(r2)
lbl_80139EB0:
/* 80139EB0  38 7F 1F 5C */	addi r3, r31, 0x1f5c
/* 80139EB4  C3 A3 00 54 */	lfs f29, 0x54(r3)
/* 80139EB8  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 80139EBC  D0 1D 34 38 */	stfs f0, 0x3438(r29)
/* 80139EC0  7F A3 EB 78 */	mr r3, r29
/* 80139EC4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010039@ha */
/* 80139EC8  38 84 00 39 */	addi r4, r4, 0x0039 /* 0x00010039@l */
/* 80139ECC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80139ED0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80139ED4  7D 89 03 A6 */	mtctr r12
/* 80139ED8  4E 80 04 21 */	bctrl 
/* 80139EDC  7F A3 EB 78 */	mr r3, r29
/* 80139EE0  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002000E@ha */
/* 80139EE4  38 84 00 0E */	addi r4, r4, 0x000E /* 0x0002000E@l */
/* 80139EE8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80139EEC  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80139EF0  7D 89 03 A6 */	mtctr r12
/* 80139EF4  4E 80 04 21 */	bctrl 
/* 80139EF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80139EFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80139F00  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80139F04  38 80 05 20 */	li r4, 0x520
/* 80139F08  4B EF AA B5 */	bl isEventBit__11dSv_event_cCFUs
/* 80139F0C  2C 03 00 00 */	cmpwi r3, 0
/* 80139F10  40 82 00 24 */	bne lbl_80139F34
/* 80139F14  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha
/* 80139F18  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l
/* 80139F1C  38 63 03 17 */	addi r3, r3, 0x317
/* 80139F20  4B F6 3B 41 */	bl checkStageName__9daAlink_cFPCc
/* 80139F24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80139F28  41 82 00 0C */	beq lbl_80139F34
/* 80139F2C  38 00 00 01 */	li r0, 1
/* 80139F30  B0 1D 30 08 */	sth r0, 0x3008(r29)
lbl_80139F34:
/* 80139F34  80 1D 27 EC */	lwz r0, 0x27ec(r29)
/* 80139F38  28 00 00 00 */	cmplwi r0, 0
/* 80139F3C  41 82 00 10 */	beq lbl_80139F4C
/* 80139F40  38 00 00 01 */	li r0, 1
/* 80139F44  B0 1D 30 12 */	sth r0, 0x3012(r29)
/* 80139F48  48 00 00 0C */	b lbl_80139F54
lbl_80139F4C:
/* 80139F4C  38 00 00 00 */	li r0, 0
/* 80139F50  B0 1D 30 12 */	sth r0, 0x3012(r29)
lbl_80139F54:
/* 80139F54  38 00 00 01 */	li r0, 1
/* 80139F58  B0 1D 30 10 */	sth r0, 0x3010(r29)
/* 80139F5C  48 00 01 28 */	b lbl_8013A084
lbl_80139F60:
/* 80139F60  88 1D 05 69 */	lbz r0, 0x569(r29)
/* 80139F64  28 00 00 04 */	cmplwi r0, 4
/* 80139F68  40 82 00 7C */	bne lbl_80139FE4
/* 80139F6C  7F A3 EB 78 */	mr r3, r29
/* 80139F70  38 80 00 32 */	li r4, 0x32
/* 80139F74  4B F9 75 B9 */	bl setCutType__9daAlink_cFUc
/* 80139F78  7F A3 EB 78 */	mr r3, r29
/* 80139F7C  3C 80 80 00 */	lis r4, 0x8000
/* 80139F80  38 A0 00 01 */	li r5, 1
/* 80139F84  38 C0 00 03 */	li r6, 3
/* 80139F88  38 E0 00 04 */	li r7, 4
/* 80139F8C  39 00 00 03 */	li r8, 3
/* 80139F90  39 3F 1F 20 */	addi r9, r31, 0x1f20
/* 80139F94  C0 29 00 30 */	lfs f1, 0x30(r9)
/* 80139F98  C0 49 00 34 */	lfs f2, 0x34(r9)
/* 80139F9C  4B F9 75 A5 */	bl setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff
/* 80139FA0  7F A3 EB 78 */	mr r3, r29
/* 80139FA4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010039@ha */
/* 80139FA8  38 84 00 39 */	addi r4, r4, 0x0039 /* 0x00010039@l */
/* 80139FAC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80139FB0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80139FB4  7D 89 03 A6 */	mtctr r12
/* 80139FB8  4E 80 04 21 */	bctrl 
/* 80139FBC  7F A3 EB 78 */	mr r3, r29
/* 80139FC0  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002000E@ha */
/* 80139FC4  38 84 00 0E */	addi r4, r4, 0x000E /* 0x0002000E@l */
/* 80139FC8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80139FCC  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 80139FD0  7D 89 03 A6 */	mtctr r12
/* 80139FD4  4E 80 04 21 */	bctrl 
/* 80139FD8  38 00 00 01 */	li r0, 1
/* 80139FDC  B0 1D 30 12 */	sth r0, 0x3012(r29)
/* 80139FE0  48 00 00 78 */	b lbl_8013A058
lbl_80139FE4:
/* 80139FE4  7F A3 EB 78 */	mr r3, r29
/* 80139FE8  38 80 00 31 */	li r4, 0x31
/* 80139FEC  4B F9 75 41 */	bl setCutType__9daAlink_cFUc
/* 80139FF0  7F A3 EB 78 */	mr r3, r29
/* 80139FF4  3C 80 80 00 */	lis r4, 0x8000
/* 80139FF8  38 A0 00 00 */	li r5, 0
/* 80139FFC  38 C0 00 01 */	li r6, 1
/* 8013A000  38 E0 00 04 */	li r7, 4
/* 8013A004  39 00 00 02 */	li r8, 2
/* 8013A008  39 3F 1F 20 */	addi r9, r31, 0x1f20
/* 8013A00C  C0 29 00 30 */	lfs f1, 0x30(r9)
/* 8013A010  C0 49 00 34 */	lfs f2, 0x34(r9)
/* 8013A014  4B F9 75 2D */	bl setCylAtParam__9daAlink_cFUl11dCcG_At_SplUcUciff
/* 8013A018  7F A3 EB 78 */	mr r3, r29
/* 8013A01C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010038@ha */
/* 8013A020  38 84 00 38 */	addi r4, r4, 0x0038 /* 0x00010038@l */
/* 8013A024  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8013A028  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 8013A02C  7D 89 03 A6 */	mtctr r12
/* 8013A030  4E 80 04 21 */	bctrl 
/* 8013A034  7F A3 EB 78 */	mr r3, r29
/* 8013A038  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020009@ha */
/* 8013A03C  38 84 00 09 */	addi r4, r4, 0x0009 /* 0x00020009@l */
/* 8013A040  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8013A044  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 8013A048  7D 89 03 A6 */	mtctr r12
/* 8013A04C  4E 80 04 21 */	bctrl 
/* 8013A050  38 00 00 00 */	li r0, 0
/* 8013A054  B0 1D 30 12 */	sth r0, 0x3012(r29)
lbl_8013A058:
/* 8013A058  38 7F 1F 20 */	addi r3, r31, 0x1f20
/* 8013A05C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8013A060  D0 1D 05 94 */	stfs f0, 0x594(r29)
/* 8013A064  C3 A3 00 38 */	lfs f29, 0x38(r3)
/* 8013A068  C3 E3 00 1C */	lfs f31, 0x1c(r3)
/* 8013A06C  C3 C3 00 20 */	lfs f30, 0x20(r3)
/* 8013A070  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8013A074  D0 1D 34 38 */	stfs f0, 0x3438(r29)
/* 8013A078  C3 83 00 14 */	lfs f28, 0x14(r3)
/* 8013A07C  38 00 00 00 */	li r0, 0
/* 8013A080  B0 1D 30 10 */	sth r0, 0x3010(r29)
lbl_8013A084:
/* 8013A084  7F A3 EB 78 */	mr r3, r29
/* 8013A088  38 80 00 50 */	li r4, 0x50
/* 8013A08C  38 BF 1F 20 */	addi r5, r31, 0x1f20
/* 8013A090  4B FE F7 B9 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013A094  80 9D 27 EC */	lwz r4, 0x27ec(r29)
/* 8013A098  28 04 00 00 */	cmplwi r4, 0
/* 8013A09C  41 82 03 58 */	beq lbl_8013A3F4
/* 8013A0A0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8013A0A4  38 84 05 38 */	addi r4, r4, 0x538
/* 8013A0A8  48 13 6B 5D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8013A0AC  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 8013A0B0  88 1D 05 69 */	lbz r0, 0x569(r29)
/* 8013A0B4  28 00 00 01 */	cmplwi r0, 1
/* 8013A0B8  40 82 01 54 */	bne lbl_8013A20C
/* 8013A0BC  2C 1E 00 01 */	cmpwi r30, 1
/* 8013A0C0  41 82 01 4C */	beq lbl_8013A20C
/* 8013A0C4  D3 DD 04 FC */	stfs f30, 0x4fc(r29)
/* 8013A0C8  80 7D 27 EC */	lwz r3, 0x27ec(r29)
/* 8013A0CC  C0 5D 05 40 */	lfs f2, 0x540(r29)
/* 8013A0D0  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 8013A0D4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8013A0D8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013A0DC  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8013A0E0  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8013A0E4  C0 43 05 40 */	lfs f2, 0x540(r3)
/* 8013A0E8  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 8013A0EC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8013A0F0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8013A0F4  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 8013A0F8  38 61 00 28 */	addi r3, r1, 0x28
/* 8013A0FC  38 81 00 34 */	addi r4, r1, 0x34
/* 8013A100  48 20 D2 9D */	bl PSVECSquareDistance
/* 8013A104  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013A108  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013A10C  40 81 00 58 */	ble lbl_8013A164
/* 8013A110  FC 00 08 34 */	frsqrte f0, f1
/* 8013A114  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8013A118  FC 44 00 32 */	fmul f2, f4, f0
/* 8013A11C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8013A120  FC 00 00 32 */	fmul f0, f0, f0
/* 8013A124  FC 01 00 32 */	fmul f0, f1, f0
/* 8013A128  FC 03 00 28 */	fsub f0, f3, f0
/* 8013A12C  FC 02 00 32 */	fmul f0, f2, f0
/* 8013A130  FC 44 00 32 */	fmul f2, f4, f0
/* 8013A134  FC 00 00 32 */	fmul f0, f0, f0
/* 8013A138  FC 01 00 32 */	fmul f0, f1, f0
/* 8013A13C  FC 03 00 28 */	fsub f0, f3, f0
/* 8013A140  FC 02 00 32 */	fmul f0, f2, f0
/* 8013A144  FC 44 00 32 */	fmul f2, f4, f0
/* 8013A148  FC 00 00 32 */	fmul f0, f0, f0
/* 8013A14C  FC 01 00 32 */	fmul f0, f1, f0
/* 8013A150  FC 03 00 28 */	fsub f0, f3, f0
/* 8013A154  FC 02 00 32 */	fmul f0, f2, f0
/* 8013A158  FC 21 00 32 */	fmul f1, f1, f0
/* 8013A15C  FC 20 08 18 */	frsp f1, f1
/* 8013A160  48 00 00 88 */	b lbl_8013A1E8
lbl_8013A164:
/* 8013A164  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8013A168  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013A16C  40 80 00 10 */	bge lbl_8013A17C
/* 8013A170  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8013A174  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8013A178  48 00 00 70 */	b lbl_8013A1E8
lbl_8013A17C:
/* 8013A17C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8013A180  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8013A184  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8013A188  3C 00 7F 80 */	lis r0, 0x7f80
/* 8013A18C  7C 03 00 00 */	cmpw r3, r0
/* 8013A190  41 82 00 14 */	beq lbl_8013A1A4
/* 8013A194  40 80 00 40 */	bge lbl_8013A1D4
/* 8013A198  2C 03 00 00 */	cmpwi r3, 0
/* 8013A19C  41 82 00 20 */	beq lbl_8013A1BC
/* 8013A1A0  48 00 00 34 */	b lbl_8013A1D4
lbl_8013A1A4:
/* 8013A1A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013A1A8  41 82 00 0C */	beq lbl_8013A1B4
/* 8013A1AC  38 00 00 01 */	li r0, 1
/* 8013A1B0  48 00 00 28 */	b lbl_8013A1D8
lbl_8013A1B4:
/* 8013A1B4  38 00 00 02 */	li r0, 2
/* 8013A1B8  48 00 00 20 */	b lbl_8013A1D8
lbl_8013A1BC:
/* 8013A1BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013A1C0  41 82 00 0C */	beq lbl_8013A1CC
/* 8013A1C4  38 00 00 05 */	li r0, 5
/* 8013A1C8  48 00 00 10 */	b lbl_8013A1D8
lbl_8013A1CC:
/* 8013A1CC  38 00 00 03 */	li r0, 3
/* 8013A1D0  48 00 00 08 */	b lbl_8013A1D8
lbl_8013A1D4:
/* 8013A1D4  38 00 00 04 */	li r0, 4
lbl_8013A1D8:
/* 8013A1D8  2C 00 00 01 */	cmpwi r0, 1
/* 8013A1DC  40 82 00 0C */	bne lbl_8013A1E8
/* 8013A1E0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8013A1E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8013A1E8:
/* 8013A1E8  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 8013A1EC  FC 00 00 50 */	fneg f0, f0
/* 8013A1F0  EC 40 00 72 */	fmuls f2, f0, f1
/* 8013A1F4  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 8013A1F8  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 8013A1FC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8013A200  EC 02 00 24 */	fdivs f0, f2, f0
/* 8013A204  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8013A208  48 00 01 F4 */	b lbl_8013A3FC
lbl_8013A20C:
/* 8013A20C  80 7D 27 EC */	lwz r3, 0x27ec(r29)
/* 8013A210  C0 23 05 3C */	lfs f1, 0x53c(r3)
/* 8013A214  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 8013A218  EC 21 00 28 */	fsubs f1, f1, f0
/* 8013A21C  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 8013A220  EF 61 00 28 */	fsubs f27, f1, f0
/* 8013A224  A8 1D 30 08 */	lha r0, 0x3008(r29)
/* 8013A228  2C 00 00 00 */	cmpwi r0, 0
/* 8013A22C  41 82 00 08 */	beq lbl_8013A234
/* 8013A230  EF 7B 00 28 */	fsubs f27, f27, f0
lbl_8013A234:
/* 8013A234  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 8013A238  FC 1B 10 40 */	fcmpo cr0, f27, f2
/* 8013A23C  40 81 00 30 */	ble lbl_8013A26C
/* 8013A240  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 8013A244  EC 20 06 F2 */	fmuls f1, f0, f27
/* 8013A248  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 8013A24C  FC 00 00 50 */	fneg f0, f0
/* 8013A250  EC 21 00 24 */	fdivs f1, f1, f0
/* 8013A254  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8013A258  40 81 00 0C */	ble lbl_8013A264
/* 8013A25C  FC 00 08 34 */	frsqrte f0, f1
/* 8013A260  EC 20 00 72 */	fmuls f1, f0, f1
lbl_8013A264:
/* 8013A264  FF 40 08 90 */	fmr f26, f1
/* 8013A268  48 00 00 08 */	b lbl_8013A270
lbl_8013A26C:
/* 8013A26C  FF 40 10 90 */	fmr f26, f2
lbl_8013A270:
/* 8013A270  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 8013A274  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 8013A278  4C 41 13 82 */	cror 2, 1, 2
/* 8013A27C  40 82 01 6C */	bne lbl_8013A3E8
/* 8013A280  EF 80 D0 24 */	fdivs f28, f0, f26
/* 8013A284  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8013A288  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8013A28C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8013A290  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013A294  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8013A298  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8013A29C  C0 43 05 40 */	lfs f2, 0x540(r3)
/* 8013A2A0  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 8013A2A4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8013A2A8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8013A2AC  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8013A2B0  38 61 00 10 */	addi r3, r1, 0x10
/* 8013A2B4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8013A2B8  48 20 D0 E5 */	bl PSVECSquareDistance
/* 8013A2BC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013A2C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013A2C4  40 81 00 58 */	ble lbl_8013A31C
/* 8013A2C8  FC 00 08 34 */	frsqrte f0, f1
/* 8013A2CC  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8013A2D0  FC 44 00 32 */	fmul f2, f4, f0
/* 8013A2D4  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8013A2D8  FC 00 00 32 */	fmul f0, f0, f0
/* 8013A2DC  FC 01 00 32 */	fmul f0, f1, f0
/* 8013A2E0  FC 03 00 28 */	fsub f0, f3, f0
/* 8013A2E4  FC 02 00 32 */	fmul f0, f2, f0
/* 8013A2E8  FC 44 00 32 */	fmul f2, f4, f0
/* 8013A2EC  FC 00 00 32 */	fmul f0, f0, f0
/* 8013A2F0  FC 01 00 32 */	fmul f0, f1, f0
/* 8013A2F4  FC 03 00 28 */	fsub f0, f3, f0
/* 8013A2F8  FC 02 00 32 */	fmul f0, f2, f0
/* 8013A2FC  FC 44 00 32 */	fmul f2, f4, f0
/* 8013A300  FC 00 00 32 */	fmul f0, f0, f0
/* 8013A304  FC 01 00 32 */	fmul f0, f1, f0
/* 8013A308  FC 03 00 28 */	fsub f0, f3, f0
/* 8013A30C  FC 02 00 32 */	fmul f0, f2, f0
/* 8013A310  FC 21 00 32 */	fmul f1, f1, f0
/* 8013A314  FC 20 08 18 */	frsp f1, f1
/* 8013A318  48 00 00 88 */	b lbl_8013A3A0
lbl_8013A31C:
/* 8013A31C  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8013A320  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013A324  40 80 00 10 */	bge lbl_8013A334
/* 8013A328  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8013A32C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8013A330  48 00 00 70 */	b lbl_8013A3A0
lbl_8013A334:
/* 8013A334  D0 21 00 08 */	stfs f1, 8(r1)
/* 8013A338  80 81 00 08 */	lwz r4, 8(r1)
/* 8013A33C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8013A340  3C 00 7F 80 */	lis r0, 0x7f80
/* 8013A344  7C 03 00 00 */	cmpw r3, r0
/* 8013A348  41 82 00 14 */	beq lbl_8013A35C
/* 8013A34C  40 80 00 40 */	bge lbl_8013A38C
/* 8013A350  2C 03 00 00 */	cmpwi r3, 0
/* 8013A354  41 82 00 20 */	beq lbl_8013A374
/* 8013A358  48 00 00 34 */	b lbl_8013A38C
lbl_8013A35C:
/* 8013A35C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013A360  41 82 00 0C */	beq lbl_8013A36C
/* 8013A364  38 00 00 01 */	li r0, 1
/* 8013A368  48 00 00 28 */	b lbl_8013A390
lbl_8013A36C:
/* 8013A36C  38 00 00 02 */	li r0, 2
/* 8013A370  48 00 00 20 */	b lbl_8013A390
lbl_8013A374:
/* 8013A374  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013A378  41 82 00 0C */	beq lbl_8013A384
/* 8013A37C  38 00 00 05 */	li r0, 5
/* 8013A380  48 00 00 10 */	b lbl_8013A390
lbl_8013A384:
/* 8013A384  38 00 00 03 */	li r0, 3
/* 8013A388  48 00 00 08 */	b lbl_8013A390
lbl_8013A38C:
/* 8013A38C  38 00 00 04 */	li r0, 4
lbl_8013A390:
/* 8013A390  2C 00 00 01 */	cmpwi r0, 1
/* 8013A394  40 82 00 0C */	bne lbl_8013A3A0
/* 8013A398  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8013A39C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8013A3A0:
/* 8013A3A0  EC 1C 00 72 */	fmuls f0, f28, f1
/* 8013A3A4  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8013A3A8  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 8013A3AC  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 8013A3B0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8013A3B4  EC 00 06 B2 */	fmuls f0, f0, f26
/* 8013A3B8  EC 1A 00 32 */	fmuls f0, f26, f0
/* 8013A3BC  EC 1B 00 28 */	fsubs f0, f27, f0
/* 8013A3C0  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8013A3C4  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8013A3C8  40 80 00 0C */	bge lbl_8013A3D4
/* 8013A3CC  FC 00 F0 90 */	fmr f0, f30
/* 8013A3D0  48 00 00 10 */	b lbl_8013A3E0
lbl_8013A3D4:
/* 8013A3D4  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8013A3D8  40 81 00 08 */	ble lbl_8013A3E0
/* 8013A3DC  FC 00 F8 90 */	fmr f0, f31
lbl_8013A3E0:
/* 8013A3E0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8013A3E4  48 00 00 18 */	b lbl_8013A3FC
lbl_8013A3E8:
/* 8013A3E8  D3 9D 33 98 */	stfs f28, 0x3398(r29)
/* 8013A3EC  D3 DD 04 FC */	stfs f30, 0x4fc(r29)
/* 8013A3F0  48 00 00 0C */	b lbl_8013A3FC
lbl_8013A3F4:
/* 8013A3F4  D3 9D 33 98 */	stfs f28, 0x3398(r29)
/* 8013A3F8  D3 DD 04 FC */	stfs f30, 0x4fc(r29)
lbl_8013A3FC:
/* 8013A3FC  C0 3D 33 98 */	lfs f1, 0x3398(r29)
/* 8013A400  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 8013A404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013A408  40 81 00 0C */	ble lbl_8013A414
/* 8013A40C  D0 1D 33 98 */	stfs f0, 0x3398(r29)
/* 8013A410  48 00 00 10 */	b lbl_8013A420
lbl_8013A414:
/* 8013A414  FC 01 E8 40 */	fcmpo cr0, f1, f29
/* 8013A418  40 80 00 08 */	bge lbl_8013A420
/* 8013A41C  D3 BD 33 98 */	stfs f29, 0x3398(r29)
lbl_8013A420:
/* 8013A420  B3 DD 30 0A */	sth r30, 0x300a(r29)
/* 8013A424  3C 60 80 42 */	lis r3, l_wolfBaseAnime@ha
/* 8013A428  C4 03 56 1C */	lfsu f0, l_wolfBaseAnime@l(r3)
/* 8013A42C  D0 1D 35 88 */	stfs f0, 0x3588(r29)
/* 8013A430  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013A434  D0 1D 35 8C */	stfs f0, 0x358c(r29)
/* 8013A438  C0 03 00 08 */	lfs f0, 8(r3)
/* 8013A43C  D0 1D 35 90 */	stfs f0, 0x3590(r29)
/* 8013A440  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013A444  D0 1D 33 B0 */	stfs f0, 0x33b0(r29)
/* 8013A448  38 00 00 00 */	li r0, 0
/* 8013A44C  90 1D 31 98 */	stw r0, 0x3198(r29)
/* 8013A450  90 1D 32 CC */	stw r0, 0x32cc(r29)
/* 8013A454  B0 1D 30 0C */	sth r0, 0x300c(r29)
/* 8013A458  B0 1D 30 0E */	sth r0, 0x300e(r29)
/* 8013A45C  80 1D 05 80 */	lwz r0, 0x580(r29)
/* 8013A460  60 00 00 02 */	ori r0, r0, 2
/* 8013A464  90 1D 05 80 */	stw r0, 0x580(r29)
/* 8013A468  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8013A46C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8013A470  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8013A474  60 00 00 02 */	ori r0, r0, 2
/* 8013A478  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 8013A47C  2C 1E 00 00 */	cmpwi r30, 0
/* 8013A480  41 82 00 10 */	beq lbl_8013A490
/* 8013A484  80 03 5F 1C */	lwz r0, 0x5f1c(r3)
/* 8013A488  64 00 00 20 */	oris r0, r0, 0x20
/* 8013A48C  90 03 5F 1C */	stw r0, 0x5f1c(r3)
lbl_8013A490:
/* 8013A490  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8013A494  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8013A498  2C 1E 00 01 */	cmpwi r30, 1
/* 8013A49C  41 82 00 10 */	beq lbl_8013A4AC
/* 8013A4A0  38 7F 21 4C */	addi r3, r31, 0x214c
/* 8013A4A4  A8 03 00 16 */	lha r0, 0x16(r3)
/* 8013A4A8  B0 1D 30 7E */	sth r0, 0x307e(r29)
lbl_8013A4AC:
/* 8013A4AC  38 60 00 01 */	li r3, 1
/* 8013A4B0  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 8013A4B4  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8013A4B8  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 8013A4BC  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8013A4C0  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 8013A4C4  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 8013A4C8  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 8013A4CC  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 8013A4D0  E3 61 00 68 */	psq_l f27, 104(r1), 0, 0 /* qr0 */
/* 8013A4D4  CB 61 00 60 */	lfd f27, 0x60(r1)
/* 8013A4D8  E3 41 00 58 */	psq_l f26, 88(r1), 0, 0 /* qr0 */
/* 8013A4DC  CB 41 00 50 */	lfd f26, 0x50(r1)
/* 8013A4E0  39 61 00 50 */	addi r11, r1, 0x50
/* 8013A4E4  48 22 7D 45 */	bl _restgpr_29
/* 8013A4E8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8013A4EC  7C 08 03 A6 */	mtlr r0
/* 8013A4F0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8013A4F4  4E 80 00 20 */	blr 
