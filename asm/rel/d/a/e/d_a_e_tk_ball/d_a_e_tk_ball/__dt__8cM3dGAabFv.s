lbl_807BD51C:
/* 807BD51C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807BD520  7C 08 02 A6 */	mflr r0
/* 807BD524  90 01 00 14 */	stw r0, 0x14(r1)
/* 807BD528  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807BD52C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807BD530  41 82 00 1C */	beq lbl_807BD54C
/* 807BD534  3C A0 80 7C */	lis r5, __vt__8cM3dGAab@ha /* 0x807BD6B4@ha */
/* 807BD538  38 05 D6 B4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x807BD6B4@l */
/* 807BD53C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 807BD540  7C 80 07 35 */	extsh. r0, r4
/* 807BD544  40 81 00 08 */	ble lbl_807BD54C
/* 807BD548  4B B1 17 F5 */	bl __dl__FPv
lbl_807BD54C:
/* 807BD54C  7F E3 FB 78 */	mr r3, r31
/* 807BD550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807BD554  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807BD558  7C 08 03 A6 */	mtlr r0
/* 807BD55C  38 21 00 10 */	addi r1, r1, 0x10
/* 807BD560  4E 80 00 20 */	blr 
