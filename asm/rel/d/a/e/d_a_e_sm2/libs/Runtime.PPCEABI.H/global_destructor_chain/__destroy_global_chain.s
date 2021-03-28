lbl_80798AF4:
/* 80798AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80798AF8  7C 08 02 A6 */	mflr r0
/* 80798AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80798B00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80798B04  3C 60 80 7A */	lis r3, __global_destructor_chain@ha
/* 80798B08  3B E3 DB 80 */	addi r31, r3, __global_destructor_chain@l
/* 80798B0C  48 00 00 20 */	b lbl_80798B2C
lbl_80798B10:
/* 80798B10  80 05 00 00 */	lwz r0, 0(r5)
/* 80798B14  90 1F 00 00 */	stw r0, 0(r31)
/* 80798B18  80 65 00 08 */	lwz r3, 8(r5)
/* 80798B1C  38 80 FF FF */	li r4, -1
/* 80798B20  81 85 00 04 */	lwz r12, 4(r5)
/* 80798B24  7D 89 03 A6 */	mtctr r12
/* 80798B28  4E 80 04 21 */	bctrl 
lbl_80798B2C:
/* 80798B2C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80798B30  28 05 00 00 */	cmplwi r5, 0
/* 80798B34  40 82 FF DC */	bne lbl_80798B10
/* 80798B38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80798B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80798B40  7C 08 03 A6 */	mtlr r0
/* 80798B44  38 21 00 10 */	addi r1, r1, 0x10
/* 80798B48  4E 80 00 20 */	blr 
