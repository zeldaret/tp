lbl_804EF02C:
/* 804EF02C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF030  7C 08 02 A6 */	mflr r0
/* 804EF034  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF038  4B D7 40 54 */	b ModuleEpilog
/* 804EF03C  3C 60 80 50 */	lis r3, __destroy_global_chain_reference@ha
/* 804EF040  38 63 A6 B0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 804EF044  4B D7 41 4C */	b ModuleDestructorsX
/* 804EF048  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF04C  7C 08 03 A6 */	mtlr r0
/* 804EF050  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF054  4E 80 00 20 */	blr 
