lbl_804A006C:
/* 804A006C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804A0070  7C 08 02 A6 */	mflr r0
/* 804A0074  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A0078  39 61 00 30 */	addi r11, r1, 0x30
/* 804A007C  4B EC 21 60 */	b _savegpr_29
/* 804A0080  7C 7D 1B 78 */	mr r29, r3
/* 804A0084  7C 9E 23 78 */	mr r30, r4
/* 804A0088  7C A6 2B 78 */	mr r6, r5
/* 804A008C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804A0090  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 804A0094  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804A0098  38 00 00 FF */	li r0, 0xff
/* 804A009C  90 01 00 08 */	stw r0, 8(r1)
/* 804A00A0  38 80 00 00 */	li r4, 0
/* 804A00A4  90 81 00 0C */	stw r4, 0xc(r1)
/* 804A00A8  38 00 FF FF */	li r0, -1
/* 804A00AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A00B0  90 81 00 14 */	stw r4, 0x14(r1)
/* 804A00B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 804A00B8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804A00BC  80 9E 00 00 */	lwz r4, 0(r30)
/* 804A00C0  38 A0 00 00 */	li r5, 0
/* 804A00C4  38 FD 04 D0 */	addi r7, r29, 0x4d0
/* 804A00C8  39 1D 01 0C */	addi r8, r29, 0x10c
/* 804A00CC  39 20 00 00 */	li r9, 0
/* 804A00D0  39 40 00 00 */	li r10, 0
/* 804A00D4  3D 60 80 4A */	lis r11, lit_4945@ha
/* 804A00D8  C0 2B 29 10 */	lfs f1, lit_4945@l(r11)
/* 804A00DC  4B BA D3 F0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804A00E0  90 7E 00 00 */	stw r3, 0(r30)
/* 804A00E4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 804A00E8  38 63 02 10 */	addi r3, r3, 0x210
/* 804A00EC  80 9E 00 00 */	lwz r4, 0(r30)
/* 804A00F0  4B BA B8 28 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 804A00F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 804A00F8  41 82 00 18 */	beq lbl_804A0110
/* 804A00FC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 804A0100  38 63 00 24 */	addi r3, r3, 0x24
/* 804A0104  38 9F 00 68 */	addi r4, r31, 0x68
/* 804A0108  38 BF 00 A4 */	addi r5, r31, 0xa4
/* 804A010C  4B DE 06 D4 */	b func_802807E0
lbl_804A0110:
/* 804A0110  7F E3 FB 78 */	mr r3, r31
/* 804A0114  39 61 00 30 */	addi r11, r1, 0x30
/* 804A0118  4B EC 21 10 */	b _restgpr_29
/* 804A011C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804A0120  7C 08 03 A6 */	mtlr r0
/* 804A0124  38 21 00 30 */	addi r1, r1, 0x30
/* 804A0128  4E 80 00 20 */	blr 
