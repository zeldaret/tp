lbl_80AAC418:
/* 80AAC418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAC41C  7C 08 02 A6 */	mflr r0
/* 80AAC420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAC424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAC428  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAC42C  41 82 00 1C */	beq lbl_80AAC448
/* 80AAC430  3C A0 80 AB */	lis r5, __vt__8cM3dGAab@ha /* 0x80AADAF0@ha */
/* 80AAC434  38 05 DA F0 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80AADAF0@l */
/* 80AAC438  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80AAC43C  7C 80 07 35 */	extsh. r0, r4
/* 80AAC440  40 81 00 08 */	ble lbl_80AAC448
/* 80AAC444  4B 82 28 F9 */	bl __dl__FPv
lbl_80AAC448:
/* 80AAC448  7F E3 FB 78 */	mr r3, r31
/* 80AAC44C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAC450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAC454  7C 08 03 A6 */	mtlr r0
/* 80AAC458  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAC45C  4E 80 00 20 */	blr 
