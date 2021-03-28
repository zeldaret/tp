lbl_80BD698C:
/* 80BD698C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6990  7C 08 02 A6 */	mflr r0
/* 80BD6994  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD6998  4B 68 C6 F4 */	b ModuleEpilog
/* 80BD699C  3C 60 80 BE */	lis r3, __destroy_global_chain_reference@ha
/* 80BD69A0  38 63 9F 98 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80BD69A4  4B 68 C7 EC */	b ModuleDestructorsX
/* 80BD69A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD69AC  7C 08 03 A6 */	mtlr r0
/* 80BD69B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD69B4  4E 80 00 20 */	blr 
