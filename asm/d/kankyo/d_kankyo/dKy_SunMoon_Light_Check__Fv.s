lbl_801AC168:
/* 801AC168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801AC16C  7C 08 02 A6 */	mflr r0
/* 801AC170  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AC174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801AC178  93 C1 00 08 */	stw r30, 8(r1)
/* 801AC17C  3B C0 00 00 */	li r30, 0
/* 801AC180  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AC184  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801AC188  88 03 0E 70 */	lbz r0, 0xe70(r3)
/* 801AC18C  28 00 00 00 */	cmplwi r0, 0
/* 801AC190  41 82 00 7C */	beq lbl_801AC20C
/* 801AC194  48 00 03 E9 */	bl dKy_darkworld_check__Fv
/* 801AC198  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801AC19C  40 82 00 70 */	bne lbl_801AC20C
/* 801AC1A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AC1A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AC1A8  3B E3 4E 00 */	addi r31, r3, 0x4e00
/* 801AC1AC  7F E3 FB 78 */	mr r3, r31
/* 801AC1B0  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AC1B4  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AC1B8  38 84 00 C3 */	addi r4, r4, 0xc3
/* 801AC1BC  38 A0 00 06 */	li r5, 6
/* 801AC1C0  48 1B 9E CD */	bl memcmp
/* 801AC1C4  2C 03 00 00 */	cmpwi r3, 0
/* 801AC1C8  41 82 00 44 */	beq lbl_801AC20C
/* 801AC1CC  7F E3 FB 78 */	mr r3, r31
/* 801AC1D0  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AC1D4  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AC1D8  38 84 01 6C */	addi r4, r4, 0x16c
/* 801AC1DC  38 A0 00 06 */	li r5, 6
/* 801AC1E0  48 1B 9E AD */	bl memcmp
/* 801AC1E4  2C 03 00 00 */	cmpwi r3, 0
/* 801AC1E8  41 82 00 24 */	beq lbl_801AC20C
/* 801AC1EC  7F E3 FB 78 */	mr r3, r31
/* 801AC1F0  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801AC1F4  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801AC1F8  38 84 01 82 */	addi r4, r4, 0x182
/* 801AC1FC  48 1B C7 99 */	bl strcmp
/* 801AC200  2C 03 00 00 */	cmpwi r3, 0
/* 801AC204  41 82 00 08 */	beq lbl_801AC20C
/* 801AC208  3B C0 00 01 */	li r30, 1
lbl_801AC20C:
/* 801AC20C  7F C3 F3 78 */	mr r3, r30
/* 801AC210  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801AC214  83 C1 00 08 */	lwz r30, 8(r1)
/* 801AC218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801AC21C  7C 08 03 A6 */	mtlr r0
/* 801AC220  38 21 00 10 */	addi r1, r1, 0x10
/* 801AC224  4E 80 00 20 */	blr 
