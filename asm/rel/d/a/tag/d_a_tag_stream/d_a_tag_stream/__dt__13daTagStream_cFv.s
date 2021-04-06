lbl_80D63A98:
/* 80D63A98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63A9C  7C 08 02 A6 */	mflr r0
/* 80D63AA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63AA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D63AA8  93 C1 00 08 */	stw r30, 8(r1)
/* 80D63AAC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D63AB0  7C 9F 23 78 */	mr r31, r4
/* 80D63AB4  41 82 00 60 */	beq lbl_80D63B14
/* 80D63AB8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 80D63ABC  28 03 00 00 */	cmplwi r3, 0
/* 80D63AC0  41 82 00 0C */	beq lbl_80D63ACC
/* 80D63AC4  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80D63AC8  90 03 05 74 */	stw r0, 0x574(r3)
lbl_80D63ACC:
/* 80D63ACC  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D63AD0  28 03 00 00 */	cmplwi r3, 0
/* 80D63AD4  41 82 00 0C */	beq lbl_80D63AE0
/* 80D63AD8  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 80D63ADC  90 03 05 70 */	stw r0, 0x570(r3)
lbl_80D63AE0:
/* 80D63AE0  3C 60 80 45 */	lis r3, m_top__13daTagStream_c@ha /* 0x80450DA4@ha */
/* 80D63AE4  84 03 0D A4 */	lwzu r0, m_top__13daTagStream_c@l(r3)  /* 0x80450DA4@l */
/* 80D63AE8  7C 00 F0 40 */	cmplw r0, r30
/* 80D63AEC  40 82 00 0C */	bne lbl_80D63AF8
/* 80D63AF0  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80D63AF4  90 03 00 00 */	stw r0, 0(r3)
lbl_80D63AF8:
/* 80D63AF8  7F C3 F3 78 */	mr r3, r30
/* 80D63AFC  38 80 00 00 */	li r4, 0
/* 80D63B00  4B 2B 51 8D */	bl __dt__10fopAc_ac_cFv
/* 80D63B04  7F E0 07 35 */	extsh. r0, r31
/* 80D63B08  40 81 00 0C */	ble lbl_80D63B14
/* 80D63B0C  7F C3 F3 78 */	mr r3, r30
/* 80D63B10  4B 56 B2 2D */	bl __dl__FPv
lbl_80D63B14:
/* 80D63B14  7F C3 F3 78 */	mr r3, r30
/* 80D63B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D63B1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D63B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D63B24  7C 08 03 A6 */	mtlr r0
/* 80D63B28  38 21 00 10 */	addi r1, r1, 0x10
/* 80D63B2C  4E 80 00 20 */	blr 
