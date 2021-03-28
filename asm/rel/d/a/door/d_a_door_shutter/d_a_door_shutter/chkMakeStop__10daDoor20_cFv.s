lbl_80465AC0:
/* 80465AC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80465AC4  7C 08 02 A6 */	mflr r0
/* 80465AC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80465ACC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80465AD0  93 C1 00 08 */	stw r30, 8(r1)
/* 80465AD4  7C 7E 1B 78 */	mr r30, r3
/* 80465AD8  4B BD 46 C8 */	b getFrontOption__13door_param2_cFP10fopAc_ac_c
/* 80465ADC  7C 7F 1B 78 */	mr r31, r3
/* 80465AE0  7F C3 F3 78 */	mr r3, r30
/* 80465AE4  4B BD 46 C8 */	b getBackOption__13door_param2_cFP10fopAc_ac_c
/* 80465AE8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 80465AEC  28 00 00 01 */	cmplwi r0, 1
/* 80465AF0  41 82 00 20 */	beq lbl_80465B10
/* 80465AF4  28 00 00 03 */	cmplwi r0, 3
/* 80465AF8  41 82 00 18 */	beq lbl_80465B10
/* 80465AFC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80465B00  28 00 00 01 */	cmplwi r0, 1
/* 80465B04  41 82 00 0C */	beq lbl_80465B10
/* 80465B08  28 00 00 03 */	cmplwi r0, 3
/* 80465B0C  40 82 00 0C */	bne lbl_80465B18
lbl_80465B10:
/* 80465B10  38 60 00 01 */	li r3, 1
/* 80465B14  48 00 00 08 */	b lbl_80465B1C
lbl_80465B18:
/* 80465B18  38 60 00 00 */	li r3, 0
lbl_80465B1C:
/* 80465B1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80465B20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80465B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80465B28  7C 08 03 A6 */	mtlr r0
/* 80465B2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80465B30  4E 80 00 20 */	blr 
