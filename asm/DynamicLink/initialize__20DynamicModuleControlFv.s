lbl_8026275C:
/* 8026275C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80262760  7C 08 02 A6 */	mflr r0
/* 80262764  90 01 00 14 */	stw r0, 0x14(r1)
/* 80262768  38 00 00 00 */	li r0, 0
/* 8026276C  90 0D 8B C8 */	stw r0, sFileCache__20DynamicModuleControl(r13)
/* 80262770  90 0D 8B C0 */	stw r0, sAllocBytes__20DynamicModuleControl(r13)
/* 80262774  90 0D 8B C4 */	stw r0, sArchive__20DynamicModuleControl(r13)
/* 80262778  38 60 00 00 */	li r3, 0
/* 8026277C  4B FF FF 55 */	bl mountCallback__20DynamicModuleControlFPv
/* 80262780  38 60 00 01 */	li r3, 1
/* 80262784  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80262788  7C 08 03 A6 */	mtlr r0
/* 8026278C  38 21 00 10 */	addi r1, r1, 0x10
/* 80262790  4E 80 00 20 */	blr 
