lbl_801EE648:
/* 801EE648  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801EE64C  7C 08 02 A6 */	mflr r0
/* 801EE650  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801EE654  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801EE658  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 801EE65C  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 801EE660  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 801EE664  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 801EE668  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 801EE66C  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 801EE670  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 801EE674  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 801EE678  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 801EE67C  39 61 00 50 */	addi r11, r1, 0x50
/* 801EE680  48 17 3B 51 */	bl _savegpr_26
/* 801EE684  7C 7F 1B 78 */	mr r31, r3
/* 801EE688  7C 9D 23 78 */	mr r29, r4
/* 801EE68C  FF 60 08 90 */	fmr f27, f1
/* 801EE690  FF 80 10 90 */	fmr f28, f2
/* 801EE694  2C 1D 00 64 */	cmpwi r29, 0x64
/* 801EE698  40 81 00 08 */	ble lbl_801EE6A0
/* 801EE69C  3B A0 00 64 */	li r29, 0x64
lbl_801EE6A0:
/* 801EE6A0  38 00 FF FF */	li r0, -1
/* 801EE6A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EE6A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 801EE6AC  7C 1D 28 00 */	cmpw r29, r5
/* 801EE6B0  40 82 00 3C */	bne lbl_801EE6EC
/* 801EE6B4  38 00 00 1E */	li r0, 0x1e
/* 801EE6B8  98 01 00 14 */	stb r0, 0x14(r1)
/* 801EE6BC  98 01 00 15 */	stb r0, 0x15(r1)
/* 801EE6C0  98 01 00 16 */	stb r0, 0x16(r1)
/* 801EE6C4  38 00 00 00 */	li r0, 0
/* 801EE6C8  98 01 00 17 */	stb r0, 0x17(r1)
/* 801EE6CC  38 60 00 FF */	li r3, 0xff
/* 801EE6D0  98 61 00 10 */	stb r3, 0x10(r1)
/* 801EE6D4  38 00 00 C8 */	li r0, 0xc8
/* 801EE6D8  98 01 00 11 */	stb r0, 0x11(r1)
/* 801EE6DC  38 00 00 32 */	li r0, 0x32
/* 801EE6E0  98 01 00 12 */	stb r0, 0x12(r1)
/* 801EE6E4  98 61 00 13 */	stb r3, 0x13(r1)
/* 801EE6E8  48 00 00 68 */	b lbl_801EE750
lbl_801EE6EC:
/* 801EE6EC  2C 1D 00 00 */	cmpwi r29, 0
/* 801EE6F0  40 82 00 38 */	bne lbl_801EE728
/* 801EE6F4  38 00 00 1E */	li r0, 0x1e
/* 801EE6F8  98 01 00 14 */	stb r0, 0x14(r1)
/* 801EE6FC  98 01 00 15 */	stb r0, 0x15(r1)
/* 801EE700  98 01 00 16 */	stb r0, 0x16(r1)
/* 801EE704  38 00 00 00 */	li r0, 0
/* 801EE708  98 01 00 17 */	stb r0, 0x17(r1)
/* 801EE70C  38 00 00 B4 */	li r0, 0xb4
/* 801EE710  98 01 00 10 */	stb r0, 0x10(r1)
/* 801EE714  98 01 00 11 */	stb r0, 0x11(r1)
/* 801EE718  98 01 00 12 */	stb r0, 0x12(r1)
/* 801EE71C  38 00 00 FF */	li r0, 0xff
/* 801EE720  98 01 00 13 */	stb r0, 0x13(r1)
/* 801EE724  48 00 00 2C */	b lbl_801EE750
lbl_801EE728:
/* 801EE728  38 00 00 00 */	li r0, 0
/* 801EE72C  98 01 00 14 */	stb r0, 0x14(r1)
/* 801EE730  98 01 00 15 */	stb r0, 0x15(r1)
/* 801EE734  98 01 00 16 */	stb r0, 0x16(r1)
/* 801EE738  98 01 00 17 */	stb r0, 0x17(r1)
/* 801EE73C  38 00 00 FF */	li r0, 0xff
/* 801EE740  98 01 00 10 */	stb r0, 0x10(r1)
/* 801EE744  98 01 00 11 */	stb r0, 0x11(r1)
/* 801EE748  98 01 00 12 */	stb r0, 0x12(r1)
/* 801EE74C  98 01 00 13 */	stb r0, 0x13(r1)
lbl_801EE750:
/* 801EE750  3B 40 00 00 */	li r26, 0
/* 801EE754  3B C0 00 00 */	li r30, 0
/* 801EE758  83 61 00 10 */	lwz r27, 0x10(r1)
/* 801EE75C  83 81 00 14 */	lwz r28, 0x14(r1)
lbl_801EE760:
/* 801EE760  93 61 00 08 */	stw r27, 8(r1)
/* 801EE764  93 81 00 0C */	stw r28, 0xc(r1)
/* 801EE768  38 1E 01 BC */	addi r0, r30, 0x1bc
/* 801EE76C  7C 7F 00 2E */	lwzx r3, r31, r0
/* 801EE770  38 81 00 0C */	addi r4, r1, 0xc
/* 801EE774  38 A1 00 08 */	addi r5, r1, 8
/* 801EE778  81 83 00 00 */	lwz r12, 0(r3)
/* 801EE77C  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 801EE780  7D 89 03 A6 */	mtctr r12
/* 801EE784  4E 80 04 21 */	bctrl 
/* 801EE788  3B 5A 00 01 */	addi r26, r26, 1
/* 801EE78C  2C 1A 00 03 */	cmpwi r26, 3
/* 801EE790  3B DE 00 04 */	addi r30, r30, 4
/* 801EE794  41 80 FF CC */	blt lbl_801EE760
/* 801EE798  2C 1D 00 64 */	cmpwi r29, 0x64
/* 801EE79C  40 80 00 BC */	bge lbl_801EE858
/* 801EE7A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801EE7A4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801EE7A8  83 7C 5D 30 */	lwz r27, 0x5d30(r28)
/* 801EE7AC  38 00 00 0A */	li r0, 0xa
/* 801EE7B0  7C 7D 03 D6 */	divw r3, r29, r0
/* 801EE7B4  48 02 FB 15 */	bl dMeter2Info_getNumberTextureName__Fi
/* 801EE7B8  7C 65 1B 78 */	mr r5, r3
/* 801EE7BC  7F 63 DB 78 */	mr r3, r27
/* 801EE7C0  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801EE7C4  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801EE7C8  81 9B 00 00 */	lwz r12, 0(r27)
/* 801EE7CC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801EE7D0  7D 89 03 A6 */	mtctr r12
/* 801EE7D4  4E 80 04 21 */	bctrl 
/* 801EE7D8  7C 64 1B 78 */	mr r4, r3
/* 801EE7DC  80 7F 01 BC */	lwz r3, 0x1bc(r31)
/* 801EE7E0  38 A0 00 00 */	li r5, 0
/* 801EE7E4  81 83 00 00 */	lwz r12, 0(r3)
/* 801EE7E8  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801EE7EC  7D 89 03 A6 */	mtctr r12
/* 801EE7F0  4E 80 04 21 */	bctrl 
/* 801EE7F4  83 7C 5D 30 */	lwz r27, 0x5d30(r28)
/* 801EE7F8  38 60 00 0A */	li r3, 0xa
/* 801EE7FC  7C 1D 1B D6 */	divw r0, r29, r3
/* 801EE800  7C 00 19 D6 */	mullw r0, r0, r3
/* 801EE804  7C 60 E8 50 */	subf r3, r0, r29
/* 801EE808  48 02 FA C1 */	bl dMeter2Info_getNumberTextureName__Fi
/* 801EE80C  7C 65 1B 78 */	mr r5, r3
/* 801EE810  7F 63 DB 78 */	mr r3, r27
/* 801EE814  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801EE818  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801EE81C  81 9B 00 00 */	lwz r12, 0(r27)
/* 801EE820  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801EE824  7D 89 03 A6 */	mtctr r12
/* 801EE828  4E 80 04 21 */	bctrl 
/* 801EE82C  7C 64 1B 78 */	mr r4, r3
/* 801EE830  80 7F 01 C0 */	lwz r3, 0x1c0(r31)
/* 801EE834  38 A0 00 00 */	li r5, 0
/* 801EE838  81 83 00 00 */	lwz r12, 0(r3)
/* 801EE83C  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801EE840  7D 89 03 A6 */	mtctr r12
/* 801EE844  4E 80 04 21 */	bctrl 
/* 801EE848  38 00 00 00 */	li r0, 0
/* 801EE84C  80 7F 01 C4 */	lwz r3, 0x1c4(r31)
/* 801EE850  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801EE854  48 00 01 18 */	b lbl_801EE96C
lbl_801EE858:
/* 801EE858  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801EE85C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801EE860  83 7E 5D 30 */	lwz r27, 0x5d30(r30)
/* 801EE864  38 00 00 64 */	li r0, 0x64
/* 801EE868  7C 7D 03 D6 */	divw r3, r29, r0
/* 801EE86C  48 02 FA 5D */	bl dMeter2Info_getNumberTextureName__Fi
/* 801EE870  7C 65 1B 78 */	mr r5, r3
/* 801EE874  7F 63 DB 78 */	mr r3, r27
/* 801EE878  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801EE87C  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801EE880  81 9B 00 00 */	lwz r12, 0(r27)
/* 801EE884  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801EE888  7D 89 03 A6 */	mtctr r12
/* 801EE88C  4E 80 04 21 */	bctrl 
/* 801EE890  7C 64 1B 78 */	mr r4, r3
/* 801EE894  80 7F 01 BC */	lwz r3, 0x1bc(r31)
/* 801EE898  38 A0 00 00 */	li r5, 0
/* 801EE89C  81 83 00 00 */	lwz r12, 0(r3)
/* 801EE8A0  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801EE8A4  7D 89 03 A6 */	mtctr r12
/* 801EE8A8  4E 80 04 21 */	bctrl 
/* 801EE8AC  38 60 00 64 */	li r3, 0x64
/* 801EE8B0  7C 1D 1B D6 */	divw r0, r29, r3
/* 801EE8B4  7C 00 19 D6 */	mullw r0, r0, r3
/* 801EE8B8  7C 00 E8 50 */	subf r0, r0, r29
/* 801EE8BC  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 801EE8C0  83 7E 5D 30 */	lwz r27, 0x5d30(r30)
/* 801EE8C4  38 00 00 0A */	li r0, 0xa
/* 801EE8C8  7C 7C 03 D6 */	divw r3, r28, r0
/* 801EE8CC  48 02 F9 FD */	bl dMeter2Info_getNumberTextureName__Fi
/* 801EE8D0  7C 65 1B 78 */	mr r5, r3
/* 801EE8D4  7F 63 DB 78 */	mr r3, r27
/* 801EE8D8  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801EE8DC  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801EE8E0  81 9B 00 00 */	lwz r12, 0(r27)
/* 801EE8E4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801EE8E8  7D 89 03 A6 */	mtctr r12
/* 801EE8EC  4E 80 04 21 */	bctrl 
/* 801EE8F0  7C 64 1B 78 */	mr r4, r3
/* 801EE8F4  80 7F 01 C0 */	lwz r3, 0x1c0(r31)
/* 801EE8F8  38 A0 00 00 */	li r5, 0
/* 801EE8FC  81 83 00 00 */	lwz r12, 0(r3)
/* 801EE900  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801EE904  7D 89 03 A6 */	mtctr r12
/* 801EE908  4E 80 04 21 */	bctrl 
/* 801EE90C  83 7E 5D 30 */	lwz r27, 0x5d30(r30)
/* 801EE910  38 60 00 0A */	li r3, 0xa
/* 801EE914  7C 1C 1B D6 */	divw r0, r28, r3
/* 801EE918  7C 00 19 D6 */	mullw r0, r0, r3
/* 801EE91C  7C 60 E0 50 */	subf r3, r0, r28
/* 801EE920  48 02 F9 A9 */	bl dMeter2Info_getNumberTextureName__Fi
/* 801EE924  7C 65 1B 78 */	mr r5, r3
/* 801EE928  7F 63 DB 78 */	mr r3, r27
/* 801EE92C  3C 80 54 49 */	lis r4, 0x5449 /* 0x54494D47@ha */
/* 801EE930  38 84 4D 47 */	addi r4, r4, 0x4D47 /* 0x54494D47@l */
/* 801EE934  81 9B 00 00 */	lwz r12, 0(r27)
/* 801EE938  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 801EE93C  7D 89 03 A6 */	mtctr r12
/* 801EE940  4E 80 04 21 */	bctrl 
/* 801EE944  7C 64 1B 78 */	mr r4, r3
/* 801EE948  80 7F 01 C4 */	lwz r3, 0x1c4(r31)
/* 801EE94C  38 A0 00 00 */	li r5, 0
/* 801EE950  81 83 00 00 */	lwz r12, 0(r3)
/* 801EE954  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 801EE958  7D 89 03 A6 */	mtctr r12
/* 801EE95C  4E 80 04 21 */	bctrl 
/* 801EE960  38 00 00 01 */	li r0, 1
/* 801EE964  80 7F 01 C4 */	lwz r3, 0x1c4(r31)
/* 801EE968  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801EE96C:
/* 801EE96C  80 1F 06 2C */	lwz r0, 0x62c(r31)
/* 801EE970  28 00 00 00 */	cmplwi r0, 0
/* 801EE974  41 82 00 14 */	beq lbl_801EE988
/* 801EE978  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EE97C  38 63 FA FC */	addi r3, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EE980  88 03 01 52 */	lbz r0, 0x152(r3)
/* 801EE984  48 00 00 10 */	b lbl_801EE994
lbl_801EE988:
/* 801EE988  3C 60 80 43 */	lis r3, g_ringHIO@ha /* 0x8042FAFC@ha */
/* 801EE98C  38 63 FA FC */	addi r3, r3, g_ringHIO@l /* 0x8042FAFC@l */
/* 801EE990  88 03 01 51 */	lbz r0, 0x151(r3)
lbl_801EE994:
/* 801EE994  3B 40 00 00 */	li r26, 0
/* 801EE998  3B A0 00 00 */	li r29, 0
/* 801EE99C  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 801EE9A0  CB A2 A9 B8 */	lfd f29, lit_4312(r2)
/* 801EE9A4  3F C0 43 30 */	lis r30, 0x4330
/* 801EE9A8  C3 C2 AA 18 */	lfs f30, lit_6143(r2)
/* 801EE9AC  CB E2 A9 C8 */	lfd f31, lit_4596(r2)
lbl_801EE9B0:
/* 801EE9B0  3B 7D 01 BC */	addi r27, r29, 0x1bc
/* 801EE9B4  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801EE9B8  93 81 00 1C */	stw r28, 0x1c(r1)
/* 801EE9BC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 801EE9C0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 801EE9C4  EC 20 E8 28 */	fsubs f1, f0, f29
/* 801EE9C8  C0 1F 05 14 */	lfs f0, 0x514(r31)
/* 801EE9CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 801EE9D0  FC 00 00 1E */	fctiwz f0, f0
/* 801EE9D4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801EE9D8  80 81 00 24 */	lwz r4, 0x24(r1)
/* 801EE9DC  81 83 00 00 */	lwz r12, 0(r3)
/* 801EE9E0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801EE9E4  7D 89 03 A6 */	mtctr r12
/* 801EE9E8  4E 80 04 21 */	bctrl 
/* 801EE9EC  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801EE9F0  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 801EE9F4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 801EE9F8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 801EE9FC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 801EEA00  EC 00 F8 28 */	fsubs f0, f0, f31
/* 801EEA04  EC 1E 00 32 */	fmuls f0, f30, f0
/* 801EEA08  EC 3B 00 2A */	fadds f1, f27, f0
/* 801EEA0C  EC 5C F0 28 */	fsubs f2, f28, f30
/* 801EEA10  FC 60 F0 90 */	fmr f3, f30
/* 801EEA14  FC 80 F0 90 */	fmr f4, f30
/* 801EEA18  38 80 00 00 */	li r4, 0
/* 801EEA1C  38 A0 00 00 */	li r5, 0
/* 801EEA20  38 C0 00 00 */	li r6, 0
/* 801EEA24  81 83 00 00 */	lwz r12, 0(r3)
/* 801EEA28  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 801EEA2C  7D 89 03 A6 */	mtctr r12
/* 801EEA30  4E 80 04 21 */	bctrl 
/* 801EEA34  3B 5A 00 01 */	addi r26, r26, 1
/* 801EEA38  2C 1A 00 03 */	cmpwi r26, 3
/* 801EEA3C  3B BD 00 04 */	addi r29, r29, 4
/* 801EEA40  41 80 FF 70 */	blt lbl_801EE9B0
/* 801EEA44  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 801EEA48  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 801EEA4C  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 801EEA50  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 801EEA54  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 801EEA58  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 801EEA5C  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 801EEA60  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 801EEA64  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 801EEA68  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 801EEA6C  39 61 00 50 */	addi r11, r1, 0x50
/* 801EEA70  48 17 37 AD */	bl _restgpr_26
/* 801EEA74  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 801EEA78  7C 08 03 A6 */	mtlr r0
/* 801EEA7C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 801EEA80  4E 80 00 20 */	blr 
