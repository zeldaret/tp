lbl_801ABD4C:
/* 801ABD4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801ABD50  7C 08 02 A6 */	mflr r0
/* 801ABD54  90 01 00 34 */	stw r0, 0x34(r1)
/* 801ABD58  39 61 00 30 */	addi r11, r1, 0x30
/* 801ABD5C  48 1B 64 79 */	bl _savegpr_27
/* 801ABD60  7C 7F 1B 79 */	or. r31, r3, r3
/* 801ABD64  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801ABD68  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 801ABD6C  41 82 00 14 */	beq lbl_801ABD80
/* 801ABD70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801ABD74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801ABD78  37 A3 0F 38 */	addic. r29, r3, 0xf38
/* 801ABD7C  40 82 00 0C */	bne lbl_801ABD88
lbl_801ABD80:
/* 801ABD80  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801ABD84  48 00 01 0C */	b lbl_801ABE90
lbl_801ABD88:
/* 801ABD88  7F A3 EB 78 */	mr r3, r29
/* 801ABD8C  7F E4 FB 78 */	mr r4, r31
/* 801ABD90  4B EC 90 C1 */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 801ABD94  7C 7B 1B 78 */	mr r27, r3
/* 801ABD98  3B 9D 3E C8 */	addi r28, r29, 0x3ec8
/* 801ABD9C  7F 83 E3 78 */	mr r3, r28
/* 801ABDA0  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801ABDA4  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801ABDA8  38 84 01 7A */	addi r4, r4, 0x17a
/* 801ABDAC  48 1B CB E9 */	bl strcmp
/* 801ABDB0  2C 03 00 00 */	cmpwi r3, 0
/* 801ABDB4  40 82 00 28 */	bne lbl_801ABDDC
/* 801ABDB8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801ABDBC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801ABDC0  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 801ABDC4  28 00 00 04 */	cmplwi r0, 4
/* 801ABDC8  40 82 00 14 */	bne lbl_801ABDDC
/* 801ABDCC  2C 1B 00 04 */	cmpwi r27, 4
/* 801ABDD0  40 82 00 50 */	bne lbl_801ABE20
/* 801ABDD4  3B 60 00 0D */	li r27, 0xd
/* 801ABDD8  48 00 00 48 */	b lbl_801ABE20
lbl_801ABDDC:
/* 801ABDDC  7F 83 E3 78 */	mr r3, r28
/* 801ABDE0  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801ABDE4  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801ABDE8  38 84 02 61 */	addi r4, r4, 0x261
/* 801ABDEC  48 1B CB A9 */	bl strcmp
/* 801ABDF0  2C 03 00 00 */	cmpwi r3, 0
/* 801ABDF4  40 82 00 2C */	bne lbl_801ABE20
/* 801ABDF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801ABDFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801ABE00  38 63 09 58 */	addi r3, r3, 0x958
/* 801ABE04  38 80 00 03 */	li r4, 3
/* 801ABE08  4B E8 8B 2D */	bl isDungeonItem__12dSv_memBit_cCFi
/* 801ABE0C  2C 03 00 00 */	cmpwi r3, 0
/* 801ABE10  41 82 00 10 */	beq lbl_801ABE20
/* 801ABE14  2C 1B 00 0B */	cmpwi r27, 0xb
/* 801ABE18  40 82 00 08 */	bne lbl_801ABE20
/* 801ABE1C  3B 60 00 07 */	li r27, 7
lbl_801ABE20:
/* 801ABE20  7F A3 EB 78 */	mr r3, r29
/* 801ABE24  7F E4 FB 78 */	mr r4, r31
/* 801ABE28  4B EC 90 79 */	bl GetPolyAtt1__4dBgSFRC13cBgS_PolyInfo
/* 801ABE2C  80 9E 12 E0 */	lwz r4, 0x12e0(r30)
/* 801ABE30  28 04 00 00 */	cmplwi r4, 0
/* 801ABE34  41 82 00 14 */	beq lbl_801ABE48
/* 801ABE38  57 60 18 38 */	slwi r0, r27, 3
/* 801ABE3C  7C 00 1A 14 */	add r0, r0, r3
/* 801ABE40  7C 04 00 AE */	lbzx r0, r4, r0
/* 801ABE44  48 00 00 0C */	b lbl_801ABE50
lbl_801ABE48:
/* 801ABE48  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801ABE4C  48 00 00 44 */	b lbl_801ABE90
lbl_801ABE50:
/* 801ABE50  28 00 00 64 */	cmplwi r0, 0x64
/* 801ABE54  41 80 00 0C */	blt lbl_801ABE60
/* 801ABE58  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801ABE5C  48 00 00 34 */	b lbl_801ABE90
lbl_801ABE60:
/* 801ABE60  80 7E 12 F4 */	lwz r3, 0x12f4(r30)
/* 801ABE64  54 00 1D 78 */	rlwinm r0, r0, 3, 0x15, 0x1c
/* 801ABE68  7C 63 02 14 */	add r3, r3, r0
/* 801ABE6C  88 03 00 07 */	lbz r0, 7(r3)
/* 801ABE70  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 801ABE74  90 01 00 0C */	stw r0, 0xc(r1)
/* 801ABE78  3C 00 43 30 */	lis r0, 0x4330
/* 801ABE7C  90 01 00 08 */	stw r0, 8(r1)
/* 801ABE80  C8 01 00 08 */	lfd f0, 8(r1)
/* 801ABE84  EC 20 08 28 */	fsubs f1, f0, f1
/* 801ABE88  C0 02 A2 68 */	lfs f0, lit_4731(r2)
/* 801ABE8C  EC 20 00 72 */	fmuls f1, f0, f1
lbl_801ABE90:
/* 801ABE90  39 61 00 30 */	addi r11, r1, 0x30
/* 801ABE94  48 1B 63 8D */	bl _restgpr_27
/* 801ABE98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801ABE9C  7C 08 03 A6 */	mtlr r0
/* 801ABEA0  38 21 00 30 */	addi r1, r1, 0x30
/* 801ABEA4  4E 80 00 20 */	blr 
