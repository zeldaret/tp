lbl_80D41834:
/* 80D41834  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D41838  7C 08 02 A6 */	mflr r0
/* 80D4183C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D41840  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D41844  3C 60 80 D4 */	lis r3, __global_destructor_chain@ha
/* 80D41848  3B E3 25 98 */	addi r31, r3, __global_destructor_chain@l
/* 80D4184C  48 00 00 20 */	b lbl_80D4186C
lbl_80D41850:
/* 80D41850  80 05 00 00 */	lwz r0, 0(r5)
/* 80D41854  90 1F 00 00 */	stw r0, 0(r31)
/* 80D41858  80 65 00 08 */	lwz r3, 8(r5)
/* 80D4185C  38 80 FF FF */	li r4, -1
/* 80D41860  81 85 00 04 */	lwz r12, 4(r5)
/* 80D41864  7D 89 03 A6 */	mtctr r12
/* 80D41868  4E 80 04 21 */	bctrl 
lbl_80D4186C:
/* 80D4186C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80D41870  28 05 00 00 */	cmplwi r5, 0
/* 80D41874  40 82 FF DC */	bne lbl_80D41850
/* 80D41878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4187C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D41880  7C 08 03 A6 */	mtlr r0
/* 80D41884  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41888  4E 80 00 20 */	blr 
