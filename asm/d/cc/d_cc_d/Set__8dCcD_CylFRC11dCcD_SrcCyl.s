lbl_800848B4:
/* 800848B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800848B8  7C 08 02 A6 */	mflr r0
/* 800848BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800848C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800848C4  93 C1 00 08 */	stw r30, 8(r1)
/* 800848C8  7C 7E 1B 78 */	mr r30, r3
/* 800848CC  7C 9F 23 78 */	mr r31, r4
/* 800848D0  4B FF FE 71 */	bl Set__12dCcD_GObjInfFRC15dCcD_SrcGObjInf
/* 800848D4  38 7E 01 24 */	addi r3, r30, 0x124
/* 800848D8  38 9F 00 30 */	addi r4, r31, 0x30
/* 800848DC  48 1E A8 39 */	bl Set__8cM3dGCylFRC9cM3dGCylS
/* 800848E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800848E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800848E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800848EC  7C 08 03 A6 */	mtlr r0
/* 800848F0  38 21 00 10 */	addi r1, r1, 0x10
/* 800848F4  4E 80 00 20 */	blr 
