lbl_806AF150:
/* 806AF150  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806AF154  7C 08 02 A6 */	mflr r0
/* 806AF158  90 01 00 64 */	stw r0, 0x64(r1)
/* 806AF15C  39 61 00 60 */	addi r11, r1, 0x60
/* 806AF160  4B CB 30 69 */	bl _savegpr_24
/* 806AF164  7C 78 1B 78 */	mr r24, r3
/* 806AF168  2C 04 00 02 */	cmpwi r4, 2
/* 806AF16C  40 80 00 BC */	bge lbl_806AF228
/* 806AF170  C0 18 06 EC */	lfs f0, 0x6ec(r24)
/* 806AF174  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806AF178  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806AF17C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806AF180  C0 58 04 D8 */	lfs f2, 0x4d8(r24)
/* 806AF184  C0 38 07 28 */	lfs f1, 0x728(r24)
/* 806AF188  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 806AF18C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806AF190  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806AF194  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 806AF198  3B 20 00 00 */	li r25, 0
/* 806AF19C  3B E0 00 00 */	li r31, 0
/* 806AF1A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AF1A4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AF1A8  54 9B 08 3C */	slwi r27, r4, 1
/* 806AF1AC  3C 60 80 6B */	lis r3, w_eff_id_4434@ha /* 0x806B6070@ha */
/* 806AF1B0  3B A3 60 70 */	addi r29, r3, w_eff_id_4434@l /* 0x806B6070@l */
/* 806AF1B4  3C 60 80 6B */	lis r3, lit_3868@ha /* 0x806B5CFC@ha */
/* 806AF1B8  3B C3 5C FC */	addi r30, r3, lit_3868@l /* 0x806B5CFC@l */
lbl_806AF1BC:
/* 806AF1BC  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 806AF1C0  38 00 00 FF */	li r0, 0xff
/* 806AF1C4  90 01 00 08 */	stw r0, 8(r1)
/* 806AF1C8  38 80 00 00 */	li r4, 0
/* 806AF1CC  90 81 00 0C */	stw r4, 0xc(r1)
/* 806AF1D0  38 00 FF FF */	li r0, -1
/* 806AF1D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 806AF1D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AF1DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AF1E0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806AF1E4  3B 5F 11 60 */	addi r26, r31, 0x1160
/* 806AF1E8  7C 98 D0 2E */	lwzx r4, r24, r26
/* 806AF1EC  38 A0 00 00 */	li r5, 0
/* 806AF1F0  7C 1B CA 14 */	add r0, r27, r25
/* 806AF1F4  54 00 08 3C */	slwi r0, r0, 1
/* 806AF1F8  7C DD 02 2E */	lhzx r6, r29, r0
/* 806AF1FC  38 E1 00 20 */	addi r7, r1, 0x20
/* 806AF200  39 18 01 0C */	addi r8, r24, 0x10c
/* 806AF204  39 38 04 E4 */	addi r9, r24, 0x4e4
/* 806AF208  39 41 00 2C */	addi r10, r1, 0x2c
/* 806AF20C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806AF210  4B 99 E2 BD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AF214  7C 78 D1 2E */	stwx r3, r24, r26
/* 806AF218  3B 39 00 01 */	addi r25, r25, 1
/* 806AF21C  2C 19 00 02 */	cmpwi r25, 2
/* 806AF220  3B FF 00 04 */	addi r31, r31, 4
/* 806AF224  41 80 FF 98 */	blt lbl_806AF1BC
lbl_806AF228:
/* 806AF228  39 61 00 60 */	addi r11, r1, 0x60
/* 806AF22C  4B CB 2F E9 */	bl _restgpr_24
/* 806AF230  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806AF234  7C 08 03 A6 */	mtlr r0
/* 806AF238  38 21 00 60 */	addi r1, r1, 0x60
/* 806AF23C  4E 80 00 20 */	blr 
