lbl_801A9BE4:
/* 801A9BE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A9BE8  7C 08 02 A6 */	mflr r0
/* 801A9BEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A9BF0  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 801A9BF4  39 61 00 28 */	addi r11, r1, 0x28
/* 801A9BF8  48 1B 85 D9 */	bl _savegpr_26
/* 801A9BFC  7C 7A 1B 78 */	mr r26, r3
/* 801A9C00  7C 9B 23 79 */	or. r27, r4, r4
/* 801A9C04  7C BC 2B 78 */	mr r28, r5
/* 801A9C08  7C DD 33 78 */	mr r29, r6
/* 801A9C0C  7C FE 3B 78 */	mr r30, r7
/* 801A9C10  7D 1F 43 78 */	mr r31, r8
/* 801A9C14  FF E0 08 90 */	fmr f31, f1
/* 801A9C18  41 82 00 34 */	beq lbl_801A9C4C
/* 801A9C1C  38 7B 03 48 */	addi r3, r27, 0x348
/* 801A9C20  4B FF EF E5 */	bl NewAmbColGet__FP11_GXColorS10
/* 801A9C24  90 61 00 0C */	stw r3, 0xc(r1)
/* 801A9C28  88 01 00 0C */	lbz r0, 0xc(r1)
/* 801A9C2C  98 1C 00 00 */	stb r0, 0(r28)
/* 801A9C30  88 01 00 0D */	lbz r0, 0xd(r1)
/* 801A9C34  98 1C 00 01 */	stb r0, 1(r28)
/* 801A9C38  88 01 00 0E */	lbz r0, 0xe(r1)
/* 801A9C3C  98 1C 00 02 */	stb r0, 2(r28)
/* 801A9C40  88 01 00 0F */	lbz r0, 0xf(r1)
/* 801A9C44  98 1C 00 03 */	stb r0, 3(r28)
/* 801A9C48  48 00 00 38 */	b lbl_801A9C80
lbl_801A9C4C:
/* 801A9C4C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A9C50  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A9C54  38 63 11 00 */	addi r3, r3, 0x1100
/* 801A9C58  4B FF EF AD */	bl NewAmbColGet__FP11_GXColorS10
/* 801A9C5C  90 61 00 08 */	stw r3, 8(r1)
/* 801A9C60  88 01 00 08 */	lbz r0, 8(r1)
/* 801A9C64  98 1C 00 00 */	stb r0, 0(r28)
/* 801A9C68  88 01 00 09 */	lbz r0, 9(r1)
/* 801A9C6C  98 1C 00 01 */	stb r0, 1(r28)
/* 801A9C70  88 01 00 0A */	lbz r0, 0xa(r1)
/* 801A9C74  98 1C 00 02 */	stb r0, 2(r28)
/* 801A9C78  88 01 00 0B */	lbz r0, 0xb(r1)
/* 801A9C7C  98 1C 00 03 */	stb r0, 3(r28)
lbl_801A9C80:
/* 801A9C80  7F 43 D3 78 */	mr r3, r26
/* 801A9C84  7F 64 DB 78 */	mr r4, r27
/* 801A9C88  7F 85 E3 78 */	mr r5, r28
/* 801A9C8C  7F A6 EB 78 */	mr r6, r29
/* 801A9C90  7F C7 F3 78 */	mr r7, r30
/* 801A9C94  7F E8 FB 78 */	mr r8, r31
/* 801A9C98  FC 20 F8 90 */	fmr f1, f31
/* 801A9C9C  4B FF F1 85 */	bl dKy_ParticleColor_get_base__FP4cXyzP12dKy_tevstr_cP8_GXColorP8_GXColorP8_GXColorP8_GXColorf
/* 801A9CA0  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 801A9CA4  39 61 00 28 */	addi r11, r1, 0x28
/* 801A9CA8  48 1B 85 75 */	bl _restgpr_26
/* 801A9CAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A9CB0  7C 08 03 A6 */	mtlr r0
/* 801A9CB4  38 21 00 30 */	addi r1, r1, 0x30
/* 801A9CB8  4E 80 00 20 */	blr 
