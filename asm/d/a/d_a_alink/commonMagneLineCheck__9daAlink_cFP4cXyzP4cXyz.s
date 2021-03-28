lbl_800E24B0:
/* 800E24B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E24B4  7C 08 02 A6 */	mflr r0
/* 800E24B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E24BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E24C0  7C 7F 1B 78 */	mr r31, r3
/* 800E24C4  38 7F 1D AC */	addi r3, r31, 0x1dac
/* 800E24C8  7F E6 FB 78 */	mr r6, r31
/* 800E24CC  4B F9 58 99 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800E24D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E24D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E24D8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E24DC  38 9F 1D AC */	addi r4, r31, 0x1dac
/* 800E24E0  4B F9 1E D5 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 800E24E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E24E8  41 82 00 1C */	beq lbl_800E2504
/* 800E24EC  38 7F 1D C0 */	addi r3, r31, 0x1dc0
/* 800E24F0  4B F4 F6 61 */	bl checkMagnetCode__12daTagMagne_cFR13cBgS_PolyInfo
/* 800E24F4  2C 03 00 00 */	cmpwi r3, 0
/* 800E24F8  41 82 00 0C */	beq lbl_800E2504
/* 800E24FC  38 60 00 01 */	li r3, 1
/* 800E2500  48 00 00 08 */	b lbl_800E2508
lbl_800E2504:
/* 800E2504  38 60 00 00 */	li r3, 0
lbl_800E2508:
/* 800E2508  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E250C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E2510  7C 08 03 A6 */	mtlr r0
/* 800E2514  38 21 00 10 */	addi r1, r1, 0x10
/* 800E2518  4E 80 00 20 */	blr 
