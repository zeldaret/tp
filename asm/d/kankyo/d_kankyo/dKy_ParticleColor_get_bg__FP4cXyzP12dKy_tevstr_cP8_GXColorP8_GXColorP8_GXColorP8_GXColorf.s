lbl_801A9CBC:
/* 801A9CBC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A9CC0  7C 08 02 A6 */	mflr r0
/* 801A9CC4  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A9CC8  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 801A9CCC  39 61 00 28 */	addi r11, r1, 0x28
/* 801A9CD0  48 1B 85 01 */	bl _savegpr_26
/* 801A9CD4  7C 7A 1B 78 */	mr r26, r3
/* 801A9CD8  7C 9B 23 78 */	mr r27, r4
/* 801A9CDC  7C BC 2B 78 */	mr r28, r5
/* 801A9CE0  7C DD 33 78 */	mr r29, r6
/* 801A9CE4  7C FE 3B 78 */	mr r30, r7
/* 801A9CE8  7D 1F 43 78 */	mr r31, r8
/* 801A9CEC  FF E0 08 90 */	fmr f31, f1
/* 801A9CF0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A9CF4  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A9CF8  38 63 11 08 */	addi r3, r3, 0x1108
/* 801A9CFC  4B FF EF 09 */	bl NewAmbColGet__FP11_GXColorS10
/* 801A9D00  90 61 00 08 */	stw r3, 8(r1)
/* 801A9D04  88 01 00 08 */	lbz r0, 8(r1)
/* 801A9D08  98 1C 00 00 */	stb r0, 0(r28)
/* 801A9D0C  88 01 00 09 */	lbz r0, 9(r1)
/* 801A9D10  98 1C 00 01 */	stb r0, 1(r28)
/* 801A9D14  88 01 00 0A */	lbz r0, 0xa(r1)
/* 801A9D18  98 1C 00 02 */	stb r0, 2(r28)
/* 801A9D1C  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801A9D20  98 1C 00 03 */	stb r0, 3(r28)
/* 801A9D24  7F 43 D3 78 */	mr r3, r26
/* 801A9D28  7F 64 DB 78 */	mr r4, r27
/* 801A9D2C  7F 85 E3 78 */	mr r5, r28
/* 801A9D30  7F A6 EB 78 */	mr r6, r29
/* 801A9D34  7F C7 F3 78 */	mr r7, r30
/* 801A9D38  7F E8 FB 78 */	mr r8, r31
/* 801A9D3C  FC 20 F8 90 */	fmr f1, f31
/* 801A9D40  4B FF F0 E1 */	bl dKy_ParticleColor_get_base__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf
/* 801A9D44  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 801A9D48  39 61 00 28 */	addi r11, r1, 0x28
/* 801A9D4C  48 1B 84 D1 */	bl _restgpr_26
/* 801A9D50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A9D54  7C 08 03 A6 */	mtlr r0
/* 801A9D58  38 21 00 30 */	addi r1, r1, 0x30
/* 801A9D5C  4E 80 00 20 */	blr 
