lbl_8081604C:
/* 8081604C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80816050  7C 08 02 A6 */	mflr r0
/* 80816054  90 01 00 14 */	stw r0, 0x14(r1)
/* 80816058  4B A4 D0 34 */	b ModuleEpilog
/* 8081605C  3C 60 80 82 */	lis r3, __destroy_global_chain_reference@ha
/* 80816060  38 63 18 A0 */	addi r3, r3, __destroy_global_chain_reference@l
/* 80816064  4B A4 D1 2C */	b ModuleDestructorsX
/* 80816068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8081606C  7C 08 03 A6 */	mtlr r0
/* 80816070  38 21 00 10 */	addi r1, r1, 0x10
/* 80816074  4E 80 00 20 */	blr 
