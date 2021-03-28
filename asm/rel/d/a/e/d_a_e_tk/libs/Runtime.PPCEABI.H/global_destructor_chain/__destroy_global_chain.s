lbl_807B8194:
/* 807B8194  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B8198  7C 08 02 A6 */	mflr r0
/* 807B819C  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B81A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B81A4  3C 60 80 7C */	lis r3, __global_destructor_chain@ha
/* 807B81A8  3B E3 A4 30 */	addi r31, r3, __global_destructor_chain@l
/* 807B81AC  48 00 00 20 */	b lbl_807B81CC
lbl_807B81B0:
/* 807B81B0  80 05 00 00 */	lwz r0, 0(r5)
/* 807B81B4  90 1F 00 00 */	stw r0, 0(r31)
/* 807B81B8  80 65 00 08 */	lwz r3, 8(r5)
/* 807B81BC  38 80 FF FF */	li r4, -1
/* 807B81C0  81 85 00 04 */	lwz r12, 4(r5)
/* 807B81C4  7D 89 03 A6 */	mtctr r12
/* 807B81C8  4E 80 04 21 */	bctrl 
lbl_807B81CC:
/* 807B81CC  80 BF 00 00 */	lwz r5, 0(r31)
/* 807B81D0  28 05 00 00 */	cmplwi r5, 0
/* 807B81D4  40 82 FF DC */	bne lbl_807B81B0
/* 807B81D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B81DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B81E0  7C 08 03 A6 */	mtlr r0
/* 807B81E4  38 21 00 10 */	addi r1, r1, 0x10
/* 807B81E8  4E 80 00 20 */	blr 
