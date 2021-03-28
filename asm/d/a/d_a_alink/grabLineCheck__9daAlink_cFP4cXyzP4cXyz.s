lbl_800E5B6C:
/* 800E5B6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E5B70  7C 08 02 A6 */	mflr r0
/* 800E5B74  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E5B78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E5B7C  7C 7F 1B 78 */	mr r31, r3
/* 800E5B80  38 7F 1E 5C */	addi r3, r31, 0x1e5c
/* 800E5B84  80 DF 28 30 */	lwz r6, 0x2830(r31)
/* 800E5B88  4B F9 21 DD */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800E5B8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800E5B90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800E5B94  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E5B98  38 9F 1E 5C */	addi r4, r31, 0x1e5c
/* 800E5B9C  4B F8 E8 19 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 800E5BA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E5BA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E5BA8  7C 08 03 A6 */	mtlr r0
/* 800E5BAC  38 21 00 10 */	addi r1, r1, 0x10
/* 800E5BB0  4E 80 00 20 */	blr 
