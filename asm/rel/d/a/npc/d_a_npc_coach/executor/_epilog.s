lbl_8099D68C:
/* 8099D68C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099D690  7C 08 02 A6 */	mflr r0
/* 8099D694  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099D698  4B 8C 59 F4 */	b ModuleEpilog
/* 8099D69C  3C 60 80 9A */	lis r3, data_809A4ECC@ha
/* 8099D6A0  38 63 4E CC */	addi r3, r3, data_809A4ECC@l
/* 8099D6A4  4B 8C 5A EC */	b ModuleDestructorsX
/* 8099D6A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099D6AC  7C 08 03 A6 */	mtlr r0
/* 8099D6B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8099D6B4  4E 80 00 20 */	blr 
