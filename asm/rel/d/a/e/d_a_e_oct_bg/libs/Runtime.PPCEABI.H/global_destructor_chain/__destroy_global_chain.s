lbl_807361B4:
/* 807361B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807361B8  7C 08 02 A6 */	mflr r0
/* 807361BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 807361C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807361C4  3C 60 80 74 */	lis r3, __global_destructor_chain@ha
/* 807361C8  3B E3 A0 F8 */	addi r31, r3, __global_destructor_chain@l
/* 807361CC  48 00 00 20 */	b lbl_807361EC
lbl_807361D0:
/* 807361D0  80 05 00 00 */	lwz r0, 0(r5)
/* 807361D4  90 1F 00 00 */	stw r0, 0(r31)
/* 807361D8  80 65 00 08 */	lwz r3, 8(r5)
/* 807361DC  38 80 FF FF */	li r4, -1
/* 807361E0  81 85 00 04 */	lwz r12, 4(r5)
/* 807361E4  7D 89 03 A6 */	mtctr r12
/* 807361E8  4E 80 04 21 */	bctrl 
lbl_807361EC:
/* 807361EC  80 BF 00 00 */	lwz r5, 0(r31)
/* 807361F0  28 05 00 00 */	cmplwi r5, 0
/* 807361F4  40 82 FF DC */	bne lbl_807361D0
/* 807361F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807361FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80736200  7C 08 03 A6 */	mtlr r0
/* 80736204  38 21 00 10 */	addi r1, r1, 0x10
/* 80736208  4E 80 00 20 */	blr 
