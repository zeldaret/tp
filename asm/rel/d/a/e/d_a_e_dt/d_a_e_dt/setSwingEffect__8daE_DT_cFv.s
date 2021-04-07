lbl_806AF548:
/* 806AF548  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806AF54C  7C 08 02 A6 */	mflr r0
/* 806AF550  90 01 00 34 */	stw r0, 0x34(r1)
/* 806AF554  7C 68 1B 78 */	mr r8, r3
/* 806AF558  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 806AF55C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806AF560  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806AF564  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806AF568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AF56C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AF570  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806AF574  38 80 00 00 */	li r4, 0
/* 806AF578  90 81 00 08 */	stw r4, 8(r1)
/* 806AF57C  38 00 FF FF */	li r0, -1
/* 806AF580  90 01 00 0C */	stw r0, 0xc(r1)
/* 806AF584  90 81 00 10 */	stw r4, 0x10(r1)
/* 806AF588  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AF58C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AF590  38 80 00 00 */	li r4, 0
/* 806AF594  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000856C@ha */
/* 806AF598  38 A5 85 6C */	addi r5, r5, 0x856C /* 0x0000856C@l */
/* 806AF59C  38 C8 04 D0 */	addi r6, r8, 0x4d0
/* 806AF5A0  38 E8 01 0C */	addi r7, r8, 0x10c
/* 806AF5A4  39 08 04 E4 */	addi r8, r8, 0x4e4
/* 806AF5A8  39 21 00 20 */	addi r9, r1, 0x20
/* 806AF5AC  39 40 00 FF */	li r10, 0xff
/* 806AF5B0  3D 60 80 6B */	lis r11, lit_3868@ha /* 0x806B5CFC@ha */
/* 806AF5B4  C0 2B 5C FC */	lfs f1, lit_3868@l(r11)  /* 0x806B5CFC@l */
/* 806AF5B8  4B 99 D4 D9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AF5BC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806AF5C0  7C 08 03 A6 */	mtlr r0
/* 806AF5C4  38 21 00 30 */	addi r1, r1, 0x30
/* 806AF5C8  4E 80 00 20 */	blr 
