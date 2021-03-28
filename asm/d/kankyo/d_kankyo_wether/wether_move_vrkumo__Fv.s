lbl_80059728:
/* 80059728  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8005972C  7C 08 02 A6 */	mflr r0
/* 80059730  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80059734  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80059738  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 8005973C  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 80059740  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 80059744  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 80059748  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 8005974C  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 80059750  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 80059754  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 80059758  F3 61 00 58 */	psq_st f27, 88(r1), 0, 0 /* qr0 */
/* 8005975C  39 61 00 50 */	addi r11, r1, 0x50
/* 80059760  48 30 8A 79 */	bl _savegpr_28
/* 80059764  3B E0 00 00 */	li r31, 0
/* 80059768  88 0D 89 60 */	lbz r0, data_80450EE0(r13)
/* 8005976C  7C 00 07 75 */	extsb. r0, r0
/* 80059770  40 82 00 3C */	bne lbl_800597AC
/* 80059774  C0 02 87 30 */	lfs f0, lit_5181(r2)
/* 80059778  3C 60 80 42 */	lis r3, r09o@ha
/* 8005977C  D4 03 49 44 */	stfsu f0, r09o@l(r3)
/* 80059780  C0 02 87 34 */	lfs f0, lit_5182(r2)
/* 80059784  D0 03 00 04 */	stfs f0, 4(r3)
/* 80059788  C0 02 87 38 */	lfs f0, lit_5183(r2)
/* 8005978C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80059790  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80059794  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80059798  3C A0 80 42 */	lis r5, lit_4965@ha
/* 8005979C  38 A5 49 38 */	addi r5, r5, lit_4965@l
/* 800597A0  48 30 84 85 */	bl __register_global_object
/* 800597A4  38 00 00 01 */	li r0, 1
/* 800597A8  98 0D 89 60 */	stb r0, data_80450EE0(r13)
lbl_800597AC:
/* 800597AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800597B0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 800597B4  A0 1D 5D 46 */	lhz r0, 0x5d46(r29)
/* 800597B8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800597BC  41 82 02 38 */	beq lbl_800599F4
/* 800597C0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800597C4  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 800597C8  88 1E 12 D4 */	lbz r0, 0x12d4(r30)
/* 800597CC  28 00 00 00 */	cmplwi r0, 0
/* 800597D0  40 82 02 24 */	bne lbl_800599F4
/* 800597D4  38 00 00 06 */	li r0, 6
/* 800597D8  90 1E 0E C8 */	stw r0, 0xec8(r30)
/* 800597DC  3B 9D 4E 00 */	addi r28, r29, 0x4e00
/* 800597E0  7F 83 E3 78 */	mr r3, r28
/* 800597E4  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 800597E8  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l
/* 800597EC  38 84 00 08 */	addi r4, r4, 8
/* 800597F0  38 A0 00 06 */	li r5, 6
/* 800597F4  48 30 C8 99 */	bl memcmp
/* 800597F8  2C 03 00 00 */	cmpwi r3, 0
/* 800597FC  41 82 00 5C */	beq lbl_80059858
/* 80059800  7F 83 E3 78 */	mr r3, r28
/* 80059804  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 80059808  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l
/* 8005980C  38 84 01 01 */	addi r4, r4, 0x101
/* 80059810  48 30 F1 85 */	bl strcmp
/* 80059814  2C 03 00 00 */	cmpwi r3, 0
/* 80059818  41 82 00 40 */	beq lbl_80059858
/* 8005981C  7F 83 E3 78 */	mr r3, r28
/* 80059820  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 80059824  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l
/* 80059828  38 84 01 09 */	addi r4, r4, 0x109
/* 8005982C  48 30 F1 69 */	bl strcmp
/* 80059830  2C 03 00 00 */	cmpwi r3, 0
/* 80059834  40 82 00 48 */	bne lbl_8005987C
/* 80059838  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005983C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80059840  88 03 12 CC */	lbz r0, 0x12cc(r3)
/* 80059844  28 00 00 00 */	cmplwi r0, 0
/* 80059848  40 82 00 10 */	bne lbl_80059858
/* 8005984C  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80059850  28 00 00 00 */	cmplwi r0, 0
/* 80059854  41 82 00 28 */	beq lbl_8005987C
lbl_80059858:
/* 80059858  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005985C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80059860  38 63 0E CC */	addi r3, r3, 0xecc
/* 80059864  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 80059868  C0 42 87 1C */	lfs f2, lit_4768(r2)
/* 8005986C  C0 62 87 3C */	lfs f3, lit_5184(r2)
/* 80059870  C0 82 87 40 */	lfs f4, lit_5185(r2)
/* 80059874  48 21 61 09 */	bl cLib_addCalc__FPfffff
/* 80059878  48 00 01 48 */	b lbl_800599C0
lbl_8005987C:
/* 8005987C  7F 83 E3 78 */	mr r3, r28
/* 80059880  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 80059884  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l
/* 80059888  38 84 01 11 */	addi r4, r4, 0x111
/* 8005988C  48 30 F1 09 */	bl strcmp
/* 80059890  2C 03 00 00 */	cmpwi r3, 0
/* 80059894  40 82 00 60 */	bne lbl_800598F4
/* 80059898  38 60 00 00 */	li r3, 0
/* 8005989C  4B FD 30 E1 */	bl getLayerNo__14dComIfG_play_cFi
/* 800598A0  2C 03 00 03 */	cmpwi r3, 3
/* 800598A4  41 80 00 50 */	blt lbl_800598F4
/* 800598A8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800598AC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800598B0  88 03 12 C3 */	lbz r0, 0x12c3(r3)
/* 800598B4  28 00 00 04 */	cmplwi r0, 4
/* 800598B8  41 80 00 20 */	blt lbl_800598D8
/* 800598BC  38 63 0E CC */	addi r3, r3, 0xecc
/* 800598C0  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 800598C4  C0 42 87 1C */	lfs f2, lit_4768(r2)
/* 800598C8  C0 62 87 3C */	lfs f3, lit_5184(r2)
/* 800598CC  C0 82 87 40 */	lfs f4, lit_5185(r2)
/* 800598D0  48 21 60 AD */	bl cLib_addCalc__FPfffff
/* 800598D4  48 00 00 EC */	b lbl_800599C0
lbl_800598D8:
/* 800598D8  38 63 0E CC */	addi r3, r3, 0xecc
/* 800598DC  C0 22 86 E0 */	lfs f1, lit_4378(r2)
/* 800598E0  C0 42 87 44 */	lfs f2, lit_5186(r2)
/* 800598E4  C0 62 87 48 */	lfs f3, lit_5187(r2)
/* 800598E8  C0 82 87 4C */	lfs f4, lit_5188(r2)
/* 800598EC  48 21 60 91 */	bl cLib_addCalc__FPfffff
/* 800598F0  48 00 00 D0 */	b lbl_800599C0
lbl_800598F4:
/* 800598F4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800598F8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800598FC  88 03 12 C3 */	lbz r0, 0x12c3(r3)
/* 80059900  28 00 00 01 */	cmplwi r0, 1
/* 80059904  40 82 00 14 */	bne lbl_80059918
/* 80059908  C0 23 11 DC */	lfs f1, 0x11dc(r3)
/* 8005990C  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 80059910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80059914  41 81 00 68 */	bgt lbl_8005997C
lbl_80059918:
/* 80059918  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8005991C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80059920  88 83 12 C2 */	lbz r4, 0x12c2(r3)
/* 80059924  28 04 00 01 */	cmplwi r4, 1
/* 80059928  40 82 00 14 */	bne lbl_8005993C
/* 8005992C  C0 23 11 DC */	lfs f1, 0x11dc(r3)
/* 80059930  C0 02 86 E4 */	lfs f0, lit_4379(r2)
/* 80059934  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80059938  41 80 00 44 */	blt lbl_8005997C
lbl_8005993C:
/* 8005993C  28 00 00 02 */	cmplwi r0, 2
/* 80059940  40 82 00 1C */	bne lbl_8005995C
/* 80059944  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059948  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8005994C  C0 23 11 DC */	lfs f1, 0x11dc(r3)
/* 80059950  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 80059954  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80059958  41 81 00 24 */	bgt lbl_8005997C
lbl_8005995C:
/* 8005995C  28 04 00 02 */	cmplwi r4, 2
/* 80059960  40 82 00 40 */	bne lbl_800599A0
/* 80059964  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059968  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8005996C  C0 23 11 DC */	lfs f1, 0x11dc(r3)
/* 80059970  C0 02 86 E4 */	lfs f0, lit_4379(r2)
/* 80059974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80059978  40 80 00 28 */	bge lbl_800599A0
lbl_8005997C:
/* 8005997C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059980  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80059984  38 63 0E CC */	addi r3, r3, 0xecc
/* 80059988  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 8005998C  C0 42 87 1C */	lfs f2, lit_4768(r2)
/* 80059990  C0 62 87 3C */	lfs f3, lit_5184(r2)
/* 80059994  C0 82 87 40 */	lfs f4, lit_5185(r2)
/* 80059998  48 21 5F E5 */	bl cLib_addCalc__FPfffff
/* 8005999C  48 00 00 24 */	b lbl_800599C0
lbl_800599A0:
/* 800599A0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800599A4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800599A8  38 63 0E CC */	addi r3, r3, 0xecc
/* 800599AC  C0 22 86 E0 */	lfs f1, lit_4378(r2)
/* 800599B0  C0 42 87 44 */	lfs f2, lit_5186(r2)
/* 800599B4  C0 62 87 48 */	lfs f3, lit_5187(r2)
/* 800599B8  C0 82 87 4C */	lfs f4, lit_5188(r2)
/* 800599BC  48 21 5F C1 */	bl cLib_addCalc__FPfffff
lbl_800599C0:
/* 800599C0  C0 42 87 50 */	lfs f2, lit_5189(r2)
/* 800599C4  C0 22 87 54 */	lfs f1, lit_5190(r2)
/* 800599C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800599CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 800599D0  C0 03 0E CC */	lfs f0, 0xecc(r3)
/* 800599D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 800599D8  EC 02 00 2A */	fadds f0, f2, f0
/* 800599DC  FC 00 00 1E */	fctiwz f0, f0
/* 800599E0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 800599E4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800599E8  7C 00 07 34 */	extsh r0, r0
/* 800599EC  90 1E 0E C8 */	stw r0, 0xec8(r30)
/* 800599F0  48 00 00 14 */	b lbl_80059A04
lbl_800599F4:
/* 800599F4  38 00 00 00 */	li r0, 0
/* 800599F8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 800599FC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80059A00  90 03 0E C8 */	stw r0, 0xec8(r3)
lbl_80059A04:
/* 80059A04  48 15 2B 79 */	bl dKy_darkworld_check__Fv
/* 80059A08  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80059A0C  41 82 00 14 */	beq lbl_80059A20
/* 80059A10  38 00 00 1E */	li r0, 0x1e
/* 80059A14  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059A18  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80059A1C  90 03 0E C8 */	stw r0, 0xec8(r3)
lbl_80059A20:
/* 80059A20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80059A24  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80059A28  38 7E 4E 20 */	addi r3, r30, 0x4e20
/* 80059A2C  81 9E 4E 20 */	lwz r12, 0x4e20(r30)
/* 80059A30  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80059A34  7D 89 03 A6 */	mtctr r12
/* 80059A38  4E 80 04 21 */	bctrl 
/* 80059A3C  28 03 00 00 */	cmplwi r3, 0
/* 80059A40  41 82 00 30 */	beq lbl_80059A70
/* 80059A44  80 03 00 00 */	lwz r0, 0(r3)
/* 80059A48  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 80059A4C  7C 84 07 74 */	extsb r4, r4
/* 80059A50  7C 00 20 00 */	cmpw r0, r4
/* 80059A54  40 81 00 1C */	ble lbl_80059A70
/* 80059A58  80 63 00 04 */	lwz r3, 4(r3)
/* 80059A5C  54 80 10 3A */	slwi r0, r4, 2
/* 80059A60  7C 63 00 2E */	lwzx r3, r3, r0
/* 80059A64  88 03 00 02 */	lbz r0, 2(r3)
/* 80059A68  54 00 07 38 */	rlwinm r0, r0, 0, 0x1c, 0x1c
/* 80059A6C  7C 1F 03 78 */	mr r31, r0
lbl_80059A70:
/* 80059A70  3B 9E 4E 00 */	addi r28, r30, 0x4e00
/* 80059A74  7F 83 E3 78 */	mr r3, r28
/* 80059A78  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 80059A7C  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l
/* 80059A80  38 84 00 0F */	addi r4, r4, 0xf
/* 80059A84  48 30 EF 11 */	bl strcmp
/* 80059A88  2C 03 00 00 */	cmpwi r3, 0
/* 80059A8C  40 82 00 18 */	bne lbl_80059AA4
/* 80059A90  38 00 00 1E */	li r0, 0x1e
/* 80059A94  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059A98  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80059A9C  90 03 0E C8 */	stw r0, 0xec8(r3)
/* 80059AA0  48 00 00 0C */	b lbl_80059AAC
lbl_80059AA4:
/* 80059AA4  2C 1F 00 00 */	cmpwi r31, 0
/* 80059AA8  41 82 03 50 */	beq lbl_80059DF8
lbl_80059AAC:
/* 80059AAC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059AB0  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 80059AB4  88 1E 0E C4 */	lbz r0, 0xec4(r30)
/* 80059AB8  2C 00 00 01 */	cmpwi r0, 1
/* 80059ABC  41 82 01 58 */	beq lbl_80059C14
/* 80059AC0  40 80 03 38 */	bge lbl_80059DF8
/* 80059AC4  2C 00 00 00 */	cmpwi r0, 0
/* 80059AC8  40 80 00 08 */	bge lbl_80059AD0
/* 80059ACC  48 00 03 2C */	b lbl_80059DF8
lbl_80059AD0:
/* 80059AD0  80 1E 0E C8 */	lwz r0, 0xec8(r30)
/* 80059AD4  2C 00 00 00 */	cmpwi r0, 0
/* 80059AD8  41 82 03 20 */	beq lbl_80059DF8
/* 80059ADC  38 60 11 58 */	li r3, 0x1158
/* 80059AE0  38 80 00 20 */	li r4, 0x20
/* 80059AE4  48 27 51 91 */	bl __nw__FUli
/* 80059AE8  7C 7D 1B 79 */	or. r29, r3, r3
/* 80059AEC  41 82 00 50 */	beq lbl_80059B3C
/* 80059AF0  7F A4 EB 78 */	mr r4, r29
/* 80059AF4  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80059AF8  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80059AFC  90 1D 00 00 */	stw r0, 0(r29)
/* 80059B00  38 00 00 00 */	li r0, 0
/* 80059B04  90 1D 00 04 */	stw r0, 4(r29)
/* 80059B08  90 1D 00 08 */	stw r0, 8(r29)
/* 80059B0C  90 1D 00 0C */	stw r0, 0xc(r29)
/* 80059B10  3C 60 80 3B */	lis r3, __vt__21dKankyo_vrkumo_Packet@ha
/* 80059B14  38 03 9A FC */	addi r0, r3, __vt__21dKankyo_vrkumo_Packet@l
/* 80059B18  90 1D 00 00 */	stw r0, 0(r29)
/* 80059B1C  38 64 00 20 */	addi r3, r4, 0x20
/* 80059B20  3C 80 80 05 */	lis r4, __ct__10VRKUMO_EFFFv@ha
/* 80059B24  38 84 6F 54 */	addi r4, r4, __ct__10VRKUMO_EFFFv@l
/* 80059B28  3C A0 80 05 */	lis r5, __dt__10VRKUMO_EFFFv@ha
/* 80059B2C  38 A5 6F 18 */	addi r5, r5, __dt__10VRKUMO_EFFFv@l
/* 80059B30  38 C0 00 2C */	li r6, 0x2c
/* 80059B34  38 E0 00 64 */	li r7, 0x64
/* 80059B38  48 30 82 29 */	bl __construct_array
lbl_80059B3C:
/* 80059B3C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059B40  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 80059B44  93 BF 0E D0 */	stw r29, 0xed0(r31)
/* 80059B48  28 1D 00 00 */	cmplwi r29, 0
/* 80059B4C  41 82 02 AC */	beq lbl_80059DF8
/* 80059B50  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 80059B54  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l
/* 80059B58  38 63 01 19 */	addi r3, r3, 0x119
/* 80059B5C  4B FD 58 D9 */	bl dComIfG_getStageRes__FPCc
/* 80059B60  80 9F 0E D0 */	lwz r4, 0xed0(r31)
/* 80059B64  90 64 00 14 */	stw r3, 0x14(r4)
/* 80059B68  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 80059B6C  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l
/* 80059B70  38 63 01 28 */	addi r3, r3, 0x128
/* 80059B74  4B FD 58 C1 */	bl dComIfG_getStageRes__FPCc
/* 80059B78  80 9F 0E D0 */	lwz r4, 0xed0(r31)
/* 80059B7C  90 64 00 18 */	stw r3, 0x18(r4)
/* 80059B80  3C 60 80 38 */	lis r3, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 80059B84  38 63 A3 68 */	addi r3, r3, d_kankyo_d_kankyo_wether__stringBase0@l
/* 80059B88  38 63 01 37 */	addi r3, r3, 0x137
/* 80059B8C  4B FD 58 A9 */	bl dComIfG_getStageRes__FPCc
/* 80059B90  80 9F 0E D0 */	lwz r4, 0xed0(r31)
/* 80059B94  90 64 00 1C */	stw r3, 0x1c(r4)
/* 80059B98  80 7F 0E D0 */	lwz r3, 0xed0(r31)
/* 80059B9C  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80059BA0  28 00 00 00 */	cmplwi r0, 0
/* 80059BA4  41 82 00 1C */	beq lbl_80059BC0
/* 80059BA8  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80059BAC  28 00 00 00 */	cmplwi r0, 0
/* 80059BB0  41 82 00 10 */	beq lbl_80059BC0
/* 80059BB4  80 03 00 1C */	lwz r0, 0x1c(r3)
/* 80059BB8  28 00 00 00 */	cmplwi r0, 0
/* 80059BBC  40 82 00 0C */	bne lbl_80059BC8
lbl_80059BC0:
/* 80059BC0  38 00 00 63 */	li r0, 0x63
/* 80059BC4  98 1E 0E C4 */	stb r0, 0xec4(r30)
lbl_80059BC8:
/* 80059BC8  38 60 00 00 */	li r3, 0
/* 80059BCC  7C 65 1B 78 */	mr r5, r3
/* 80059BD0  38 00 00 64 */	li r0, 0x64
/* 80059BD4  7C 09 03 A6 */	mtctr r0
lbl_80059BD8:
/* 80059BD8  80 9F 0E D0 */	lwz r4, 0xed0(r31)
/* 80059BDC  38 03 00 20 */	addi r0, r3, 0x20
/* 80059BE0  7C A4 01 AE */	stbx r5, r4, r0
/* 80059BE4  38 63 00 2C */	addi r3, r3, 0x2c
/* 80059BE8  42 00 FF F0 */	bdnz lbl_80059BD8
/* 80059BEC  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 80059BF0  80 7F 0E D0 */	lwz r3, 0xed0(r31)
/* 80059BF4  D0 03 11 50 */	stfs f0, 0x1150(r3)
/* 80059BF8  80 7F 0E D0 */	lwz r3, 0xed0(r31)
/* 80059BFC  D0 03 11 54 */	stfs f0, 0x1154(r3)
/* 80059C00  48 00 84 AD */	bl vrkumo_move__Fv
/* 80059C04  88 7E 0E C4 */	lbz r3, 0xec4(r30)
/* 80059C08  38 03 00 01 */	addi r0, r3, 1
/* 80059C0C  98 1E 0E C4 */	stb r0, 0xec4(r30)
/* 80059C10  48 00 01 E8 */	b lbl_80059DF8
lbl_80059C14:
/* 80059C14  48 00 84 99 */	bl vrkumo_move__Fv
/* 80059C18  48 00 0E C9 */	bl dKyw_get_wind_vec__Fv
/* 80059C1C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059C20  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 80059C24  C3 A3 0E 48 */	lfs f29, 0xe48(r3)
/* 80059C28  C3 83 0E 4C */	lfs f28, 0xe4c(r3)
/* 80059C2C  C3 63 0E 50 */	lfs f27, 0xe50(r3)
/* 80059C30  C3 E3 0E 58 */	lfs f31, 0xe58(r3)
/* 80059C34  7F 83 E3 78 */	mr r3, r28
/* 80059C38  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha
/* 80059C3C  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l
/* 80059C40  38 84 00 89 */	addi r4, r4, 0x89
/* 80059C44  48 30 ED 51 */	bl strcmp
/* 80059C48  2C 03 00 00 */	cmpwi r3, 0
/* 80059C4C  40 82 00 08 */	bne lbl_80059C54
/* 80059C50  C3 E2 87 58 */	lfs f31, lit_5191(r2)
lbl_80059C54:
/* 80059C54  EC 3D 07 72 */	fmuls f1, f29, f29
/* 80059C58  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 80059C5C  EF C1 00 2A */	fadds f30, f1, f0
/* 80059C60  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 80059C64  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 80059C68  40 81 00 0C */	ble lbl_80059C74
/* 80059C6C  FC 00 F0 34 */	frsqrte f0, f30
/* 80059C70  EF C0 07 B2 */	fmuls f30, f0, f30
lbl_80059C74:
/* 80059C74  FC 20 E8 90 */	fmr f1, f29
/* 80059C78  FC 40 D8 90 */	fmr f2, f27
/* 80059C7C  48 20 D9 F9 */	bl cM_atan2s__Fff
/* 80059C80  7C 60 07 34 */	extsh r0, r3
/* 80059C84  C8 22 86 F8 */	lfd f1, lit_4671(r2)
/* 80059C88  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80059C8C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80059C90  3C 00 43 30 */	lis r0, 0x4330
/* 80059C94  90 01 00 18 */	stw r0, 0x18(r1)
/* 80059C98  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80059C9C  EF 60 08 28 */	fsubs f27, f0, f1
/* 80059CA0  FC 20 E0 90 */	fmr f1, f28
/* 80059CA4  FC 40 F0 90 */	fmr f2, f30
/* 80059CA8  48 20 D9 CD */	bl cM_atan2s__Fff
/* 80059CAC  7C 60 07 34 */	extsh r0, r3
/* 80059CB0  C8 22 86 F8 */	lfd f1, lit_4671(r2)
/* 80059CB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80059CB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80059CBC  3C 00 43 30 */	lis r0, 0x4330
/* 80059CC0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80059CC4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80059CC8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80059CCC  C0 02 87 5C */	lfs f0, lit_5192(r2)
/* 80059CD0  EF 7B 00 2A */	fadds f27, f27, f0
/* 80059CD4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80059CD8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80059CDC  38 A3 00 04 */	addi r5, r3, 4
/* 80059CE0  FC 00 08 1E */	fctiwz f0, f1
/* 80059CE4  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80059CE8  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80059CEC  54 04 04 38 */	rlwinm r4, r0, 0, 0x10, 0x1c
/* 80059CF0  7C 25 24 2E */	lfsx f1, r5, r4
/* 80059CF4  FC 00 D8 1E */	fctiwz f0, f27
/* 80059CF8  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80059CFC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80059D00  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80059D04  7C 03 04 2E */	lfsx f0, r3, r0
/* 80059D08  EC 81 00 32 */	fmuls f4, f1, f0
/* 80059D0C  D0 81 00 08 */	stfs f4, 8(r1)
/* 80059D10  7C 03 24 2E */	lfsx f0, r3, r4
/* 80059D14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80059D18  7C 05 04 2E */	lfsx f0, r5, r0
/* 80059D1C  EC 61 00 32 */	fmuls f3, f1, f0
/* 80059D20  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80059D24  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80059D28  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 80059D2C  80 64 0E D0 */	lwz r3, 0xed0(r4)
/* 80059D30  C0 23 11 50 */	lfs f1, 0x1150(r3)
/* 80059D34  C0 42 87 60 */	lfs f2, lit_5193(r2)
/* 80059D38  EC 04 07 F2 */	fmuls f0, f4, f31
/* 80059D3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80059D40  EC 01 00 2A */	fadds f0, f1, f0
/* 80059D44  D0 03 11 50 */	stfs f0, 0x1150(r3)
/* 80059D48  80 64 0E D0 */	lwz r3, 0xed0(r4)
/* 80059D4C  C0 23 11 54 */	lfs f1, 0x1154(r3)
/* 80059D50  EC 03 07 F2 */	fmuls f0, f3, f31
/* 80059D54  EC 02 00 32 */	fmuls f0, f2, f0
/* 80059D58  EC 01 00 2A */	fadds f0, f1, f0
/* 80059D5C  D0 03 11 54 */	stfs f0, 0x1154(r3)
/* 80059D60  C0 42 86 E4 */	lfs f2, lit_4379(r2)
/* 80059D64  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 80059D68  48 00 00 10 */	b lbl_80059D78
lbl_80059D6C:
/* 80059D6C  C0 23 11 50 */	lfs f1, 0x1150(r3)
/* 80059D70  EC 21 10 2A */	fadds f1, f1, f2
/* 80059D74  D0 23 11 50 */	stfs f1, 0x1150(r3)
lbl_80059D78:
/* 80059D78  80 64 0E D0 */	lwz r3, 0xed0(r4)
/* 80059D7C  C0 23 11 50 */	lfs f1, 0x1150(r3)
/* 80059D80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80059D84  41 80 FF E8 */	blt lbl_80059D6C
/* 80059D88  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 80059D8C  48 00 00 10 */	b lbl_80059D9C
lbl_80059D90:
/* 80059D90  C0 03 11 50 */	lfs f0, 0x1150(r3)
/* 80059D94  EC 00 08 28 */	fsubs f0, f0, f1
/* 80059D98  D0 03 11 50 */	stfs f0, 0x1150(r3)
lbl_80059D9C:
/* 80059D9C  80 64 0E D0 */	lwz r3, 0xed0(r4)
/* 80059DA0  C0 03 11 50 */	lfs f0, 0x1150(r3)
/* 80059DA4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80059DA8  41 81 FF E8 */	bgt lbl_80059D90
/* 80059DAC  C0 42 86 E4 */	lfs f2, lit_4379(r2)
/* 80059DB0  C0 02 86 E0 */	lfs f0, lit_4378(r2)
/* 80059DB4  48 00 00 10 */	b lbl_80059DC4
lbl_80059DB8:
/* 80059DB8  C0 23 11 54 */	lfs f1, 0x1154(r3)
/* 80059DBC  EC 21 10 2A */	fadds f1, f1, f2
/* 80059DC0  D0 23 11 54 */	stfs f1, 0x1154(r3)
lbl_80059DC4:
/* 80059DC4  80 64 0E D0 */	lwz r3, 0xed0(r4)
/* 80059DC8  C0 23 11 54 */	lfs f1, 0x1154(r3)
/* 80059DCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80059DD0  41 80 FF E8 */	blt lbl_80059DB8
/* 80059DD4  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 80059DD8  48 00 00 10 */	b lbl_80059DE8
lbl_80059DDC:
/* 80059DDC  C0 03 11 54 */	lfs f0, 0x1154(r3)
/* 80059DE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80059DE4  D0 03 11 54 */	stfs f0, 0x1154(r3)
lbl_80059DE8:
/* 80059DE8  80 64 0E D0 */	lwz r3, 0xed0(r4)
/* 80059DEC  C0 03 11 54 */	lfs f0, 0x1154(r3)
/* 80059DF0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80059DF4  41 81 FF E8 */	bgt lbl_80059DDC
lbl_80059DF8:
/* 80059DF8  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80059DFC  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80059E00  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 80059E04  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 80059E08  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 80059E0C  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 80059E10  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 80059E14  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 80059E18  E3 61 00 58 */	psq_l f27, 88(r1), 0, 0 /* qr0 */
/* 80059E1C  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 80059E20  39 61 00 50 */	addi r11, r1, 0x50
/* 80059E24  48 30 84 01 */	bl _restgpr_28
/* 80059E28  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80059E2C  7C 08 03 A6 */	mtlr r0
/* 80059E30  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80059E34  4E 80 00 20 */	blr 
