lbl_80A0E160:
/* 80A0E160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0E164  7C 08 02 A6 */	mflr r0
/* 80A0E168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0E16C  3C 60 80 A1 */	lis r3, data_80A13D98@ha
/* 80A0E170  38 63 3D 98 */	addi r3, r3, data_80A13D98@l
/* 80A0E174  4B 85 4F D8 */	b ModuleConstructorsX
/* 80A0E178  4B 85 4F 10 */	b ModuleProlog
/* 80A0E17C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0E180  7C 08 03 A6 */	mtlr r0
/* 80A0E184  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0E188  4E 80 00 20 */	blr 
