lbl_800A7CB0:
/* 800A7CB0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 800A7CB4  7C 08 02 A6 */	mflr r0
/* 800A7CB8  90 01 00 84 */	stw r0, 0x84(r1)
/* 800A7CBC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 800A7CC0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 800A7CC4  39 61 00 70 */	addi r11, r1, 0x70
/* 800A7CC8  48 2B A5 15 */	bl _savegpr_29
/* 800A7CCC  7C 7F 1B 78 */	mr r31, r3
/* 800A7CD0  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800A7CD4  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800A7CD8  40 82 05 DC */	bne lbl_800A82B4
/* 800A7CDC  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800A7CE0  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800A7CE4  40 82 05 D0 */	bne lbl_800A82B4
/* 800A7CE8  38 7F 0C 04 */	addi r3, r31, 0xc04
/* 800A7CEC  4B FD C7 75 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 800A7CF0  28 03 00 00 */	cmplwi r3, 0
/* 800A7CF4  40 82 00 24 */	bne lbl_800A7D18
/* 800A7CF8  38 7F 0D 40 */	addi r3, r31, 0xd40
/* 800A7CFC  4B FD C7 65 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 800A7D00  28 03 00 00 */	cmplwi r3, 0
/* 800A7D04  40 82 00 14 */	bne lbl_800A7D18
/* 800A7D08  38 7F 0E 7C */	addi r3, r31, 0xe7c
/* 800A7D0C  4B FD C7 55 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 800A7D10  28 03 00 00 */	cmplwi r3, 0
/* 800A7D14  41 82 04 4C */	beq lbl_800A8160
lbl_800A7D18:
/* 800A7D18  3B A0 00 00 */	li r29, 0
/* 800A7D1C  3B C0 00 00 */	li r30, 0
lbl_800A7D20:
/* 800A7D20  38 7E 0C 04 */	addi r3, r30, 0xc04
/* 800A7D24  7C 7F 1A 14 */	add r3, r31, r3
/* 800A7D28  4B FD C7 39 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 800A7D2C  28 03 00 00 */	cmplwi r3, 0
/* 800A7D30  40 82 00 14 */	bne lbl_800A7D44
/* 800A7D34  3B BD 00 01 */	addi r29, r29, 1
/* 800A7D38  2C 1D 00 03 */	cmpwi r29, 3
/* 800A7D3C  3B DE 01 3C */	addi r30, r30, 0x13c
/* 800A7D40  41 80 FF E0 */	blt lbl_800A7D20
lbl_800A7D44:
/* 800A7D44  1C 7D 01 3C */	mulli r3, r29, 0x13c
/* 800A7D48  3B C3 0C A0 */	addi r30, r3, 0xca0
/* 800A7D4C  7F DF F2 14 */	add r30, r31, r30
/* 800A7D50  3B BE 00 2C */	addi r29, r30, 0x2c
/* 800A7D54  C0 5E 00 2C */	lfs f2, 0x2c(r30)
/* 800A7D58  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 800A7D5C  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 800A7D60  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800A7D64  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 800A7D68  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 800A7D6C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 800A7D70  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A7D74  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800A7D78  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 800A7D7C  38 61 00 18 */	addi r3, r1, 0x18
/* 800A7D80  48 29 F3 B9 */	bl PSVECSquareMag
/* 800A7D84  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A7D88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A7D8C  40 81 00 58 */	ble lbl_800A7DE4
/* 800A7D90  FC 00 08 34 */	frsqrte f0, f1
/* 800A7D94  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A7D98  FC 44 00 32 */	fmul f2, f4, f0
/* 800A7D9C  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A7DA0  FC 00 00 32 */	fmul f0, f0, f0
/* 800A7DA4  FC 01 00 32 */	fmul f0, f1, f0
/* 800A7DA8  FC 03 00 28 */	fsub f0, f3, f0
/* 800A7DAC  FC 02 00 32 */	fmul f0, f2, f0
/* 800A7DB0  FC 44 00 32 */	fmul f2, f4, f0
/* 800A7DB4  FC 00 00 32 */	fmul f0, f0, f0
/* 800A7DB8  FC 01 00 32 */	fmul f0, f1, f0
/* 800A7DBC  FC 03 00 28 */	fsub f0, f3, f0
/* 800A7DC0  FC 02 00 32 */	fmul f0, f2, f0
/* 800A7DC4  FC 44 00 32 */	fmul f2, f4, f0
/* 800A7DC8  FC 00 00 32 */	fmul f0, f0, f0
/* 800A7DCC  FC 01 00 32 */	fmul f0, f1, f0
/* 800A7DD0  FC 03 00 28 */	fsub f0, f3, f0
/* 800A7DD4  FC 02 00 32 */	fmul f0, f2, f0
/* 800A7DD8  FF E1 00 32 */	fmul f31, f1, f0
/* 800A7DDC  FF E0 F8 18 */	frsp f31, f31
/* 800A7DE0  48 00 00 90 */	b lbl_800A7E70
lbl_800A7DE4:
/* 800A7DE4  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A7DE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A7DEC  40 80 00 10 */	bge lbl_800A7DFC
/* 800A7DF0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A7DF4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 800A7DF8  48 00 00 78 */	b lbl_800A7E70
lbl_800A7DFC:
/* 800A7DFC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800A7E00  80 81 00 10 */	lwz r4, 0x10(r1)
/* 800A7E04  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A7E08  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A7E0C  7C 03 00 00 */	cmpw r3, r0
/* 800A7E10  41 82 00 14 */	beq lbl_800A7E24
/* 800A7E14  40 80 00 40 */	bge lbl_800A7E54
/* 800A7E18  2C 03 00 00 */	cmpwi r3, 0
/* 800A7E1C  41 82 00 20 */	beq lbl_800A7E3C
/* 800A7E20  48 00 00 34 */	b lbl_800A7E54
lbl_800A7E24:
/* 800A7E24  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A7E28  41 82 00 0C */	beq lbl_800A7E34
/* 800A7E2C  38 00 00 01 */	li r0, 1
/* 800A7E30  48 00 00 28 */	b lbl_800A7E58
lbl_800A7E34:
/* 800A7E34  38 00 00 02 */	li r0, 2
/* 800A7E38  48 00 00 20 */	b lbl_800A7E58
lbl_800A7E3C:
/* 800A7E3C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A7E40  41 82 00 0C */	beq lbl_800A7E4C
/* 800A7E44  38 00 00 05 */	li r0, 5
/* 800A7E48  48 00 00 10 */	b lbl_800A7E58
lbl_800A7E4C:
/* 800A7E4C  38 00 00 03 */	li r0, 3
/* 800A7E50  48 00 00 08 */	b lbl_800A7E58
lbl_800A7E54:
/* 800A7E54  38 00 00 04 */	li r0, 4
lbl_800A7E58:
/* 800A7E58  2C 00 00 01 */	cmpwi r0, 1
/* 800A7E5C  40 82 00 10 */	bne lbl_800A7E6C
/* 800A7E60  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A7E64  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 800A7E68  48 00 00 08 */	b lbl_800A7E70
lbl_800A7E6C:
/* 800A7E6C  FF E0 08 90 */	fmr f31, f1
lbl_800A7E70:
/* 800A7E70  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A7E74  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800A7E78  40 80 01 90 */	bge lbl_800A8008
/* 800A7E7C  7F E3 FB 78 */	mr r3, r31
/* 800A7E80  48 03 C0 A1 */	bl checkGrabRooster__9daAlink_cFv
/* 800A7E84  2C 03 00 00 */	cmpwi r3, 0
/* 800A7E88  40 82 01 80 */	bne lbl_800A8008
/* 800A7E8C  7F C3 F3 78 */	mr r3, r30
/* 800A7E90  4B FD B7 F9 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800A7E94  28 03 00 00 */	cmplwi r3, 0
/* 800A7E98  41 82 00 3C */	beq lbl_800A7ED4
/* 800A7E9C  7F C3 F3 78 */	mr r3, r30
/* 800A7EA0  4B FD B7 E9 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800A7EA4  7C 65 1B 78 */	mr r5, r3
/* 800A7EA8  38 61 00 48 */	addi r3, r1, 0x48
/* 800A7EAC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800A7EB0  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 800A7EB4  48 1B EC 81 */	bl __mi__4cXyzCFRC3Vec
/* 800A7EB8  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 800A7EBC  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800A7EC0  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 800A7EC4  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800A7EC8  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800A7ECC  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 800A7ED0  48 00 00 2C */	b lbl_800A7EFC
lbl_800A7ED4:
/* 800A7ED4  38 61 00 3C */	addi r3, r1, 0x3c
/* 800A7ED8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 800A7EDC  38 BE 00 38 */	addi r5, r30, 0x38
/* 800A7EE0  48 1B EC 55 */	bl __mi__4cXyzCFRC3Vec
/* 800A7EE4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 800A7EE8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 800A7EEC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 800A7EF0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800A7EF4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 800A7EF8  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_800A7EFC:
/* 800A7EFC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A7F00  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 800A7F04  38 61 00 30 */	addi r3, r1, 0x30
/* 800A7F08  38 81 00 54 */	addi r4, r1, 0x54
/* 800A7F0C  48 1B F0 3D */	bl normalizeZP__4cXyzFv
/* 800A7F10  7F A3 EB 78 */	mr r3, r29
/* 800A7F14  48 29 F2 25 */	bl PSVECSquareMag
/* 800A7F18  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A7F1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A7F20  40 81 00 58 */	ble lbl_800A7F78
/* 800A7F24  FC 00 08 34 */	frsqrte f0, f1
/* 800A7F28  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A7F2C  FC 44 00 32 */	fmul f2, f4, f0
/* 800A7F30  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A7F34  FC 00 00 32 */	fmul f0, f0, f0
/* 800A7F38  FC 01 00 32 */	fmul f0, f1, f0
/* 800A7F3C  FC 03 00 28 */	fsub f0, f3, f0
/* 800A7F40  FC 02 00 32 */	fmul f0, f2, f0
/* 800A7F44  FC 44 00 32 */	fmul f2, f4, f0
/* 800A7F48  FC 00 00 32 */	fmul f0, f0, f0
/* 800A7F4C  FC 01 00 32 */	fmul f0, f1, f0
/* 800A7F50  FC 03 00 28 */	fsub f0, f3, f0
/* 800A7F54  FC 02 00 32 */	fmul f0, f2, f0
/* 800A7F58  FC 44 00 32 */	fmul f2, f4, f0
/* 800A7F5C  FC 00 00 32 */	fmul f0, f0, f0
/* 800A7F60  FC 01 00 32 */	fmul f0, f1, f0
/* 800A7F64  FC 03 00 28 */	fsub f0, f3, f0
/* 800A7F68  FC 02 00 32 */	fmul f0, f2, f0
/* 800A7F6C  FC 21 00 32 */	fmul f1, f1, f0
/* 800A7F70  FC 20 08 18 */	frsp f1, f1
/* 800A7F74  48 00 00 88 */	b lbl_800A7FFC
lbl_800A7F78:
/* 800A7F78  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A7F7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A7F80  40 80 00 10 */	bge lbl_800A7F90
/* 800A7F84  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A7F88  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800A7F8C  48 00 00 70 */	b lbl_800A7FFC
lbl_800A7F90:
/* 800A7F90  D0 21 00 08 */	stfs f1, 8(r1)
/* 800A7F94  80 81 00 08 */	lwz r4, 8(r1)
/* 800A7F98  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A7F9C  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A7FA0  7C 03 00 00 */	cmpw r3, r0
/* 800A7FA4  41 82 00 14 */	beq lbl_800A7FB8
/* 800A7FA8  40 80 00 40 */	bge lbl_800A7FE8
/* 800A7FAC  2C 03 00 00 */	cmpwi r3, 0
/* 800A7FB0  41 82 00 20 */	beq lbl_800A7FD0
/* 800A7FB4  48 00 00 34 */	b lbl_800A7FE8
lbl_800A7FB8:
/* 800A7FB8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A7FBC  41 82 00 0C */	beq lbl_800A7FC8
/* 800A7FC0  38 00 00 01 */	li r0, 1
/* 800A7FC4  48 00 00 28 */	b lbl_800A7FEC
lbl_800A7FC8:
/* 800A7FC8  38 00 00 02 */	li r0, 2
/* 800A7FCC  48 00 00 20 */	b lbl_800A7FEC
lbl_800A7FD0:
/* 800A7FD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A7FD4  41 82 00 0C */	beq lbl_800A7FE0
/* 800A7FD8  38 00 00 05 */	li r0, 5
/* 800A7FDC  48 00 00 10 */	b lbl_800A7FEC
lbl_800A7FE0:
/* 800A7FE0  38 00 00 03 */	li r0, 3
/* 800A7FE4  48 00 00 08 */	b lbl_800A7FEC
lbl_800A7FE8:
/* 800A7FE8  38 00 00 04 */	li r0, 4
lbl_800A7FEC:
/* 800A7FEC  2C 00 00 01 */	cmpwi r0, 1
/* 800A7FF0  40 82 00 0C */	bne lbl_800A7FFC
/* 800A7FF4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A7FF8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800A7FFC:
/* 800A7FFC  38 61 00 54 */	addi r3, r1, 0x54
/* 800A8000  7C 64 1B 78 */	mr r4, r3
/* 800A8004  48 29 F0 D5 */	bl PSVECScale
lbl_800A8008:
/* 800A8008  38 61 00 54 */	addi r3, r1, 0x54
/* 800A800C  48 29 F1 2D */	bl PSVECSquareMag
/* 800A8010  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A8014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A8018  40 81 00 58 */	ble lbl_800A8070
/* 800A801C  FC 00 08 34 */	frsqrte f0, f1
/* 800A8020  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 800A8024  FC 44 00 32 */	fmul f2, f4, f0
/* 800A8028  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 800A802C  FC 00 00 32 */	fmul f0, f0, f0
/* 800A8030  FC 01 00 32 */	fmul f0, f1, f0
/* 800A8034  FC 03 00 28 */	fsub f0, f3, f0
/* 800A8038  FC 02 00 32 */	fmul f0, f2, f0
/* 800A803C  FC 44 00 32 */	fmul f2, f4, f0
/* 800A8040  FC 00 00 32 */	fmul f0, f0, f0
/* 800A8044  FC 01 00 32 */	fmul f0, f1, f0
/* 800A8048  FC 03 00 28 */	fsub f0, f3, f0
/* 800A804C  FC 02 00 32 */	fmul f0, f2, f0
/* 800A8050  FC 44 00 32 */	fmul f2, f4, f0
/* 800A8054  FC 00 00 32 */	fmul f0, f0, f0
/* 800A8058  FC 01 00 32 */	fmul f0, f1, f0
/* 800A805C  FC 03 00 28 */	fsub f0, f3, f0
/* 800A8060  FC 02 00 32 */	fmul f0, f2, f0
/* 800A8064  FC 21 00 32 */	fmul f1, f1, f0
/* 800A8068  FC 20 08 18 */	frsp f1, f1
/* 800A806C  48 00 00 88 */	b lbl_800A80F4
lbl_800A8070:
/* 800A8070  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 800A8074  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A8078  40 80 00 10 */	bge lbl_800A8088
/* 800A807C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A8080  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 800A8084  48 00 00 70 */	b lbl_800A80F4
lbl_800A8088:
/* 800A8088  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800A808C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800A8090  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 800A8094  3C 00 7F 80 */	lis r0, 0x7f80
/* 800A8098  7C 03 00 00 */	cmpw r3, r0
/* 800A809C  41 82 00 14 */	beq lbl_800A80B0
/* 800A80A0  40 80 00 40 */	bge lbl_800A80E0
/* 800A80A4  2C 03 00 00 */	cmpwi r3, 0
/* 800A80A8  41 82 00 20 */	beq lbl_800A80C8
/* 800A80AC  48 00 00 34 */	b lbl_800A80E0
lbl_800A80B0:
/* 800A80B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A80B4  41 82 00 0C */	beq lbl_800A80C0
/* 800A80B8  38 00 00 01 */	li r0, 1
/* 800A80BC  48 00 00 28 */	b lbl_800A80E4
lbl_800A80C0:
/* 800A80C0  38 00 00 02 */	li r0, 2
/* 800A80C4  48 00 00 20 */	b lbl_800A80E4
lbl_800A80C8:
/* 800A80C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 800A80CC  41 82 00 0C */	beq lbl_800A80D8
/* 800A80D0  38 00 00 05 */	li r0, 5
/* 800A80D4  48 00 00 10 */	b lbl_800A80E4
lbl_800A80D8:
/* 800A80D8  38 00 00 03 */	li r0, 3
/* 800A80DC  48 00 00 08 */	b lbl_800A80E4
lbl_800A80E0:
/* 800A80E0  38 00 00 04 */	li r0, 4
lbl_800A80E4:
/* 800A80E4  2C 00 00 01 */	cmpwi r0, 1
/* 800A80E8  40 82 00 0C */	bne lbl_800A80F4
/* 800A80EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 800A80F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_800A80F4:
/* 800A80F4  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800A80F8  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800A80FC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 800A8100  4C 41 13 82 */	cror 2, 1, 2
/* 800A8104  40 82 00 34 */	bne lbl_800A8138
/* 800A8108  38 61 00 24 */	addi r3, r1, 0x24
/* 800A810C  38 81 00 54 */	addi r4, r1, 0x54
/* 800A8110  48 1B EE 39 */	bl normalizeZP__4cXyzFv
/* 800A8114  7F E3 FB 78 */	mr r3, r31
/* 800A8118  38 81 00 54 */	addi r4, r1, 0x54
/* 800A811C  4B FF F9 A1 */	bl checkWindWallRate__9daAlink_cFRC4cXyz
/* 800A8120  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800A8124  EC 20 00 72 */	fmuls f1, f0, f1
/* 800A8128  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800A812C  38 61 00 54 */	addi r3, r1, 0x54
/* 800A8130  7C 64 1B 78 */	mr r4, r3
/* 800A8134  48 29 EF A5 */	bl PSVECScale
lbl_800A8138:
/* 800A8138  38 7F 35 AC */	addi r3, r31, 0x35ac
/* 800A813C  48 29 EF FD */	bl PSVECSquareMag
/* 800A8140  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800A8144  EC 00 00 32 */	fmuls f0, f0, f0
/* 800A8148  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A814C  40 81 00 0C */	ble lbl_800A8158
/* 800A8150  C3 E2 93 24 */	lfs f31, lit_7450(r2)
/* 800A8154  48 00 00 BC */	b lbl_800A8210
lbl_800A8158:
/* 800A8158  C3 E2 93 D8 */	lfs f31, lit_11470(r2)
/* 800A815C  48 00 00 B4 */	b lbl_800A8210
lbl_800A8160:
/* 800A8160  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 800A8164  38 81 00 54 */	addi r4, r1, 0x54
/* 800A8168  38 A1 00 14 */	addi r5, r1, 0x14
/* 800A816C  4B FB 31 8D */	bl dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf
/* 800A8170  48 10 3F D1 */	bl dKy_TeachWind_existence_chk__Fv
/* 800A8174  2C 03 00 00 */	cmpwi r3, 0
/* 800A8178  41 82 00 14 */	beq lbl_800A818C
/* 800A817C  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800A8180  C0 02 94 A8 */	lfs f0, lit_16570(r2)
/* 800A8184  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A8188  40 80 00 10 */	bge lbl_800A8198
lbl_800A818C:
/* 800A818C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A8190  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800A8194  48 00 00 34 */	b lbl_800A81C8
lbl_800A8198:
/* 800A8198  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800A819C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A81A0  40 81 00 28 */	ble lbl_800A81C8
/* 800A81A4  48 10 3F 9D */	bl dKy_TeachWind_existence_chk__Fv
/* 800A81A8  2C 03 FF FF */	cmpwi r3, -1
/* 800A81AC  41 82 00 1C */	beq lbl_800A81C8
/* 800A81B0  7F E3 FB 78 */	mr r3, r31
/* 800A81B4  38 81 00 54 */	addi r4, r1, 0x54
/* 800A81B8  4B FF F9 05 */	bl checkWindWallRate__9daAlink_cFRC4cXyz
/* 800A81BC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800A81C0  EC 00 00 72 */	fmuls f0, f0, f1
/* 800A81C4  D0 01 00 14 */	stfs f0, 0x14(r1)
lbl_800A81C8:
/* 800A81C8  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 800A81CC  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha
/* 800A81D0  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l
/* 800A81D4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 800A81D8  EC 21 00 32 */	fmuls f1, f1, f0
/* 800A81DC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 800A81E0  38 61 00 54 */	addi r3, r1, 0x54
/* 800A81E4  7C 64 1B 78 */	mr r4, r3
/* 800A81E8  48 29 EE F1 */	bl PSVECScale
/* 800A81EC  38 7F 35 AC */	addi r3, r31, 0x35ac
/* 800A81F0  48 29 EF 49 */	bl PSVECSquareMag
/* 800A81F4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 800A81F8  EC 00 00 32 */	fmuls f0, f0, f0
/* 800A81FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800A8200  40 81 00 0C */	ble lbl_800A820C
/* 800A8204  C3 E2 92 C4 */	lfs f31, lit_6109(r2)
/* 800A8208  48 00 00 08 */	b lbl_800A8210
lbl_800A820C:
/* 800A820C  C3 E2 92 B8 */	lfs f31, lit_6040(r2)
lbl_800A8210:
/* 800A8210  38 7F 35 B8 */	addi r3, r31, 0x35b8
/* 800A8214  38 81 00 54 */	addi r4, r1, 0x54
/* 800A8218  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800A821C  FC 40 F8 90 */	fmr f2, f31
/* 800A8220  FC 60 08 90 */	fmr f3, f1
/* 800A8224  48 1C 78 95 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 800A8228  38 7F 35 B8 */	addi r3, r31, 0x35b8
/* 800A822C  48 1B EE FD */	bl atan2sX_Z__4cXyzCFv
/* 800A8230  B0 7F 30 CC */	sth r3, 0x30cc(r31)
/* 800A8234  7F E3 FB 78 */	mr r3, r31
/* 800A8238  38 80 00 01 */	li r4, 1
/* 800A823C  38 A0 00 01 */	li r5, 1
/* 800A8240  48 01 32 79 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800A8244  2C 03 00 00 */	cmpwi r3, 0
/* 800A8248  40 82 00 4C */	bne lbl_800A8294
/* 800A824C  7F E3 FB 78 */	mr r3, r31
/* 800A8250  48 00 23 99 */	bl checkNoCollisionCorret__9daAlink_cFv
/* 800A8254  2C 03 00 00 */	cmpwi r3, 0
/* 800A8258  40 82 00 3C */	bne lbl_800A8294
/* 800A825C  7F E3 FB 78 */	mr r3, r31
/* 800A8260  48 06 D9 C1 */	bl checkEventRun__9daAlink_cCFv
/* 800A8264  2C 03 00 00 */	cmpwi r3, 0
/* 800A8268  40 82 00 2C */	bne lbl_800A8294
/* 800A826C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800A8270  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800A8274  40 82 00 20 */	bne lbl_800A8294
/* 800A8278  38 7F 35 AC */	addi r3, r31, 0x35ac
/* 800A827C  38 81 00 54 */	addi r4, r1, 0x54
/* 800A8280  C0 22 92 98 */	lfs f1, lit_5943(r2)
/* 800A8284  FC 40 F8 90 */	fmr f2, f31
/* 800A8288  FC 60 08 90 */	fmr f3, f1
/* 800A828C  48 1C 78 2D */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 800A8290  48 00 00 60 */	b lbl_800A82F0
lbl_800A8294:
/* 800A8294  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 800A8298  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 800A829C  D0 1F 35 AC */	stfs f0, 0x35ac(r31)
/* 800A82A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A82A4  D0 1F 35 B0 */	stfs f0, 0x35b0(r31)
/* 800A82A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 800A82AC  D0 1F 35 B4 */	stfs f0, 0x35b4(r31)
/* 800A82B0  48 00 00 40 */	b lbl_800A82F0
lbl_800A82B4:
/* 800A82B4  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 800A82B8  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 800A82BC  D0 1F 35 AC */	stfs f0, 0x35ac(r31)
/* 800A82C0  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A82C4  D0 1F 35 B0 */	stfs f0, 0x35b0(r31)
/* 800A82C8  C0 03 00 08 */	lfs f0, 8(r3)
/* 800A82CC  D0 1F 35 B4 */	stfs f0, 0x35b4(r31)
/* 800A82D0  C0 03 00 00 */	lfs f0, 0(r3)
/* 800A82D4  D0 1F 35 B8 */	stfs f0, 0x35b8(r31)
/* 800A82D8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800A82DC  D0 1F 35 BC */	stfs f0, 0x35bc(r31)
/* 800A82E0  C0 03 00 08 */	lfs f0, 8(r3)
/* 800A82E4  D0 1F 35 C0 */	stfs f0, 0x35c0(r31)
/* 800A82E8  38 00 00 00 */	li r0, 0
/* 800A82EC  B0 1F 30 CC */	sth r0, 0x30cc(r31)
lbl_800A82F0:
/* 800A82F0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 800A82F4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 800A82F8  39 61 00 70 */	addi r11, r1, 0x70
/* 800A82FC  48 2B 9F 2D */	bl _restgpr_29
/* 800A8300  80 01 00 84 */	lwz r0, 0x84(r1)
/* 800A8304  7C 08 03 A6 */	mtlr r0
/* 800A8308  38 21 00 80 */	addi r1, r1, 0x80
/* 800A830C  4E 80 00 20 */	blr 
