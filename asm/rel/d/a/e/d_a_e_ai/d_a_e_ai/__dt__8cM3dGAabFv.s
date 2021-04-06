lbl_8067BD54:
/* 8067BD54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8067BD58  7C 08 02 A6 */	mflr r0
/* 8067BD5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8067BD60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8067BD64  7C 7F 1B 79 */	or. r31, r3, r3
/* 8067BD68  41 82 00 1C */	beq lbl_8067BD84
/* 8067BD6C  3C A0 80 68 */	lis r5, __vt__8cM3dGAab@ha /* 0x8067C648@ha */
/* 8067BD70  38 05 C6 48 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x8067C648@l */
/* 8067BD74  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8067BD78  7C 80 07 35 */	extsh. r0, r4
/* 8067BD7C  40 81 00 08 */	ble lbl_8067BD84
/* 8067BD80  4B C5 2F BD */	bl __dl__FPv
lbl_8067BD84:
/* 8067BD84  7F E3 FB 78 */	mr r3, r31
/* 8067BD88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8067BD8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8067BD90  7C 08 03 A6 */	mtlr r0
/* 8067BD94  38 21 00 10 */	addi r1, r1, 0x10
/* 8067BD98  4E 80 00 20 */	blr 
