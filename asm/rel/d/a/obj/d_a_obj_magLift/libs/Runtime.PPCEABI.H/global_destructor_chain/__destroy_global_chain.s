lbl_80C8D9D4:
/* 80C8D9D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8D9D8  7C 08 02 A6 */	mflr r0
/* 80C8D9DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8D9E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8D9E4  3C 60 80 C9 */	lis r3, __global_destructor_chain@ha
/* 80C8D9E8  3B E3 E8 40 */	addi r31, r3, __global_destructor_chain@l
/* 80C8D9EC  48 00 00 20 */	b lbl_80C8DA0C
lbl_80C8D9F0:
/* 80C8D9F0  80 05 00 00 */	lwz r0, 0(r5)
/* 80C8D9F4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8D9F8  80 65 00 08 */	lwz r3, 8(r5)
/* 80C8D9FC  38 80 FF FF */	li r4, -1
/* 80C8DA00  81 85 00 04 */	lwz r12, 4(r5)
/* 80C8DA04  7D 89 03 A6 */	mtctr r12
/* 80C8DA08  4E 80 04 21 */	bctrl 
lbl_80C8DA0C:
/* 80C8DA0C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80C8DA10  28 05 00 00 */	cmplwi r5, 0
/* 80C8DA14  40 82 FF DC */	bne lbl_80C8D9F0
/* 80C8DA18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8DA1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8DA20  7C 08 03 A6 */	mtlr r0
/* 80C8DA24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8DA28  4E 80 00 20 */	blr 
