lbl_807B6DC8:
/* 807B6DC8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 807B6DCC  7C 08 02 A6 */	mflr r0
/* 807B6DD0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 807B6DD4  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 807B6DD8  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 807B6DDC  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 807B6DE0  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 807B6DE4  DB A1 00 80 */	stfd f29, 0x80(r1)
/* 807B6DE8  F3 A1 00 88 */	psq_st f29, 136(r1), 0, 0 /* qr0 */
/* 807B6DEC  DB 81 00 70 */	stfd f28, 0x70(r1)
/* 807B6DF0  F3 81 00 78 */	psq_st f28, 120(r1), 0, 0 /* qr0 */
/* 807B6DF4  39 61 00 70 */	addi r11, r1, 0x70
/* 807B6DF8  4B BA B3 E5 */	bl _savegpr_29
/* 807B6DFC  7C 7E 1B 78 */	mr r30, r3
/* 807B6E00  3C 60 80 7B */	lis r3, lit_3746@ha /* 0x807B7EB8@ha */
/* 807B6E04  3B E3 7E B8 */	addi r31, r3, lit_3746@l /* 0x807B7EB8@l */
/* 807B6E08  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807B6E0C  C3 DF 00 00 */	lfs f30, 0(r31)
/* 807B6E10  C3 BF 00 98 */	lfs f29, 0x98(r31)
/* 807B6E14  C3 9F 00 E4 */	lfs f28, 0xe4(r31)
/* 807B6E18  3C 60 80 7C */	lis r3, master@ha /* 0x807B80E0@ha */
/* 807B6E1C  80 83 80 E0 */	lwz r4, master@l(r3)  /* 0x807B80E0@l */
/* 807B6E20  88 64 06 8A */	lbz r3, 0x68a(r4)
/* 807B6E24  54 60 07 7B */	rlwinm. r0, r3, 0, 0x1d, 0x1d
/* 807B6E28  41 82 00 1C */	beq lbl_807B6E44
/* 807B6E2C  54 60 07 B8 */	rlwinm r0, r3, 0, 0x1e, 0x1c
/* 807B6E30  98 04 06 8A */	stb r0, 0x68a(r4)
/* 807B6E34  38 00 00 0A */	li r0, 0xa
/* 807B6E38  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 807B6E3C  38 00 00 00 */	li r0, 0
/* 807B6E40  B0 1E 06 50 */	sth r0, 0x650(r30)
lbl_807B6E44:
/* 807B6E44  A8 1E 06 4E */	lha r0, 0x64e(r30)
/* 807B6E48  2C 00 00 03 */	cmpwi r0, 3
/* 807B6E4C  41 82 00 84 */	beq lbl_807B6ED0
/* 807B6E50  40 80 00 1C */	bge lbl_807B6E6C
/* 807B6E54  2C 00 00 01 */	cmpwi r0, 1
/* 807B6E58  41 82 00 3C */	beq lbl_807B6E94
/* 807B6E5C  40 80 00 54 */	bge lbl_807B6EB0
/* 807B6E60  2C 00 00 00 */	cmpwi r0, 0
/* 807B6E64  40 80 00 14 */	bge lbl_807B6E78
/* 807B6E68  48 00 00 E0 */	b lbl_807B6F48
lbl_807B6E6C:
/* 807B6E6C  2C 00 00 0A */	cmpwi r0, 0xa
/* 807B6E70  41 82 00 B8 */	beq lbl_807B6F28
/* 807B6E74  48 00 00 D4 */	b lbl_807B6F48
lbl_807B6E78:
/* 807B6E78  7F C3 F3 78 */	mr r3, r30
/* 807B6E7C  4B FF F2 51 */	bl e_th_ball_stop__FP15e_th_ball_class
/* 807B6E80  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807B6E84  38 00 00 01 */	li r0, 1
/* 807B6E88  98 1E 15 C6 */	stb r0, 0x15c6(r30)
/* 807B6E8C  FF C0 F8 90 */	fmr f30, f31
/* 807B6E90  48 00 00 B8 */	b lbl_807B6F48
lbl_807B6E94:
/* 807B6E94  7F C3 F3 78 */	mr r3, r30
/* 807B6E98  4B FF F2 C5 */	bl e_th_ball_spin__FP15e_th_ball_class
/* 807B6E9C  C3 DF 00 00 */	lfs f30, 0(r31)
/* 807B6EA0  C3 FF 00 90 */	lfs f31, 0x90(r31)
/* 807B6EA4  C3 BF 00 E8 */	lfs f29, 0xe8(r31)
/* 807B6EA8  C3 9F 00 EC */	lfs f28, 0xec(r31)
/* 807B6EAC  48 00 00 9C */	b lbl_807B6F48
lbl_807B6EB0:
/* 807B6EB0  7F C3 F3 78 */	mr r3, r30
/* 807B6EB4  4B FF F8 81 */	bl e_th_ball_shot__FP15e_th_ball_class
/* 807B6EB8  C3 DF 00 F0 */	lfs f30, 0xf0(r31)
/* 807B6EBC  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807B6EC0  C3 9F 00 EC */	lfs f28, 0xec(r31)
/* 807B6EC4  38 00 00 01 */	li r0, 1
/* 807B6EC8  98 1E 1A 8C */	stb r0, 0x1a8c(r30)
/* 807B6ECC  48 00 00 7C */	b lbl_807B6F48
lbl_807B6ED0:
/* 807B6ED0  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 807B6ED4  2C 00 00 01 */	cmpwi r0, 1
/* 807B6ED8  40 82 00 18 */	bne lbl_807B6EF0
/* 807B6EDC  C3 FF 00 00 */	lfs f31, 0(r31)
/* 807B6EE0  C3 BF 00 C4 */	lfs f29, 0xc4(r31)
/* 807B6EE4  FF C0 F8 90 */	fmr f30, f31
/* 807B6EE8  C3 9F 00 90 */	lfs f28, 0x90(r31)
/* 807B6EEC  48 00 00 30 */	b lbl_807B6F1C
lbl_807B6EF0:
/* 807B6EF0  7C 00 07 35 */	extsh. r0, r0
/* 807B6EF4  40 82 00 14 */	bne lbl_807B6F08
/* 807B6EF8  C3 DF 00 F0 */	lfs f30, 0xf0(r31)
/* 807B6EFC  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807B6F00  C3 9F 00 EC */	lfs f28, 0xec(r31)
/* 807B6F04  48 00 00 18 */	b lbl_807B6F1C
lbl_807B6F08:
/* 807B6F08  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807B6F0C  C3 BF 00 90 */	lfs f29, 0x90(r31)
/* 807B6F10  38 00 00 01 */	li r0, 1
/* 807B6F14  98 1E 15 C6 */	stb r0, 0x15c6(r30)
/* 807B6F18  FF C0 F8 90 */	fmr f30, f31
lbl_807B6F1C:
/* 807B6F1C  7F C3 F3 78 */	mr r3, r30
/* 807B6F20  4B FF FA 85 */	bl e_th_ball_return__FP15e_th_ball_class
/* 807B6F24  48 00 00 24 */	b lbl_807B6F48
lbl_807B6F28:
/* 807B6F28  7F C3 F3 78 */	mr r3, r30
/* 807B6F2C  4B FF FD D5 */	bl e_th_ball_end__FP15e_th_ball_class
/* 807B6F30  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807B6F34  38 00 00 01 */	li r0, 1
/* 807B6F38  98 1E 15 C6 */	stb r0, 0x15c6(r30)
/* 807B6F3C  FF C0 F8 90 */	fmr f30, f31
/* 807B6F40  38 00 00 19 */	li r0, 0x19
/* 807B6F44  B0 1E 0D D0 */	sth r0, 0xdd0(r30)
lbl_807B6F48:
/* 807B6F48  38 7E 19 40 */	addi r3, r30, 0x1940
/* 807B6F4C  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807B6F50  4B AB 86 F9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807B6F54  3C 60 80 7C */	lis r3, master@ha /* 0x807B80E0@ha */
/* 807B6F58  38 63 80 E0 */	addi r3, r3, master@l /* 0x807B80E0@l */
/* 807B6F5C  80 63 00 00 */	lwz r3, 0(r3)
/* 807B6F60  88 03 06 EA */	lbz r0, 0x6ea(r3)
/* 807B6F64  7C 00 07 75 */	extsb. r0, r0
/* 807B6F68  41 82 00 20 */	beq lbl_807B6F88
/* 807B6F6C  80 1E 18 B8 */	lwz r0, 0x18b8(r30)
/* 807B6F70  60 00 00 01 */	ori r0, r0, 1
/* 807B6F74  90 1E 18 B8 */	stw r0, 0x18b8(r30)
/* 807B6F78  80 1E 18 B8 */	lwz r0, 0x18b8(r30)
/* 807B6F7C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 807B6F80  90 1E 18 B8 */	stw r0, 0x18b8(r30)
/* 807B6F84  48 00 00 1C */	b lbl_807B6FA0
lbl_807B6F88:
/* 807B6F88  80 1E 18 B8 */	lwz r0, 0x18b8(r30)
/* 807B6F8C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 807B6F90  90 1E 18 B8 */	stw r0, 0x18b8(r30)
/* 807B6F94  80 1E 18 B8 */	lwz r0, 0x18b8(r30)
/* 807B6F98  60 00 00 04 */	ori r0, r0, 4
/* 807B6F9C  90 1E 18 B8 */	stw r0, 0x18b8(r30)
lbl_807B6FA0:
/* 807B6FA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B6FA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B6FA8  3B A3 23 3C */	addi r29, r3, 0x233c
/* 807B6FAC  7F A3 EB 78 */	mr r3, r29
/* 807B6FB0  38 9E 18 1C */	addi r4, r30, 0x181c
/* 807B6FB4  4B AA DB F5 */	bl Set__4cCcSFP8cCcD_Obj
/* 807B6FB8  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 807B6FBC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 807B6FC0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807B6FC4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807B6FC8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807B6FCC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807B6FD0  88 1E 1A 8C */	lbz r0, 0x1a8c(r30)
/* 807B6FD4  7C 00 07 75 */	extsb. r0, r0
/* 807B6FD8  40 82 00 14 */	bne lbl_807B6FEC
/* 807B6FDC  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 807B6FE0  EC 01 00 2A */	fadds f0, f1, f0
/* 807B6FE4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807B6FE8  48 00 00 0C */	b lbl_807B6FF4
lbl_807B6FEC:
/* 807B6FEC  38 00 00 00 */	li r0, 0
/* 807B6FF0  98 1E 1A 8C */	stb r0, 0x1a8c(r30)
lbl_807B6FF4:
/* 807B6FF4  38 7E 1A 78 */	addi r3, r30, 0x1a78
/* 807B6FF8  38 81 00 48 */	addi r4, r1, 0x48
/* 807B6FFC  4B AB 86 4D */	bl SetC__8cM3dGSphFRC4cXyz
/* 807B7000  7F A3 EB 78 */	mr r3, r29
/* 807B7004  38 9E 19 54 */	addi r4, r30, 0x1954
/* 807B7008  4B AA DB A1 */	bl Set__4cCcSFP8cCcD_Obj
/* 807B700C  38 7E 0D C8 */	addi r3, r30, 0xdc8
/* 807B7010  FC 20 F0 90 */	fmr f1, f30
/* 807B7014  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807B7018  FC 60 E0 90 */	fmr f3, f28
/* 807B701C  4B AB 8A 21 */	bl cLib_addCalc2__FPffff
/* 807B7020  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 807B7024  FC 20 F8 90 */	fmr f1, f31
/* 807B7028  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807B702C  FC 60 E8 90 */	fmr f3, f29
/* 807B7030  4B AB 8A 0D */	bl cLib_addCalc2__FPffff
/* 807B7034  38 7E 0D E4 */	addi r3, r30, 0xde4
/* 807B7038  C0 3F 00 00 */	lfs f1, 0(r31)
/* 807B703C  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 807B7040  4B AB 8A 41 */	bl cLib_addCalc0__FPfff
/* 807B7044  88 1E 15 C6 */	lbz r0, 0x15c6(r30)
/* 807B7048  7C 00 07 75 */	extsb. r0, r0
/* 807B704C  40 82 01 98 */	bne lbl_807B71E4
/* 807B7050  38 61 00 24 */	addi r3, r1, 0x24
/* 807B7054  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807B7058  3C A0 80 7C */	lis r5, master@ha /* 0x807B80E0@ha */
/* 807B705C  38 A5 80 E0 */	addi r5, r5, master@l /* 0x807B80E0@l */
/* 807B7060  80 A5 00 00 */	lwz r5, 0(r5)
/* 807B7064  38 A5 06 C0 */	addi r5, r5, 0x6c0
/* 807B7068  4B AA FA CD */	bl __mi__4cXyzCFRC3Vec
/* 807B706C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 807B7070  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807B7074  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807B7078  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807B707C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807B7080  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807B7084  38 61 00 3C */	addi r3, r1, 0x3c
/* 807B7088  4B B9 00 B1 */	bl PSVECSquareMag
/* 807B708C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B7090  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B7094  40 81 00 58 */	ble lbl_807B70EC
/* 807B7098  FC 00 08 34 */	frsqrte f0, f1
/* 807B709C  C8 9F 00 30 */	lfd f4, 0x30(r31)
/* 807B70A0  FC 44 00 32 */	fmul f2, f4, f0
/* 807B70A4  C8 7F 00 38 */	lfd f3, 0x38(r31)
/* 807B70A8  FC 00 00 32 */	fmul f0, f0, f0
/* 807B70AC  FC 01 00 32 */	fmul f0, f1, f0
/* 807B70B0  FC 03 00 28 */	fsub f0, f3, f0
/* 807B70B4  FC 02 00 32 */	fmul f0, f2, f0
/* 807B70B8  FC 44 00 32 */	fmul f2, f4, f0
/* 807B70BC  FC 00 00 32 */	fmul f0, f0, f0
/* 807B70C0  FC 01 00 32 */	fmul f0, f1, f0
/* 807B70C4  FC 03 00 28 */	fsub f0, f3, f0
/* 807B70C8  FC 02 00 32 */	fmul f0, f2, f0
/* 807B70CC  FC 44 00 32 */	fmul f2, f4, f0
/* 807B70D0  FC 00 00 32 */	fmul f0, f0, f0
/* 807B70D4  FC 01 00 32 */	fmul f0, f1, f0
/* 807B70D8  FC 03 00 28 */	fsub f0, f3, f0
/* 807B70DC  FC 02 00 32 */	fmul f0, f2, f0
/* 807B70E0  FC 21 00 32 */	fmul f1, f1, f0
/* 807B70E4  FC 20 08 18 */	frsp f1, f1
/* 807B70E8  48 00 00 88 */	b lbl_807B7170
lbl_807B70EC:
/* 807B70EC  C8 1F 00 40 */	lfd f0, 0x40(r31)
/* 807B70F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B70F4  40 80 00 10 */	bge lbl_807B7104
/* 807B70F8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807B70FC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807B7100  48 00 00 70 */	b lbl_807B7170
lbl_807B7104:
/* 807B7104  D0 21 00 08 */	stfs f1, 8(r1)
/* 807B7108  80 81 00 08 */	lwz r4, 8(r1)
/* 807B710C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807B7110  3C 00 7F 80 */	lis r0, 0x7f80
/* 807B7114  7C 03 00 00 */	cmpw r3, r0
/* 807B7118  41 82 00 14 */	beq lbl_807B712C
/* 807B711C  40 80 00 40 */	bge lbl_807B715C
/* 807B7120  2C 03 00 00 */	cmpwi r3, 0
/* 807B7124  41 82 00 20 */	beq lbl_807B7144
/* 807B7128  48 00 00 34 */	b lbl_807B715C
lbl_807B712C:
/* 807B712C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807B7130  41 82 00 0C */	beq lbl_807B713C
/* 807B7134  38 00 00 01 */	li r0, 1
/* 807B7138  48 00 00 28 */	b lbl_807B7160
lbl_807B713C:
/* 807B713C  38 00 00 02 */	li r0, 2
/* 807B7140  48 00 00 20 */	b lbl_807B7160
lbl_807B7144:
/* 807B7144  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807B7148  41 82 00 0C */	beq lbl_807B7154
/* 807B714C  38 00 00 05 */	li r0, 5
/* 807B7150  48 00 00 10 */	b lbl_807B7160
lbl_807B7154:
/* 807B7154  38 00 00 03 */	li r0, 3
/* 807B7158  48 00 00 08 */	b lbl_807B7160
lbl_807B715C:
/* 807B715C  38 00 00 04 */	li r0, 4
lbl_807B7160:
/* 807B7160  2C 00 00 01 */	cmpwi r0, 1
/* 807B7164  40 82 00 0C */	bne lbl_807B7170
/* 807B7168  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807B716C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807B7170:
/* 807B7170  C0 7E 0D C8 */	lfs f3, 0xdc8(r30)
/* 807B7174  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 807B7178  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 807B717C  EC 00 00 72 */	fmuls f0, f0, f1
/* 807B7180  EC 02 00 28 */	fsubs f0, f2, f0
/* 807B7184  EC 03 00 32 */	fmuls f0, f3, f0
/* 807B7188  FC 00 00 1E */	fctiwz f0, f0
/* 807B718C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 807B7190  80 81 00 5C */	lwz r4, 0x5c(r1)
/* 807B7194  7C 80 07 35 */	extsh. r0, r4
/* 807B7198  40 80 00 0C */	bge lbl_807B71A4
/* 807B719C  38 80 00 00 */	li r4, 0
/* 807B71A0  48 00 00 14 */	b lbl_807B71B4
lbl_807B71A4:
/* 807B71A4  7C 80 07 34 */	extsh r0, r4
/* 807B71A8  2C 00 00 2D */	cmpwi r0, 0x2d
/* 807B71AC  40 81 00 08 */	ble lbl_807B71B4
/* 807B71B0  38 80 00 2D */	li r4, 0x2d
lbl_807B71B4:
/* 807B71B4  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807B71B8  FC 00 02 10 */	fabs f0, f0
/* 807B71BC  FC 20 00 18 */	frsp f1, f0
/* 807B71C0  38 7E 0D D0 */	addi r3, r30, 0xdd0
/* 807B71C4  38 A0 00 01 */	li r5, 1
/* 807B71C8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 807B71CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807B71D0  40 81 00 0C */	ble lbl_807B71DC
/* 807B71D4  38 C0 00 0A */	li r6, 0xa
/* 807B71D8  48 00 00 08 */	b lbl_807B71E0
lbl_807B71DC:
/* 807B71DC  38 C0 00 02 */	li r6, 2
lbl_807B71E0:
/* 807B71E0  4B AB 94 29 */	bl cLib_addCalcAngleS2__FPssss
lbl_807B71E4:
/* 807B71E4  38 60 00 00 */	li r3, 0
/* 807B71E8  98 7E 15 C6 */	stb r3, 0x15c6(r30)
/* 807B71EC  A8 1E 0D D0 */	lha r0, 0xdd0(r30)
/* 807B71F0  20 00 00 27 */	subfic r0, r0, 0x27
/* 807B71F4  7C 00 16 70 */	srawi r0, r0, 2
/* 807B71F8  7C 00 01 94 */	addze r0, r0
/* 807B71FC  7C 00 07 34 */	extsh r0, r0
/* 807B7200  90 1E 0D E8 */	stw r0, 0xde8(r30)
/* 807B7204  80 1E 0D E8 */	lwz r0, 0xde8(r30)
/* 807B7208  2C 00 00 00 */	cmpwi r0, 0
/* 807B720C  40 80 00 08 */	bge lbl_807B7214
/* 807B7210  90 7E 0D E8 */	stw r3, 0xde8(r30)
lbl_807B7214:
/* 807B7214  A8 1E 0D D0 */	lha r0, 0xdd0(r30)
/* 807B7218  20 00 00 27 */	subfic r0, r0, 0x27
/* 807B721C  7C 00 0E 70 */	srawi r0, r0, 1
/* 807B7220  7C 00 01 94 */	addze r0, r0
/* 807B7224  7C 00 07 34 */	extsh r0, r0
/* 807B7228  90 1E 11 D4 */	stw r0, 0x11d4(r30)
/* 807B722C  80 1E 11 D4 */	lwz r0, 0x11d4(r30)
/* 807B7230  2C 00 00 00 */	cmpwi r0, 0
/* 807B7234  40 80 00 0C */	bge lbl_807B7240
/* 807B7238  38 00 00 00 */	li r0, 0
/* 807B723C  90 1E 11 D4 */	stw r0, 0x11d4(r30)
lbl_807B7240:
/* 807B7240  A8 1E 06 58 */	lha r0, 0x658(r30)
/* 807B7244  2C 00 00 00 */	cmpwi r0, 0
/* 807B7248  40 82 01 D4 */	bne lbl_807B741C
/* 807B724C  38 7E 18 1C */	addi r3, r30, 0x181c
/* 807B7250  4B 8C D2 11 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 807B7254  28 03 00 00 */	cmplwi r3, 0
/* 807B7258  41 82 00 28 */	beq lbl_807B7280
/* 807B725C  38 00 00 0A */	li r0, 0xa
/* 807B7260  B0 1E 06 58 */	sth r0, 0x658(r30)
/* 807B7264  38 7E 18 1C */	addi r3, r30, 0x181c
/* 807B7268  4B 8C D2 91 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 807B726C  7C 64 1B 78 */	mr r4, r3
/* 807B7270  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 807B7274  38 A0 00 28 */	li r5, 0x28
/* 807B7278  38 C0 00 00 */	li r6, 0
/* 807B727C  4B 8D 02 99 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
lbl_807B7280:
/* 807B7280  38 7E 19 54 */	addi r3, r30, 0x1954
/* 807B7284  4B 8C D0 3D */	bl ChkAtHit__12dCcD_GObjInfFv
/* 807B7288  28 03 00 00 */	cmplwi r3, 0
/* 807B728C  41 82 01 90 */	beq lbl_807B741C
/* 807B7290  38 7E 19 54 */	addi r3, r30, 0x1954
/* 807B7294  4B 8C D0 C5 */	bl GetAtHitObj__12dCcD_GObjInfFv
/* 807B7298  4B AA C7 B1 */	bl GetAc__8cCcD_ObjFv
/* 807B729C  A8 1E 06 4E */	lha r0, 0x64e(r30)
/* 807B72A0  2C 00 00 01 */	cmpwi r0, 1
/* 807B72A4  40 82 00 FC */	bne lbl_807B73A0
/* 807B72A8  A8 03 00 08 */	lha r0, 8(r3)
/* 807B72AC  2C 00 00 6E */	cmpwi r0, 0x6e
/* 807B72B0  40 82 01 6C */	bne lbl_807B741C
/* 807B72B4  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 807B72B8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807B72BC  38 61 00 18 */	addi r3, r1, 0x18
/* 807B72C0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 807B72C4  3C A0 80 7C */	lis r5, master@ha /* 0x807B80E0@ha */
/* 807B72C8  38 A5 80 E0 */	addi r5, r5, master@l /* 0x807B80E0@l */
/* 807B72CC  80 A5 00 00 */	lwz r5, 0(r5)
/* 807B72D0  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 807B72D4  4B AA F8 61 */	bl __mi__4cXyzCFRC3Vec
/* 807B72D8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 807B72DC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 807B72E0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 807B72E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807B72E8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 807B72EC  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 807B72F0  4B AB 03 85 */	bl cM_atan2s__Fff
/* 807B72F4  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 807B72F8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807B72FC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 807B7300  38 A0 00 02 */	li r5, 2
/* 807B7304  B0 BE 06 4E */	sth r5, 0x64e(r30)
/* 807B7308  38 00 00 00 */	li r0, 0
/* 807B730C  B0 1E 06 50 */	sth r0, 0x650(r30)
/* 807B7310  38 00 00 03 */	li r0, 3
/* 807B7314  3C 60 80 7C */	lis r3, master@ha /* 0x807B80E0@ha */
/* 807B7318  38 83 80 E0 */	addi r4, r3, master@l /* 0x807B80E0@l */
/* 807B731C  80 64 00 00 */	lwz r3, 0(r4)
/* 807B7320  B0 03 06 86 */	sth r0, 0x686(r3)
/* 807B7324  80 64 00 00 */	lwz r3, 0(r4)
/* 807B7328  B0 A3 05 B4 */	sth r5, 0x5b4(r3)
/* 807B732C  38 00 00 1E */	li r0, 0x1e
/* 807B7330  80 64 00 00 */	lwz r3, 0(r4)
/* 807B7334  B0 03 06 9C */	sth r0, 0x69c(r3)
/* 807B7338  3C 60 80 7B */	lis r3, d_a_e_th_ball__stringBase0@ha /* 0x807B7FC0@ha */
/* 807B733C  38 63 7F C0 */	addi r3, r3, d_a_e_th_ball__stringBase0@l /* 0x807B7FC0@l */
/* 807B7340  38 80 00 1B */	li r4, 0x1b
/* 807B7344  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B7348  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B734C  3C A5 00 02 */	addis r5, r5, 2
/* 807B7350  38 C0 00 80 */	li r6, 0x80
/* 807B7354  38 A5 C2 F8 */	addi r5, r5, -15624
/* 807B7358  4B 88 4F 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 807B735C  7C 64 1B 78 */	mr r4, r3
/* 807B7360  3C 60 80 7C */	lis r3, master@ha /* 0x807B80E0@ha */
/* 807B7364  38 63 80 E0 */	addi r3, r3, master@l /* 0x807B80E0@l */
/* 807B7368  80 63 00 00 */	lwz r3, 0(r3)
/* 807B736C  80 63 05 CC */	lwz r3, 0x5cc(r3)
/* 807B7370  38 A0 00 02 */	li r5, 2
/* 807B7374  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 807B7378  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807B737C  C0 7F 00 04 */	lfs f3, 4(r31)
/* 807B7380  C0 9F 00 AC */	lfs f4, 0xac(r31)
/* 807B7384  4B 85 9A ED */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 807B7388  38 00 00 1B */	li r0, 0x1b
/* 807B738C  3C 60 80 7C */	lis r3, master@ha /* 0x807B80E0@ha */
/* 807B7390  38 63 80 E0 */	addi r3, r3, master@l /* 0x807B80E0@l */
/* 807B7394  80 63 00 00 */	lwz r3, 0(r3)
/* 807B7398  90 03 05 D0 */	stw r0, 0x5d0(r3)
/* 807B739C  48 00 00 80 */	b lbl_807B741C
lbl_807B73A0:
/* 807B73A0  2C 00 00 02 */	cmpwi r0, 2
/* 807B73A4  40 82 00 78 */	bne lbl_807B741C
/* 807B73A8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 807B73AC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807B73B0  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 807B73B4  40 81 00 68 */	ble lbl_807B741C
/* 807B73B8  A8 03 00 08 */	lha r0, 8(r3)
/* 807B73BC  2C 00 01 BC */	cmpwi r0, 0x1bc
/* 807B73C0  40 82 00 5C */	bne lbl_807B741C
/* 807B73C4  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 807B73C8  38 03 80 00 */	addi r0, r3, -32768
/* 807B73CC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 807B73D0  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807B73D4  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 807B73D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 807B73DC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807B73E0  38 00 00 03 */	li r0, 3
/* 807B73E4  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 807B73E8  38 00 00 00 */	li r0, 0
/* 807B73EC  B0 1E 06 50 */	sth r0, 0x650(r30)
/* 807B73F0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 807B73F4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 807B73F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807B73FC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 807B7400  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807B7404  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807B7408  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 807B740C  38 80 00 06 */	li r4, 6
/* 807B7410  38 A0 00 4F */	li r5, 0x4f
/* 807B7414  38 C1 00 0C */	addi r6, r1, 0xc
/* 807B7418  4B 8B 86 0D */	bl StartShock__12dVibration_cFii4cXyz
lbl_807B741C:
/* 807B741C  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 807B7420  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 807B7424  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 807B7428  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 807B742C  E3 A1 00 88 */	psq_l f29, 136(r1), 0, 0 /* qr0 */
/* 807B7430  CB A1 00 80 */	lfd f29, 0x80(r1)
/* 807B7434  E3 81 00 78 */	psq_l f28, 120(r1), 0, 0 /* qr0 */
/* 807B7438  CB 81 00 70 */	lfd f28, 0x70(r1)
/* 807B743C  39 61 00 70 */	addi r11, r1, 0x70
/* 807B7440  4B BA AD E9 */	bl _restgpr_29
/* 807B7444  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 807B7448  7C 08 03 A6 */	mtlr r0
/* 807B744C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 807B7450  4E 80 00 20 */	blr 
