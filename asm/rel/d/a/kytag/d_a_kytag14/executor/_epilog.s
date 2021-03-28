lbl_8052994C:
/* 8052994C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529950  7C 08 02 A6 */	mflr r0
/* 80529954  90 01 00 14 */	stw r0, 0x14(r1)
/* 80529958  4B D3 97 34 */	b ModuleEpilog
/* 8052995C  3C 60 80 53 */	lis r3, data_80529BE4@ha
/* 80529960  38 63 9B E4 */	addi r3, r3, data_80529BE4@l
/* 80529964  4B D3 98 2C */	b ModuleDestructorsX
/* 80529968  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052996C  7C 08 03 A6 */	mtlr r0
/* 80529970  38 21 00 10 */	addi r1, r1, 0x10
/* 80529974  4E 80 00 20 */	blr 
