lbl_80529920:
/* 80529920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80529924  7C 08 02 A6 */	mflr r0
/* 80529928  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052992C  3C 60 80 53 */	lis r3, data_80529BE0@ha
/* 80529930  38 63 9B E0 */	addi r3, r3, data_80529BE0@l
/* 80529934  4B D3 98 18 */	b ModuleConstructorsX
/* 80529938  4B D3 97 50 */	b ModuleProlog
/* 8052993C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80529940  7C 08 03 A6 */	mtlr r0
/* 80529944  38 21 00 10 */	addi r1, r1, 0x10
/* 80529948  4E 80 00 20 */	blr 
