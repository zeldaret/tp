lbl_8077AB34:
/* 8077AB34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8077AB38  7C 08 02 A6 */	mflr r0
/* 8077AB3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8077AB40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8077AB44  3C 60 80 78 */	lis r3, __global_destructor_chain@ha
/* 8077AB48  3B E3 13 38 */	addi r31, r3, __global_destructor_chain@l
/* 8077AB4C  48 00 00 20 */	b lbl_8077AB6C
lbl_8077AB50:
/* 8077AB50  80 05 00 00 */	lwz r0, 0(r5)
/* 8077AB54  90 1F 00 00 */	stw r0, 0(r31)
/* 8077AB58  80 65 00 08 */	lwz r3, 8(r5)
/* 8077AB5C  38 80 FF FF */	li r4, -1
/* 8077AB60  81 85 00 04 */	lwz r12, 4(r5)
/* 8077AB64  7D 89 03 A6 */	mtctr r12
/* 8077AB68  4E 80 04 21 */	bctrl 
lbl_8077AB6C:
/* 8077AB6C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8077AB70  28 05 00 00 */	cmplwi r5, 0
/* 8077AB74  40 82 FF DC */	bne lbl_8077AB50
/* 8077AB78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8077AB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8077AB80  7C 08 03 A6 */	mtlr r0
/* 8077AB84  38 21 00 10 */	addi r1, r1, 0x10
/* 8077AB88  4E 80 00 20 */	blr 
