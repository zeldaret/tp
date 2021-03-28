lbl_80775B04:
/* 80775B04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80775B08  7C 08 02 A6 */	mflr r0
/* 80775B0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80775B10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80775B14  7C 7F 1B 78 */	mr r31, r3
/* 80775B18  4B 8A 31 C8 */	b fopAc_IsActor__FPv
/* 80775B1C  2C 03 00 00 */	cmpwi r3, 0
/* 80775B20  41 82 00 18 */	beq lbl_80775B38
/* 80775B24  A8 1F 00 08 */	lha r0, 8(r31)
/* 80775B28  2C 00 02 E5 */	cmpwi r0, 0x2e5
/* 80775B2C  40 82 00 0C */	bne lbl_80775B38
/* 80775B30  7F E3 FB 78 */	mr r3, r31
/* 80775B34  4B 8A 41 48 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80775B38:
/* 80775B38  38 60 00 00 */	li r3, 0
/* 80775B3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80775B40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80775B44  7C 08 03 A6 */	mtlr r0
/* 80775B48  38 21 00 10 */	addi r1, r1, 0x10
/* 80775B4C  4E 80 00 20 */	blr 
