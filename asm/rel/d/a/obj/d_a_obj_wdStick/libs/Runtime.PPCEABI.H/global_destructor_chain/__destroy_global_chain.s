lbl_80D31AF4:
/* 80D31AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D31AF8  7C 08 02 A6 */	mflr r0
/* 80D31AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D31B00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D31B04  3C 60 80 D3 */	lis r3, __global_destructor_chain@ha
/* 80D31B08  3B E3 44 10 */	addi r31, r3, __global_destructor_chain@l
/* 80D31B0C  48 00 00 20 */	b lbl_80D31B2C
lbl_80D31B10:
/* 80D31B10  80 05 00 00 */	lwz r0, 0(r5)
/* 80D31B14  90 1F 00 00 */	stw r0, 0(r31)
/* 80D31B18  80 65 00 08 */	lwz r3, 8(r5)
/* 80D31B1C  38 80 FF FF */	li r4, -1
/* 80D31B20  81 85 00 04 */	lwz r12, 4(r5)
/* 80D31B24  7D 89 03 A6 */	mtctr r12
/* 80D31B28  4E 80 04 21 */	bctrl 
lbl_80D31B2C:
/* 80D31B2C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D31B30  28 05 00 00 */	cmplwi r5, 0
/* 80D31B34  40 82 FF DC */	bne lbl_80D31B10
/* 80D31B38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D31B3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D31B40  7C 08 03 A6 */	mtlr r0
/* 80D31B44  38 21 00 10 */	addi r1, r1, 0x10
/* 80D31B48  4E 80 00 20 */	blr 
