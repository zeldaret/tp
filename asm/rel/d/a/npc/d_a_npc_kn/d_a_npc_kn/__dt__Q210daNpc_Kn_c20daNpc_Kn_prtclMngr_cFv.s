lbl_80A2AF98:
/* 80A2AF98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A2AF9C  7C 08 02 A6 */	mflr r0
/* 80A2AFA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2AFA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A2AFA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A2AFAC  41 82 00 10 */	beq lbl_80A2AFBC
/* 80A2AFB0  7C 80 07 35 */	extsh. r0, r4
/* 80A2AFB4  40 81 00 08 */	ble lbl_80A2AFBC
/* 80A2AFB8  4B 8A 3D 85 */	bl __dl__FPv
lbl_80A2AFBC:
/* 80A2AFBC  7F E3 FB 78 */	mr r3, r31
/* 80A2AFC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A2AFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A2AFC8  7C 08 03 A6 */	mtlr r0
/* 80A2AFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A2AFD0  4E 80 00 20 */	blr 
