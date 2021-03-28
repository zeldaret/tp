lbl_8099A08C:
/* 8099A08C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099A090  7C 08 02 A6 */	mflr r0
/* 8099A094  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099A098  4B 8C 8F F4 */	b ModuleEpilog
/* 8099A09C  3C 60 80 9A */	lis r3, __destroy_global_chain_reference@ha
/* 8099A0A0  38 63 D2 38 */	addi r3, r3, __destroy_global_chain_reference@l
/* 8099A0A4  4B 8C 90 EC */	b ModuleDestructorsX
/* 8099A0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099A0AC  7C 08 03 A6 */	mtlr r0
/* 8099A0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8099A0B4  4E 80 00 20 */	blr 
