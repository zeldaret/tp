lbl_801D2DA8:
/* 801D2DA8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801D2DAC  7C 08 02 A6 */	mflr r0
/* 801D2DB0  90 01 00 84 */	stw r0, 0x84(r1)
/* 801D2DB4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801D2DB8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 801D2DBC  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 801D2DC0  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 801D2DC4  39 61 00 60 */	addi r11, r1, 0x60
/* 801D2DC8  48 18 F4 05 */	bl _savegpr_25
/* 801D2DCC  7C 7E 1B 78 */	mr r30, r3
/* 801D2DD0  4B FF FB 01 */	bl getMapScissorAreaCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801D2DD4  FF C0 08 90 */	fmr f30, f1
/* 801D2DD8  7F C3 F3 78 */	mr r3, r30
/* 801D2DDC  4B FF FA A5 */	bl getMapScissorAreaCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801D2DE0  7F C3 F3 78 */	mr r3, r30
/* 801D2DE4  FC 40 F0 90 */	fmr f2, f30
/* 801D2DE8  38 81 00 2C */	addi r4, r1, 0x2c
/* 801D2DEC  38 A1 00 28 */	addi r5, r1, 0x28
/* 801D2DF0  4B FF E1 8D */	bl calcAllMapPosWorld__18dMenu_Fmap2DBack_cFffPfPf
/* 801D2DF4  7F C3 F3 78 */	mr r3, r30
/* 801D2DF8  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 801D2DFC  C0 1E 0F C8 */	lfs f0, 0xfc8(r30)
/* 801D2E00  EC 21 00 2A */	fadds f1, f1, f0
/* 801D2E04  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 801D2E08  C0 1E 0F CC */	lfs f0, 0xfcc(r30)
/* 801D2E0C  EC 42 00 2A */	fadds f2, f2, f0
/* 801D2E10  38 81 00 24 */	addi r4, r1, 0x24
/* 801D2E14  38 A1 00 20 */	addi r5, r1, 0x20
/* 801D2E18  4B FF DF 01 */	bl calcAllMapPos2D__18dMenu_Fmap2DBack_cFffPfPf
/* 801D2E1C  7F C3 F3 78 */	mr r3, r30
/* 801D2E20  4B FF FA 61 */	bl getMapScissorAreaCenterPosX__18dMenu_Fmap2DBack_cFv
/* 801D2E24  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 801D2E28  EF E1 00 28 */	fsubs f31, f1, f0
/* 801D2E2C  7F C3 F3 78 */	mr r3, r30
/* 801D2E30  4B FF FA A1 */	bl getMapScissorAreaCenterPosY__18dMenu_Fmap2DBack_cFv
/* 801D2E34  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 801D2E38  EF C1 00 28 */	fsubs f30, f1, f0
/* 801D2E3C  8B BE 12 27 */	lbz r29, 0x1227(r30)
/* 801D2E40  C0 22 A7 D0 */	lfs f1, lit_3970(r2)
/* 801D2E44  C0 1E 0F A0 */	lfs f0, 0xfa0(r30)
/* 801D2E48  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 801D2E4C  40 82 00 0C */	bne lbl_801D2E58
/* 801D2E50  8B FE 12 26 */	lbz r31, 0x1226(r30)
/* 801D2E54  48 00 00 08 */	b lbl_801D2E5C
lbl_801D2E58:
/* 801D2E58  7F BF EB 78 */	mr r31, r29
lbl_801D2E5C:
/* 801D2E5C  3C 60 80 43 */	lis r3, g_fmapHIO@ha
/* 801D2E60  38 63 FC 60 */	addi r3, r3, g_fmapHIO@l
/* 801D2E64  88 03 03 02 */	lbz r0, 0x302(r3)
/* 801D2E68  28 00 00 00 */	cmplwi r0, 0
/* 801D2E6C  41 82 02 00 */	beq lbl_801D306C
/* 801D2E70  3B 40 00 00 */	li r26, 0
/* 801D2E74  57 A0 10 3A */	slwi r0, r29, 2
/* 801D2E78  7F 9E 02 14 */	add r28, r30, r0
lbl_801D2E7C:
/* 801D2E7C  38 1A 12 30 */	addi r0, r26, 0x1230
/* 801D2E80  7F 3E 00 AE */	lbzx r25, r30, r0
/* 801D2E84  2C 19 00 FF */	cmpwi r25, 0xff
/* 801D2E88  41 82 01 D8 */	beq lbl_801D3060
/* 801D2E8C  57 20 10 3A */	slwi r0, r25, 2
/* 801D2E90  7F 7E 02 14 */	add r27, r30, r0
/* 801D2E94  80 1B 0C B4 */	lwz r0, 0xcb4(r27)
/* 801D2E98  28 00 00 00 */	cmplwi r0, 0
/* 801D2E9C  41 82 01 C4 */	beq lbl_801D3060
/* 801D2EA0  7F C3 F3 78 */	mr r3, r30
/* 801D2EA4  7F 24 CB 78 */	mr r4, r25
/* 801D2EA8  4B FF F6 61 */	bl isShowRegion__18dMenu_Fmap2DBack_cFi
/* 801D2EAC  2C 03 00 00 */	cmpwi r3, 0
/* 801D2EB0  41 82 00 74 */	beq lbl_801D2F24
/* 801D2EB4  7C 19 F8 00 */	cmpw r25, r31
/* 801D2EB8  41 82 00 38 */	beq lbl_801D2EF0
/* 801D2EBC  80 1E 11 FC */	lwz r0, 0x11fc(r30)
/* 801D2EC0  90 01 00 18 */	stw r0, 0x18(r1)
/* 801D2EC4  80 1E 11 F8 */	lwz r0, 0x11f8(r30)
/* 801D2EC8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 801D2ECC  80 7B 0C B4 */	lwz r3, 0xcb4(r27)
/* 801D2ED0  38 81 00 1C */	addi r4, r1, 0x1c
/* 801D2ED4  38 A1 00 18 */	addi r5, r1, 0x18
/* 801D2ED8  81 83 00 00 */	lwz r12, 0(r3)
/* 801D2EDC  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801D2EE0  7D 89 03 A6 */	mtctr r12
/* 801D2EE4  4E 80 04 21 */	bctrl 
/* 801D2EE8  C0 7E 12 14 */	lfs f3, 0x1214(r30)
/* 801D2EEC  48 00 00 68 */	b lbl_801D2F54
lbl_801D2EF0:
/* 801D2EF0  80 1E 11 F4 */	lwz r0, 0x11f4(r30)
/* 801D2EF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 801D2EF8  80 1E 11 F0 */	lwz r0, 0x11f0(r30)
/* 801D2EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801D2F00  80 7B 0C B4 */	lwz r3, 0xcb4(r27)
/* 801D2F04  38 81 00 14 */	addi r4, r1, 0x14
/* 801D2F08  38 A1 00 10 */	addi r5, r1, 0x10
/* 801D2F0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D2F10  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801D2F14  7D 89 03 A6 */	mtctr r12
/* 801D2F18  4E 80 04 21 */	bctrl 
/* 801D2F1C  C0 7E 12 10 */	lfs f3, 0x1210(r30)
/* 801D2F20  48 00 00 34 */	b lbl_801D2F54
lbl_801D2F24:
/* 801D2F24  80 1E 12 04 */	lwz r0, 0x1204(r30)
/* 801D2F28  90 01 00 08 */	stw r0, 8(r1)
/* 801D2F2C  80 1E 12 00 */	lwz r0, 0x1200(r30)
/* 801D2F30  90 01 00 0C */	stw r0, 0xc(r1)
/* 801D2F34  80 7B 0C B4 */	lwz r3, 0xcb4(r27)
/* 801D2F38  38 81 00 0C */	addi r4, r1, 0xc
/* 801D2F3C  38 A1 00 08 */	addi r5, r1, 8
/* 801D2F40  81 83 00 00 */	lwz r12, 0(r3)
/* 801D2F44  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801D2F48  7D 89 03 A6 */	mtctr r12
/* 801D2F4C  4E 80 04 21 */	bctrl 
/* 801D2F50  C0 62 A7 E8 */	lfs f3, lit_4202(r2)
lbl_801D2F54:
/* 801D2F54  80 7B 0C B4 */	lwz r3, 0xcb4(r27)
/* 801D2F58  C0 5E 0F A4 */	lfs f2, 0xfa4(r30)
/* 801D2F5C  C0 22 A7 E4 */	lfs f1, lit_4201(r2)
/* 801D2F60  C0 1E 0F C4 */	lfs f0, 0xfc4(r30)
/* 801D2F64  EC 01 00 32 */	fmuls f0, f1, f0
/* 801D2F68  EC 00 00 F2 */	fmuls f0, f0, f3
/* 801D2F6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 801D2F70  FC 00 00 1E */	fctiwz f0, f0
/* 801D2F74  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 801D2F78  80 81 00 34 */	lwz r4, 0x34(r1)
/* 801D2F7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801D2F80  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801D2F84  7D 89 03 A6 */	mtctr r12
/* 801D2F88  4E 80 04 21 */	bctrl 
/* 801D2F8C  7C 19 E8 00 */	cmpw r25, r29
/* 801D2F90  41 82 00 6C */	beq lbl_801D2FFC
/* 801D2F94  C0 9E 0F 9C */	lfs f4, 0xf9c(r30)
/* 801D2F98  80 7B 0C B4 */	lwz r3, 0xcb4(r27)
/* 801D2F9C  C0 5E 0F BC */	lfs f2, 0xfbc(r30)
/* 801D2FA0  C0 3B 0E 8C */	lfs f1, 0xe8c(r27)
/* 801D2FA4  C0 1B 0F 0C */	lfs f0, 0xf0c(r27)
/* 801D2FA8  EC 01 00 2A */	fadds f0, f1, f0
/* 801D2FAC  EC 1F 00 2A */	fadds f0, f31, f0
/* 801D2FB0  EC 22 00 2A */	fadds f1, f2, f0
/* 801D2FB4  C0 7E 0F C0 */	lfs f3, 0xfc0(r30)
/* 801D2FB8  C0 5B 0E AC */	lfs f2, 0xeac(r27)
/* 801D2FBC  C0 1B 0F 2C */	lfs f0, 0xf2c(r27)
/* 801D2FC0  EC 02 00 2A */	fadds f0, f2, f0
/* 801D2FC4  EC 1E 00 2A */	fadds f0, f30, f0
/* 801D2FC8  EC 43 00 2A */	fadds f2, f3, f0
/* 801D2FCC  C0 1B 0E CC */	lfs f0, 0xecc(r27)
/* 801D2FD0  EC 60 01 32 */	fmuls f3, f0, f4
/* 801D2FD4  C0 1B 0E EC */	lfs f0, 0xeec(r27)
/* 801D2FD8  EC 80 01 32 */	fmuls f4, f0, f4
/* 801D2FDC  38 80 00 00 */	li r4, 0
/* 801D2FE0  38 A0 00 00 */	li r5, 0
/* 801D2FE4  38 C0 00 00 */	li r6, 0
/* 801D2FE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801D2FEC  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801D2FF0  7D 89 03 A6 */	mtctr r12
/* 801D2FF4  4E 80 04 21 */	bctrl 
/* 801D2FF8  48 00 00 68 */	b lbl_801D3060
lbl_801D2FFC:
/* 801D2FFC  C0 9E 0F 9C */	lfs f4, 0xf9c(r30)
/* 801D3000  80 7C 0C B4 */	lwz r3, 0xcb4(r28)
/* 801D3004  C0 5E 0F BC */	lfs f2, 0xfbc(r30)
/* 801D3008  C0 3C 0E 8C */	lfs f1, 0xe8c(r28)
/* 801D300C  C0 1C 0F 0C */	lfs f0, 0xf0c(r28)
/* 801D3010  EC 01 00 2A */	fadds f0, f1, f0
/* 801D3014  EC 1F 00 2A */	fadds f0, f31, f0
/* 801D3018  EC 22 00 2A */	fadds f1, f2, f0
/* 801D301C  C0 7E 0F C0 */	lfs f3, 0xfc0(r30)
/* 801D3020  C0 5C 0E AC */	lfs f2, 0xeac(r28)
/* 801D3024  C0 1C 0F 2C */	lfs f0, 0xf2c(r28)
/* 801D3028  EC 02 00 2A */	fadds f0, f2, f0
/* 801D302C  EC 1E 00 2A */	fadds f0, f30, f0
/* 801D3030  EC 43 00 2A */	fadds f2, f3, f0
/* 801D3034  C0 1C 0E CC */	lfs f0, 0xecc(r28)
/* 801D3038  EC 60 01 32 */	fmuls f3, f0, f4
/* 801D303C  C0 1C 0E EC */	lfs f0, 0xeec(r28)
/* 801D3040  EC 80 01 32 */	fmuls f4, f0, f4
/* 801D3044  38 80 00 00 */	li r4, 0
/* 801D3048  38 A0 00 00 */	li r5, 0
/* 801D304C  38 C0 00 00 */	li r6, 0
/* 801D3050  81 83 00 00 */	lwz r12, 0(r3)
/* 801D3054  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801D3058  7D 89 03 A6 */	mtctr r12
/* 801D305C  4E 80 04 21 */	bctrl 
lbl_801D3060:
/* 801D3060  3B 5A 00 01 */	addi r26, r26, 1
/* 801D3064  2C 1A 00 08 */	cmpwi r26, 8
/* 801D3068  41 80 FE 14 */	blt lbl_801D2E7C
lbl_801D306C:
/* 801D306C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 801D3070  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801D3074  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 801D3078  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 801D307C  39 61 00 60 */	addi r11, r1, 0x60
/* 801D3080  48 18 F1 99 */	bl _restgpr_25
/* 801D3084  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801D3088  7C 08 03 A6 */	mtlr r0
/* 801D308C  38 21 00 80 */	addi r1, r1, 0x80
/* 801D3090  4E 80 00 20 */	blr 
