lbl_80D59468:
/* 80D59468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5946C  7C 08 02 A6 */	mflr r0
/* 80D59470  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D59474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D59478  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D5947C  41 82 00 1C */	beq lbl_80D59498
/* 80D59480  3C A0 80 D6 */	lis r5, __vt__8cM3dGAab@ha /* 0x80D595A4@ha */
/* 80D59484  38 05 95 A4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80D595A4@l */
/* 80D59488  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80D5948C  7C 80 07 35 */	extsh. r0, r4
/* 80D59490  40 81 00 08 */	ble lbl_80D59498
/* 80D59494  4B 57 58 A9 */	bl __dl__FPv
lbl_80D59498:
/* 80D59498  7F E3 FB 78 */	mr r3, r31
/* 80D5949C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D594A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D594A4  7C 08 03 A6 */	mtlr r0
/* 80D594A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D594AC  4E 80 00 20 */	blr 
