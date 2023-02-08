lbl_80855ED8:
/* 80855ED8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80855EDC  7C 08 02 A6 */	mflr r0
/* 80855EE0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80855EE4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80855EE8  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80855EEC  39 61 00 60 */	addi r11, r1, 0x60
/* 80855EF0  4B B0 C2 E1 */	bl _savegpr_26
/* 80855EF4  7C 7C 1B 78 */	mr r28, r3
/* 80855EF8  7C 9D 23 78 */	mr r29, r4
/* 80855EFC  7C BE 2B 78 */	mr r30, r5
/* 80855F00  3B E0 00 00 */	li r31, 0
/* 80855F04  3C 60 80 85 */	lis r3, lit_3770@ha /* 0x80857650@ha */
/* 80855F08  38 83 76 50 */	addi r4, r3, lit_3770@l /* 0x80857650@l */
/* 80855F0C  80 64 00 00 */	lwz r3, 0(r4)
/* 80855F10  80 04 00 04 */	lwz r0, 4(r4)
/* 80855F14  90 61 00 0C */	stw r3, 0xc(r1)
/* 80855F18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80855F1C  3C 60 80 45 */	lis r3, __float_max@ha /* 0x80450AE8@ha */
/* 80855F20  C3 E3 0A E8 */	lfs f31, __float_max@l(r3)  /* 0x80450AE8@l */
/* 80855F24  83 45 00 08 */	lwz r26, 8(r5)
/* 80855F28  3C 60 80 85 */	lis r3, __vt__8cM3dGLin@ha /* 0x80857758@ha */
/* 80855F2C  38 03 77 58 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80857758@l */
/* 80855F30  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80855F34  3B 60 00 00 */	li r27, 0
/* 80855F38  48 00 00 2C */	b lbl_80855F64
lbl_80855F3C:
/* 80855F3C  7F A3 EB 78 */	mr r3, r29
/* 80855F40  38 9A 00 04 */	addi r4, r26, 4
/* 80855F44  4B AF 14 59 */	bl PSVECSquareDistance
/* 80855F48  D0 21 00 08 */	stfs f1, 8(r1)
/* 80855F4C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80855F50  40 81 00 0C */	ble lbl_80855F5C
/* 80855F54  FF E0 08 90 */	fmr f31, f1
/* 80855F58  7F 7F DB 78 */	mr r31, r27
lbl_80855F5C:
/* 80855F5C  3B 5A 00 10 */	addi r26, r26, 0x10
/* 80855F60  3B 7B 00 01 */	addi r27, r27, 1
lbl_80855F64:
/* 80855F64  A0 1E 00 00 */	lhz r0, 0(r30)
/* 80855F68  7C 1B 00 00 */	cmpw r27, r0
/* 80855F6C  41 80 FF D0 */	blt lbl_80855F3C
/* 80855F70  80 7E 00 08 */	lwz r3, 8(r30)
/* 80855F74  57 E0 20 36 */	slwi r0, r31, 4
/* 80855F78  7F 63 02 14 */	add r27, r3, r0
/* 80855F7C  2C 1F 00 00 */	cmpwi r31, 0
/* 80855F80  41 82 00 30 */	beq lbl_80855FB0
/* 80855F84  38 61 00 14 */	addi r3, r1, 0x14
/* 80855F88  38 9B FF F4 */	addi r4, r27, -12
/* 80855F8C  38 BB 00 04 */	addi r5, r27, 4
/* 80855F90  4B A1 93 8D */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 80855F94  38 61 00 14 */	addi r3, r1, 0x14
/* 80855F98  7F A4 EB 78 */	mr r4, r29
/* 80855F9C  38 A1 00 30 */	addi r5, r1, 0x30
/* 80855FA0  38 C1 00 08 */	addi r6, r1, 8
/* 80855FA4  4B A1 27 6D */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80855FA8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80855FAC  90 01 00 0C */	stw r0, 0xc(r1)
lbl_80855FB0:
/* 80855FB0  A0 7E 00 00 */	lhz r3, 0(r30)
/* 80855FB4  38 03 FF FF */	addi r0, r3, -1
/* 80855FB8  7C 1F 00 00 */	cmpw r31, r0
/* 80855FBC  41 82 00 30 */	beq lbl_80855FEC
/* 80855FC0  38 61 00 14 */	addi r3, r1, 0x14
/* 80855FC4  38 9B 00 04 */	addi r4, r27, 4
/* 80855FC8  38 BB 00 14 */	addi r5, r27, 0x14
/* 80855FCC  4B A1 93 51 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 80855FD0  38 61 00 14 */	addi r3, r1, 0x14
/* 80855FD4  7F A4 EB 78 */	mr r4, r29
/* 80855FD8  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80855FDC  38 C1 00 08 */	addi r6, r1, 8
/* 80855FE0  4B A1 27 31 */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80855FE4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80855FE8  90 01 00 10 */	stw r0, 0x10(r1)
lbl_80855FEC:
/* 80855FEC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80855FF0  2C 00 00 00 */	cmpwi r0, 0
/* 80855FF4  41 82 00 7C */	beq lbl_80856070
/* 80855FF8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80855FFC  2C 00 00 00 */	cmpwi r0, 0
/* 80856000  41 82 00 54 */	beq lbl_80856054
/* 80856004  38 61 00 3C */	addi r3, r1, 0x3c
/* 80856008  7F A4 EB 78 */	mr r4, r29
/* 8085600C  4B AF 13 91 */	bl PSVECSquareDistance
/* 80856010  C0 01 00 08 */	lfs f0, 8(r1)
/* 80856014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80856018  40 81 00 20 */	ble lbl_80856038
/* 8085601C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80856020  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80856024  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80856028  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8085602C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80856030  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80856034  48 00 00 7C */	b lbl_808560B0
lbl_80856038:
/* 80856038  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8085603C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80856040  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80856044  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80856048  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8085604C  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80856050  48 00 00 60 */	b lbl_808560B0
lbl_80856054:
/* 80856054  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80856058  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8085605C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80856060  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80856064  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80856068  D0 1C 00 08 */	stfs f0, 8(r28)
/* 8085606C  48 00 00 44 */	b lbl_808560B0
lbl_80856070:
/* 80856070  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80856074  2C 00 00 00 */	cmpwi r0, 0
/* 80856078  41 82 00 20 */	beq lbl_80856098
/* 8085607C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80856080  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80856084  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80856088  D0 1C 00 04 */	stfs f0, 4(r28)
/* 8085608C  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80856090  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80856094  48 00 00 1C */	b lbl_808560B0
lbl_80856098:
/* 80856098  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8085609C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 808560A0  C0 1B 00 08 */	lfs f0, 8(r27)
/* 808560A4  D0 1C 00 04 */	stfs f0, 4(r28)
/* 808560A8  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 808560AC  D0 1C 00 08 */	stfs f0, 8(r28)
lbl_808560B0:
/* 808560B0  3C 60 80 85 */	lis r3, __vt__8cM3dGLin@ha /* 0x80857758@ha */
/* 808560B4  38 03 77 58 */	addi r0, r3, __vt__8cM3dGLin@l /* 0x80857758@l */
/* 808560B8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 808560BC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 808560C0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 808560C4  39 61 00 60 */	addi r11, r1, 0x60
/* 808560C8  4B B0 C1 55 */	bl _restgpr_26
/* 808560CC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 808560D0  7C 08 03 A6 */	mtlr r0
/* 808560D4  38 21 00 70 */	addi r1, r1, 0x70
/* 808560D8  4E 80 00 20 */	blr 
