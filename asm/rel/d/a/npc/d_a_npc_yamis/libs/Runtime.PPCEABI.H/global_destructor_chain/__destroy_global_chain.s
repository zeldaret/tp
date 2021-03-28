lbl_80B46514:
/* 80B46514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B46518  7C 08 02 A6 */	mflr r0
/* 80B4651C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B46520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B46524  3C 60 80 B5 */	lis r3, __global_destructor_chain@ha
/* 80B46528  3B E3 9A D0 */	addi r31, r3, __global_destructor_chain@l
/* 80B4652C  48 00 00 20 */	b lbl_80B4654C
lbl_80B46530:
/* 80B46530  80 05 00 00 */	lwz r0, 0(r5)
/* 80B46534  90 1F 00 00 */	stw r0, 0(r31)
/* 80B46538  80 65 00 08 */	lwz r3, 8(r5)
/* 80B4653C  38 80 FF FF */	li r4, -1
/* 80B46540  81 85 00 04 */	lwz r12, 4(r5)
/* 80B46544  7D 89 03 A6 */	mtctr r12
/* 80B46548  4E 80 04 21 */	bctrl 
lbl_80B4654C:
/* 80B4654C  80 BF 00 00 */	lwz r5, 0(r31)
/* 80B46550  28 05 00 00 */	cmplwi r5, 0
/* 80B46554  40 82 FF DC */	bne lbl_80B46530
/* 80B46558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4655C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B46560  7C 08 03 A6 */	mtlr r0
/* 80B46564  38 21 00 10 */	addi r1, r1, 0x10
/* 80B46568  4E 80 00 20 */	blr 
