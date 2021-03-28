lbl_80679538:
/* 80679538  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8067953C  7C 08 02 A6 */	mflr r0
/* 80679540  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80679544  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80679548  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8067954C  7C 7E 1B 78 */	mr r30, r3
/* 80679550  7C 9F 23 78 */	mr r31, r4
/* 80679554  38 61 00 20 */	addi r3, r1, 0x20
/* 80679558  4B 9F E7 10 */	b __ct__11dBgS_LinChkFv
/* 8067955C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80679560  D0 01 00 08 */	stfs f0, 8(r1)
/* 80679564  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80679568  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8067956C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80679570  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80679574  3C 60 80 68 */	lis r3, lit_3789@ha
/* 80679578  C0 03 C3 FC */	lfs f0, lit_3789@l(r3)
/* 8067957C  EC 01 00 2A */	fadds f0, f1, f0
/* 80679580  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80679584  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80679588  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8067958C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80679590  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80679594  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80679598  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8067959C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 806795A0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806795A4  38 61 00 20 */	addi r3, r1, 0x20
/* 806795A8  38 81 00 14 */	addi r4, r1, 0x14
/* 806795AC  38 A1 00 08 */	addi r5, r1, 8
/* 806795B0  7F C6 F3 78 */	mr r6, r30
/* 806795B4  4B 9F E7 B0 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806795B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806795BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806795C0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806795C4  38 81 00 20 */	addi r4, r1, 0x20
/* 806795C8  4B 9F AD EC */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806795CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806795D0  41 82 00 18 */	beq lbl_806795E8
/* 806795D4  38 61 00 20 */	addi r3, r1, 0x20
/* 806795D8  38 80 FF FF */	li r4, -1
/* 806795DC  4B 9F E7 00 */	b __dt__11dBgS_LinChkFv
/* 806795E0  38 60 00 01 */	li r3, 1
/* 806795E4  48 00 00 14 */	b lbl_806795F8
lbl_806795E8:
/* 806795E8  38 61 00 20 */	addi r3, r1, 0x20
/* 806795EC  38 80 FF FF */	li r4, -1
/* 806795F0  4B 9F E6 EC */	b __dt__11dBgS_LinChkFv
/* 806795F4  38 60 00 00 */	li r3, 0
lbl_806795F8:
/* 806795F8  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 806795FC  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80679600  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80679604  7C 08 03 A6 */	mtlr r0
/* 80679608  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8067960C  4E 80 00 20 */	blr 
