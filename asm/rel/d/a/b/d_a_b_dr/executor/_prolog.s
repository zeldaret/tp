lbl_805BAD80:
/* 805BAD80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BAD84  7C 08 02 A6 */	mflr r0
/* 805BAD88  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BAD8C  3C 60 80 5C */	lis r3, data_805C6C60@ha
/* 805BAD90  38 63 6C 60 */	addi r3, r3, data_805C6C60@l
/* 805BAD94  4B CA 83 B8 */	b ModuleConstructorsX
/* 805BAD98  4B CA 82 F0 */	b ModuleProlog
/* 805BAD9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BADA0  7C 08 03 A6 */	mtlr r0
/* 805BADA4  38 21 00 10 */	addi r1, r1, 0x10
/* 805BADA8  4E 80 00 20 */	blr 
