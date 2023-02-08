lbl_806AEFE8:
/* 806AEFE8  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806AEFEC  7C 08 02 A6 */	mflr r0
/* 806AEFF0  90 01 00 54 */	stw r0, 0x54(r1)
/* 806AEFF4  39 61 00 50 */	addi r11, r1, 0x50
/* 806AEFF8  4B CB 31 D9 */	bl _savegpr_26
/* 806AEFFC  7C 7A 1B 78 */	mr r26, r3
/* 806AF000  C0 03 06 EC */	lfs f0, 0x6ec(r3)
/* 806AF004  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806AF008  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806AF00C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806AF010  3B 60 00 00 */	li r27, 0
/* 806AF014  3B E0 00 00 */	li r31, 0
/* 806AF018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AF01C  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AF020  3C 60 80 6B */	lis r3, w_eff_id_4386@ha /* 0x806B6058@ha */
/* 806AF024  3B A3 60 58 */	addi r29, r3, w_eff_id_4386@l /* 0x806B6058@l */
/* 806AF028  3C 60 80 6B */	lis r3, lit_3868@ha /* 0x806B5CFC@ha */
/* 806AF02C  3B C3 5C FC */	addi r30, r3, lit_3868@l /* 0x806B5CFC@l */
lbl_806AF030:
/* 806AF030  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 806AF034  38 80 00 00 */	li r4, 0
/* 806AF038  90 81 00 08 */	stw r4, 8(r1)
/* 806AF03C  38 00 FF FF */	li r0, -1
/* 806AF040  90 01 00 0C */	stw r0, 0xc(r1)
/* 806AF044  90 81 00 10 */	stw r4, 0x10(r1)
/* 806AF048  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AF04C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AF050  38 80 00 00 */	li r4, 0
/* 806AF054  7C BD FA 2E */	lhzx r5, r29, r31
/* 806AF058  38 DA 04 D0 */	addi r6, r26, 0x4d0
/* 806AF05C  38 FA 01 0C */	addi r7, r26, 0x10c
/* 806AF060  39 1A 04 E4 */	addi r8, r26, 0x4e4
/* 806AF064  39 21 00 20 */	addi r9, r1, 0x20
/* 806AF068  39 40 00 FF */	li r10, 0xff
/* 806AF06C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806AF070  4B 99 DA 21 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AF074  3B 7B 00 01 */	addi r27, r27, 1
/* 806AF078  2C 1B 00 05 */	cmpwi r27, 5
/* 806AF07C  3B FF 00 02 */	addi r31, r31, 2
/* 806AF080  41 80 FF B0 */	blt lbl_806AF030
/* 806AF084  39 61 00 50 */	addi r11, r1, 0x50
/* 806AF088  4B CB 31 95 */	bl _restgpr_26
/* 806AF08C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806AF090  7C 08 03 A6 */	mtlr r0
/* 806AF094  38 21 00 50 */	addi r1, r1, 0x50
/* 806AF098  4E 80 00 20 */	blr 
