lbl_80AFC714:
/* 80AFC714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFC718  7C 08 02 A6 */	mflr r0
/* 80AFC71C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFC720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFC724  3C 60 80 B0 */	lis r3, __global_destructor_chain@ha
/* 80AFC728  3B E3 13 08 */	addi r31, r3, __global_destructor_chain@l
/* 80AFC72C  48 00 00 20 */	b lbl_80AFC74C
lbl_80AFC730:
/* 80AFC730  80 05 00 00 */	lwz r0, 0(r5)
/* 80AFC734  90 1F 00 00 */	stw r0, 0(r31)
/* 80AFC738  80 65 00 08 */	lwz r3, 8(r5)
/* 80AFC73C  38 80 FF FF */	li r4, -1
/* 80AFC740  81 85 00 04 */	lwz r12, 4(r5)
/* 80AFC744  7D 89 03 A6 */	mtctr r12
/* 80AFC748  4E 80 04 21 */	bctrl 
lbl_80AFC74C:
/* 80AFC74C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80AFC750  28 05 00 00 */	cmplwi r5, 0
/* 80AFC754  40 82 FF DC */	bne lbl_80AFC730
/* 80AFC758  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFC75C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFC760  7C 08 03 A6 */	mtlr r0
/* 80AFC764  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFC768  4E 80 00 20 */	blr 
