lbl_80CB28F4:
/* 80CB28F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB28F8  7C 08 02 A6 */	mflr r0
/* 80CB28FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB2900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB2904  3C 60 80 CB */	lis r3, __global_destructor_chain@ha
/* 80CB2908  3B E3 41 00 */	addi r31, r3, __global_destructor_chain@l
/* 80CB290C  48 00 00 20 */	b lbl_80CB292C
lbl_80CB2910:
/* 80CB2910  80 05 00 00 */	lwz r0, 0(r5)
/* 80CB2914  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB2918  80 65 00 08 */	lwz r3, 8(r5)
/* 80CB291C  38 80 FF FF */	li r4, -1
/* 80CB2920  81 85 00 04 */	lwz r12, 4(r5)
/* 80CB2924  7D 89 03 A6 */	mtctr r12
/* 80CB2928  4E 80 04 21 */	bctrl 
lbl_80CB292C:
/* 80CB292C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CB2930  28 05 00 00 */	cmplwi r5, 0
/* 80CB2934  40 82 FF DC */	bne lbl_80CB2910
/* 80CB2938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB293C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB2940  7C 08 03 A6 */	mtlr r0
/* 80CB2944  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB2948  4E 80 00 20 */	blr 
