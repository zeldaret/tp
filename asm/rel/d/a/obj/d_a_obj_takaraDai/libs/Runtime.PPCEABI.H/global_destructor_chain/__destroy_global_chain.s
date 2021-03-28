lbl_80D06D34:
/* 80D06D34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D06D38  7C 08 02 A6 */	mflr r0
/* 80D06D3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D06D40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D06D44  3C 60 80 D0 */	lis r3, __global_destructor_chain@ha
/* 80D06D48  3B E3 79 08 */	addi r31, r3, __global_destructor_chain@l
/* 80D06D4C  48 00 00 20 */	b lbl_80D06D6C
lbl_80D06D50:
/* 80D06D50  80 05 00 00 */	lwz r0, 0(r5)
/* 80D06D54  90 1F 00 00 */	stw r0, 0(r31)
/* 80D06D58  80 65 00 08 */	lwz r3, 8(r5)
/* 80D06D5C  38 80 FF FF */	li r4, -1
/* 80D06D60  81 85 00 04 */	lwz r12, 4(r5)
/* 80D06D64  7D 89 03 A6 */	mtctr r12
/* 80D06D68  4E 80 04 21 */	bctrl 
lbl_80D06D6C:
/* 80D06D6C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D06D70  28 05 00 00 */	cmplwi r5, 0
/* 80D06D74  40 82 FF DC */	bne lbl_80D06D50
/* 80D06D78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D06D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D06D80  7C 08 03 A6 */	mtlr r0
/* 80D06D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80D06D88  4E 80 00 20 */	blr 
