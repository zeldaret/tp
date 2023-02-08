lbl_8027E51C:
/* 8027E51C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027E520  7C 08 02 A6 */	mflr r0
/* 8027E524  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027E528  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027E52C  7C 7F 1B 78 */	mr r31, r3
/* 8027E530  48 05 D9 E5 */	bl initiate__10JSUPtrListFv
/* 8027E534  7F E3 FB 78 */	mr r3, r31
/* 8027E538  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027E53C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027E540  7C 08 03 A6 */	mtlr r0
/* 8027E544  38 21 00 10 */	addi r1, r1, 0x10
/* 8027E548  4E 80 00 20 */	blr 
