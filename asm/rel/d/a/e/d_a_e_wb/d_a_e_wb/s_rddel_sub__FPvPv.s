lbl_807DA798:
/* 807DA798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807DA79C  7C 08 02 A6 */	mflr r0
/* 807DA7A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807DA7A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807DA7A8  7C 7F 1B 78 */	mr r31, r3
/* 807DA7AC  4B 83 E5 35 */	bl fopAc_IsActor__FPv
/* 807DA7B0  2C 03 00 00 */	cmpwi r3, 0
/* 807DA7B4  41 82 00 24 */	beq lbl_807DA7D8
/* 807DA7B8  A8 1F 00 08 */	lha r0, 8(r31)
/* 807DA7BC  2C 00 01 D4 */	cmpwi r0, 0x1d4
/* 807DA7C0  40 82 00 18 */	bne lbl_807DA7D8
/* 807DA7C4  88 1F 12 9A */	lbz r0, 0x129a(r31)
/* 807DA7C8  7C 00 07 75 */	extsb. r0, r0
/* 807DA7CC  40 82 00 0C */	bne lbl_807DA7D8
/* 807DA7D0  7F E3 FB 78 */	mr r3, r31
/* 807DA7D4  4B 83 F4 A9 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_807DA7D8:
/* 807DA7D8  38 60 00 00 */	li r3, 0
/* 807DA7DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807DA7E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807DA7E4  7C 08 03 A6 */	mtlr r0
/* 807DA7E8  38 21 00 10 */	addi r1, r1, 0x10
/* 807DA7EC  4E 80 00 20 */	blr 
