lbl_800847D0:
/* 800847D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800847D4  7C 08 02 A6 */	mflr r0
/* 800847D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800847DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800847E0  93 C1 00 08 */	stw r30, 8(r1)
/* 800847E4  7C 7E 1B 78 */	mr r30, r3
/* 800847E8  7C 9F 23 78 */	mr r31, r4
/* 800847EC  4B FF FF 55 */	bl Set__12dCcD_GObjInfFRC15dCcD_SrcGObjInf
/* 800847F0  38 7E 01 24 */	addi r3, r30, 0x124
/* 800847F4  38 9F 00 30 */	addi r4, r31, 0x30
/* 800847F8  48 1E A8 45 */	bl Set__8cM3dGCpsFRC9cM3dGCpsS
/* 800847FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80084800  83 C1 00 08 */	lwz r30, 8(r1)
/* 80084804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80084808  7C 08 03 A6 */	mtlr r0
/* 8008480C  38 21 00 10 */	addi r1, r1, 0x10
/* 80084810  4E 80 00 20 */	blr 
