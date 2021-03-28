lbl_801ABFE4:
/* 801ABFE4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801ABFE8  7C 08 02 A6 */	mflr r0
/* 801ABFEC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801ABFF0  39 61 00 30 */	addi r11, r1, 0x30
/* 801ABFF4  48 1B 61 E1 */	bl _savegpr_27
/* 801ABFF8  7C 7F 1B 79 */	or. r31, r3, r3
/* 801ABFFC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AC000  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 801AC004  41 82 00 14 */	beq lbl_801AC018
/* 801AC008  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AC00C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AC010  37 A3 0F 38 */	addic. r29, r3, 0xf38
/* 801AC014  40 82 00 0C */	bne lbl_801AC020
lbl_801AC018:
/* 801AC018  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801AC01C  48 00 01 0C */	b lbl_801AC128
lbl_801AC020:
/* 801AC020  7F A3 EB 78 */	mr r3, r29
/* 801AC024  7F E4 FB 78 */	mr r4, r31
/* 801AC028  4B EC 8E 29 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 801AC02C  7C 7B 1B 78 */	mr r27, r3
/* 801AC030  3B 9D 3E C8 */	addi r28, r29, 0x3ec8
/* 801AC034  7F 83 E3 78 */	mr r3, r28
/* 801AC038  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AC03C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AC040  38 84 01 7A */	addi r4, r4, 0x17a
/* 801AC044  48 1B C9 51 */	bl strcmp
/* 801AC048  2C 03 00 00 */	cmpwi r3, 0
/* 801AC04C  40 82 00 28 */	bne lbl_801AC074
/* 801AC050  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AC054  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801AC058  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 801AC05C  28 00 00 04 */	cmplwi r0, 4
/* 801AC060  40 82 00 14 */	bne lbl_801AC074
/* 801AC064  2C 1B 00 04 */	cmpwi r27, 4
/* 801AC068  40 82 00 50 */	bne lbl_801AC0B8
/* 801AC06C  3B 60 00 0D */	li r27, 0xd
/* 801AC070  48 00 00 48 */	b lbl_801AC0B8
lbl_801AC074:
/* 801AC074  7F 83 E3 78 */	mr r3, r28
/* 801AC078  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AC07C  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AC080  38 84 02 61 */	addi r4, r4, 0x261
/* 801AC084  48 1B C9 11 */	bl strcmp
/* 801AC088  2C 03 00 00 */	cmpwi r3, 0
/* 801AC08C  40 82 00 2C */	bne lbl_801AC0B8
/* 801AC090  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AC094  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AC098  38 63 09 58 */	addi r3, r3, 0x958
/* 801AC09C  38 80 00 03 */	li r4, 3
/* 801AC0A0  4B E8 88 95 */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801AC0A4  2C 03 00 00 */	cmpwi r3, 0
/* 801AC0A8  41 82 00 10 */	beq lbl_801AC0B8
/* 801AC0AC  2C 1B 00 0B */	cmpwi r27, 0xb
/* 801AC0B0  40 82 00 08 */	bne lbl_801AC0B8
/* 801AC0B4  3B 60 00 07 */	li r27, 7
lbl_801AC0B8:
/* 801AC0B8  7F A3 EB 78 */	mr r3, r29
/* 801AC0BC  7F E4 FB 78 */	mr r4, r31
/* 801AC0C0  4B EC 8D E1 */	bl GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo
/* 801AC0C4  80 9E 12 E8 */	lwz r4, 0x12e8(r30)
/* 801AC0C8  28 04 00 00 */	cmplwi r4, 0
/* 801AC0CC  41 82 00 14 */	beq lbl_801AC0E0
/* 801AC0D0  57 60 18 38 */	slwi r0, r27, 3
/* 801AC0D4  7C 00 1A 14 */	add r0, r0, r3
/* 801AC0D8  7C 04 00 AE */	lbzx r0, r4, r0
/* 801AC0DC  48 00 00 0C */	b lbl_801AC0E8
lbl_801AC0E0:
/* 801AC0E0  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801AC0E4  48 00 00 44 */	b lbl_801AC128
lbl_801AC0E8:
/* 801AC0E8  28 00 00 64 */	cmplwi r0, 0x64
/* 801AC0EC  41 80 00 0C */	blt lbl_801AC0F8
/* 801AC0F0  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801AC0F4  48 00 00 34 */	b lbl_801AC128
lbl_801AC0F8:
/* 801AC0F8  80 7E 12 F4 */	lwz r3, 0x12f4(r30)
/* 801AC0FC  54 00 1D 78 */	rlwinm r0, r0, 3, 0x15, 0x1c
/* 801AC100  7C 63 02 14 */	add r3, r3, r0
/* 801AC104  88 03 00 07 */	lbz r0, 7(r3)
/* 801AC108  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801AC10C  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AC110  3C 00 43 30 */	lis r0, 0x4330
/* 801AC114  90 01 00 08 */	stw r0, 8(r1)
/* 801AC118  C8 01 00 08 */	lfd f0, 8(r1)
/* 801AC11C  EC 20 08 28 */	fsubs f1, f0, f1
/* 801AC120  C0 02 A2 68 */	lfs f0, lit_4731(r2)
/* 801AC124  EC 20 00 72 */	fmuls f1, f0, f1
lbl_801AC128:
/* 801AC128  39 61 00 30 */	addi r11, r1, 0x30
/* 801AC12C  48 1B 60 F5 */	bl _restgpr_27
/* 801AC130  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801AC134  7C 08 03 A6 */	mtlr r0
/* 801AC138  38 21 00 30 */	addi r1, r1, 0x30
/* 801AC13C  4E 80 00 20 */	blr 
