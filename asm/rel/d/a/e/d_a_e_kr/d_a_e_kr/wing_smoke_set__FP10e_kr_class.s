lbl_8070329C:
/* 8070329C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 807032A0  7C 08 02 A6 */	mflr r0
/* 807032A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 807032A8  39 61 00 40 */	addi r11, r1, 0x40
/* 807032AC  4B C5 EF 25 */	bl _savegpr_26
/* 807032B0  7C 7E 1B 78 */	mr r30, r3
/* 807032B4  3C 60 80 70 */	lis r3, lit_3903@ha /* 0x80705AF8@ha */
/* 807032B8  3B 43 5A F8 */	addi r26, r3, lit_3903@l /* 0x80705AF8@l */
/* 807032BC  3B E0 00 00 */	li r31, 0
/* 807032C0  3B A0 00 00 */	li r29, 0
/* 807032C4  3C 60 80 70 */	lis r3, wing_j@ha /* 0x80705DCC@ha */
/* 807032C8  3B 63 5D CC */	addi r27, r3, wing_j@l /* 0x80705DCC@l */
/* 807032CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807032D0  3B 83 07 68 */	addi r28, r3, calc_mtx@l /* 0x80450768@l */
lbl_807032D4:
/* 807032D4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807032D8  80 63 00 04 */	lwz r3, 4(r3)
/* 807032DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807032E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807032E4  7C 1B E8 2E */	lwzx r0, r27, r29
/* 807032E8  1C 00 00 30 */	mulli r0, r0, 0x30
/* 807032EC  7C 63 02 14 */	add r3, r3, r0
/* 807032F0  80 9C 00 00 */	lwz r4, 0(r28)
/* 807032F4  4B C4 31 BD */	bl PSMTXCopy
/* 807032F8  2C 1F 00 01 */	cmpwi r31, 1
/* 807032FC  41 81 00 1C */	bgt lbl_80703318
/* 80703300  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80703304  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80703308  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8070330C  C0 1A 00 7C */	lfs f0, 0x7c(r26)
/* 80703310  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80703314  48 00 00 18 */	b lbl_8070332C
lbl_80703318:
/* 80703318  C0 1A 00 04 */	lfs f0, 4(r26)
/* 8070331C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80703320  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80703324  C0 1A 00 FC */	lfs f0, 0xfc(r26)
/* 80703328  D0 01 00 1C */	stfs f0, 0x1c(r1)
lbl_8070332C:
/* 8070332C  38 61 00 14 */	addi r3, r1, 0x14
/* 80703330  38 81 00 08 */	addi r4, r1, 8
/* 80703334  4B B6 DB B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80703338  38 1F 00 01 */	addi r0, r31, 1
/* 8070333C  54 00 10 3A */	slwi r0, r0, 2
/* 80703340  7C 9E 02 14 */	add r4, r30, r0
/* 80703344  38 64 0E C4 */	addi r3, r4, 0xec4
/* 80703348  38 84 0E D8 */	addi r4, r4, 0xed8
/* 8070334C  38 A1 00 08 */	addi r5, r1, 8
/* 80703350  38 C0 00 00 */	li r6, 0
/* 80703354  C0 3A 00 F0 */	lfs f1, 0xf0(r26)
/* 80703358  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8070335C  39 00 00 00 */	li r8, 0
/* 80703360  4B 91 9C C1 */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80703364  3B FF 00 01 */	addi r31, r31, 1
/* 80703368  2C 1F 00 03 */	cmpwi r31, 3
/* 8070336C  3B BD 00 04 */	addi r29, r29, 4
/* 80703370  40 81 FF 64 */	ble lbl_807032D4
/* 80703374  39 61 00 40 */	addi r11, r1, 0x40
/* 80703378  4B C5 EE A5 */	bl _restgpr_26
/* 8070337C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80703380  7C 08 03 A6 */	mtlr r0
/* 80703384  38 21 00 40 */	addi r1, r1, 0x40
/* 80703388  4E 80 00 20 */	blr 
