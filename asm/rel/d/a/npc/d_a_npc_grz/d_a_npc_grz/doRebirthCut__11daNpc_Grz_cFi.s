lbl_809ED228:
/* 809ED228  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 809ED22C  7C 08 02 A6 */	mflr r0
/* 809ED230  90 01 00 74 */	stw r0, 0x74(r1)
/* 809ED234  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 809ED238  93 C1 00 68 */	stw r30, 0x68(r1)
/* 809ED23C  7C 7E 1B 78 */	mr r30, r3
/* 809ED240  3B E0 00 00 */	li r31, 0
/* 809ED244  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809ED248  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809ED24C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 809ED250  4B 65 AA FD */	bl getIsAddvance__16dEvent_manager_cFi
/* 809ED254  2C 03 00 00 */	cmpwi r3, 0
/* 809ED258  41 82 00 14 */	beq lbl_809ED26C
/* 809ED25C  3C 60 80 9F */	lis r3, m__17daNpc_Grz_Param_c@ha /* 0x809EF1F4@ha */
/* 809ED260  38 63 F1 F4 */	addi r3, r3, m__17daNpc_Grz_Param_c@l /* 0x809EF1F4@l */
/* 809ED264  A8 03 00 6C */	lha r0, 0x6c(r3)
/* 809ED268  90 1E 1A 8C */	stw r0, 0x1a8c(r30)
lbl_809ED26C:
/* 809ED26C  38 7E 1A 8C */	addi r3, r30, 0x1a8c
/* 809ED270  48 00 1D F5 */	bl func_809EF064
/* 809ED274  2C 03 00 00 */	cmpwi r3, 0
/* 809ED278  40 82 00 1C */	bne lbl_809ED294
/* 809ED27C  38 00 00 00 */	li r0, 0
/* 809ED280  B0 1E 1A 90 */	sth r0, 0x1a90(r30)
/* 809ED284  B0 1E 1A 92 */	sth r0, 0x1a92(r30)
/* 809ED288  B0 1E 1A 94 */	sth r0, 0x1a94(r30)
/* 809ED28C  3B E0 00 01 */	li r31, 1
/* 809ED290  48 00 01 28 */	b lbl_809ED3B8
lbl_809ED294:
/* 809ED294  3C 60 80 9F */	lis r3, m__17daNpc_Grz_Param_c@ha /* 0x809EF1F4@ha */
/* 809ED298  38 A3 F1 F4 */	addi r5, r3, m__17daNpc_Grz_Param_c@l /* 0x809EF1F4@l */
/* 809ED29C  A8 05 00 6E */	lha r0, 0x6e(r5)
/* 809ED2A0  3C 60 80 9F */	lis r3, lit_6047@ha /* 0x809EF60C@ha */
/* 809ED2A4  C8 63 F6 0C */	lfd f3, lit_6047@l(r3)  /* 0x809EF60C@l */
/* 809ED2A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809ED2AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 809ED2B0  3C 80 43 30 */	lis r4, 0x4330
/* 809ED2B4  90 81 00 08 */	stw r4, 8(r1)
/* 809ED2B8  C8 01 00 08 */	lfd f0, 8(r1)
/* 809ED2BC  EC 40 18 28 */	fsubs f2, f0, f3
/* 809ED2C0  80 1E 1A 8C */	lwz r0, 0x1a8c(r30)
/* 809ED2C4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809ED2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ED2CC  90 81 00 10 */	stw r4, 0x10(r1)
/* 809ED2D0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 809ED2D4  EC 20 18 28 */	fsubs f1, f0, f3
/* 809ED2D8  A8 05 00 6C */	lha r0, 0x6c(r5)
/* 809ED2DC  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 809ED2E0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 809ED2E4  90 81 00 18 */	stw r4, 0x18(r1)
/* 809ED2E8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 809ED2EC  EC 00 18 28 */	fsubs f0, f0, f3
/* 809ED2F0  EC 01 00 24 */	fdivs f0, f1, f0
/* 809ED2F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 809ED2F8  FC 00 00 1E */	fctiwz f0, f0
/* 809ED2FC  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 809ED300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809ED304  B0 1E 1A 90 */	sth r0, 0x1a90(r30)
/* 809ED308  A8 05 00 70 */	lha r0, 0x70(r5)
/* 809ED30C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809ED310  90 01 00 2C */	stw r0, 0x2c(r1)
/* 809ED314  90 81 00 28 */	stw r4, 0x28(r1)
/* 809ED318  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 809ED31C  EC 40 18 28 */	fsubs f2, f0, f3
/* 809ED320  80 1E 1A 8C */	lwz r0, 0x1a8c(r30)
/* 809ED324  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809ED328  90 01 00 34 */	stw r0, 0x34(r1)
/* 809ED32C  90 81 00 30 */	stw r4, 0x30(r1)
/* 809ED330  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 809ED334  EC 20 18 28 */	fsubs f1, f0, f3
/* 809ED338  90 61 00 3C */	stw r3, 0x3c(r1)
/* 809ED33C  90 81 00 38 */	stw r4, 0x38(r1)
/* 809ED340  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 809ED344  EC 00 18 28 */	fsubs f0, f0, f3
/* 809ED348  EC 01 00 24 */	fdivs f0, f1, f0
/* 809ED34C  EC 02 00 32 */	fmuls f0, f2, f0
/* 809ED350  FC 00 00 1E */	fctiwz f0, f0
/* 809ED354  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 809ED358  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809ED35C  B0 1E 1A 92 */	sth r0, 0x1a92(r30)
/* 809ED360  A8 05 00 72 */	lha r0, 0x72(r5)
/* 809ED364  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809ED368  90 01 00 4C */	stw r0, 0x4c(r1)
/* 809ED36C  90 81 00 48 */	stw r4, 0x48(r1)
/* 809ED370  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 809ED374  EC 40 18 28 */	fsubs f2, f0, f3
/* 809ED378  80 1E 1A 8C */	lwz r0, 0x1a8c(r30)
/* 809ED37C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 809ED380  90 01 00 54 */	stw r0, 0x54(r1)
/* 809ED384  90 81 00 50 */	stw r4, 0x50(r1)
/* 809ED388  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 809ED38C  EC 20 18 28 */	fsubs f1, f0, f3
/* 809ED390  90 61 00 5C */	stw r3, 0x5c(r1)
/* 809ED394  90 81 00 58 */	stw r4, 0x58(r1)
/* 809ED398  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 809ED39C  EC 00 18 28 */	fsubs f0, f0, f3
/* 809ED3A0  EC 01 00 24 */	fdivs f0, f1, f0
/* 809ED3A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 809ED3A8  FC 00 00 1E */	fctiwz f0, f0
/* 809ED3AC  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 809ED3B0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809ED3B4  B0 1E 1A 94 */	sth r0, 0x1a94(r30)
lbl_809ED3B8:
/* 809ED3B8  7F E3 FB 78 */	mr r3, r31
/* 809ED3BC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 809ED3C0  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 809ED3C4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 809ED3C8  7C 08 03 A6 */	mtlr r0
/* 809ED3CC  38 21 00 70 */	addi r1, r1, 0x70
/* 809ED3D0  4E 80 00 20 */	blr 
