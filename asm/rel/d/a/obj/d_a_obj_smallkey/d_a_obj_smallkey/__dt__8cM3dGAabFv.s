lbl_80CDA4FC:
/* 80CDA4FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDA500  7C 08 02 A6 */	mflr r0
/* 80CDA504  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDA508  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDA50C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CDA510  41 82 00 1C */	beq lbl_80CDA52C
/* 80CDA514  3C A0 80 CE */	lis r5, __vt__8cM3dGAab@ha
/* 80CDA518  38 05 BA 2C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CDA51C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CDA520  7C 80 07 35 */	extsh. r0, r4
/* 80CDA524  40 81 00 08 */	ble lbl_80CDA52C
/* 80CDA528  4B 5F 48 14 */	b __dl__FPv
lbl_80CDA52C:
/* 80CDA52C  7F E3 FB 78 */	mr r3, r31
/* 80CDA530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDA534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDA538  7C 08 03 A6 */	mtlr r0
/* 80CDA53C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDA540  4E 80 00 20 */	blr 
