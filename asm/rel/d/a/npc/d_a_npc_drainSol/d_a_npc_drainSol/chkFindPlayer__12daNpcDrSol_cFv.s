lbl_809AE8EC:
/* 809AE8EC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 809AE8F0  7C 08 02 A6 */	mflr r0
/* 809AE8F4  90 01 00 94 */	stw r0, 0x94(r1)
/* 809AE8F8  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 809AE8FC  7C 7F 1B 78 */	mr r31, r3
/* 809AE900  38 61 00 14 */	addi r3, r1, 0x14
/* 809AE904  4B 6C 93 64 */	b __ct__11dBgS_LinChkFv
/* 809AE908  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809AE90C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809AE910  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809AE914  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 809AE918  C0 3F 05 3C */	lfs f1, 0x53c(r31)
/* 809AE91C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 809AE920  D0 01 00 08 */	stfs f0, 8(r1)
/* 809AE924  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 809AE928  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 809AE92C  38 61 00 14 */	addi r3, r1, 0x14
/* 809AE930  38 9F 05 38 */	addi r4, r31, 0x538
/* 809AE934  38 A1 00 08 */	addi r5, r1, 8
/* 809AE938  7F E6 FB 78 */	mr r6, r31
/* 809AE93C  4B 6C 94 28 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 809AE940  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809AE944  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809AE948  38 63 0F 38 */	addi r3, r3, 0xf38
/* 809AE94C  38 81 00 14 */	addi r4, r1, 0x14
/* 809AE950  4B 6C 5A 64 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 809AE954  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 809AE958  41 82 00 18 */	beq lbl_809AE970
/* 809AE95C  38 61 00 14 */	addi r3, r1, 0x14
/* 809AE960  38 80 FF FF */	li r4, -1
/* 809AE964  4B 6C 93 78 */	b __dt__11dBgS_LinChkFv
/* 809AE968  38 60 00 00 */	li r3, 0
/* 809AE96C  48 00 00 14 */	b lbl_809AE980
lbl_809AE970:
/* 809AE970  38 61 00 14 */	addi r3, r1, 0x14
/* 809AE974  38 80 FF FF */	li r4, -1
/* 809AE978  4B 6C 93 64 */	b __dt__11dBgS_LinChkFv
/* 809AE97C  38 60 00 01 */	li r3, 1
lbl_809AE980:
/* 809AE980  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 809AE984  80 01 00 94 */	lwz r0, 0x94(r1)
/* 809AE988  7C 08 03 A6 */	mtlr r0
/* 809AE98C  38 21 00 90 */	addi r1, r1, 0x90
/* 809AE990  4E 80 00 20 */	blr 
