lbl_807E3920:
/* 807E3920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807E3924  7C 08 02 A6 */	mflr r0
/* 807E3928  90 01 00 14 */	stw r0, 0x14(r1)
/* 807E392C  3C 60 80 7E */	lis r3, data_807E72EC@ha
/* 807E3930  38 63 72 EC */	addi r3, r3, data_807E72EC@l
/* 807E3934  4B A7 F8 18 */	b ModuleConstructorsX
/* 807E3938  4B A7 F7 50 */	b ModuleProlog
/* 807E393C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807E3940  7C 08 03 A6 */	mtlr r0
/* 807E3944  38 21 00 10 */	addi r1, r1, 0x10
/* 807E3948  4E 80 00 20 */	blr 
