lbl_80BA5D2C:
/* 80BA5D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA5D30  7C 08 02 A6 */	mflr r0
/* 80BA5D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA5D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA5D3C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA5D40  41 82 00 1C */	beq lbl_80BA5D5C
/* 80BA5D44  3C A0 80 BA */	lis r5, __vt__8cM3dGSph@ha
/* 80BA5D48  38 05 6E 20 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80BA5D4C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BA5D50  7C 80 07 35 */	extsh. r0, r4
/* 80BA5D54  40 81 00 08 */	ble lbl_80BA5D5C
/* 80BA5D58  4B 72 8F E4 */	b __dl__FPv
lbl_80BA5D5C:
/* 80BA5D5C  7F E3 FB 78 */	mr r3, r31
/* 80BA5D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA5D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA5D68  7C 08 03 A6 */	mtlr r0
/* 80BA5D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA5D70  4E 80 00 20 */	blr 
