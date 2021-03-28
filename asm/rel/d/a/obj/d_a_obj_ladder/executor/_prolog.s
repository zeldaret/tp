lbl_8058D0E0:
/* 8058D0E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058D0E4  7C 08 02 A6 */	mflr r0
/* 8058D0E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058D0EC  3C 60 80 59 */	lis r3, data_8058DD48@ha
/* 8058D0F0  38 63 DD 48 */	addi r3, r3, data_8058DD48@l
/* 8058D0F4  4B CD 60 58 */	b ModuleConstructorsX
/* 8058D0F8  4B CD 5F 90 */	b ModuleProlog
/* 8058D0FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058D100  7C 08 03 A6 */	mtlr r0
/* 8058D104  38 21 00 10 */	addi r1, r1, 0x10
/* 8058D108  4E 80 00 20 */	blr 
