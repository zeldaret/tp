lbl_80585DF4:
/* 80585DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585DF8  7C 08 02 A6 */	mflr r0
/* 80585DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585E00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585E04  3C 60 80 58 */	lis r3, __global_destructor_chain@ha
/* 80585E08  3B E3 7F D8 */	addi r31, r3, __global_destructor_chain@l
/* 80585E0C  48 00 00 20 */	b lbl_80585E2C
lbl_80585E10:
/* 80585E10  80 05 00 00 */	lwz r0, 0(r5)
/* 80585E14  90 1F 00 00 */	stw r0, 0(r31)
/* 80585E18  80 65 00 08 */	lwz r3, 8(r5)
/* 80585E1C  38 80 FF FF */	li r4, -1
/* 80585E20  81 85 00 04 */	lwz r12, 4(r5)
/* 80585E24  7D 89 03 A6 */	mtctr r12
/* 80585E28  4E 80 04 21 */	bctrl 
lbl_80585E2C:
/* 80585E2C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80585E30  28 05 00 00 */	cmplwi r5, 0
/* 80585E34  40 82 FF DC */	bne lbl_80585E10
/* 80585E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80585E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80585E40  7C 08 03 A6 */	mtlr r0
/* 80585E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80585E48  4E 80 00 20 */	blr 
