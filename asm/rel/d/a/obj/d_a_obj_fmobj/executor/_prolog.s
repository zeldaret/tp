lbl_8057CB60:
/* 8057CB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057CB64  7C 08 02 A6 */	mflr r0
/* 8057CB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057CB6C  3C 60 80 58 */	lis r3, data_8057CF60@ha
/* 8057CB70  38 63 CF 60 */	addi r3, r3, data_8057CF60@l
/* 8057CB74  4B CE 65 D8 */	b ModuleConstructorsX
/* 8057CB78  4B CE 65 10 */	b ModuleProlog
/* 8057CB7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057CB80  7C 08 03 A6 */	mtlr r0
/* 8057CB84  38 21 00 10 */	addi r1, r1, 0x10
/* 8057CB88  4E 80 00 20 */	blr 
