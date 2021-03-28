lbl_807E8A80:
/* 807E8A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E8A84  7C 08 02 A6 */	mflr r0
/* 807E8A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E8A8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807E8A90  93 C1 00 08 */	stw r30, 8(r1)
/* 807E8A94  7C 7E 1B 78 */	mr r30, r3
/* 807E8A98  7C 9F 23 78 */	mr r31, r4
/* 807E8A9C  7C 1E F8 40 */	cmplw r30, r31
/* 807E8AA0  41 82 00 70 */	beq lbl_807E8B10
/* 807E8AA4  4B 83 02 3C */	b fopAc_IsActor__FPv
/* 807E8AA8  2C 03 00 00 */	cmpwi r3, 0
/* 807E8AAC  41 82 00 64 */	beq lbl_807E8B10
/* 807E8AB0  A8 1E 00 08 */	lha r0, 8(r30)
/* 807E8AB4  2C 00 02 09 */	cmpwi r0, 0x209
/* 807E8AB8  40 82 00 58 */	bne lbl_807E8B10
/* 807E8ABC  28 1E 00 00 */	cmplwi r30, 0
/* 807E8AC0  41 82 00 0C */	beq lbl_807E8ACC
/* 807E8AC4  80 7E 00 04 */	lwz r3, 4(r30)
/* 807E8AC8  48 00 00 08 */	b lbl_807E8AD0
lbl_807E8ACC:
/* 807E8ACC  38 60 FF FF */	li r3, -1
lbl_807E8AD0:
/* 807E8AD0  4B 83 96 68 */	b fpcM_IsCreating__FUi
/* 807E8AD4  2C 03 00 00 */	cmpwi r3, 0
/* 807E8AD8  40 82 00 38 */	bne lbl_807E8B10
/* 807E8ADC  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 807E8AE0  28 1F 00 00 */	cmplwi r31, 0
/* 807E8AE4  41 82 00 0C */	beq lbl_807E8AF0
/* 807E8AE8  80 1F 00 04 */	lwz r0, 4(r31)
/* 807E8AEC  48 00 00 08 */	b lbl_807E8AF4
lbl_807E8AF0:
/* 807E8AF0  38 00 FF FF */	li r0, -1
lbl_807E8AF4:
/* 807E8AF4  7C 03 00 40 */	cmplw r3, r0
/* 807E8AF8  40 82 00 18 */	bne lbl_807E8B10
/* 807E8AFC  3C 60 80 7F */	lis r3, data_807EFBF4@ha
/* 807E8B00  38 83 FB F4 */	addi r4, r3, data_807EFBF4@l
/* 807E8B04  88 64 00 00 */	lbz r3, 0(r4)
/* 807E8B08  38 03 00 01 */	addi r0, r3, 1
/* 807E8B0C  98 04 00 00 */	stb r0, 0(r4)
lbl_807E8B10:
/* 807E8B10  38 60 00 00 */	li r3, 0
/* 807E8B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807E8B18  83 C1 00 08 */	lwz r30, 8(r1)
/* 807E8B1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E8B20  7C 08 03 A6 */	mtlr r0
/* 807E8B24  38 21 00 10 */	addi r1, r1, 0x10
/* 807E8B28  4E 80 00 20 */	blr 
