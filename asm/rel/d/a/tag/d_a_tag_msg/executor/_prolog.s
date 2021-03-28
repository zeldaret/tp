lbl_8048F760:
/* 8048F760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048F764  7C 08 02 A6 */	mflr r0
/* 8048F768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048F76C  3C 60 80 49 */	lis r3, data_80490170@ha
/* 8048F770  38 63 01 70 */	addi r3, r3, data_80490170@l
/* 8048F774  4B DD 39 D8 */	b ModuleConstructorsX
/* 8048F778  4B DD 39 10 */	b ModuleProlog
/* 8048F77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048F780  7C 08 03 A6 */	mtlr r0
/* 8048F784  38 21 00 10 */	addi r1, r1, 0x10
/* 8048F788  4E 80 00 20 */	blr 
