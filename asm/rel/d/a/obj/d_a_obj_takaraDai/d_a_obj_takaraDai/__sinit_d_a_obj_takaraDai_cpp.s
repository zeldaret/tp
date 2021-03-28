lbl_80D077B8:
/* 80D077B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D077BC  7C 08 02 A6 */	mflr r0
/* 80D077C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D077C4  3C 60 80 D0 */	lis r3, l_HIO@ha
/* 80D077C8  38 63 79 1C */	addi r3, r3, l_HIO@l
/* 80D077CC  4B FF F5 C1 */	bl __ct__15daTkraDai_HIO_cFv
/* 80D077D0  3C 80 80 D0 */	lis r4, __dt__15daTkraDai_HIO_cFv@ha
/* 80D077D4  38 84 77 5C */	addi r4, r4, __dt__15daTkraDai_HIO_cFv@l
/* 80D077D8  3C A0 80 D0 */	lis r5, lit_3621@ha
/* 80D077DC  38 A5 79 10 */	addi r5, r5, lit_3621@l
/* 80D077E0  4B FF F5 39 */	bl __register_global_object
/* 80D077E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D077E8  7C 08 03 A6 */	mtlr r0
/* 80D077EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D077F0  4E 80 00 20 */	blr 
