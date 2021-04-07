lbl_800A2198:
/* 800A2198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A219C  7C 08 02 A6 */	mflr r0
/* 800A21A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A21A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A21A8  7C 7F 1B 78 */	mr r31, r3
/* 800A21AC  38 7F 1B 48 */	addi r3, r31, 0x1b48
/* 800A21B0  7F E6 FB 78 */	mr r6, r31
/* 800A21B4  4B FD 5B B1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 800A21B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A21BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A21C0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800A21C4  38 9F 1B 48 */	addi r4, r31, 0x1b48
/* 800A21C8  4B FD 21 ED */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 800A21CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A21D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A21D4  7C 08 03 A6 */	mtlr r0
/* 800A21D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800A21DC  4E 80 00 20 */	blr 
