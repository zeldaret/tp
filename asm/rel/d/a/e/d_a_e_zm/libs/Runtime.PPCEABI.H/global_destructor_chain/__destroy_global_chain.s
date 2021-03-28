lbl_8082F8F4:
/* 8082F8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082F8F8  7C 08 02 A6 */	mflr r0
/* 8082F8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082F900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082F904  3C 60 80 83 */	lis r3, __global_destructor_chain@ha
/* 8082F908  3B E3 2F 78 */	addi r31, r3, __global_destructor_chain@l
/* 8082F90C  48 00 00 20 */	b lbl_8082F92C
lbl_8082F910:
/* 8082F910  80 05 00 00 */	lwz r0, 0(r5)
/* 8082F914  90 1F 00 00 */	stw r0, 0(r31)
/* 8082F918  80 65 00 08 */	lwz r3, 8(r5)
/* 8082F91C  38 80 FF FF */	li r4, -1
/* 8082F920  81 85 00 04 */	lwz r12, 4(r5)
/* 8082F924  7D 89 03 A6 */	mtctr r12
/* 8082F928  4E 80 04 21 */	bctrl 
lbl_8082F92C:
/* 8082F92C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8082F930  28 05 00 00 */	cmplwi r5, 0
/* 8082F934  40 82 FF DC */	bne lbl_8082F910
/* 8082F938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082F93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082F940  7C 08 03 A6 */	mtlr r0
/* 8082F944  38 21 00 10 */	addi r1, r1, 0x10
/* 8082F948  4E 80 00 20 */	blr 
