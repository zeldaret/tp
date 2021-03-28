lbl_806533E0:
/* 806533E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806533E4  7C 08 02 A6 */	mflr r0
/* 806533E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806533EC  3C 60 80 65 */	lis r3, data_80655598@ha
/* 806533F0  38 63 55 98 */	addi r3, r3, data_80655598@l
/* 806533F4  4B C0 FD 58 */	b ModuleConstructorsX
/* 806533F8  4B C0 FC 90 */	b ModuleProlog
/* 806533FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80653400  7C 08 03 A6 */	mtlr r0
/* 80653404  38 21 00 10 */	addi r1, r1, 0x10
/* 80653408  4E 80 00 20 */	blr 
