lbl_805A1FD4:
/* 805A1FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1FD8  7C 08 02 A6 */	mflr r0
/* 805A1FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A1FE4  3C 60 80 5A */	lis r3, __global_destructor_chain@ha
/* 805A1FE8  3B E3 25 B8 */	addi r31, r3, __global_destructor_chain@l
/* 805A1FEC  48 00 00 20 */	b lbl_805A200C
lbl_805A1FF0:
/* 805A1FF0  80 05 00 00 */	lwz r0, 0(r5)
/* 805A1FF4  90 1F 00 00 */	stw r0, 0(r31)
/* 805A1FF8  80 65 00 08 */	lwz r3, 8(r5)
/* 805A1FFC  38 80 FF FF */	li r4, -1
/* 805A2000  81 85 00 04 */	lwz r12, 4(r5)
/* 805A2004  7D 89 03 A6 */	mtctr r12
/* 805A2008  4E 80 04 21 */	bctrl 
lbl_805A200C:
/* 805A200C  80 BF 00 00 */	lwz r5, 0(r31)
/* 805A2010  28 05 00 00 */	cmplwi r5, 0
/* 805A2014  40 82 FF DC */	bne lbl_805A1FF0
/* 805A2018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A201C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A2020  7C 08 03 A6 */	mtlr r0
/* 805A2024  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2028  4E 80 00 20 */	blr 
