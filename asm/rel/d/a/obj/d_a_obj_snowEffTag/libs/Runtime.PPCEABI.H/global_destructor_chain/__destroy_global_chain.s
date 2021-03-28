lbl_80CDF054:
/* 80CDF054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF058  7C 08 02 A6 */	mflr r0
/* 80CDF05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF060  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDF064  3C 60 80 CE */	lis r3, __global_destructor_chain@ha
/* 80CDF068  3B E3 F7 C0 */	addi r31, r3, __global_destructor_chain@l
/* 80CDF06C  48 00 00 20 */	b lbl_80CDF08C
lbl_80CDF070:
/* 80CDF070  80 05 00 00 */	lwz r0, 0(r5)
/* 80CDF074  90 1F 00 00 */	stw r0, 0(r31)
/* 80CDF078  80 65 00 08 */	lwz r3, 8(r5)
/* 80CDF07C  38 80 FF FF */	li r4, -1
/* 80CDF080  81 85 00 04 */	lwz r12, 4(r5)
/* 80CDF084  7D 89 03 A6 */	mtctr r12
/* 80CDF088  4E 80 04 21 */	bctrl 
lbl_80CDF08C:
/* 80CDF08C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80CDF090  28 05 00 00 */	cmplwi r5, 0
/* 80CDF094  40 82 FF DC */	bne lbl_80CDF070
/* 80CDF098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDF09C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF0A0  7C 08 03 A6 */	mtlr r0
/* 80CDF0A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF0A8  4E 80 00 20 */	blr 
