lbl_8077F250:
/* 8077F250  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8077F254  7C 08 02 A6 */	mflr r0
/* 8077F258  90 01 00 34 */	stw r0, 0x34(r1)
/* 8077F25C  39 61 00 30 */	addi r11, r1, 0x30
/* 8077F260  4B BE 2F 7C */	b _savegpr_29
/* 8077F264  7C 7D 1B 78 */	mr r29, r3
/* 8077F268  80 63 05 D4 */	lwz r3, 0x5d4(r3)
/* 8077F26C  83 C3 00 04 */	lwz r30, 4(r3)
/* 8077F270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8077F274  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8077F278  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8077F27C  38 00 00 FF */	li r0, 0xff
/* 8077F280  90 01 00 08 */	stw r0, 8(r1)
/* 8077F284  38 80 00 00 */	li r4, 0
/* 8077F288  90 81 00 0C */	stw r4, 0xc(r1)
/* 8077F28C  38 00 FF FF */	li r0, -1
/* 8077F290  90 01 00 10 */	stw r0, 0x10(r1)
/* 8077F294  90 81 00 14 */	stw r4, 0x14(r1)
/* 8077F298  90 81 00 18 */	stw r4, 0x18(r1)
/* 8077F29C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8077F2A0  80 9D 30 7C */	lwz r4, 0x307c(r29)
/* 8077F2A4  38 A0 00 00 */	li r5, 0
/* 8077F2A8  38 C0 03 87 */	li r6, 0x387
/* 8077F2AC  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 8077F2B0  39 00 00 00 */	li r8, 0
/* 8077F2B4  39 20 00 00 */	li r9, 0
/* 8077F2B8  39 40 00 00 */	li r10, 0
/* 8077F2BC  3D 60 80 78 */	lis r11, lit_3905@ha
/* 8077F2C0  C0 2B 0D CC */	lfs f1, lit_3905@l(r11)
/* 8077F2C4  4B 8C E2 08 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8077F2C8  90 7D 30 7C */	stw r3, 0x307c(r29)
/* 8077F2CC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 8077F2D0  38 63 02 10 */	addi r3, r3, 0x210
/* 8077F2D4  80 9D 30 7C */	lwz r4, 0x307c(r29)
/* 8077F2D8  4B 8C C6 40 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 8077F2DC  7C 65 1B 79 */	or. r5, r3, r3
/* 8077F2E0  41 82 00 1C */	beq lbl_8077F2FC
/* 8077F2E4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8077F2E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8077F2EC  38 63 00 60 */	addi r3, r3, 0x60
/* 8077F2F0  38 85 00 68 */	addi r4, r5, 0x68
/* 8077F2F4  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 8077F2F8  4B B0 14 E8 */	b func_802807E0
lbl_8077F2FC:
/* 8077F2FC  39 61 00 30 */	addi r11, r1, 0x30
/* 8077F300  4B BE 2F 28 */	b _restgpr_29
/* 8077F304  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8077F308  7C 08 03 A6 */	mtlr r0
/* 8077F30C  38 21 00 30 */	addi r1, r1, 0x30
/* 8077F310  4E 80 00 20 */	blr 
