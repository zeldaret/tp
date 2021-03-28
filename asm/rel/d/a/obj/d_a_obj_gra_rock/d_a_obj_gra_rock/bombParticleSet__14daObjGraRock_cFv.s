lbl_80C1157C:
/* 80C1157C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C11580  7C 08 02 A6 */	mflr r0
/* 80C11584  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C11588  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C1158C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C11590  7C 7E 1B 78 */	mr r30, r3
/* 80C11594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C11598  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80C1159C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C115A0  38 80 00 00 */	li r4, 0
/* 80C115A4  90 81 00 08 */	stw r4, 8(r1)
/* 80C115A8  38 00 FF FF */	li r0, -1
/* 80C115AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C115B0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C115B4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C115B8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C115BC  38 80 00 00 */	li r4, 0
/* 80C115C0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000875B@ha */
/* 80C115C4  38 A5 87 5B */	addi r5, r5, 0x875B /* 0x0000875B@l */
/* 80C115C8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C115CC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C115D0  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80C115D4  39 20 00 00 */	li r9, 0
/* 80C115D8  39 40 00 FF */	li r10, 0xff
/* 80C115DC  3D 60 80 C1 */	lis r11, lit_3860@ha
/* 80C115E0  C0 2B 24 0C */	lfs f1, lit_3860@l(r11)
/* 80C115E4  4B 43 B4 AC */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C115E8  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C115EC  38 80 00 00 */	li r4, 0
/* 80C115F0  90 81 00 08 */	stw r4, 8(r1)
/* 80C115F4  38 00 FF FF */	li r0, -1
/* 80C115F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C115FC  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C11600  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C11604  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C11608  38 80 00 00 */	li r4, 0
/* 80C1160C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008767@ha */
/* 80C11610  38 A5 87 67 */	addi r5, r5, 0x8767 /* 0x00008767@l */
/* 80C11614  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C11618  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C1161C  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80C11620  39 20 00 00 */	li r9, 0
/* 80C11624  39 40 00 FF */	li r10, 0xff
/* 80C11628  3D 60 80 C1 */	lis r11, lit_3860@ha
/* 80C1162C  C0 2B 24 0C */	lfs f1, lit_3860@l(r11)
/* 80C11630  4B 43 B4 60 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C11634  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C11638  38 80 00 00 */	li r4, 0
/* 80C1163C  90 81 00 08 */	stw r4, 8(r1)
/* 80C11640  38 00 FF FF */	li r0, -1
/* 80C11644  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C11648  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C1164C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C11650  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C11654  38 80 00 00 */	li r4, 0
/* 80C11658  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000875C@ha */
/* 80C1165C  38 A5 87 5C */	addi r5, r5, 0x875C /* 0x0000875C@l */
/* 80C11660  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C11664  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C11668  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80C1166C  39 20 00 00 */	li r9, 0
/* 80C11670  39 40 00 FF */	li r10, 0xff
/* 80C11674  3D 60 80 C1 */	lis r11, lit_3860@ha
/* 80C11678  C0 2B 24 0C */	lfs f1, lit_3860@l(r11)
/* 80C1167C  4B 43 B4 14 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C11680  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C11684  38 80 00 00 */	li r4, 0
/* 80C11688  90 81 00 08 */	stw r4, 8(r1)
/* 80C1168C  38 00 FF FF */	li r0, -1
/* 80C11690  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C11694  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C11698  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C1169C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C116A0  38 80 00 00 */	li r4, 0
/* 80C116A4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000875D@ha */
/* 80C116A8  38 A5 87 5D */	addi r5, r5, 0x875D /* 0x0000875D@l */
/* 80C116AC  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C116B0  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C116B4  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80C116B8  39 20 00 00 */	li r9, 0
/* 80C116BC  39 40 00 FF */	li r10, 0xff
/* 80C116C0  3D 60 80 C1 */	lis r11, lit_3860@ha
/* 80C116C4  C0 2B 24 0C */	lfs f1, lit_3860@l(r11)
/* 80C116C8  4B 43 B3 C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C116CC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80C116D0  38 80 00 00 */	li r4, 0
/* 80C116D4  90 81 00 08 */	stw r4, 8(r1)
/* 80C116D8  38 00 FF FF */	li r0, -1
/* 80C116DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C116E0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C116E4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C116E8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C116EC  38 80 00 00 */	li r4, 0
/* 80C116F0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000875E@ha */
/* 80C116F4  38 A5 87 5E */	addi r5, r5, 0x875E /* 0x0000875E@l */
/* 80C116F8  38 DE 04 D0 */	addi r6, r30, 0x4d0
/* 80C116FC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80C11700  39 1E 04 DC */	addi r8, r30, 0x4dc
/* 80C11704  39 20 00 00 */	li r9, 0
/* 80C11708  39 40 00 FF */	li r10, 0xff
/* 80C1170C  3D 60 80 C1 */	lis r11, lit_3860@ha
/* 80C11710  C0 2B 24 0C */	lfs f1, lit_3860@l(r11)
/* 80C11714  4B 43 B3 7C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C11718  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C1171C  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C11720  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C11724  7C 08 03 A6 */	mtlr r0
/* 80C11728  38 21 00 30 */	addi r1, r1, 0x30
/* 80C1172C  4E 80 00 20 */	blr 
