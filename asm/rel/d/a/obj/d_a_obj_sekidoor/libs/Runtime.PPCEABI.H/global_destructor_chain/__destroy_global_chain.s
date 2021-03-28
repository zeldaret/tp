lbl_80CCCFD4:
/* 80CCCFD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCCFD8  7C 08 02 A6 */	mflr r0
/* 80CCCFDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCCFE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCCFE4  3C 60 80 CD */	lis r3, __global_destructor_chain@ha
/* 80CCCFE8  3B E3 DA F8 */	addi r31, r3, __global_destructor_chain@l
/* 80CCCFEC  48 00 00 20 */	b lbl_80CCD00C
lbl_80CCCFF0:
/* 80CCCFF0  80 05 00 00 */	lwz r0, 0(r5)
/* 80CCCFF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80CCCFF8  80 65 00 08 */	lwz r3, 8(r5)
/* 80CCCFFC  38 80 FF FF */	li r4, -1
/* 80CCD000  81 85 00 04 */	lwz r12, 4(r5)
/* 80CCD004  7D 89 03 A6 */	mtctr r12
/* 80CCD008  4E 80 04 21 */	bctrl 
lbl_80CCD00C:
/* 80CCD00C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CCD010  28 05 00 00 */	cmplwi r5, 0
/* 80CCD014  40 82 FF DC */	bne lbl_80CCCFF0
/* 80CCD018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCD01C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD020  7C 08 03 A6 */	mtlr r0
/* 80CCD024  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD028  4E 80 00 20 */	blr 
