lbl_8005A340:
/* 8005A340  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8005A344  7C 08 02 A6 */	mflr r0
/* 8005A348  90 01 00 14 */	stw r0, 0x14(r1)
/* 8005A34C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8005A350  93 C1 00 08 */	stw r30, 8(r1)
/* 8005A354  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8005A358  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8005A35C  3B E3 4E 00 */	addi r31, r3, 0x4e00
/* 8005A360  7F E3 FB 78 */	mr r3, r31
/* 8005A364  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 8005A368  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 8005A36C  38 84 00 D0 */	addi r4, r4, 0xd0
/* 8005A370  48 30 E6 25 */	bl strcmp
/* 8005A374  2C 03 00 00 */	cmpwi r3, 0
/* 8005A378  41 82 00 54 */	beq lbl_8005A3CC
/* 8005A37C  7F E3 FB 78 */	mr r3, r31
/* 8005A380  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 8005A384  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 8005A388  38 84 01 4B */	addi r4, r4, 0x14b
/* 8005A38C  48 30 E6 09 */	bl strcmp
/* 8005A390  2C 03 00 00 */	cmpwi r3, 0
/* 8005A394  41 82 00 38 */	beq lbl_8005A3CC
/* 8005A398  7F E3 FB 78 */	mr r3, r31
/* 8005A39C  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 8005A3A0  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 8005A3A4  38 84 00 91 */	addi r4, r4, 0x91
/* 8005A3A8  48 30 E5 ED */	bl strcmp
/* 8005A3AC  2C 03 00 00 */	cmpwi r3, 0
/* 8005A3B0  40 82 01 3C */	bne lbl_8005A4EC
/* 8005A3B4  C0 22 86 E0 */	lfs f1, lit_4378(r2)
/* 8005A3B8  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A3BC  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A3C0  C0 03 11 D8 */	lfs f0, 0x11d8(r3)
/* 8005A3C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8005A3C8  41 82 01 24 */	beq lbl_8005A4EC
lbl_8005A3CC:
/* 8005A3CC  48 15 21 B1 */	bl dKy_darkworld_check__Fv
/* 8005A3D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8005A3D4  40 82 01 18 */	bne lbl_8005A4EC
/* 8005A3D8  7F E3 FB 78 */	mr r3, r31
/* 8005A3DC  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 8005A3E0  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 8005A3E4  38 84 00 91 */	addi r4, r4, 0x91
/* 8005A3E8  48 30 E5 AD */	bl strcmp
/* 8005A3EC  2C 03 00 00 */	cmpwi r3, 0
/* 8005A3F0  41 82 00 30 */	beq lbl_8005A420
/* 8005A3F4  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A3F8  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A3FC  C0 23 12 44 */	lfs f1, 0x1244(r3)
/* 8005A400  C0 02 87 10 */	lfs f0, lit_4765(r2)
/* 8005A404  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005A408  4C 41 13 82 */	cror 2, 1, 2
/* 8005A40C  40 82 00 14 */	bne lbl_8005A420
/* 8005A410  C0 02 87 64 */	lfs f0, lit_5361(r2)
/* 8005A414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005A418  4C 40 13 82 */	cror 2, 0, 2
/* 8005A41C  41 82 00 40 */	beq lbl_8005A45C
lbl_8005A420:
/* 8005A420  7F E3 FB 78 */	mr r3, r31
/* 8005A424  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 8005A428  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 8005A42C  38 84 00 91 */	addi r4, r4, 0x91
/* 8005A430  48 30 E5 65 */	bl strcmp
/* 8005A434  2C 03 00 00 */	cmpwi r3, 0
/* 8005A438  40 82 00 60 */	bne lbl_8005A498
/* 8005A43C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A440  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A444  88 03 12 C9 */	lbz r0, 0x12c9(r3)
/* 8005A448  28 00 00 01 */	cmplwi r0, 1
/* 8005A44C  41 80 00 4C */	blt lbl_8005A498
/* 8005A450  28 00 00 06 */	cmplwi r0, 6
/* 8005A454  40 80 00 44 */	bge lbl_8005A498
/* 8005A458  48 14 E6 E1 */	bl dKy_get_dayofweek__Fv
lbl_8005A45C:
/* 8005A45C  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A460  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A464  38 63 0E BC */	addi r3, r3, 0xebc
/* 8005A468  C0 22 86 E4 */	lfs f1, lit_4379(r2)
/* 8005A46C  C0 42 87 68 */	lfs f2, lit_5362(r2)
/* 8005A470  C0 62 87 6C */	lfs f3, lit_5363(r2)
/* 8005A474  C0 82 87 24 */	lfs f4, lit_4770(r2)
/* 8005A478  48 21 55 05 */	bl cLib_addCalc__FPfffff
/* 8005A47C  38 00 00 07 */	li r0, 7
/* 8005A480  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A484  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A488  98 03 0E B5 */	stb r0, 0xeb5(r3)
/* 8005A48C  38 00 00 31 */	li r0, 0x31
/* 8005A490  90 03 0E B8 */	stw r0, 0xeb8(r3)
/* 8005A494  48 00 00 58 */	b lbl_8005A4EC
lbl_8005A498:
/* 8005A498  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A49C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A4A0  3B C3 0E BC */	addi r30, r3, 0xebc
/* 8005A4A4  7F C3 F3 78 */	mr r3, r30
/* 8005A4A8  C0 22 86 E0 */	lfs f1, lit_4378(r2)
/* 8005A4AC  C0 42 87 68 */	lfs f2, lit_5362(r2)
/* 8005A4B0  C0 62 87 6C */	lfs f3, lit_5363(r2)
/* 8005A4B4  C0 82 87 70 */	lfs f4, lit_5364(r2)
/* 8005A4B8  48 21 54 C5 */	bl cLib_addCalc__FPfffff
/* 8005A4BC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8005A4C0  C0 02 87 20 */	lfs f0, lit_4769(r2)
/* 8005A4C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8005A4C8  4C 40 13 82 */	cror 2, 0, 2
/* 8005A4CC  40 82 00 20 */	bne lbl_8005A4EC
/* 8005A4D0  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A4D4  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A4D8  80 03 0E B8 */	lwz r0, 0xeb8(r3)
/* 8005A4DC  2C 00 00 31 */	cmpwi r0, 0x31
/* 8005A4E0  40 82 00 0C */	bne lbl_8005A4EC
/* 8005A4E4  38 00 00 00 */	li r0, 0
/* 8005A4E8  90 03 0E B8 */	stw r0, 0xeb8(r3)
lbl_8005A4EC:
/* 8005A4EC  7F E3 FB 78 */	mr r3, r31
/* 8005A4F0  3C 80 80 38 */	lis r4, d_kankyo_d_kankyo_wether__stringBase0@ha /* 0x8037A368@ha */
/* 8005A4F4  38 84 A3 68 */	addi r4, r4, d_kankyo_d_kankyo_wether__stringBase0@l /* 0x8037A368@l */
/* 8005A4F8  38 84 01 4B */	addi r4, r4, 0x14b
/* 8005A4FC  48 30 E4 99 */	bl strcmp
/* 8005A500  2C 03 00 00 */	cmpwi r3, 0
/* 8005A504  40 82 00 5C */	bne lbl_8005A560
/* 8005A508  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A50C  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A510  88 03 12 FE */	lbz r0, 0x12fe(r3)
/* 8005A514  28 00 00 01 */	cmplwi r0, 1
/* 8005A518  41 82 00 0C */	beq lbl_8005A524
/* 8005A51C  28 00 00 03 */	cmplwi r0, 3
/* 8005A520  40 82 00 40 */	bne lbl_8005A560
lbl_8005A524:
/* 8005A524  28 00 00 01 */	cmplwi r0, 1
/* 8005A528  40 82 00 18 */	bne lbl_8005A540
/* 8005A52C  38 00 00 23 */	li r0, 0x23
/* 8005A530  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A534  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A538  90 03 0E AC */	stw r0, 0xeac(r3)
/* 8005A53C  48 00 00 14 */	b lbl_8005A550
lbl_8005A540:
/* 8005A540  38 00 00 1E */	li r0, 0x1e
/* 8005A544  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A548  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A54C  90 03 0E AC */	stw r0, 0xeac(r3)
lbl_8005A550:
/* 8005A550  38 00 00 02 */	li r0, 2
/* 8005A554  3C 60 80 43 */	lis r3, g_env_light@ha /* 0x8042CA54@ha */
/* 8005A558  38 63 CA 54 */	addi r3, r3, g_env_light@l /* 0x8042CA54@l */
/* 8005A55C  98 03 0E A9 */	stb r0, 0xea9(r3)
lbl_8005A560:
/* 8005A560  48 00 06 D1 */	bl squal_proc__Fv
/* 8005A564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8005A568  83 C1 00 08 */	lwz r30, 8(r1)
/* 8005A56C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8005A570  7C 08 03 A6 */	mtlr r0
/* 8005A574  38 21 00 10 */	addi r1, r1, 0x10
/* 8005A578  4E 80 00 20 */	blr 
