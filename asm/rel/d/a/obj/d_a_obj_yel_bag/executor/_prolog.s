lbl_80D3C000:
/* 80D3C000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3C004  7C 08 02 A6 */	mflr r0
/* 80D3C008  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3C00C  3C 60 80 D4 */	lis r3, data_80D3DC78@ha
/* 80D3C010  38 63 DC 78 */	addi r3, r3, data_80D3DC78@l
/* 80D3C014  4B 52 71 38 */	b ModuleConstructorsX
/* 80D3C018  4B 52 70 70 */	b ModuleProlog
/* 80D3C01C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3C020  7C 08 03 A6 */	mtlr r0
/* 80D3C024  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3C028  4E 80 00 20 */	blr 
