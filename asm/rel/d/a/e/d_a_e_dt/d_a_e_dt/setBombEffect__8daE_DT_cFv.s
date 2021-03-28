lbl_806AF740:
/* 806AF740  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806AF744  7C 08 02 A6 */	mflr r0
/* 806AF748  90 01 00 44 */	stw r0, 0x44(r1)
/* 806AF74C  39 61 00 40 */	addi r11, r1, 0x40
/* 806AF750  4B CB 2A 78 */	b _savegpr_24
/* 806AF754  7C 7D 1B 78 */	mr r29, r3
/* 806AF758  3B C0 00 00 */	li r30, 0
/* 806AF75C  3B 80 00 00 */	li r28, 0
/* 806AF760  3B 60 00 00 */	li r27, 0
/* 806AF764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806AF768  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806AF76C  3C 60 80 6B */	lis r3, w_eff_id_4635@ha
/* 806AF770  3B 03 60 8C */	addi r24, r3, w_eff_id_4635@l
/* 806AF774  3C 60 80 6B */	lis r3, lit_3868@ha
/* 806AF778  3B 23 5C FC */	addi r25, r3, lit_3868@l
lbl_806AF77C:
/* 806AF77C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AF780  38 00 00 FF */	li r0, 0xff
/* 806AF784  90 01 00 08 */	stw r0, 8(r1)
/* 806AF788  38 80 00 00 */	li r4, 0
/* 806AF78C  90 81 00 0C */	stw r4, 0xc(r1)
/* 806AF790  38 00 FF FF */	li r0, -1
/* 806AF794  90 01 00 10 */	stw r0, 0x10(r1)
/* 806AF798  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AF79C  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AF7A0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806AF7A4  3B 5B 11 4C */	addi r26, r27, 0x114c
/* 806AF7A8  7C 9D D0 2E */	lwzx r4, r29, r26
/* 806AF7AC  38 A0 00 00 */	li r5, 0
/* 806AF7B0  7C D8 E2 2E */	lhzx r6, r24, r28
/* 806AF7B4  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 806AF7B8  39 1D 01 0C */	addi r8, r29, 0x10c
/* 806AF7BC  39 3D 04 E4 */	addi r9, r29, 0x4e4
/* 806AF7C0  39 40 00 00 */	li r10, 0
/* 806AF7C4  C0 39 00 00 */	lfs f1, 0(r25)
/* 806AF7C8  4B 99 DD 04 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AF7CC  7C 7D D1 2E */	stwx r3, r29, r26
/* 806AF7D0  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 806AF7D4  38 63 02 10 */	addi r3, r3, 0x210
/* 806AF7D8  7C 9D D0 2E */	lwzx r4, r29, r26
/* 806AF7DC  4B 99 C1 3C */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806AF7E0  7C 7A 1B 79 */	or. r26, r3, r3
/* 806AF7E4  41 82 00 38 */	beq lbl_806AF81C
/* 806AF7E8  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 806AF7EC  80 63 00 04 */	lwz r3, 4(r3)
/* 806AF7F0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AF7F4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AF7F8  38 63 04 20 */	addi r3, r3, 0x420
/* 806AF7FC  38 9A 00 68 */	addi r4, r26, 0x68
/* 806AF800  38 BA 00 98 */	addi r5, r26, 0x98
/* 806AF804  38 DA 00 A4 */	addi r6, r26, 0xa4
/* 806AF808  4B BD 10 00 */	b func_80280808
/* 806AF80C  C0 3A 00 9C */	lfs f1, 0x9c(r26)
/* 806AF810  C0 1A 00 98 */	lfs f0, 0x98(r26)
/* 806AF814  D0 1A 00 B0 */	stfs f0, 0xb0(r26)
/* 806AF818  D0 3A 00 B4 */	stfs f1, 0xb4(r26)
lbl_806AF81C:
/* 806AF81C  3B DE 00 01 */	addi r30, r30, 1
/* 806AF820  2C 1E 00 04 */	cmpwi r30, 4
/* 806AF824  3B 9C 00 02 */	addi r28, r28, 2
/* 806AF828  3B 7B 00 04 */	addi r27, r27, 4
/* 806AF82C  41 80 FF 50 */	blt lbl_806AF77C
/* 806AF830  39 61 00 40 */	addi r11, r1, 0x40
/* 806AF834  4B CB 29 E0 */	b _restgpr_24
/* 806AF838  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806AF83C  7C 08 03 A6 */	mtlr r0
/* 806AF840  38 21 00 40 */	addi r1, r1, 0x40
/* 806AF844  4E 80 00 20 */	blr 
