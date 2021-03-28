lbl_80B3EA2C:
/* 80B3EA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B3EA30  7C 08 02 A6 */	mflr r0
/* 80B3EA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B3EA38  4B FF 0C 51 */	bl Create__15daNpcWrestler_cFv
/* 80B3EA3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B3EA40  7C 08 03 A6 */	mtlr r0
/* 80B3EA44  38 21 00 10 */	addi r1, r1, 0x10
/* 80B3EA48  4E 80 00 20 */	blr 
