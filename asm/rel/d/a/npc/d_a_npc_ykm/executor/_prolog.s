lbl_80B53400:
/* 80B53400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B53404  7C 08 02 A6 */	mflr r0
/* 80B53408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5340C  3C 60 80 B6 */	lis r3, data_80B5D780@ha
/* 80B53410  38 63 D7 80 */	addi r3, r3, data_80B5D780@l
/* 80B53414  4B 70 FD 38 */	b ModuleConstructorsX
/* 80B53418  4B 70 FC 70 */	b ModuleProlog
/* 80B5341C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B53420  7C 08 03 A6 */	mtlr r0
/* 80B53424  38 21 00 10 */	addi r1, r1, 0x10
/* 80B53428  4E 80 00 20 */	blr 
