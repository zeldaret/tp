lbl_800924D0:
/* 800924D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800924D4  7C 08 02 A6 */	mflr r0
/* 800924D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800924DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800924E0  7C 7F 1B 78 */	mr r31, r3
/* 800924E4  38 81 00 08 */	addi r4, r1, 8
/* 800924E8  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 800924EC  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 800924F0  38 A5 01 80 */	addi r5, r5, 0x180
/* 800924F4  38 C0 00 00 */	li r6, 0
/* 800924F8  4B FF 6B 95 */	bl getEvIntData__9dCamera_cFPiPci
/* 800924FC  80 01 00 08 */	lwz r0, 8(r1)
/* 80092500  2C 00 00 09 */	cmpwi r0, 9
/* 80092504  40 82 00 50 */	bne lbl_80092554
/* 80092508  A8 1F 00 7C */	lha r0, 0x7c(r31)
/* 8009250C  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80092510  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80092514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80092518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009251C  D0 03 5D 8C */	stfs f0, 0x5d8c(r3)
/* 80092520  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80092524  D0 03 5D 90 */	stfs f0, 0x5d90(r3)
/* 80092528  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8009252C  D0 03 5D 94 */	stfs f0, 0x5d94(r3)
/* 80092530  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80092534  D0 03 5D 98 */	stfs f0, 0x5d98(r3)
/* 80092538  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8009253C  D0 03 5D 9C */	stfs f0, 0x5d9c(r3)
/* 80092540  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80092544  D0 03 5D A0 */	stfs f0, 0x5da0(r3)
/* 80092548  D0 23 5D A4 */	stfs f1, 0x5da4(r3)
/* 8009254C  B0 03 5D A8 */	sth r0, 0x5da8(r3)
/* 80092550  48 00 00 1C */	b lbl_8009256C
lbl_80092554:
/* 80092554  7F E3 FB 78 */	mr r3, r31
/* 80092558  54 04 28 34 */	slwi r4, r0, 5
/* 8009255C  38 84 00 D0 */	addi r4, r4, 0xd0
/* 80092560  7C 9F 22 14 */	add r4, r31, r4
/* 80092564  38 A0 00 01 */	li r5, 1
/* 80092568  48 0D 26 FD */	bl pushInfo__9dCamera_cFPQ29dCamera_c10dCamInfo_cs
lbl_8009256C:
/* 8009256C  38 00 00 01 */	li r0, 1
/* 80092570  98 1F 01 58 */	stb r0, 0x158(r31)
/* 80092574  38 60 00 01 */	li r3, 1
/* 80092578  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8009257C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80092580  7C 08 03 A6 */	mtlr r0
/* 80092584  38 21 00 20 */	addi r1, r1, 0x20
/* 80092588  4E 80 00 20 */	blr 
