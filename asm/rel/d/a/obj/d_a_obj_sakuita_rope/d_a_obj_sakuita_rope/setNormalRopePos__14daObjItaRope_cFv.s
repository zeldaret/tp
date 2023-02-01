lbl_80CC5ECC:
/* 80CC5ECC  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80CC5ED0  7C 08 02 A6 */	mflr r0
/* 80CC5ED4  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80CC5ED8  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80CC5EDC  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80CC5EE0  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80CC5EE4  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80CC5EE8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80CC5EEC  4B 69 C2 E5 */	bl _savegpr_26
/* 80CC5EF0  7C 7F 1B 78 */	mr r31, r3
/* 80CC5EF4  3C 60 80 CC */	lis r3, M_attr__14daObjItaRope_c@ha /* 0x80CC68F0@ha */
/* 80CC5EF8  3B C3 68 F0 */	addi r30, r3, M_attr__14daObjItaRope_c@l /* 0x80CC68F0@l */
/* 80CC5EFC  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80CC5F00  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC5F04  3B 43 00 0C */	addi r26, r3, 0xc
/* 80CC5F08  83 7F 06 18 */	lwz r27, 0x618(r31)
/* 80CC5F0C  38 61 00 80 */	addi r3, r1, 0x80
/* 80CC5F10  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CC5F14  4B 39 56 1D */	bl dKyw_get_AllWind_vecpow__FP4cXyz
/* 80CC5F18  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80CC5F1C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80CC5F20  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80CC5F24  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80CC5F28  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80CC5F2C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80CC5F30  4B 5A 19 3D */	bl cM_rnd__Fv
/* 80CC5F34  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80CC5F38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CC5F3C  40 80 00 24 */	bge lbl_80CC5F60
/* 80CC5F40  38 61 00 8C */	addi r3, r1, 0x8c
/* 80CC5F44  7C 64 1B 78 */	mr r4, r3
/* 80CC5F48  C0 3F 06 30 */	lfs f1, 0x630(r31)
/* 80CC5F4C  38 BE 00 00 */	addi r5, r30, 0
/* 80CC5F50  C0 05 00 04 */	lfs f0, 4(r5)
/* 80CC5F54  EC 21 00 32 */	fmuls f1, f1, f0
/* 80CC5F58  4B 68 11 81 */	bl PSVECScale
/* 80CC5F5C  48 00 00 14 */	b lbl_80CC5F70
lbl_80CC5F60:
/* 80CC5F60  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80CC5F64  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80CC5F68  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80CC5F6C  D0 01 00 94 */	stfs f0, 0x94(r1)
lbl_80CC5F70:
/* 80CC5F70  3B 80 00 01 */	li r28, 1
/* 80CC5F74  C3 FE 00 78 */	lfs f31, 0x78(r30)
/* 80CC5F78  48 00 00 BC */	b lbl_80CC6034
lbl_80CC5F7C:
/* 80CC5F7C  C0 1B 00 10 */	lfs f0, 0x10(r27)
/* 80CC5F80  D0 1A 00 04 */	stfs f0, 4(r26)
/* 80CC5F84  38 61 00 74 */	addi r3, r1, 0x74
/* 80CC5F88  7F 44 D3 78 */	mr r4, r26
/* 80CC5F8C  38 BA FF F4 */	addi r5, r26, -12
/* 80CC5F90  4B 5A 0B A5 */	bl __mi__4cXyzCFRC3Vec
/* 80CC5F94  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80CC5F98  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80CC5F9C  C0 21 00 78 */	lfs f1, 0x78(r1)
/* 80CC5FA0  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 80CC5FA4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80CC5FA8  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80CC5FAC  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80CC5FB0  EC 01 00 2A */	fadds f0, f1, f0
/* 80CC5FB4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80CC5FB8  38 61 00 98 */	addi r3, r1, 0x98
/* 80CC5FBC  7F 64 DB 78 */	mr r4, r27
/* 80CC5FC0  7C 65 1B 78 */	mr r5, r3
/* 80CC5FC4  4B 68 10 CD */	bl PSVECAdd
/* 80CC5FC8  4B 5A 18 A5 */	bl cM_rnd__Fv
/* 80CC5FCC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80CC5FD0  40 80 00 14 */	bge lbl_80CC5FE4
/* 80CC5FD4  38 61 00 98 */	addi r3, r1, 0x98
/* 80CC5FD8  38 81 00 8C */	addi r4, r1, 0x8c
/* 80CC5FDC  7C 65 1B 78 */	mr r5, r3
/* 80CC5FE0  4B 68 10 B1 */	bl PSVECAdd
lbl_80CC5FE4:
/* 80CC5FE4  38 61 00 68 */	addi r3, r1, 0x68
/* 80CC5FE8  38 81 00 98 */	addi r4, r1, 0x98
/* 80CC5FEC  4B 5A 0F 5D */	bl normalizeZP__4cXyzFv
/* 80CC5FF0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80CC5FF4  38 81 00 98 */	addi r4, r1, 0x98
/* 80CC5FF8  C0 3F 06 30 */	lfs f1, 0x630(r31)
/* 80CC5FFC  4B 5A 0B 89 */	bl __ml__4cXyzCFf
/* 80CC6000  38 61 00 50 */	addi r3, r1, 0x50
/* 80CC6004  38 9A FF F4 */	addi r4, r26, -12
/* 80CC6008  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80CC600C  4B 5A 0A D9 */	bl __pl__4cXyzCFRC3Vec
/* 80CC6010  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CC6014  D0 1A 00 00 */	stfs f0, 0(r26)
/* 80CC6018  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CC601C  D0 1A 00 04 */	stfs f0, 4(r26)
/* 80CC6020  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80CC6024  D0 1A 00 08 */	stfs f0, 8(r26)
/* 80CC6028  3B 9C 00 01 */	addi r28, r28, 1
/* 80CC602C  3B 5A 00 0C */	addi r26, r26, 0xc
/* 80CC6030  3B 7B 00 1C */	addi r27, r27, 0x1c
lbl_80CC6034:
/* 80CC6034  88 9F 06 35 */	lbz r4, 0x635(r31)
/* 80CC6038  38 04 FF FF */	addi r0, r4, -1
/* 80CC603C  7C 1C 00 00 */	cmpw r28, r0
/* 80CC6040  41 80 FF 3C */	blt lbl_80CC5F7C
/* 80CC6044  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80CC6048  80 03 00 00 */	lwz r0, 0(r3)
/* 80CC604C  1C 64 00 0C */	mulli r3, r4, 0xc
/* 80CC6050  3B 83 FF E8 */	addi r28, r3, -24
/* 80CC6054  7F 80 E2 14 */	add r28, r0, r28
/* 80CC6058  80 1F 06 18 */	lwz r0, 0x618(r31)
/* 80CC605C  1C 64 00 1C */	mulli r3, r4, 0x1c
/* 80CC6060  3B 63 FF AC */	addi r27, r3, -84
/* 80CC6064  7F 60 DA 14 */	add r27, r0, r27
/* 80CC6068  3B 44 FF FE */	addi r26, r4, -2
/* 80CC606C  48 00 00 98 */	b lbl_80CC6104
lbl_80CC6070:
/* 80CC6070  38 61 00 44 */	addi r3, r1, 0x44
/* 80CC6074  7F 84 E3 78 */	mr r4, r28
/* 80CC6078  38 BC 00 0C */	addi r5, r28, 0xc
/* 80CC607C  4B 5A 0A B9 */	bl __mi__4cXyzCFRC3Vec
/* 80CC6080  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80CC6084  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80CC6088  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 80CC608C  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 80CC6090  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80CC6094  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80CC6098  C0 1F 05 30 */	lfs f0, 0x530(r31)
/* 80CC609C  EC 01 00 2A */	fadds f0, f1, f0
/* 80CC60A0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80CC60A4  38 61 00 98 */	addi r3, r1, 0x98
/* 80CC60A8  7F 64 DB 78 */	mr r4, r27
/* 80CC60AC  7C 65 1B 78 */	mr r5, r3
/* 80CC60B0  4B 68 0F E1 */	bl PSVECAdd
/* 80CC60B4  38 61 00 38 */	addi r3, r1, 0x38
/* 80CC60B8  38 81 00 98 */	addi r4, r1, 0x98
/* 80CC60BC  4B 5A 0E 8D */	bl normalizeZP__4cXyzFv
/* 80CC60C0  38 61 00 2C */	addi r3, r1, 0x2c
/* 80CC60C4  38 81 00 98 */	addi r4, r1, 0x98
/* 80CC60C8  C0 3F 06 30 */	lfs f1, 0x630(r31)
/* 80CC60CC  4B 5A 0A B9 */	bl __ml__4cXyzCFf
/* 80CC60D0  38 61 00 20 */	addi r3, r1, 0x20
/* 80CC60D4  38 9C 00 0C */	addi r4, r28, 0xc
/* 80CC60D8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80CC60DC  4B 5A 0A 09 */	bl __pl__4cXyzCFRC3Vec
/* 80CC60E0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80CC60E4  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80CC60E8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80CC60EC  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80CC60F0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80CC60F4  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80CC60F8  3B 5A FF FF */	addi r26, r26, -1
/* 80CC60FC  3B 9C FF F4 */	addi r28, r28, -12
/* 80CC6100  3B 7B FF E4 */	addi r27, r27, -28
lbl_80CC6104:
/* 80CC6104  2C 1A 00 00 */	cmpwi r26, 0
/* 80CC6108  41 81 FF 68 */	bgt lbl_80CC6070
/* 80CC610C  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80CC6110  83 A3 00 00 */	lwz r29, 0(r3)
/* 80CC6114  3B 9D 00 0C */	addi r28, r29, 0xc
/* 80CC6118  83 7F 06 18 */	lwz r27, 0x618(r31)
/* 80CC611C  3B 40 00 01 */	li r26, 1
/* 80CC6120  3B DE 00 00 */	addi r30, r30, 0
/* 80CC6124  C3 FE 00 0C */	lfs f31, 0xc(r30)
/* 80CC6128  48 00 00 CC */	b lbl_80CC61F4
lbl_80CC612C:
/* 80CC612C  C0 9D 00 04 */	lfs f4, 4(r29)
/* 80CC6130  C0 7F 06 24 */	lfs f3, 0x624(r31)
/* 80CC6134  88 1F 06 34 */	lbz r0, 0x634(r31)
/* 80CC6138  28 00 00 00 */	cmplwi r0, 0
/* 80CC613C  41 82 00 24 */	beq lbl_80CC6160
/* 80CC6140  C0 5F 06 2C */	lfs f2, 0x62c(r31)
/* 80CC6144  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80CC6148  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80CC614C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC6150  C0 03 00 00 */	lfs f0, 0(r3)
/* 80CC6154  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CC6158  EC 02 00 32 */	fmuls f0, f2, f0
/* 80CC615C  48 00 00 20 */	b lbl_80CC617C
lbl_80CC6160:
/* 80CC6160  C0 5F 06 2C */	lfs f2, 0x62c(r31)
/* 80CC6164  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80CC6168  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80CC616C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC6170  C0 03 00 08 */	lfs f0, 8(r3)
/* 80CC6174  EC 01 00 28 */	fsubs f0, f1, f0
/* 80CC6178  EC 02 00 32 */	fmuls f0, f2, f0
lbl_80CC617C:
/* 80CC617C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80CC6180  EF C4 00 2A */	fadds f30, f4, f0
/* 80CC6184  38 61 00 14 */	addi r3, r1, 0x14
/* 80CC6188  7F 84 E3 78 */	mr r4, r28
/* 80CC618C  38 BB 00 0C */	addi r5, r27, 0xc
/* 80CC6190  4B 5A 09 A5 */	bl __mi__4cXyzCFRC3Vec
/* 80CC6194  38 61 00 08 */	addi r3, r1, 8
/* 80CC6198  38 81 00 14 */	addi r4, r1, 0x14
/* 80CC619C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80CC61A0  4B 5A 09 E5 */	bl __ml__4cXyzCFf
/* 80CC61A4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80CC61A8  D0 1B 00 00 */	stfs f0, 0(r27)
/* 80CC61AC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80CC61B0  D0 1B 00 04 */	stfs f0, 4(r27)
/* 80CC61B4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80CC61B8  D0 1B 00 08 */	stfs f0, 8(r27)
/* 80CC61BC  C0 1C 00 00 */	lfs f0, 0(r28)
/* 80CC61C0  D0 1B 00 0C */	stfs f0, 0xc(r27)
/* 80CC61C4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80CC61C8  D0 1B 00 10 */	stfs f0, 0x10(r27)
/* 80CC61CC  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80CC61D0  D0 1B 00 14 */	stfs f0, 0x14(r27)
/* 80CC61D4  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80CC61D8  EC 1E 08 28 */	fsubs f0, f30, f1
/* 80CC61DC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80CC61E0  EC 01 00 2A */	fadds f0, f1, f0
/* 80CC61E4  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80CC61E8  3B 5A 00 01 */	addi r26, r26, 1
/* 80CC61EC  3B 9C 00 0C */	addi r28, r28, 0xc
/* 80CC61F0  3B 7B 00 1C */	addi r27, r27, 0x1c
lbl_80CC61F4:
/* 80CC61F4  88 7F 06 35 */	lbz r3, 0x635(r31)
/* 80CC61F8  38 03 FF FF */	addi r0, r3, -1
/* 80CC61FC  7C 1A 00 00 */	cmpw r26, r0
/* 80CC6200  41 80 FF 2C */	blt lbl_80CC612C
/* 80CC6204  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80CC6208  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80CC620C  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80CC6210  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80CC6214  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80CC6218  4B 69 C0 05 */	bl _restgpr_26
/* 80CC621C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80CC6220  7C 08 03 A6 */	mtlr r0
/* 80CC6224  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80CC6228  4E 80 00 20 */	blr 
