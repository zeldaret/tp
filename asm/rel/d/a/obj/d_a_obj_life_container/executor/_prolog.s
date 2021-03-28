lbl_804CC760:
/* 804CC760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CC764  7C 08 02 A6 */	mflr r0
/* 804CC768  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CC76C  3C 60 80 4D */	lis r3, data_804CE3EC@ha
/* 804CC770  38 63 E3 EC */	addi r3, r3, data_804CE3EC@l
/* 804CC774  4B D9 69 D8 */	b ModuleConstructorsX
/* 804CC778  4B D9 69 10 */	b ModuleProlog
/* 804CC77C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CC780  7C 08 03 A6 */	mtlr r0
/* 804CC784  38 21 00 10 */	addi r1, r1, 0x10
/* 804CC788  4E 80 00 20 */	blr 
