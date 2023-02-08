lbl_80807828:
/* 80807828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8080782C  7C 08 02 A6 */	mflr r0
/* 80807830  90 01 00 14 */	stw r0, 0x14(r1)
/* 80807834  3C 60 80 80 */	lis r3, l_HIO@ha /* 0x80807F08@ha */
/* 80807838  38 63 7F 08 */	addi r3, r3, l_HIO@l /* 0x80807F08@l */
/* 8080783C  4B FF CF F1 */	bl __ct__12daE_YK_HIO_cFv
/* 80807840  3C 80 80 80 */	lis r4, __dt__12daE_YK_HIO_cFv@ha /* 0x808077E0@ha */
/* 80807844  38 84 77 E0 */	addi r4, r4, __dt__12daE_YK_HIO_cFv@l /* 0x808077E0@l */
/* 80807848  3C A0 80 80 */	lis r5, lit_3957@ha /* 0x80807EFC@ha */
/* 8080784C  38 A5 7E FC */	addi r5, r5, lit_3957@l /* 0x80807EFC@l */
/* 80807850  4B FF CF 69 */	bl __register_global_object
/* 80807854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80807858  7C 08 03 A6 */	mtlr r0
/* 8080785C  38 21 00 10 */	addi r1, r1, 0x10
/* 80807860  4E 80 00 20 */	blr 
