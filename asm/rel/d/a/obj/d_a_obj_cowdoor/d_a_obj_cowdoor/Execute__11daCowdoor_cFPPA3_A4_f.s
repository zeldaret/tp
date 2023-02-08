lbl_80BCCA1C:
/* 80BCCA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCCA20  7C 08 02 A6 */	mflr r0
/* 80BCCA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCCA28  38 03 05 6C */	addi r0, r3, 0x56c
/* 80BCCA2C  90 04 00 00 */	stw r0, 0(r4)
/* 80BCCA30  4B FF FD C9 */	bl setBaseMtx__11daCowdoor_cFv
/* 80BCCA34  38 60 00 01 */	li r3, 1
/* 80BCCA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCCA3C  7C 08 03 A6 */	mtlr r0
/* 80BCCA40  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCCA44  4E 80 00 20 */	blr 
