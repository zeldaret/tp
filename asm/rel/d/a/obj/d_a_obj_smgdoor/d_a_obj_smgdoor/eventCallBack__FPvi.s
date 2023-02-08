lbl_80CDBB38:
/* 80CDBB38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDBB3C  7C 08 02 A6 */	mflr r0
/* 80CDBB40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDBB44  48 00 0A CD */	bl sceneChange__14daObjSmgDoor_cFv
/* 80CDBB48  38 60 00 01 */	li r3, 1
/* 80CDBB4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDBB50  7C 08 03 A6 */	mtlr r0
/* 80CDBB54  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDBB58  4E 80 00 20 */	blr 
