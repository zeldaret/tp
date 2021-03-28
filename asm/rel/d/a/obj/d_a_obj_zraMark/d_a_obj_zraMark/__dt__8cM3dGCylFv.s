lbl_80D43CF0:
/* 80D43CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D43CF4  7C 08 02 A6 */	mflr r0
/* 80D43CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D43CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D43D00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D43D04  41 82 00 1C */	beq lbl_80D43D20
/* 80D43D08  3C A0 80 D4 */	lis r5, __vt__8cM3dGCyl@ha
/* 80D43D0C  38 05 40 04 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80D43D10  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80D43D14  7C 80 07 35 */	extsh. r0, r4
/* 80D43D18  40 81 00 08 */	ble lbl_80D43D20
/* 80D43D1C  4B 58 B0 20 */	b __dl__FPv
lbl_80D43D20:
/* 80D43D20  7F E3 FB 78 */	mr r3, r31
/* 80D43D24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D43D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D43D2C  7C 08 03 A6 */	mtlr r0
/* 80D43D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80D43D34  4E 80 00 20 */	blr 
