lbl_80B5EEB4:
/* 80B5EEB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5EEB8  7C 08 02 A6 */	mflr r0
/* 80B5EEBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5EEC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5EEC4  3C 60 80 B7 */	lis r3, __global_destructor_chain@ha
/* 80B5EEC8  3B E3 8D 60 */	addi r31, r3, __global_destructor_chain@l
/* 80B5EECC  48 00 00 20 */	b lbl_80B5EEEC
lbl_80B5EED0:
/* 80B5EED0  80 05 00 00 */	lwz r0, 0(r5)
/* 80B5EED4  90 1F 00 00 */	stw r0, 0(r31)
/* 80B5EED8  80 65 00 08 */	lwz r3, 8(r5)
/* 80B5EEDC  38 80 FF FF */	li r4, -1
/* 80B5EEE0  81 85 00 04 */	lwz r12, 4(r5)
/* 80B5EEE4  7D 89 03 A6 */	mtctr r12
/* 80B5EEE8  4E 80 04 21 */	bctrl 
lbl_80B5EEEC:
/* 80B5EEEC  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B5EEF0  28 05 00 00 */	cmplwi r5, 0
/* 80B5EEF4  40 82 FF DC */	bne lbl_80B5EED0
/* 80B5EEF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5EEFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5EF00  7C 08 03 A6 */	mtlr r0
/* 80B5EF04  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5EF08  4E 80 00 20 */	blr 
