lbl_8053FF14:
/* 8053FF14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053FF18  7C 08 02 A6 */	mflr r0
/* 8053FF1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053FF20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053FF24  3C 60 80 54 */	lis r3, __global_destructor_chain@ha
/* 8053FF28  3B E3 20 E0 */	addi r31, r3, __global_destructor_chain@l
/* 8053FF2C  48 00 00 20 */	b lbl_8053FF4C
lbl_8053FF30:
/* 8053FF30  80 05 00 00 */	lwz r0, 0(r5)
/* 8053FF34  90 1F 00 00 */	stw r0, 0(r31)
/* 8053FF38  80 65 00 08 */	lwz r3, 8(r5)
/* 8053FF3C  38 80 FF FF */	li r4, -1
/* 8053FF40  81 85 00 04 */	lwz r12, 4(r5)
/* 8053FF44  7D 89 03 A6 */	mtctr r12
/* 8053FF48  4E 80 04 21 */	bctrl 
lbl_8053FF4C:
/* 8053FF4C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8053FF50  28 05 00 00 */	cmplwi r5, 0
/* 8053FF54  40 82 FF DC */	bne lbl_8053FF30
/* 8053FF58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053FF5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053FF60  7C 08 03 A6 */	mtlr r0
/* 8053FF64  38 21 00 10 */	addi r1, r1, 0x10
/* 8053FF68  4E 80 00 20 */	blr 
