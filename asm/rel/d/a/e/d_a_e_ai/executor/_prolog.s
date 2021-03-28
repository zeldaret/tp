lbl_80679080:
/* 80679080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80679084  7C 08 02 A6 */	mflr r0
/* 80679088  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067908C  3C 60 80 68 */	lis r3, data_8067C3E8@ha
/* 80679090  38 63 C3 E8 */	addi r3, r3, data_8067C3E8@l
/* 80679094  4B BE A0 B8 */	b ModuleConstructorsX
/* 80679098  4B BE 9F F0 */	b ModuleProlog
/* 8067909C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806790A0  7C 08 03 A6 */	mtlr r0
/* 806790A4  38 21 00 10 */	addi r1, r1, 0x10
/* 806790A8  4E 80 00 20 */	blr 
