lbl_80542EB4:
/* 80542EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80542EB8  7C 08 02 A6 */	mflr r0
/* 80542EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80542EC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80542EC4  3C 60 80 55 */	lis r3, __global_destructor_chain@ha
/* 80542EC8  3B E3 AF 78 */	addi r31, r3, __global_destructor_chain@l
/* 80542ECC  48 00 00 20 */	b lbl_80542EEC
lbl_80542ED0:
/* 80542ED0  80 05 00 00 */	lwz r0, 0(r5)
/* 80542ED4  90 1F 00 00 */	stw r0, 0(r31)
/* 80542ED8  80 65 00 08 */	lwz r3, 8(r5)
/* 80542EDC  38 80 FF FF */	li r4, -1
/* 80542EE0  81 85 00 04 */	lwz r12, 4(r5)
/* 80542EE4  7D 89 03 A6 */	mtctr r12
/* 80542EE8  4E 80 04 21 */	bctrl 
lbl_80542EEC:
/* 80542EEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80542EF0  28 05 00 00 */	cmplwi r5, 0
/* 80542EF4  40 82 FF DC */	bne lbl_80542ED0
/* 80542EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80542EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80542F00  7C 08 03 A6 */	mtlr r0
/* 80542F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80542F08  4E 80 00 20 */	blr 
