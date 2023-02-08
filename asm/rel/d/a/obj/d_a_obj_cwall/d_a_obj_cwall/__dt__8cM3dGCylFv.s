lbl_80BD9D0C:
/* 80BD9D0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD9D10  7C 08 02 A6 */	mflr r0
/* 80BD9D14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD9D18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD9D1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BD9D20  41 82 00 1C */	beq lbl_80BD9D3C
/* 80BD9D24  3C A0 80 BE */	lis r5, __vt__8cM3dGCyl@ha /* 0x80BDA2B4@ha */
/* 80BD9D28  38 05 A2 B4 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80BDA2B4@l */
/* 80BD9D2C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BD9D30  7C 80 07 35 */	extsh. r0, r4
/* 80BD9D34  40 81 00 08 */	ble lbl_80BD9D3C
/* 80BD9D38  4B 6F 50 05 */	bl __dl__FPv
lbl_80BD9D3C:
/* 80BD9D3C  7F E3 FB 78 */	mr r3, r31
/* 80BD9D40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD9D44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD9D48  7C 08 03 A6 */	mtlr r0
/* 80BD9D4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD9D50  4E 80 00 20 */	blr 
