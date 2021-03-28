lbl_806B6D20:
/* 806B6D20  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 806B6D24  7C 08 02 A6 */	mflr r0
/* 806B6D28  90 01 00 94 */	stw r0, 0x94(r1)
/* 806B6D2C  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 806B6D30  93 C1 00 88 */	stw r30, 0x88(r1)
/* 806B6D34  7C 7E 1B 78 */	mr r30, r3
/* 806B6D38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B6D3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B6D40  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 806B6D44  38 61 00 14 */	addi r3, r1, 0x14
/* 806B6D48  4B 9C 0F 20 */	b __ct__11dBgS_LinChkFv
/* 806B6D4C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806B6D50  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B6D54  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806B6D58  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806B6D5C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806B6D60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B6D64  3C 60 80 6C */	lis r3, lit_3877@ha
/* 806B6D68  C0 03 8F A8 */	lfs f0, lit_3877@l(r3)
/* 806B6D6C  EC 01 00 2A */	fadds f0, f1, f0
/* 806B6D70  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B6D74  38 61 00 14 */	addi r3, r1, 0x14
/* 806B6D78  38 9E 05 50 */	addi r4, r30, 0x550
/* 806B6D7C  38 A1 00 08 */	addi r5, r1, 8
/* 806B6D80  7F C6 F3 78 */	mr r6, r30
/* 806B6D84  4B 9C 0F E0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806B6D88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B6D8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B6D90  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806B6D94  38 81 00 14 */	addi r4, r1, 0x14
/* 806B6D98  4B 9B D6 1C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806B6D9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B6DA0  41 82 00 2C */	beq lbl_806B6DCC
/* 806B6DA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806B6DA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806B6DAC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 806B6DB0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 806B6DB4  40 82 00 18 */	bne lbl_806B6DCC
/* 806B6DB8  38 61 00 14 */	addi r3, r1, 0x14
/* 806B6DBC  38 80 FF FF */	li r4, -1
/* 806B6DC0  4B 9C 0F 1C */	b __dt__11dBgS_LinChkFv
/* 806B6DC4  38 60 00 01 */	li r3, 1
/* 806B6DC8  48 00 00 14 */	b lbl_806B6DDC
lbl_806B6DCC:
/* 806B6DCC  38 61 00 14 */	addi r3, r1, 0x14
/* 806B6DD0  38 80 FF FF */	li r4, -1
/* 806B6DD4  4B 9C 0F 08 */	b __dt__11dBgS_LinChkFv
/* 806B6DD8  38 60 00 00 */	li r3, 0
lbl_806B6DDC:
/* 806B6DDC  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 806B6DE0  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 806B6DE4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 806B6DE8  7C 08 03 A6 */	mtlr r0
/* 806B6DEC  38 21 00 90 */	addi r1, r1, 0x90
/* 806B6DF0  4E 80 00 20 */	blr 
