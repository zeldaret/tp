lbl_807FA14C:
/* 807FA14C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807FA150  7C 08 02 A6 */	mflr r0
/* 807FA154  90 01 00 24 */	stw r0, 0x24(r1)
/* 807FA158  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 807FA15C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 807FA160  7C 7F 1B 78 */	mr r31, r3
/* 807FA164  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 807FA168  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 807FA16C  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 807FA170  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 807FA174  2C 00 00 01 */	cmpwi r0, 1
/* 807FA178  41 82 00 6C */	beq lbl_807FA1E4
/* 807FA17C  40 80 00 F0 */	bge lbl_807FA26C
/* 807FA180  2C 00 00 00 */	cmpwi r0, 0
/* 807FA184  40 80 00 08 */	bge lbl_807FA18C
/* 807FA188  48 00 00 E4 */	b lbl_807FA26C
lbl_807FA18C:
/* 807FA18C  38 00 00 01 */	li r0, 1
/* 807FA190  98 1F 0B A8 */	stb r0, 0xba8(r31)
/* 807FA194  38 80 00 04 */	li r4, 4
/* 807FA198  3C A0 80 80 */	lis r5, lit_3802@ha
/* 807FA19C  C0 25 CC B8 */	lfs f1, lit_3802@l(r5)
/* 807FA1A0  38 A0 00 00 */	li r5, 0
/* 807FA1A4  3C C0 80 80 */	lis r6, lit_3803@ha
/* 807FA1A8  C0 46 CC BC */	lfs f2, lit_3803@l(r6)
/* 807FA1AC  4B FF E1 E9 */	bl anm_init__FP10e_yg_classifUcf
/* 807FA1B0  38 00 00 01 */	li r0, 1
/* 807FA1B4  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807FA1B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701D6@ha */
/* 807FA1BC  38 03 01 D6 */	addi r0, r3, 0x01D6 /* 0x000701D6@l */
/* 807FA1C0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807FA1C4  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 807FA1C8  38 81 00 0C */	addi r4, r1, 0xc
/* 807FA1CC  38 A0 FF FF */	li r5, -1
/* 807FA1D0  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 807FA1D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FA1D8  7D 89 03 A6 */	mtctr r12
/* 807FA1DC  4E 80 04 21 */	bctrl 
/* 807FA1E0  48 00 00 8C */	b lbl_807FA26C
lbl_807FA1E4:
/* 807FA1E4  7F C3 F3 78 */	mr r3, r30
/* 807FA1E8  7F E4 FB 78 */	mr r4, r31
/* 807FA1EC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 807FA1F0  81 8C 01 E0 */	lwz r12, 0x1e0(r12)
/* 807FA1F4  7D 89 03 A6 */	mtctr r12
/* 807FA1F8  4E 80 04 21 */	bctrl 
/* 807FA1FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807FA200  40 82 00 6C */	bne lbl_807FA26C
/* 807FA204  38 00 00 04 */	li r0, 4
/* 807FA208  B0 1F 06 7E */	sth r0, 0x67e(r31)
/* 807FA20C  38 00 00 00 */	li r0, 0
/* 807FA210  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 807FA214  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701D2@ha */
/* 807FA218  38 03 01 D2 */	addi r0, r3, 0x01D2 /* 0x000701D2@l */
/* 807FA21C  90 01 00 08 */	stw r0, 8(r1)
/* 807FA220  38 7F 05 D8 */	addi r3, r31, 0x5d8
/* 807FA224  38 81 00 08 */	addi r4, r1, 8
/* 807FA228  38 A0 FF FF */	li r5, -1
/* 807FA22C  81 9F 05 D8 */	lwz r12, 0x5d8(r31)
/* 807FA230  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807FA234  7D 89 03 A6 */	mtctr r12
/* 807FA238  4E 80 04 21 */	bctrl 
/* 807FA23C  38 00 00 00 */	li r0, 0
/* 807FA240  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 807FA244  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 807FA248  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 807FA24C  41 82 00 14 */	beq lbl_807FA260
/* 807FA250  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807FA254  38 03 C0 00 */	addi r0, r3, -16384
/* 807FA258  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 807FA25C  48 00 00 10 */	b lbl_807FA26C
lbl_807FA260:
/* 807FA260  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 807FA264  38 03 40 00 */	addi r0, r3, 0x4000
/* 807FA268  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_807FA26C:
/* 807FA26C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 807FA270  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 807FA274  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807FA278  7C 08 03 A6 */	mtlr r0
/* 807FA27C  38 21 00 20 */	addi r1, r1, 0x20
/* 807FA280  4E 80 00 20 */	blr 
