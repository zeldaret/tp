lbl_80D3F3EC:
/* 80D3F3EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F3F0  7C 08 02 A6 */	mflr r0
/* 80D3F3F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F3F8  4B 52 3C 94 */	b ModuleEpilog
/* 80D3F3FC  3C 60 80 D4 */	lis r3, data_80D401E8@ha
/* 80D3F400  38 63 01 E8 */	addi r3, r3, data_80D401E8@l
/* 80D3F404  4B 52 3D 8C */	b ModuleDestructorsX
/* 80D3F408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F40C  7C 08 03 A6 */	mtlr r0
/* 80D3F410  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F414  4E 80 00 20 */	blr 
