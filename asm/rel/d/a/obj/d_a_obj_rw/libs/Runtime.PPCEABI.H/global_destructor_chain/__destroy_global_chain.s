lbl_80CC2934:
/* 80CC2934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC2938  7C 08 02 A6 */	mflr r0
/* 80CC293C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC2940  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC2944  3C 60 80 CC */	lis r3, __global_destructor_chain@ha
/* 80CC2948  3B E3 3C 78 */	addi r31, r3, __global_destructor_chain@l
/* 80CC294C  48 00 00 20 */	b lbl_80CC296C
lbl_80CC2950:
/* 80CC2950  80 05 00 00 */	lwz r0, 0(r5)
/* 80CC2954  90 1F 00 00 */	stw r0, 0(r31)
/* 80CC2958  80 65 00 08 */	lwz r3, 8(r5)
/* 80CC295C  38 80 FF FF */	li r4, -1
/* 80CC2960  81 85 00 04 */	lwz r12, 4(r5)
/* 80CC2964  7D 89 03 A6 */	mtctr r12
/* 80CC2968  4E 80 04 21 */	bctrl 
lbl_80CC296C:
/* 80CC296C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CC2970  28 05 00 00 */	cmplwi r5, 0
/* 80CC2974  40 82 FF DC */	bne lbl_80CC2950
/* 80CC2978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC297C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC2980  7C 08 03 A6 */	mtlr r0
/* 80CC2984  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC2988  4E 80 00 20 */	blr 
