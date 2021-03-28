lbl_80D3624C:
/* 80D3624C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D36250  7C 08 02 A6 */	mflr r0
/* 80D36254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D36258  4B 52 CE 34 */	b ModuleEpilog
/* 80D3625C  3C 60 80 D3 */	lis r3, data_80D36A08@ha
/* 80D36260  38 63 6A 08 */	addi r3, r3, data_80D36A08@l
/* 80D36264  4B 52 CF 2C */	b ModuleDestructorsX
/* 80D36268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3626C  7C 08 03 A6 */	mtlr r0
/* 80D36270  38 21 00 10 */	addi r1, r1, 0x10
/* 80D36274  4E 80 00 20 */	blr 
