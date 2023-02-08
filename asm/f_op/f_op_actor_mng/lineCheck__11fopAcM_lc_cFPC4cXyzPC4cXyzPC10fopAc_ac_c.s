lbl_8001DC68:
/* 8001DC68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001DC6C  7C 08 02 A6 */	mflr r0
/* 8001DC70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001DC74  7C 67 1B 78 */	mr r7, r3
/* 8001DC78  7C 80 23 78 */	mr r0, r4
/* 8001DC7C  7C A6 2B 78 */	mr r6, r5
/* 8001DC80  3C 60 80 3F */	lis r3, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 8001DC84  38 63 1C 48 */	addi r3, r3, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 8001DC88  7C E4 3B 78 */	mr r4, r7
/* 8001DC8C  7C 05 03 78 */	mr r5, r0
/* 8001DC90  48 05 A0 D5 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8001DC94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001DC98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001DC9C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8001DCA0  3C 80 80 3F */	lis r4, mLineCheck__11fopAcM_lc_c@ha /* 0x803F1C48@ha */
/* 8001DCA4  38 84 1C 48 */	addi r4, r4, mLineCheck__11fopAcM_lc_c@l /* 0x803F1C48@l */
/* 8001DCA8  48 05 67 0D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8001DCAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001DCB0  7C 08 03 A6 */	mtlr r0
/* 8001DCB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8001DCB8  4E 80 00 20 */	blr 
