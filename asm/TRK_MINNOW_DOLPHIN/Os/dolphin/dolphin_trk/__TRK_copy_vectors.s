lbl_803719F8:
/* 803719F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803719FC  7C 08 02 A6 */	mflr r0
/* 80371A00  3C 60 80 45 */	lis r3, lc_base@ha /* 0x8044F810@ha */
/* 80371A04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80371A08  38 63 F8 10 */	addi r3, r3, lc_base@l /* 0x8044F810@l */
/* 80371A0C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 80371A10  80 63 00 00 */	lwz r3, 0(r3)
/* 80371A14  28 03 00 44 */	cmplwi r3, 0x44
/* 80371A18  41 81 00 2C */	bgt lbl_80371A44
/* 80371A1C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80371A20  28 00 00 44 */	cmplwi r0, 0x44
/* 80371A24  40 81 00 20 */	ble lbl_80371A44
/* 80371A28  3C 60 80 45 */	lis r3, gTRKCPUState@ha /* 0x8044F338@ha */
/* 80371A2C  38 63 F3 38 */	addi r3, r3, gTRKCPUState@l /* 0x8044F338@l */
/* 80371A30  80 03 02 38 */	lwz r0, 0x238(r3)
/* 80371A34  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80371A38  41 82 00 0C */	beq lbl_80371A44
/* 80371A3C  38 A0 00 44 */	li r5, 0x44
/* 80371A40  48 00 00 0C */	b lbl_80371A4C
lbl_80371A44:
/* 80371A44  3C 60 80 00 */	lis r3, 0x8000 /* 0x80000044@ha */
/* 80371A48  38 A3 00 44 */	addi r5, r3, 0x0044 /* 0x80000044@l */
lbl_80371A4C:
/* 80371A4C  3C 80 80 3D */	lis r4, TRK_ISR_OFFSETS@ha /* 0x803D3268@ha */
/* 80371A50  3C 60 80 45 */	lis r3, gTRKCPUState@ha /* 0x8044F338@ha */
/* 80371A54  83 A5 00 00 */	lwz r29, 0(r5)
/* 80371A58  3B E4 32 68 */	addi r31, r4, TRK_ISR_OFFSETS@l /* 0x803D3268@l */
/* 80371A5C  3B 83 F3 38 */	addi r28, r3, gTRKCPUState@l /* 0x8044F338@l */
/* 80371A60  3B C0 00 00 */	li r30, 0
lbl_80371A64:
/* 80371A64  38 00 00 01 */	li r0, 1
/* 80371A68  7C 00 F0 30 */	slw r0, r0, r30
/* 80371A6C  7F A0 00 39 */	and. r0, r29, r0
/* 80371A70  41 82 00 90 */	beq lbl_80371B00
/* 80371A74  2C 1E 00 04 */	cmpwi r30, 4
/* 80371A78  41 82 00 88 */	beq lbl_80371B00
/* 80371A7C  3C 60 80 45 */	lis r3, lc_base@ha /* 0x8044F810@ha */
/* 80371A80  80 DF 00 00 */	lwz r6, 0(r31)
/* 80371A84  38 63 F8 10 */	addi r3, r3, lc_base@l /* 0x8044F810@l */
/* 80371A88  80 63 00 00 */	lwz r3, 0(r3)
/* 80371A8C  7C 06 18 40 */	cmplw r6, r3
/* 80371A90  41 80 00 24 */	blt lbl_80371AB4
/* 80371A94  38 03 40 00 */	addi r0, r3, 0x4000
/* 80371A98  7C 06 00 40 */	cmplw r6, r0
/* 80371A9C  40 80 00 18 */	bge lbl_80371AB4
/* 80371AA0  80 1C 02 38 */	lwz r0, 0x238(r28)
/* 80371AA4  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80371AA8  41 82 00 0C */	beq lbl_80371AB4
/* 80371AAC  7C DB 33 78 */	mr r27, r6
/* 80371AB0  48 00 00 2C */	b lbl_80371ADC
lbl_80371AB4:
/* 80371AB4  3C 00 7E 00 */	lis r0, 0x7e00
/* 80371AB8  7C 06 00 40 */	cmplw r6, r0
/* 80371ABC  41 80 00 18 */	blt lbl_80371AD4
/* 80371AC0  3C 00 80 00 */	lis r0, 0x8000
/* 80371AC4  7C 06 00 40 */	cmplw r6, r0
/* 80371AC8  41 81 00 0C */	bgt lbl_80371AD4
/* 80371ACC  7C DB 33 78 */	mr r27, r6
/* 80371AD0  48 00 00 0C */	b lbl_80371ADC
lbl_80371AD4:
/* 80371AD4  54 C0 00 BE */	clrlwi r0, r6, 2
/* 80371AD8  64 1B 80 00 */	oris r27, r0, 0x8000
lbl_80371ADC:
/* 80371ADC  3C 80 80 00 */	lis r4, __TRK_unknown_data@ha /* 0x800035E4@ha */
/* 80371AE0  7F 63 DB 78 */	mr r3, r27
/* 80371AE4  38 04 35 E4 */	addi r0, r4, __TRK_unknown_data@l /* 0x800035E4@l */
/* 80371AE8  38 A0 01 00 */	li r5, 0x100
/* 80371AEC  7C 80 32 14 */	add r4, r0, r6
/* 80371AF0  4B C9 1A D1 */	bl TRK_memcpy
/* 80371AF4  7F 63 DB 78 */	mr r3, r27
/* 80371AF8  38 80 01 00 */	li r4, 0x100
/* 80371AFC  4B FF DA 4D */	bl TRK_flush_cache
lbl_80371B00:
/* 80371B00  3B DE 00 01 */	addi r30, r30, 1
/* 80371B04  3B FF 00 04 */	addi r31, r31, 4
/* 80371B08  2C 1E 00 0E */	cmpwi r30, 0xe
/* 80371B0C  40 81 FF 58 */	ble lbl_80371A64
/* 80371B10  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 80371B14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80371B18  7C 08 03 A6 */	mtlr r0
/* 80371B1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80371B20  4E 80 00 20 */	blr 
