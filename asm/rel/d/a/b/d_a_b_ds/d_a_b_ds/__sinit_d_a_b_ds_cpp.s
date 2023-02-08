lbl_805DC91C:
/* 805DC91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC920  7C 08 02 A6 */	mflr r0
/* 805DC924  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC928  3C 60 80 5E */	lis r3, l_HIO@ha /* 0x805DDABC@ha */
/* 805DC92C  38 63 DA BC */	addi r3, r3, l_HIO@l /* 0x805DDABC@l */
/* 805DC930  4B FE E8 FD */	bl __ct__12daB_DS_HIO_cFv
/* 805DC934  3C 80 80 5E */	lis r4, __dt__12daB_DS_HIO_cFv@ha /* 0x805DC89C@ha */
/* 805DC938  38 84 C8 9C */	addi r4, r4, __dt__12daB_DS_HIO_cFv@l /* 0x805DC89C@l */
/* 805DC93C  3C A0 80 5E */	lis r5, lit_3948@ha /* 0x805DDAB0@ha */
/* 805DC940  38 A5 DA B0 */	addi r5, r5, lit_3948@l /* 0x805DDAB0@l */
/* 805DC944  4B FE E8 75 */	bl __register_global_object
/* 805DC948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC94C  7C 08 03 A6 */	mtlr r0
/* 805DC950  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC954  4E 80 00 20 */	blr 
