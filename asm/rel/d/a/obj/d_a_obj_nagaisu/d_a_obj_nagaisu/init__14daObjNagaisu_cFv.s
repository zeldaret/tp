lbl_80C9F914:
/* 80C9F914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9F918  7C 08 02 A6 */	mflr r0
/* 80C9F91C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9F920  7C 66 1B 78 */	mr r6, r3
/* 80C9F924  38 66 05 78 */	addi r3, r6, 0x578
/* 80C9F928  38 80 00 FF */	li r4, 0xff
/* 80C9F92C  38 A0 00 00 */	li r5, 0
/* 80C9F930  4B 3E 3F 30 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C9F934  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9F938  7C 08 03 A6 */	mtlr r0
/* 80C9F93C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9F940  4E 80 00 20 */	blr 
