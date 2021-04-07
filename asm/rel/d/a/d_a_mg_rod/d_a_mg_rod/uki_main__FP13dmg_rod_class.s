lbl_804B4E64:
/* 804B4E64  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 804B4E68  7C 08 02 A6 */	mflr r0
/* 804B4E6C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 804B4E70  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 804B4E74  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 804B4E78  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 804B4E7C  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 804B4E80  39 61 00 D0 */	addi r11, r1, 0xd0
/* 804B4E84  4B EA D3 41 */	bl _savegpr_23
/* 804B4E88  7C 7F 1B 78 */	mr r31, r3
/* 804B4E8C  3C 60 80 4C */	lis r3, lit_1109@ha /* 0x804BBB90@ha */
/* 804B4E90  3B 83 BB 90 */	addi r28, r3, lit_1109@l /* 0x804BBB90@l */
/* 804B4E94  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804B4E98  3B C3 B5 34 */	addi r30, r3, lit_3879@l /* 0x804BB534@l */
/* 804B4E9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B4EA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B4EA4  83 43 5D AC */	lwz r26, 0x5dac(r3)
/* 804B4EA8  80 1F 10 AC */	lwz r0, 0x10ac(r31)
/* 804B4EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B4EB0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 804B4EB4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 804B4EB8  38 81 00 14 */	addi r4, r1, 0x14
/* 804B4EBC  4B B6 49 3D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 804B4EC0  7C 7D 1B 78 */	mr r29, r3
/* 804B4EC4  C0 1E 02 4C */	lfs f0, 0x24c(r30)
/* 804B4EC8  D0 1F 0F 5C */	stfs f0, 0xf5c(r31)
/* 804B4ECC  3B 20 00 00 */	li r25, 0
/* 804B4ED0  88 7F 06 A8 */	lbz r3, 0x6a8(r31)
/* 804B4ED4  28 03 00 00 */	cmplwi r3, 0
/* 804B4ED8  41 82 00 24 */	beq lbl_804B4EFC
/* 804B4EDC  38 03 FF FF */	addi r0, r3, -1
/* 804B4EE0  98 1F 06 A8 */	stb r0, 0x6a8(r31)
/* 804B4EE4  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 804B4EE8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804B4EEC  FC 40 08 90 */	fmr f2, f1
/* 804B4EF0  C0 7E 02 50 */	lfs f3, 0x250(r30)
/* 804B4EF4  4B DB AB 49 */	bl cLib_addCalc2__FPffff
/* 804B4EF8  48 00 00 38 */	b lbl_804B4F30
lbl_804B4EFC:
/* 804B4EFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B4F00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B4F04  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B4F08  4B C0 44 39 */	bl checkEquipAnime__9daAlink_cCFv
/* 804B4F0C  2C 03 00 00 */	cmpwi r3, 0
/* 804B4F10  41 82 00 18 */	beq lbl_804B4F28
/* 804B4F14  38 7F 06 A4 */	addi r3, r31, 0x6a4
/* 804B4F18  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804B4F1C  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 804B4F20  4B DB AB 61 */	bl cLib_addCalc0__FPfff
/* 804B4F24  48 00 00 0C */	b lbl_804B4F30
lbl_804B4F28:
/* 804B4F28  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804B4F2C  D0 1F 06 A4 */	stfs f0, 0x6a4(r31)
lbl_804B4F30:
/* 804B4F30  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 804B4F34  2C 00 00 00 */	cmpwi r0, 0
/* 804B4F38  40 82 00 50 */	bne lbl_804B4F88
/* 804B4F3C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B4F40  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B4F44  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804B4F48  38 00 00 00 */	li r0, 0
/* 804B4F4C  A0 63 2F DC */	lhz r3, 0x2fdc(r3)
/* 804B4F50  28 03 00 5C */	cmplwi r3, 0x5c
/* 804B4F54  41 82 00 14 */	beq lbl_804B4F68
/* 804B4F58  28 03 00 5F */	cmplwi r3, 0x5f
/* 804B4F5C  41 82 00 0C */	beq lbl_804B4F68
/* 804B4F60  28 03 00 5E */	cmplwi r3, 0x5e
/* 804B4F64  40 82 00 08 */	bne lbl_804B4F6C
lbl_804B4F68:
/* 804B4F68  38 00 00 01 */	li r0, 1
lbl_804B4F6C:
/* 804B4F6C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 804B4F70  41 82 00 10 */	beq lbl_804B4F80
/* 804B4F74  38 00 00 01 */	li r0, 1
/* 804B4F78  98 1F 10 2D */	stb r0, 0x102d(r31)
/* 804B4F7C  48 00 00 0C */	b lbl_804B4F88
lbl_804B4F80:
/* 804B4F80  38 00 00 00 */	li r0, 0
/* 804B4F84  98 1F 10 2D */	stb r0, 0x102d(r31)
lbl_804B4F88:
/* 804B4F88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B4F8C  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B4F90  80 7B 5D B4 */	lwz r3, 0x5db4(r27)
/* 804B4F94  A8 03 30 1A */	lha r0, 0x301a(r3)
/* 804B4F98  2C 00 00 74 */	cmpwi r0, 0x74
/* 804B4F9C  40 82 00 10 */	bne lbl_804B4FAC
/* 804B4FA0  38 00 00 02 */	li r0, 2
/* 804B4FA4  98 1F 10 2C */	stb r0, 0x102c(r31)
/* 804B4FA8  48 00 00 20 */	b lbl_804B4FC8
lbl_804B4FAC:
/* 804B4FAC  2C 00 00 76 */	cmpwi r0, 0x76
/* 804B4FB0  40 82 00 10 */	bne lbl_804B4FC0
/* 804B4FB4  38 00 00 01 */	li r0, 1
/* 804B4FB8  98 1F 10 2C */	stb r0, 0x102c(r31)
/* 804B4FBC  48 00 00 0C */	b lbl_804B4FC8
lbl_804B4FC0:
/* 804B4FC0  38 00 00 00 */	li r0, 0
/* 804B4FC4  98 1F 10 2C */	stb r0, 0x102c(r31)
lbl_804B4FC8:
/* 804B4FC8  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 804B4FCC  2C 00 00 05 */	cmpwi r0, 5
/* 804B4FD0  41 82 00 58 */	beq lbl_804B5028
/* 804B4FD4  40 80 00 1C */	bge lbl_804B4FF0
/* 804B4FD8  2C 00 00 01 */	cmpwi r0, 1
/* 804B4FDC  41 82 00 2C */	beq lbl_804B5008
/* 804B4FE0  40 80 00 84 */	bge lbl_804B5064
/* 804B4FE4  2C 00 00 00 */	cmpwi r0, 0
/* 804B4FE8  40 80 00 14 */	bge lbl_804B4FFC
/* 804B4FEC  48 00 00 78 */	b lbl_804B5064
lbl_804B4FF0:
/* 804B4FF0  2C 00 00 07 */	cmpwi r0, 7
/* 804B4FF4  40 80 00 70 */	bge lbl_804B5064
/* 804B4FF8  48 00 00 50 */	b lbl_804B5048
lbl_804B4FFC:
/* 804B4FFC  7F E3 FB 78 */	mr r3, r31
/* 804B5000  4B FF DC 55 */	bl uki_ready__FP13dmg_rod_class
/* 804B5004  48 00 00 60 */	b lbl_804B5064
lbl_804B5008:
/* 804B5008  7F E3 FB 78 */	mr r3, r31
/* 804B500C  4B FF E4 51 */	bl uki_standby__FP13dmg_rod_class
/* 804B5010  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 804B5014  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 804B5018  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 804B501C  60 00 00 01 */	ori r0, r0, 1
/* 804B5020  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 804B5024  48 00 00 40 */	b lbl_804B5064
lbl_804B5028:
/* 804B5028  7F E3 FB 78 */	mr r3, r31
/* 804B502C  4B FF EB 51 */	bl uki_hit__FP13dmg_rod_class
/* 804B5030  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 804B5034  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 804B5038  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 804B503C  60 00 00 01 */	ori r0, r0, 1
/* 804B5040  B0 03 00 B0 */	sth r0, 0xb0(r3)
/* 804B5044  48 00 00 20 */	b lbl_804B5064
lbl_804B5048:
/* 804B5048  7F E3 FB 78 */	mr r3, r31
/* 804B504C  4B FF F1 55 */	bl uki_catch__FP13dmg_rod_class
/* 804B5050  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 804B5054  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 804B5058  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 804B505C  60 00 00 01 */	ori r0, r0, 1
/* 804B5060  B0 03 00 B0 */	sth r0, 0xb0(r3)
lbl_804B5064:
/* 804B5064  C0 5F 14 DC */	lfs f2, 0x14dc(r31)
/* 804B5068  C0 3E 01 C4 */	lfs f1, 0x1c4(r30)
/* 804B506C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 804B5070  4C 40 13 82 */	cror 2, 0, 2
/* 804B5074  40 82 00 4C */	bne lbl_804B50C0
/* 804B5078  C0 1F 14 E0 */	lfs f0, 0x14e0(r31)
/* 804B507C  EC 02 00 28 */	fsubs f0, f2, f0
/* 804B5080  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804B5084  4C 40 13 82 */	cror 2, 0, 2
/* 804B5088  40 82 00 38 */	bne lbl_804B50C0
/* 804B508C  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 804B5090  2C 00 00 01 */	cmpwi r0, 1
/* 804B5094  40 82 00 2C */	bne lbl_804B50C0
/* 804B5098  88 1F 10 0D */	lbz r0, 0x100d(r31)
/* 804B509C  7C 00 07 75 */	extsb. r0, r0
/* 804B50A0  41 82 00 20 */	beq lbl_804B50C0
/* 804B50A4  80 7B 5D B4 */	lwz r3, 0x5db4(r27)
/* 804B50A8  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020078@ha */
/* 804B50AC  38 84 00 78 */	addi r4, r4, 0x0078 /* 0x00020078@l */
/* 804B50B0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804B50B4  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 804B50B8  7D 89 03 A6 */	mtctr r12
/* 804B50BC  4E 80 04 21 */	bctrl 
lbl_804B50C0:
/* 804B50C0  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 804B50C4  2C 00 00 01 */	cmpwi r0, 1
/* 804B50C8  40 82 00 18 */	bne lbl_804B50E0
/* 804B50CC  C0 3F 14 DC */	lfs f1, 0x14dc(r31)
/* 804B50D0  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 804B50D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B50D8  40 80 00 08 */	bge lbl_804B50E0
/* 804B50DC  3B 20 00 01 */	li r25, 1
lbl_804B50E0:
/* 804B50E0  88 7F 10 A5 */	lbz r3, 0x10a5(r31)
/* 804B50E4  7C 60 07 75 */	extsb. r0, r3
/* 804B50E8  41 82 07 B4 */	beq lbl_804B589C
/* 804B50EC  38 03 FF FF */	addi r0, r3, -1
/* 804B50F0  98 1F 10 A5 */	stb r0, 0x10a5(r31)
/* 804B50F4  7F E3 FB 78 */	mr r3, r31
/* 804B50F8  4B FF 6B E9 */	bl line_control2_u__FP13dmg_rod_class
/* 804B50FC  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 804B5100  2C 00 00 06 */	cmpwi r0, 6
/* 804B5104  40 82 00 0C */	bne lbl_804B5110
/* 804B5108  7F E3 FB 78 */	mr r3, r31
/* 804B510C  4B FF D5 51 */	bl uki_calc__FP13dmg_rod_class
lbl_804B5110:
/* 804B5110  38 61 00 50 */	addi r3, r1, 0x50
/* 804B5114  38 9F 07 70 */	addi r4, r31, 0x770
/* 804B5118  38 BF 07 7C */	addi r5, r31, 0x77c
/* 804B511C  4B DB 1A 19 */	bl __mi__4cXyzCFRC3Vec
/* 804B5120  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 804B5124  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 804B5128  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 804B512C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 804B5130  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 804B5134  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 804B5138  38 61 00 74 */	addi r3, r1, 0x74
/* 804B513C  4B E9 1F FD */	bl PSVECSquareMag
/* 804B5140  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B5144  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B5148  40 81 00 58 */	ble lbl_804B51A0
/* 804B514C  FC 00 08 34 */	frsqrte f0, f1
/* 804B5150  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 804B5154  FC 44 00 32 */	fmul f2, f4, f0
/* 804B5158  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 804B515C  FC 00 00 32 */	fmul f0, f0, f0
/* 804B5160  FC 01 00 32 */	fmul f0, f1, f0
/* 804B5164  FC 03 00 28 */	fsub f0, f3, f0
/* 804B5168  FC 02 00 32 */	fmul f0, f2, f0
/* 804B516C  FC 44 00 32 */	fmul f2, f4, f0
/* 804B5170  FC 00 00 32 */	fmul f0, f0, f0
/* 804B5174  FC 01 00 32 */	fmul f0, f1, f0
/* 804B5178  FC 03 00 28 */	fsub f0, f3, f0
/* 804B517C  FC 02 00 32 */	fmul f0, f2, f0
/* 804B5180  FC 44 00 32 */	fmul f2, f4, f0
/* 804B5184  FC 00 00 32 */	fmul f0, f0, f0
/* 804B5188  FC 01 00 32 */	fmul f0, f1, f0
/* 804B518C  FC 03 00 28 */	fsub f0, f3, f0
/* 804B5190  FC 02 00 32 */	fmul f0, f2, f0
/* 804B5194  FC 21 00 32 */	fmul f1, f1, f0
/* 804B5198  FC 20 08 18 */	frsp f1, f1
/* 804B519C  48 00 00 88 */	b lbl_804B5224
lbl_804B51A0:
/* 804B51A0  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 804B51A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B51A8  40 80 00 10 */	bge lbl_804B51B8
/* 804B51AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B51B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804B51B4  48 00 00 70 */	b lbl_804B5224
lbl_804B51B8:
/* 804B51B8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804B51BC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 804B51C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804B51C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 804B51C8  7C 03 00 00 */	cmpw r3, r0
/* 804B51CC  41 82 00 14 */	beq lbl_804B51E0
/* 804B51D0  40 80 00 40 */	bge lbl_804B5210
/* 804B51D4  2C 03 00 00 */	cmpwi r3, 0
/* 804B51D8  41 82 00 20 */	beq lbl_804B51F8
/* 804B51DC  48 00 00 34 */	b lbl_804B5210
lbl_804B51E0:
/* 804B51E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B51E4  41 82 00 0C */	beq lbl_804B51F0
/* 804B51E8  38 00 00 01 */	li r0, 1
/* 804B51EC  48 00 00 28 */	b lbl_804B5214
lbl_804B51F0:
/* 804B51F0  38 00 00 02 */	li r0, 2
/* 804B51F4  48 00 00 20 */	b lbl_804B5214
lbl_804B51F8:
/* 804B51F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B51FC  41 82 00 0C */	beq lbl_804B5208
/* 804B5200  38 00 00 05 */	li r0, 5
/* 804B5204  48 00 00 10 */	b lbl_804B5214
lbl_804B5208:
/* 804B5208  38 00 00 03 */	li r0, 3
/* 804B520C  48 00 00 08 */	b lbl_804B5214
lbl_804B5210:
/* 804B5210  38 00 00 04 */	li r0, 4
lbl_804B5214:
/* 804B5214  2C 00 00 01 */	cmpwi r0, 1
/* 804B5218  40 82 00 0C */	bne lbl_804B5224
/* 804B521C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B5220  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804B5224:
/* 804B5224  D0 3F 0F 60 */	stfs f1, 0xf60(r31)
/* 804B5228  A8 1F 05 7E */	lha r0, 0x57e(r31)
/* 804B522C  2C 00 00 00 */	cmpwi r0, 0
/* 804B5230  40 82 06 6C */	bne lbl_804B589C
/* 804B5234  A8 1F 0F 7E */	lha r0, 0xf7e(r31)
/* 804B5238  2C 00 00 05 */	cmpwi r0, 5
/* 804B523C  40 80 06 60 */	bge lbl_804B589C
/* 804B5240  2C 19 00 00 */	cmpwi r25, 0
/* 804B5244  41 82 06 58 */	beq lbl_804B589C
/* 804B5248  80 7B 5D B4 */	lwz r3, 0x5db4(r27)
/* 804B524C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 804B5250  64 00 00 01 */	oris r0, r0, 1
/* 804B5254  90 03 05 88 */	stw r0, 0x588(r3)
/* 804B5258  38 00 00 05 */	li r0, 5
/* 804B525C  B0 1F 0F 7E */	sth r0, 0xf7e(r31)
/* 804B5260  38 00 00 0A */	li r0, 0xa
/* 804B5264  B0 1F 13 B4 */	sth r0, 0x13b4(r31)
/* 804B5268  38 00 00 47 */	li r0, 0x47
/* 804B526C  B0 1D 05 B6 */	sth r0, 0x5b6(r29)
/* 804B5270  38 00 00 00 */	li r0, 0
/* 804B5274  B0 1D 05 B8 */	sth r0, 0x5b8(r29)
/* 804B5278  3C 60 80 4B */	lis r3, s_sg_sub__FPvPv@ha /* 0x804B4A94@ha */
/* 804B527C  38 63 4A 94 */	addi r3, r3, s_sg_sub__FPvPv@l /* 0x804B4A94@l */
/* 804B5280  7F E4 FB 78 */	mr r4, r31
/* 804B5284  4B B6 C0 B5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 804B5288  28 03 00 00 */	cmplwi r3, 0
/* 804B528C  41 82 00 2C */	beq lbl_804B52B8
/* 804B5290  41 82 00 0C */	beq lbl_804B529C
/* 804B5294  80 03 00 04 */	lwz r0, 4(r3)
/* 804B5298  48 00 00 08 */	b lbl_804B52A0
lbl_804B529C:
/* 804B529C  38 00 FF FF */	li r0, -1
lbl_804B52A0:
/* 804B52A0  90 1D 0C 4C */	stw r0, 0xc4c(r29)
/* 804B52A4  38 00 00 04 */	li r0, 4
/* 804B52A8  98 1D 0C 3D */	stb r0, 0xc3d(r29)
/* 804B52AC  38 00 00 01 */	li r0, 1
/* 804B52B0  98 03 0A 92 */	stb r0, 0xa92(r3)
/* 804B52B4  48 00 00 24 */	b lbl_804B52D8
lbl_804B52B8:
/* 804B52B8  3C 60 80 4B */	lis r3, s_bb_sub__FPvPv@ha /* 0x804B4B08@ha */
/* 804B52BC  38 63 4B 08 */	addi r3, r3, s_bb_sub__FPvPv@l /* 0x804B4B08@l */
/* 804B52C0  7F E4 FB 78 */	mr r4, r31
/* 804B52C4  4B B6 C0 75 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 804B52C8  28 03 00 00 */	cmplwi r3, 0
/* 804B52CC  41 82 00 0C */	beq lbl_804B52D8
/* 804B52D0  38 00 00 05 */	li r0, 5
/* 804B52D4  98 1D 0C 3D */	stb r0, 0xc3d(r29)
lbl_804B52D8:
/* 804B52D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B52DC  38 E3 61 C0 */	addi r7, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B52E0  A0 C7 01 6E */	lhz r6, 0x16e(r7)
/* 804B52E4  A0 A7 01 6C */	lhz r5, 0x16c(r7)
/* 804B52E8  A0 07 01 76 */	lhz r0, 0x176(r7)
/* 804B52EC  A0 87 01 74 */	lhz r4, 0x174(r7)
/* 804B52F0  A0 67 01 70 */	lhz r3, 0x170(r7)
/* 804B52F4  7C 06 02 14 */	add r0, r6, r0
/* 804B52F8  7C 00 22 14 */	add r0, r0, r4
/* 804B52FC  7C 00 32 14 */	add r0, r0, r6
/* 804B5300  7F 20 1A 14 */	add r25, r0, r3
/* 804B5304  7F 25 CA 14 */	add r25, r5, r25
/* 804B5308  38 67 4E 00 */	addi r3, r7, 0x4e00
/* 804B530C  3C 80 80 4C */	lis r4, d_a_mg_rod__stringBase0@ha /* 0x804BB830@ha */
/* 804B5310  38 84 B8 30 */	addi r4, r4, d_a_mg_rod__stringBase0@l /* 0x804BB830@l */
/* 804B5314  4B EB 36 81 */	bl strcmp
/* 804B5318  2C 03 00 00 */	cmpwi r3, 0
/* 804B531C  40 82 04 84 */	bne lbl_804B57A0
/* 804B5320  2C 19 00 05 */	cmpwi r25, 5
/* 804B5324  41 80 00 8C */	blt lbl_804B53B0
/* 804B5328  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804B532C  4B DB 26 29 */	bl cM_rndF__Ff
/* 804B5330  C0 1E 02 44 */	lfs f0, 0x244(r30)
/* 804B5334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B5338  40 80 00 78 */	bge lbl_804B53B0
/* 804B533C  C0 3E 02 54 */	lfs f1, 0x254(r30)
/* 804B5340  4B DB 26 15 */	bl cM_rndF__Ff
/* 804B5344  FC 00 08 1E */	fctiwz f0, f1
/* 804B5348  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 804B534C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804B5350  2C 00 00 00 */	cmpwi r0, 0
/* 804B5354  40 82 00 10 */	bne lbl_804B5364
/* 804B5358  38 00 00 01 */	li r0, 1
/* 804B535C  98 1D 0C 3D */	stb r0, 0xc3d(r29)
/* 804B5360  48 00 00 50 */	b lbl_804B53B0
lbl_804B5364:
/* 804B5364  2C 00 00 01 */	cmpwi r0, 1
/* 804B5368  40 82 00 10 */	bne lbl_804B5378
/* 804B536C  38 00 00 03 */	li r0, 3
/* 804B5370  98 1D 0C 3D */	stb r0, 0xc3d(r29)
/* 804B5374  48 00 00 3C */	b lbl_804B53B0
lbl_804B5378:
/* 804B5378  2C 00 00 02 */	cmpwi r0, 2
/* 804B537C  40 82 00 10 */	bne lbl_804B538C
/* 804B5380  38 00 00 07 */	li r0, 7
/* 804B5384  98 1D 0C 3D */	stb r0, 0xc3d(r29)
/* 804B5388  48 00 00 28 */	b lbl_804B53B0
lbl_804B538C:
/* 804B538C  2C 00 00 03 */	cmpwi r0, 3
/* 804B5390  40 82 00 10 */	bne lbl_804B53A0
/* 804B5394  38 00 00 08 */	li r0, 8
/* 804B5398  98 1D 0C 3D */	stb r0, 0xc3d(r29)
/* 804B539C  48 00 00 14 */	b lbl_804B53B0
lbl_804B53A0:
/* 804B53A0  2C 00 00 04 */	cmpwi r0, 4
/* 804B53A4  40 82 00 0C */	bne lbl_804B53B0
/* 804B53A8  38 00 00 09 */	li r0, 9
/* 804B53AC  98 1D 0C 3D */	stb r0, 0xc3d(r29)
lbl_804B53B0:
/* 804B53B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B53B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B53B8  3B 63 07 F0 */	addi r27, r3, 0x7f0
/* 804B53BC  7F 63 DB 78 */	mr r3, r27
/* 804B53C0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 804B53C4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 804B53C8  A0 84 03 A8 */	lhz r4, 0x3a8(r4)
/* 804B53CC  4B B7 F5 F1 */	bl isEventBit__11dSv_event_cCFUs
/* 804B53D0  2C 03 00 00 */	cmpwi r3, 0
/* 804B53D4  40 82 01 6C */	bne lbl_804B5540
/* 804B53D8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804B53DC  4B DB 25 79 */	bl cM_rndF__Ff
/* 804B53E0  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 804B53E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B53E8  4C 40 13 82 */	cror 2, 0, 2
/* 804B53EC  40 82 01 54 */	bne lbl_804B5540
/* 804B53F0  C0 1E 02 58 */	lfs f0, 0x258(r30)
/* 804B53F4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 804B53F8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804B53FC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 804B5400  C0 1E 02 5C */	lfs f0, 0x25c(r30)
/* 804B5404  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 804B5408  38 61 00 68 */	addi r3, r1, 0x68
/* 804B540C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 804B5410  7C 65 1B 78 */	mr r5, r3
/* 804B5414  4B E9 1C A1 */	bl PSVECSubtract
/* 804B5418  38 61 00 68 */	addi r3, r1, 0x68
/* 804B541C  4B E9 1D 1D */	bl PSVECSquareMag
/* 804B5420  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B5424  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B5428  40 81 00 58 */	ble lbl_804B5480
/* 804B542C  FC 00 08 34 */	frsqrte f0, f1
/* 804B5430  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 804B5434  FC 44 00 32 */	fmul f2, f4, f0
/* 804B5438  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 804B543C  FC 00 00 32 */	fmul f0, f0, f0
/* 804B5440  FC 01 00 32 */	fmul f0, f1, f0
/* 804B5444  FC 03 00 28 */	fsub f0, f3, f0
/* 804B5448  FC 02 00 32 */	fmul f0, f2, f0
/* 804B544C  FC 44 00 32 */	fmul f2, f4, f0
/* 804B5450  FC 00 00 32 */	fmul f0, f0, f0
/* 804B5454  FC 01 00 32 */	fmul f0, f1, f0
/* 804B5458  FC 03 00 28 */	fsub f0, f3, f0
/* 804B545C  FC 02 00 32 */	fmul f0, f2, f0
/* 804B5460  FC 44 00 32 */	fmul f2, f4, f0
/* 804B5464  FC 00 00 32 */	fmul f0, f0, f0
/* 804B5468  FC 01 00 32 */	fmul f0, f1, f0
/* 804B546C  FC 03 00 28 */	fsub f0, f3, f0
/* 804B5470  FC 02 00 32 */	fmul f0, f2, f0
/* 804B5474  FC 21 00 32 */	fmul f1, f1, f0
/* 804B5478  FC 20 08 18 */	frsp f1, f1
/* 804B547C  48 00 00 88 */	b lbl_804B5504
lbl_804B5480:
/* 804B5480  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 804B5484  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B5488  40 80 00 10 */	bge lbl_804B5498
/* 804B548C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B5490  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804B5494  48 00 00 70 */	b lbl_804B5504
lbl_804B5498:
/* 804B5498  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804B549C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804B54A0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804B54A4  3C 00 7F 80 */	lis r0, 0x7f80
/* 804B54A8  7C 03 00 00 */	cmpw r3, r0
/* 804B54AC  41 82 00 14 */	beq lbl_804B54C0
/* 804B54B0  40 80 00 40 */	bge lbl_804B54F0
/* 804B54B4  2C 03 00 00 */	cmpwi r3, 0
/* 804B54B8  41 82 00 20 */	beq lbl_804B54D8
/* 804B54BC  48 00 00 34 */	b lbl_804B54F0
lbl_804B54C0:
/* 804B54C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B54C4  41 82 00 0C */	beq lbl_804B54D0
/* 804B54C8  38 00 00 01 */	li r0, 1
/* 804B54CC  48 00 00 28 */	b lbl_804B54F4
lbl_804B54D0:
/* 804B54D0  38 00 00 02 */	li r0, 2
/* 804B54D4  48 00 00 20 */	b lbl_804B54F4
lbl_804B54D8:
/* 804B54D8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B54DC  41 82 00 0C */	beq lbl_804B54E8
/* 804B54E0  38 00 00 05 */	li r0, 5
/* 804B54E4  48 00 00 10 */	b lbl_804B54F4
lbl_804B54E8:
/* 804B54E8  38 00 00 03 */	li r0, 3
/* 804B54EC  48 00 00 08 */	b lbl_804B54F4
lbl_804B54F0:
/* 804B54F0  38 00 00 04 */	li r0, 4
lbl_804B54F4:
/* 804B54F4  2C 00 00 01 */	cmpwi r0, 1
/* 804B54F8  40 82 00 0C */	bne lbl_804B5504
/* 804B54FC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B5500  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804B5504:
/* 804B5504  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 804B5508  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B550C  40 80 00 34 */	bge lbl_804B5540
/* 804B5510  C0 21 00 68 */	lfs f1, 0x68(r1)
/* 804B5514  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 804B5518  4B DB 21 5D */	bl cM_atan2s__Fff
/* 804B551C  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 804B5520  7C 03 00 50 */	subf r0, r3, r0
/* 804B5524  7C 00 07 34 */	extsh r0, r0
/* 804B5528  2C 00 40 00 */	cmpwi r0, 0x4000
/* 804B552C  40 80 00 14 */	bge lbl_804B5540
/* 804B5530  2C 00 C0 00 */	cmpwi r0, -16384
/* 804B5534  40 81 00 0C */	ble lbl_804B5540
/* 804B5538  38 00 00 06 */	li r0, 6
/* 804B553C  98 1D 0C 3D */	stb r0, 0xc3d(r29)
lbl_804B5540:
/* 804B5540  7F 63 DB 78 */	mr r3, r27
/* 804B5544  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 804B5548  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 804B554C  A0 84 03 A4 */	lhz r4, 0x3a4(r4)
/* 804B5550  4B B7 F4 6D */	bl isEventBit__11dSv_event_cCFUs
/* 804B5554  2C 03 00 00 */	cmpwi r3, 0
/* 804B5558  40 82 02 BC */	bne lbl_804B5814
/* 804B555C  88 1F 10 2D */	lbz r0, 0x102d(r31)
/* 804B5560  2C 00 00 01 */	cmpwi r0, 1
/* 804B5564  40 82 02 B0 */	bne lbl_804B5814
/* 804B5568  88 1C 05 60 */	lbz r0, 0x560(r28)
/* 804B556C  7C 00 07 75 */	extsb. r0, r0
/* 804B5570  40 82 00 80 */	bne lbl_804B55F0
/* 804B5574  C0 5E 02 60 */	lfs f2, 0x260(r30)
/* 804B5578  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 804B557C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B5580  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 804B5584  C0 1E 02 64 */	lfs f0, 0x264(r30)
/* 804B5588  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804B558C  D0 5C 05 70 */	stfs f2, 0x570(r28)
/* 804B5590  38 7C 05 70 */	addi r3, r28, 0x570
/* 804B5594  D0 23 00 04 */	stfs f1, 4(r3)
/* 804B5598  D0 03 00 08 */	stfs f0, 8(r3)
/* 804B559C  3C 80 80 4C */	lis r4, __dt__4cXyzFv@ha /* 0x804BB1B4@ha */
/* 804B55A0  38 84 B1 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804BB1B4@l */
/* 804B55A4  38 BC 05 54 */	addi r5, r28, 0x554
/* 804B55A8  4B FF 3F D1 */	bl __register_global_object
/* 804B55AC  C0 5E 02 68 */	lfs f2, 0x268(r30)
/* 804B55B0  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 804B55B4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B55B8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 804B55BC  C0 1E 02 6C */	lfs f0, 0x26c(r30)
/* 804B55C0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804B55C4  38 7C 05 70 */	addi r3, r28, 0x570
/* 804B55C8  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 804B55CC  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 804B55D0  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 804B55D4  38 63 00 0C */	addi r3, r3, 0xc
/* 804B55D8  3C 80 80 4C */	lis r4, __dt__4cXyzFv@ha /* 0x804BB1B4@ha */
/* 804B55DC  38 84 B1 B4 */	addi r4, r4, __dt__4cXyzFv@l /* 0x804BB1B4@l */
/* 804B55E0  38 BC 05 64 */	addi r5, r28, 0x564
/* 804B55E4  4B FF 3F 95 */	bl __register_global_object
/* 804B55E8  38 00 00 01 */	li r0, 1
/* 804B55EC  98 1C 05 60 */	stb r0, 0x560(r28)
lbl_804B55F0:
/* 804B55F0  3B 40 00 00 */	li r26, 0
/* 804B55F4  3B 20 00 00 */	li r25, 0
/* 804B55F8  C3 FE 00 58 */	lfs f31, 0x58(r30)
/* 804B55FC  C3 DE 00 74 */	lfs f30, 0x74(r30)
lbl_804B5600:
/* 804B5600  38 61 00 2C */	addi r3, r1, 0x2c
/* 804B5604  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804B5608  38 BC 05 70 */	addi r5, r28, 0x570
/* 804B560C  7C A5 CA 14 */	add r5, r5, r25
/* 804B5610  4B DB 15 25 */	bl __mi__4cXyzCFRC3Vec
/* 804B5614  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804B5618  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804B561C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804B5620  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 804B5624  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804B5628  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 804B562C  D3 E1 00 84 */	stfs f31, 0x84(r1)
/* 804B5630  38 61 00 80 */	addi r3, r1, 0x80
/* 804B5634  4B E9 1B 05 */	bl PSVECSquareMag
/* 804B5638  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 804B563C  40 81 00 58 */	ble lbl_804B5694
/* 804B5640  FC 00 08 34 */	frsqrte f0, f1
/* 804B5644  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 804B5648  FC 44 00 32 */	fmul f2, f4, f0
/* 804B564C  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 804B5650  FC 00 00 32 */	fmul f0, f0, f0
/* 804B5654  FC 01 00 32 */	fmul f0, f1, f0
/* 804B5658  FC 03 00 28 */	fsub f0, f3, f0
/* 804B565C  FC 02 00 32 */	fmul f0, f2, f0
/* 804B5660  FC 44 00 32 */	fmul f2, f4, f0
/* 804B5664  FC 00 00 32 */	fmul f0, f0, f0
/* 804B5668  FC 01 00 32 */	fmul f0, f1, f0
/* 804B566C  FC 03 00 28 */	fsub f0, f3, f0
/* 804B5670  FC 02 00 32 */	fmul f0, f2, f0
/* 804B5674  FC 44 00 32 */	fmul f2, f4, f0
/* 804B5678  FC 00 00 32 */	fmul f0, f0, f0
/* 804B567C  FC 01 00 32 */	fmul f0, f1, f0
/* 804B5680  FC 03 00 28 */	fsub f0, f3, f0
/* 804B5684  FC 02 00 32 */	fmul f0, f2, f0
/* 804B5688  FC 21 00 32 */	fmul f1, f1, f0
/* 804B568C  FC 20 08 18 */	frsp f1, f1
/* 804B5690  48 00 00 88 */	b lbl_804B5718
lbl_804B5694:
/* 804B5694  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 804B5698  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B569C  40 80 00 10 */	bge lbl_804B56AC
/* 804B56A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B56A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804B56A8  48 00 00 70 */	b lbl_804B5718
lbl_804B56AC:
/* 804B56AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 804B56B0  80 81 00 08 */	lwz r4, 8(r1)
/* 804B56B4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804B56B8  3C 00 7F 80 */	lis r0, 0x7f80
/* 804B56BC  7C 03 00 00 */	cmpw r3, r0
/* 804B56C0  41 82 00 14 */	beq lbl_804B56D4
/* 804B56C4  40 80 00 40 */	bge lbl_804B5704
/* 804B56C8  2C 03 00 00 */	cmpwi r3, 0
/* 804B56CC  41 82 00 20 */	beq lbl_804B56EC
/* 804B56D0  48 00 00 34 */	b lbl_804B5704
lbl_804B56D4:
/* 804B56D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B56D8  41 82 00 0C */	beq lbl_804B56E4
/* 804B56DC  38 00 00 01 */	li r0, 1
/* 804B56E0  48 00 00 28 */	b lbl_804B5708
lbl_804B56E4:
/* 804B56E4  38 00 00 02 */	li r0, 2
/* 804B56E8  48 00 00 20 */	b lbl_804B5708
lbl_804B56EC:
/* 804B56EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804B56F0  41 82 00 0C */	beq lbl_804B56FC
/* 804B56F4  38 00 00 05 */	li r0, 5
/* 804B56F8  48 00 00 10 */	b lbl_804B5708
lbl_804B56FC:
/* 804B56FC  38 00 00 03 */	li r0, 3
/* 804B5700  48 00 00 08 */	b lbl_804B5708
lbl_804B5704:
/* 804B5704  38 00 00 04 */	li r0, 4
lbl_804B5708:
/* 804B5708  2C 00 00 01 */	cmpwi r0, 1
/* 804B570C  40 82 00 0C */	bne lbl_804B5718
/* 804B5710  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804B5714  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804B5718:
/* 804B5718  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 804B571C  40 80 00 70 */	bge lbl_804B578C
/* 804B5720  3B 00 00 00 */	li r24, 0
/* 804B5724  3A E0 00 00 */	li r23, 0
/* 804B5728  3B 20 00 00 */	li r25, 0
/* 804B572C  3C 60 80 4C */	lis r3, check_kind@ha /* 0x804BB870@ha */
/* 804B5730  3B 43 B8 70 */	addi r26, r3, check_kind@l /* 0x804BB870@l */
lbl_804B5734:
/* 804B5734  2C 17 00 00 */	cmpwi r23, 0
/* 804B5738  41 82 00 14 */	beq lbl_804B574C
/* 804B573C  2C 17 00 02 */	cmpwi r23, 2
/* 804B5740  41 82 00 0C */	beq lbl_804B574C
/* 804B5744  2C 17 00 03 */	cmpwi r23, 3
/* 804B5748  40 82 00 20 */	bne lbl_804B5768
lbl_804B574C:
/* 804B574C  7F 63 DB 78 */	mr r3, r27
/* 804B5750  7C 9A CA 2E */	lhzx r4, r26, r25
/* 804B5754  4B B7 F2 B1 */	bl getEventReg__11dSv_event_cCFUs
/* 804B5758  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804B575C  28 00 00 0A */	cmplwi r0, 0xa
/* 804B5760  41 80 00 08 */	blt lbl_804B5768
/* 804B5764  3B 18 00 01 */	addi r24, r24, 1
lbl_804B5768:
/* 804B5768  3A F7 00 01 */	addi r23, r23, 1
/* 804B576C  2C 17 00 03 */	cmpwi r23, 3
/* 804B5770  3B 39 00 02 */	addi r25, r25, 2
/* 804B5774  40 81 FF C0 */	ble lbl_804B5734
/* 804B5778  2C 18 00 03 */	cmpwi r24, 3
/* 804B577C  41 80 00 98 */	blt lbl_804B5814
/* 804B5780  38 00 00 02 */	li r0, 2
/* 804B5784  98 1D 0C 3D */	stb r0, 0xc3d(r29)
/* 804B5788  48 00 00 8C */	b lbl_804B5814
lbl_804B578C:
/* 804B578C  3B 5A 00 01 */	addi r26, r26, 1
/* 804B5790  2C 1A 00 02 */	cmpwi r26, 2
/* 804B5794  3B 39 00 0C */	addi r25, r25, 0xc
/* 804B5798  41 80 FE 68 */	blt lbl_804B5600
/* 804B579C  48 00 00 78 */	b lbl_804B5814
lbl_804B57A0:
/* 804B57A0  2C 19 00 04 */	cmpwi r25, 4
/* 804B57A4  41 80 00 70 */	blt lbl_804B5814
/* 804B57A8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804B57AC  4B DB 21 A9 */	bl cM_rndF__Ff
/* 804B57B0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 804B57B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B57B8  40 80 00 5C */	bge lbl_804B5814
/* 804B57BC  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804B57C0  4B DB 21 95 */	bl cM_rndF__Ff
/* 804B57C4  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 804B57C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B57CC  40 80 00 28 */	bge lbl_804B57F4
/* 804B57D0  3C 60 80 4B */	lis r3, s_lh_sub__FPvPv@ha /* 0x804B4B7C@ha */
/* 804B57D4  38 63 4B 7C */	addi r3, r3, s_lh_sub__FPvPv@l /* 0x804B4B7C@l */
/* 804B57D8  7F E4 FB 78 */	mr r4, r31
/* 804B57DC  4B B6 BB 5D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 804B57E0  28 03 00 00 */	cmplwi r3, 0
/* 804B57E4  41 82 00 30 */	beq lbl_804B5814
/* 804B57E8  38 00 00 03 */	li r0, 3
/* 804B57EC  98 1D 0C 3D */	stb r0, 0xc3d(r29)
/* 804B57F0  48 00 00 24 */	b lbl_804B5814
lbl_804B57F4:
/* 804B57F4  3C 60 80 4B */	lis r3, s_bt_sub__FPvPv@ha /* 0x804B4CF0@ha */
/* 804B57F8  38 63 4C F0 */	addi r3, r3, s_bt_sub__FPvPv@l /* 0x804B4CF0@l */
/* 804B57FC  7F E4 FB 78 */	mr r4, r31
/* 804B5800  4B B6 BB 39 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 804B5804  28 03 00 00 */	cmplwi r3, 0
/* 804B5808  41 82 00 0C */	beq lbl_804B5814
/* 804B580C  38 00 00 01 */	li r0, 1
/* 804B5810  98 1D 0C 3D */	stb r0, 0xc3d(r29)
lbl_804B5814:
/* 804B5814  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020080@ha */
/* 804B5818  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00020080@l */
/* 804B581C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B5820  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804B5824  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804B5828  80 63 00 00 */	lwz r3, 0(r3)
/* 804B582C  38 81 00 18 */	addi r4, r1, 0x18
/* 804B5830  38 A0 00 00 */	li r5, 0
/* 804B5834  38 C0 00 00 */	li r6, 0
/* 804B5838  38 E0 00 00 */	li r7, 0
/* 804B583C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804B5840  FC 40 08 90 */	fmr f2, f1
/* 804B5844  C0 7E 00 68 */	lfs f3, 0x68(r30)
/* 804B5848  FC 80 18 90 */	fmr f4, f3
/* 804B584C  39 00 00 00 */	li r8, 0
/* 804B5850  4B DF 61 35 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804B5854  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 804B5858  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 804B585C  38 80 04 C7 */	li r4, 0x4c7
/* 804B5860  4B D6 71 11 */	bl setMeterString__13dMeter2Info_cFl
/* 804B5864  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804B5868  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804B586C  80 63 00 00 */	lwz r3, 0(r3)
/* 804B5870  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B5874  38 80 00 02 */	li r4, 2
/* 804B5878  4B DF D2 11 */	bl changeFishingBgm__8Z2SeqMgrFl
/* 804B587C  38 00 00 14 */	li r0, 0x14
/* 804B5880  B0 1F 05 80 */	sth r0, 0x580(r31)
/* 804B5884  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 804B5888  D0 1F 15 08 */	stfs f0, 0x1508(r31)
/* 804B588C  38 00 00 50 */	li r0, 0x50
/* 804B5890  B0 1F 05 84 */	sth r0, 0x584(r31)
/* 804B5894  38 00 01 90 */	li r0, 0x190
/* 804B5898  B0 1F 05 7E */	sth r0, 0x57e(r31)
lbl_804B589C:
/* 804B589C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B58A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B58A4  C0 3F 10 60 */	lfs f1, 0x1060(r31)
/* 804B58A8  C0 5F 10 64 */	lfs f2, 0x1064(r31)
/* 804B58AC  C0 7F 10 68 */	lfs f3, 0x1068(r31)
/* 804B58B0  4B E9 10 39 */	bl PSMTXTrans
/* 804B58B4  38 7F 10 60 */	addi r3, r31, 0x1060
/* 804B58B8  38 81 00 5C */	addi r4, r1, 0x5c
/* 804B58BC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 804B58C0  4B BA 5A 39 */	bl dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 804B58C4  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 804B58C8  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 804B58CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804B58D0  4C 41 13 82 */	cror 2, 1, 2
/* 804B58D4  40 82 00 94 */	bne lbl_804B5968
/* 804B58D8  C0 5F 10 64 */	lfs f2, 0x1064(r31)
/* 804B58DC  C0 3F 05 90 */	lfs f1, 0x590(r31)
/* 804B58E0  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804B58E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B58E8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B58EC  40 80 00 7C */	bge lbl_804B5968
/* 804B58F0  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 804B58F4  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 804B58F8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B58FC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804B5900  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804B5904  7F C3 04 2E */	lfsx f30, r3, r0
/* 804B5908  C0 21 00 5C */	lfs f1, 0x5c(r1)
/* 804B590C  C0 41 00 64 */	lfs f2, 0x64(r1)
/* 804B5910  4B DB 1D 65 */	bl cM_atan2s__Fff
/* 804B5914  7C 64 1B 78 */	mr r4, r3
/* 804B5918  38 7F 10 A0 */	addi r3, r31, 0x10a0
/* 804B591C  38 A0 00 04 */	li r5, 4
/* 804B5920  38 C0 00 64 */	li r6, 0x64
/* 804B5924  4B DB AC E5 */	bl cLib_addCalcAngleS2__FPssss
/* 804B5928  38 7F 10 A2 */	addi r3, r31, 0x10a2
/* 804B592C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 804B5930  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 804B5934  EC 41 00 28 */	fsubs f2, f1, f0
/* 804B5938  C0 3E 01 0C */	lfs f1, 0x10c(r30)
/* 804B593C  C0 1E 02 70 */	lfs f0, 0x270(r30)
/* 804B5940  EC 00 07 B2 */	fmuls f0, f0, f30
/* 804B5944  EC 01 00 2A */	fadds f0, f1, f0
/* 804B5948  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B594C  FC 00 00 1E */	fctiwz f0, f0
/* 804B5950  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 804B5954  80 81 00 94 */	lwz r4, 0x94(r1)
/* 804B5958  38 A0 00 04 */	li r5, 4
/* 804B595C  38 C0 00 64 */	li r6, 0x64
/* 804B5960  4B DB AC A9 */	bl cLib_addCalcAngleS2__FPssss
/* 804B5964  48 00 00 18 */	b lbl_804B597C
lbl_804B5968:
/* 804B5968  38 7F 10 A2 */	addi r3, r31, 0x10a2
/* 804B596C  38 80 00 00 */	li r4, 0
/* 804B5970  38 A0 00 02 */	li r5, 2
/* 804B5974  38 C0 00 C8 */	li r6, 0xc8
/* 804B5978  4B DB AC 91 */	bl cLib_addCalcAngleS2__FPssss
lbl_804B597C:
/* 804B597C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5980  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5984  A8 9F 10 A0 */	lha r4, 0x10a0(r31)
/* 804B5988  4B B5 6A AD */	bl mDoMtx_YrotM__FPA4_fs
/* 804B598C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5990  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5994  A8 9F 10 A2 */	lha r4, 0x10a2(r31)
/* 804B5998  4B B5 6A 05 */	bl mDoMtx_XrotM__FPA4_fs
/* 804B599C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B59A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B59A4  A8 9F 10 86 */	lha r4, 0x1086(r31)
/* 804B59A8  4B B5 6A 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 804B59AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B59B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B59B4  A8 9F 10 84 */	lha r4, 0x1084(r31)
/* 804B59B8  4B B5 69 E5 */	bl mDoMtx_XrotM__FPA4_fs
/* 804B59BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B59C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B59C4  A8 9F 10 8E */	lha r4, 0x108e(r31)
/* 804B59C8  4B B5 6B 05 */	bl mDoMtx_ZrotM__FPA4_fs
/* 804B59CC  A8 1F 10 84 */	lha r0, 0x1084(r31)
/* 804B59D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B59D4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804B59D8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804B59DC  7C 43 04 2E */	lfsx f2, r3, r0
/* 804B59E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B59E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B59E8  A8 1F 10 8A */	lha r0, 0x108a(r31)
/* 804B59EC  C8 3E 00 A0 */	lfd f1, 0xa0(r30)
/* 804B59F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804B59F4  90 01 00 94 */	stw r0, 0x94(r1)
/* 804B59F8  3C 00 43 30 */	lis r0, 0x4330
/* 804B59FC  90 01 00 90 */	stw r0, 0x90(r1)
/* 804B5A00  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 804B5A04  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B5A08  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804B5A0C  FC 00 00 1E */	fctiwz f0, f0
/* 804B5A10  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 804B5A14  80 81 00 9C */	lwz r4, 0x9c(r1)
/* 804B5A18  4B B5 69 85 */	bl mDoMtx_XrotM__FPA4_fs
/* 804B5A1C  38 7C 00 54 */	addi r3, r28, 0x54
/* 804B5A20  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 804B5A24  FC 40 08 90 */	fmr f2, f1
/* 804B5A28  FC 60 08 90 */	fmr f3, f1
/* 804B5A2C  4B B5 74 0D */	bl scaleM__14mDoMtx_stack_cFfff
/* 804B5A30  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B5A34  FC 40 08 90 */	fmr f2, f1
/* 804B5A38  38 7C 00 54 */	addi r3, r28, 0x54
/* 804B5A3C  C0 63 00 10 */	lfs f3, 0x10(r3)
/* 804B5A40  4B B5 73 5D */	bl transM__14mDoMtx_stack_cFfff
/* 804B5A44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5A48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5A4C  38 80 00 00 */	li r4, 0
/* 804B5A50  4B B5 69 4D */	bl mDoMtx_XrotM__FPA4_fs
/* 804B5A54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5A58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5A5C  80 9F 10 24 */	lwz r4, 0x1024(r31)
/* 804B5A60  38 84 00 24 */	addi r4, r4, 0x24
/* 804B5A64  4B E9 0A 4D */	bl PSMTXCopy
/* 804B5A68  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B5A6C  FC 40 08 90 */	fmr f2, f1
/* 804B5A70  38 7C 00 54 */	addi r3, r28, 0x54
/* 804B5A74  C0 63 00 14 */	lfs f3, 0x14(r3)
/* 804B5A78  4B B5 73 25 */	bl transM__14mDoMtx_stack_cFfff
/* 804B5A7C  38 7C 00 54 */	addi r3, r28, 0x54
/* 804B5A80  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 804B5A84  FC 40 08 90 */	fmr f2, f1
/* 804B5A88  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 804B5A8C  4B B5 73 AD */	bl scaleM__14mDoMtx_stack_cFfff
/* 804B5A90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5A94  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5A98  80 9F 10 28 */	lwz r4, 0x1028(r31)
/* 804B5A9C  38 84 00 24 */	addi r4, r4, 0x24
/* 804B5AA0  4B E9 0A 11 */	bl PSMTXCopy
/* 804B5AA4  38 61 00 20 */	addi r3, r1, 0x20
/* 804B5AA8  38 9F 0B E4 */	addi r4, r31, 0xbe4
/* 804B5AAC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804B5AB0  4B DB 10 85 */	bl __mi__4cXyzCFRC3Vec
/* 804B5AB4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804B5AB8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804B5ABC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 804B5AC0  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 804B5AC4  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 804B5AC8  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 804B5ACC  4B DB 1B A9 */	bl cM_atan2s__Fff
/* 804B5AD0  7C 03 00 D0 */	neg r0, r3
/* 804B5AD4  7C 19 07 34 */	extsh r25, r0
/* 804B5AD8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 804B5ADC  EC 20 00 32 */	fmuls f1, f0, f0
/* 804B5AE0  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 804B5AE4  EC 00 00 32 */	fmuls f0, f0, f0
/* 804B5AE8  EC 41 00 2A */	fadds f2, f1, f0
/* 804B5AEC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804B5AF0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B5AF4  40 81 00 0C */	ble lbl_804B5B00
/* 804B5AF8  FC 00 10 34 */	frsqrte f0, f2
/* 804B5AFC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804B5B00:
/* 804B5B00  C0 21 00 80 */	lfs f1, 0x80(r1)
/* 804B5B04  4B DB 1B 71 */	bl cM_atan2s__Fff
/* 804B5B08  7C 7A 07 34 */	extsh r26, r3
/* 804B5B0C  A8 7F 04 E0 */	lha r3, 0x4e0(r31)
/* 804B5B10  A8 1F 11 4E */	lha r0, 0x114e(r31)
/* 804B5B14  7C 03 02 14 */	add r0, r3, r0
/* 804B5B18  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 804B5B1C  A8 7F 0F 7E */	lha r3, 0xf7e(r31)
/* 804B5B20  2C 03 00 06 */	cmpwi r3, 6
/* 804B5B24  40 82 00 54 */	bne lbl_804B5B78
/* 804B5B28  88 1D 0C 3D */	lbz r0, 0xc3d(r29)
/* 804B5B2C  28 00 00 02 */	cmplwi r0, 2
/* 804B5B30  40 82 00 48 */	bne lbl_804B5B78
/* 804B5B34  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 804B5B38  38 63 0C D8 */	addi r3, r3, g_Counter@l /* 0x80430CD8@l */
/* 804B5B3C  80 03 00 08 */	lwz r0, 8(r3)
/* 804B5B40  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 804B5B44  41 82 00 1C */	beq lbl_804B5B60
/* 804B5B48  38 7F 11 4E */	addi r3, r31, 0x114e
/* 804B5B4C  38 80 03 E8 */	li r4, 0x3e8
/* 804B5B50  38 A0 00 04 */	li r5, 4
/* 804B5B54  38 C0 00 28 */	li r6, 0x28
/* 804B5B58  4B DB AA B1 */	bl cLib_addCalcAngleS2__FPssss
/* 804B5B5C  48 00 00 AC */	b lbl_804B5C08
lbl_804B5B60:
/* 804B5B60  38 7F 11 4E */	addi r3, r31, 0x114e
/* 804B5B64  38 80 FC 18 */	li r4, -1000
/* 804B5B68  38 A0 00 04 */	li r5, 4
/* 804B5B6C  38 C0 00 28 */	li r6, 0x28
/* 804B5B70  4B DB AA 99 */	bl cLib_addCalcAngleS2__FPssss
/* 804B5B74  48 00 00 94 */	b lbl_804B5C08
lbl_804B5B78:
/* 804B5B78  2C 03 00 06 */	cmpwi r3, 6
/* 804B5B7C  40 82 00 54 */	bne lbl_804B5BD0
/* 804B5B80  88 1D 0C 3D */	lbz r0, 0xc3d(r29)
/* 804B5B84  28 00 00 07 */	cmplwi r0, 7
/* 804B5B88  41 80 00 48 */	blt lbl_804B5BD0
/* 804B5B8C  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 804B5B90  38 63 0C D8 */	addi r3, r3, g_Counter@l /* 0x80430CD8@l */
/* 804B5B94  80 03 00 08 */	lwz r0, 8(r3)
/* 804B5B98  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 804B5B9C  41 82 00 1C */	beq lbl_804B5BB8
/* 804B5BA0  38 7F 11 4E */	addi r3, r31, 0x114e
/* 804B5BA4  38 80 00 C8 */	li r4, 0xc8
/* 804B5BA8  38 A0 00 04 */	li r5, 4
/* 804B5BAC  38 C0 00 08 */	li r6, 8
/* 804B5BB0  4B DB AA 59 */	bl cLib_addCalcAngleS2__FPssss
/* 804B5BB4  48 00 00 54 */	b lbl_804B5C08
lbl_804B5BB8:
/* 804B5BB8  38 7F 11 4E */	addi r3, r31, 0x114e
/* 804B5BBC  38 80 FF 38 */	li r4, -200
/* 804B5BC0  38 A0 00 04 */	li r5, 4
/* 804B5BC4  38 C0 00 08 */	li r6, 8
/* 804B5BC8  4B DB AA 41 */	bl cLib_addCalcAngleS2__FPssss
/* 804B5BCC  48 00 00 3C */	b lbl_804B5C08
lbl_804B5BD0:
/* 804B5BD0  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 804B5BD4  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 804B5BD8  41 82 00 1C */	beq lbl_804B5BF4
/* 804B5BDC  38 7F 11 4E */	addi r3, r31, 0x114e
/* 804B5BE0  38 80 01 F4 */	li r4, 0x1f4
/* 804B5BE4  38 A0 00 08 */	li r5, 8
/* 804B5BE8  38 C0 00 0A */	li r6, 0xa
/* 804B5BEC  4B DB AA 1D */	bl cLib_addCalcAngleS2__FPssss
/* 804B5BF0  48 00 00 18 */	b lbl_804B5C08
lbl_804B5BF4:
/* 804B5BF4  38 7F 11 4E */	addi r3, r31, 0x114e
/* 804B5BF8  38 80 FE 0C */	li r4, -500
/* 804B5BFC  38 A0 00 08 */	li r5, 8
/* 804B5C00  38 C0 00 0A */	li r6, 0xa
/* 804B5C04  4B DB AA 05 */	bl cLib_addCalcAngleS2__FPssss
lbl_804B5C08:
/* 804B5C08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5C0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5C10  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804B5C14  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 804B5C18  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 804B5C1C  4B E9 0C CD */	bl PSMTXTrans
/* 804B5C20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5C24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5C28  7F 24 CB 78 */	mr r4, r25
/* 804B5C2C  4B B5 67 71 */	bl mDoMtx_XrotM__FPA4_fs
/* 804B5C30  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5C34  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5C38  7F 44 D3 78 */	mr r4, r26
/* 804B5C3C  4B B5 67 F9 */	bl mDoMtx_YrotM__FPA4_fs
/* 804B5C40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5C44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5C48  A8 9F 04 E0 */	lha r4, 0x4e0(r31)
/* 804B5C4C  4B B5 68 81 */	bl mDoMtx_ZrotM__FPA4_fs
/* 804B5C50  4B B5 70 79 */	bl push__14mDoMtx_stack_cFv
/* 804B5C54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5C58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5C5C  38 80 40 00 */	li r4, 0x4000
/* 804B5C60  4B B5 67 3D */	bl mDoMtx_XrotM__FPA4_fs
/* 804B5C64  88 1F 10 2D */	lbz r0, 0x102d(r31)
/* 804B5C68  7C 00 07 74 */	extsb r0, r0
/* 804B5C6C  54 00 10 3A */	slwi r0, r0, 2
/* 804B5C70  3C 60 80 4C */	lis r3, hook_size@ha /* 0x804BBA10@ha */
/* 804B5C74  38 63 BA 10 */	addi r3, r3, hook_size@l /* 0x804BBA10@l */
/* 804B5C78  7C 23 04 2E */	lfsx f1, r3, r0
/* 804B5C7C  FC 40 08 90 */	fmr f2, f1
/* 804B5C80  FC 60 08 90 */	fmr f3, f1
/* 804B5C84  4B B5 71 B5 */	bl scaleM__14mDoMtx_stack_cFfff
/* 804B5C88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5C8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5C90  88 1F 10 2D */	lbz r0, 0x102d(r31)
/* 804B5C94  7C 00 07 74 */	extsb r0, r0
/* 804B5C98  54 00 10 3A */	slwi r0, r0, 2
/* 804B5C9C  7C 9F 02 14 */	add r4, r31, r0
/* 804B5CA0  80 84 0F 98 */	lwz r4, 0xf98(r4)
/* 804B5CA4  38 84 00 24 */	addi r4, r4, 0x24
/* 804B5CA8  4B E9 08 09 */	bl PSMTXCopy
/* 804B5CAC  4B B5 70 69 */	bl pop__14mDoMtx_stack_cFv
/* 804B5CB0  88 7F 10 2C */	lbz r3, 0x102c(r31)
/* 804B5CB4  7C 60 07 75 */	extsb. r0, r3
/* 804B5CB8  41 82 01 50 */	beq lbl_804B5E08
/* 804B5CBC  7C 60 07 74 */	extsb r0, r3
/* 804B5CC0  2C 00 00 01 */	cmpwi r0, 1
/* 804B5CC4  40 82 00 4C */	bne lbl_804B5D10
/* 804B5CC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5CCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5CD0  38 80 80 00 */	li r4, -32768
/* 804B5CD4  4B B5 66 C9 */	bl mDoMtx_XrotM__FPA4_fs
/* 804B5CD8  88 1F 10 2D */	lbz r0, 0x102d(r31)
/* 804B5CDC  2C 00 00 01 */	cmpwi r0, 1
/* 804B5CE0  40 82 00 18 */	bne lbl_804B5CF8
/* 804B5CE4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B5CE8  C0 5E 01 C4 */	lfs f2, 0x1c4(r30)
/* 804B5CEC  C0 7E 02 74 */	lfs f3, 0x274(r30)
/* 804B5CF0  4B B5 70 AD */	bl transM__14mDoMtx_stack_cFfff
/* 804B5CF4  48 00 00 14 */	b lbl_804B5D08
lbl_804B5CF8:
/* 804B5CF8  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B5CFC  C0 5E 01 C4 */	lfs f2, 0x1c4(r30)
/* 804B5D00  C0 7E 01 70 */	lfs f3, 0x170(r30)
/* 804B5D04  4B B5 70 99 */	bl transM__14mDoMtx_stack_cFfff
lbl_804B5D08:
/* 804B5D08  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 804B5D0C  48 00 00 38 */	b lbl_804B5D44
lbl_804B5D10:
/* 804B5D10  88 1F 10 2D */	lbz r0, 0x102d(r31)
/* 804B5D14  2C 00 00 01 */	cmpwi r0, 1
/* 804B5D18  40 82 00 18 */	bne lbl_804B5D30
/* 804B5D1C  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B5D20  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 804B5D24  C0 7E 02 78 */	lfs f3, 0x278(r30)
/* 804B5D28  4B B5 70 75 */	bl transM__14mDoMtx_stack_cFfff
/* 804B5D2C  48 00 00 14 */	b lbl_804B5D40
lbl_804B5D30:
/* 804B5D30  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804B5D34  C0 5E 00 68 */	lfs f2, 0x68(r30)
/* 804B5D38  C0 7E 02 7C */	lfs f3, 0x27c(r30)
/* 804B5D3C  4B B5 70 61 */	bl transM__14mDoMtx_stack_cFfff
lbl_804B5D40:
/* 804B5D40  C0 3E 02 80 */	lfs f1, 0x280(r30)
lbl_804B5D44:
/* 804B5D44  FC 40 08 90 */	fmr f2, f1
/* 804B5D48  FC 60 08 90 */	fmr f3, f1
/* 804B5D4C  4B B5 70 ED */	bl scaleM__14mDoMtx_stack_cFfff
/* 804B5D50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 804B5D54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 804B5D58  88 1F 10 2C */	lbz r0, 0x102c(r31)
/* 804B5D5C  7C 00 07 74 */	extsb r0, r0
/* 804B5D60  54 00 10 3A */	slwi r0, r0, 2
/* 804B5D64  7C 9F 02 14 */	add r4, r31, r0
/* 804B5D68  80 84 10 2C */	lwz r4, 0x102c(r4)
/* 804B5D6C  38 84 00 24 */	addi r4, r4, 0x24
/* 804B5D70  4B E9 07 41 */	bl PSMTXCopy
/* 804B5D74  88 1F 10 2C */	lbz r0, 0x102c(r31)
/* 804B5D78  2C 00 00 02 */	cmpwi r0, 2
/* 804B5D7C  40 82 00 8C */	bne lbl_804B5E08
/* 804B5D80  38 60 13 88 */	li r3, 0x1388
/* 804B5D84  38 80 00 02 */	li r4, 2
/* 804B5D88  38 A0 0F A0 */	li r5, 0xfa0
/* 804B5D8C  3C C0 80 44 */	lis r6, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804B5D90  38 C6 9A 20 */	addi r6, r6, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804B5D94  C0 5E 01 3C */	lfs f2, 0x13c(r30)
/* 804B5D98  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 804B5D9C  38 00 00 08 */	li r0, 8
/* 804B5DA0  7C 09 03 A6 */	mtctr r0
lbl_804B5DA4:
/* 804B5DA4  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 804B5DA8  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 804B5DAC  7C 05 00 50 */	subf r0, r5, r0
/* 804B5DB0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B5DB4  7C 06 04 2E */	lfsx f0, r6, r0
/* 804B5DB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 804B5DBC  FC 00 00 1E */	fctiwz f0, f0
/* 804B5DC0  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 804B5DC4  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 804B5DC8  7C FF 22 14 */	add r7, r31, r4
/* 804B5DCC  B0 07 10 3C */	sth r0, 0x103c(r7)
/* 804B5DD0  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 804B5DD4  1C 00 07 D0 */	mulli r0, r0, 0x7d0
/* 804B5DD8  7C 03 00 50 */	subf r0, r3, r0
/* 804B5DDC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804B5DE0  7C 06 04 2E */	lfsx f0, r6, r0
/* 804B5DE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B5DE8  FC 00 00 1E */	fctiwz f0, f0
/* 804B5DEC  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 804B5DF0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804B5DF4  B0 07 10 4E */	sth r0, 0x104e(r7)
/* 804B5DF8  38 63 13 88 */	addi r3, r3, 0x1388
/* 804B5DFC  38 84 00 02 */	addi r4, r4, 2
/* 804B5E00  38 A5 0F A0 */	addi r5, r5, 0xfa0
/* 804B5E04  42 00 FF A0 */	bdnz lbl_804B5DA4
lbl_804B5E08:
/* 804B5E08  38 7F 16 78 */	addi r3, r31, 0x1678
/* 804B5E0C  A8 1F 05 78 */	lha r0, 0x578(r31)
/* 804B5E10  54 00 16 BA */	rlwinm r0, r0, 2, 0x1a, 0x1d
/* 804B5E14  1C 80 00 0C */	mulli r4, r0, 0xc
/* 804B5E18  38 84 07 70 */	addi r4, r4, 0x770
/* 804B5E1C  7C 9F 22 14 */	add r4, r31, r4
/* 804B5E20  4B DB 98 29 */	bl SetC__8cM3dGSphFRC4cXyz
/* 804B5E24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804B5E28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804B5E2C  38 63 23 3C */	addi r3, r3, 0x233c
/* 804B5E30  38 9F 15 54 */	addi r4, r31, 0x1554
/* 804B5E34  4B DA ED 75 */	bl Set__4cCcSFP8cCcD_Obj
/* 804B5E38  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 804B5E3C  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 804B5E40  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 804B5E44  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 804B5E48  39 61 00 D0 */	addi r11, r1, 0xd0
/* 804B5E4C  4B EA C3 C5 */	bl _restgpr_23
/* 804B5E50  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 804B5E54  7C 08 03 A6 */	mtlr r0
/* 804B5E58  38 21 00 F0 */	addi r1, r1, 0xf0
/* 804B5E5C  4E 80 00 20 */	blr 
