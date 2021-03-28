lbl_80BACCC0:
/* 80BACCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BACCC4  7C 08 02 A6 */	mflr r0
/* 80BACCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BACCCC  3C 60 80 BB */	lis r3, data_80BAD46C@ha
/* 80BACCD0  38 63 D4 6C */	addi r3, r3, data_80BAD46C@l
/* 80BACCD4  4B 6B 64 78 */	b ModuleConstructorsX
/* 80BACCD8  4B 6B 63 B0 */	b ModuleProlog
/* 80BACCDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BACCE0  7C 08 03 A6 */	mtlr r0
/* 80BACCE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BACCE8  4E 80 00 20 */	blr 
