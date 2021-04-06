lbl_807BC1CC:
/* 807BC1CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807BC1D0  7C 08 02 A6 */	mflr r0
/* 807BC1D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 807BC1D8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 807BC1DC  93 C1 00 48 */	stw r30, 0x48(r1)
/* 807BC1E0  7C 7F 1B 78 */	mr r31, r3
/* 807BC1E4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 807BC1E8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807BC1EC  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 807BC1F0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 807BC1F4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 807BC1F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807BC1FC  C0 03 05 F8 */	lfs f0, 0x5f8(r3)
/* 807BC200  EC 01 00 2A */	fadds f0, f1, f0
/* 807BC204  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807BC208  3C 60 80 7C */	lis r3, lit_3763@ha /* 0x807BD580@ha */
/* 807BC20C  C0 03 D5 80 */	lfs f0, lit_3763@l(r3)  /* 0x807BD580@l */
/* 807BC210  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807BC214  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807BC218  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807BC21C  80 1F 04 DC */	lwz r0, 0x4dc(r31)
/* 807BC220  90 01 00 28 */	stw r0, 0x28(r1)
/* 807BC224  A0 1F 04 E0 */	lhz r0, 0x4e0(r31)
/* 807BC228  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 807BC22C  A8 61 00 2A */	lha r3, 0x2a(r1)
/* 807BC230  38 03 80 00 */	addi r0, r3, -32768
/* 807BC234  B0 01 00 2A */	sth r0, 0x2a(r1)
/* 807BC238  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 807BC23C  28 00 00 00 */	cmplwi r0, 0
/* 807BC240  40 82 00 D4 */	bne lbl_807BC314
/* 807BC244  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BC248  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BC24C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807BC250  38 80 00 00 */	li r4, 0
/* 807BC254  90 81 00 08 */	stw r4, 8(r1)
/* 807BC258  38 00 FF FF */	li r0, -1
/* 807BC25C  90 01 00 0C */	stw r0, 0xc(r1)
/* 807BC260  90 81 00 10 */	stw r4, 0x10(r1)
/* 807BC264  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BC268  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BC26C  38 80 00 00 */	li r4, 0
/* 807BC270  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000819B@ha */
/* 807BC274  38 A5 81 9B */	addi r5, r5, 0x819B /* 0x0000819B@l */
/* 807BC278  38 C1 00 3C */	addi r6, r1, 0x3c
/* 807BC27C  38 E0 00 00 */	li r7, 0
/* 807BC280  39 01 00 28 */	addi r8, r1, 0x28
/* 807BC284  39 21 00 30 */	addi r9, r1, 0x30
/* 807BC288  39 40 00 FF */	li r10, 0xff
/* 807BC28C  3D 60 80 7C */	lis r11, lit_3764@ha /* 0x807BD584@ha */
/* 807BC290  C0 2B D5 84 */	lfs f1, lit_3764@l(r11)  /* 0x807BD584@l */
/* 807BC294  4B 89 07 FD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BC298  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807BC29C  38 80 00 00 */	li r4, 0
/* 807BC2A0  90 81 00 08 */	stw r4, 8(r1)
/* 807BC2A4  38 00 FF FF */	li r0, -1
/* 807BC2A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807BC2AC  90 81 00 10 */	stw r4, 0x10(r1)
/* 807BC2B0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BC2B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BC2B8  38 80 00 00 */	li r4, 0
/* 807BC2BC  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000819C@ha */
/* 807BC2C0  38 A5 81 9C */	addi r5, r5, 0x819C /* 0x0000819C@l */
/* 807BC2C4  38 C1 00 3C */	addi r6, r1, 0x3c
/* 807BC2C8  38 E0 00 00 */	li r7, 0
/* 807BC2CC  39 01 00 28 */	addi r8, r1, 0x28
/* 807BC2D0  39 21 00 30 */	addi r9, r1, 0x30
/* 807BC2D4  39 40 00 FF */	li r10, 0xff
/* 807BC2D8  3D 60 80 7C */	lis r11, lit_3764@ha /* 0x807BD584@ha */
/* 807BC2DC  C0 2B D5 84 */	lfs f1, lit_3764@l(r11)  /* 0x807BD584@l */
/* 807BC2E0  4B 89 07 B1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BC2E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007025E@ha */
/* 807BC2E8  38 03 02 5E */	addi r0, r3, 0x025E /* 0x0007025E@l */
/* 807BC2EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 807BC2F0  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807BC2F4  38 81 00 24 */	addi r4, r1, 0x24
/* 807BC2F8  38 A0 00 00 */	li r5, 0
/* 807BC2FC  38 C0 FF FF */	li r6, -1
/* 807BC300  81 9F 05 CC */	lwz r12, 0x5cc(r31)
/* 807BC304  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807BC308  7D 89 03 A6 */	mtctr r12
/* 807BC30C  4E 80 04 21 */	bctrl 
/* 807BC310  48 00 00 D0 */	b lbl_807BC3E0
lbl_807BC314:
/* 807BC314  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BC318  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BC31C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807BC320  38 80 00 00 */	li r4, 0
/* 807BC324  90 81 00 08 */	stw r4, 8(r1)
/* 807BC328  38 00 FF FF */	li r0, -1
/* 807BC32C  90 01 00 0C */	stw r0, 0xc(r1)
/* 807BC330  90 81 00 10 */	stw r4, 0x10(r1)
/* 807BC334  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BC338  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BC33C  38 80 00 00 */	li r4, 0
/* 807BC340  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008198@ha */
/* 807BC344  38 A5 81 98 */	addi r5, r5, 0x8198 /* 0x00008198@l */
/* 807BC348  38 C1 00 3C */	addi r6, r1, 0x3c
/* 807BC34C  38 E0 00 00 */	li r7, 0
/* 807BC350  39 01 00 28 */	addi r8, r1, 0x28
/* 807BC354  39 21 00 30 */	addi r9, r1, 0x30
/* 807BC358  39 40 00 FF */	li r10, 0xff
/* 807BC35C  3D 60 80 7C */	lis r11, lit_3764@ha /* 0x807BD584@ha */
/* 807BC360  C0 2B D5 84 */	lfs f1, lit_3764@l(r11)  /* 0x807BD584@l */
/* 807BC364  4B 89 07 2D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BC368  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 807BC36C  38 80 00 00 */	li r4, 0
/* 807BC370  90 81 00 08 */	stw r4, 8(r1)
/* 807BC374  38 00 FF FF */	li r0, -1
/* 807BC378  90 01 00 0C */	stw r0, 0xc(r1)
/* 807BC37C  90 81 00 10 */	stw r4, 0x10(r1)
/* 807BC380  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BC384  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BC388  38 80 00 00 */	li r4, 0
/* 807BC38C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008199@ha */
/* 807BC390  38 A5 81 99 */	addi r5, r5, 0x8199 /* 0x00008199@l */
/* 807BC394  38 C1 00 3C */	addi r6, r1, 0x3c
/* 807BC398  38 E0 00 00 */	li r7, 0
/* 807BC39C  39 01 00 28 */	addi r8, r1, 0x28
/* 807BC3A0  39 21 00 30 */	addi r9, r1, 0x30
/* 807BC3A4  39 40 00 FF */	li r10, 0xff
/* 807BC3A8  3D 60 80 7C */	lis r11, lit_3764@ha /* 0x807BD584@ha */
/* 807BC3AC  C0 2B D5 84 */	lfs f1, lit_3764@l(r11)  /* 0x807BD584@l */
/* 807BC3B0  4B 89 06 E1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BC3B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070269@ha */
/* 807BC3B8  38 03 02 69 */	addi r0, r3, 0x0269 /* 0x00070269@l */
/* 807BC3BC  90 01 00 20 */	stw r0, 0x20(r1)
/* 807BC3C0  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807BC3C4  38 81 00 20 */	addi r4, r1, 0x20
/* 807BC3C8  38 A0 00 00 */	li r5, 0
/* 807BC3CC  38 C0 FF FF */	li r6, -1
/* 807BC3D0  81 9F 05 CC */	lwz r12, 0x5cc(r31)
/* 807BC3D4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 807BC3D8  7D 89 03 A6 */	mtctr r12
/* 807BC3DC  4E 80 04 21 */	bctrl 
lbl_807BC3E0:
/* 807BC3E0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 807BC3E4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 807BC3E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807BC3EC  7C 08 03 A6 */	mtlr r0
/* 807BC3F0  38 21 00 50 */	addi r1, r1, 0x50
/* 807BC3F4  4E 80 00 20 */	blr 
