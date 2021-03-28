lbl_80728DF8:
/* 80728DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80728DFC  7C 08 02 A6 */	mflr r0
/* 80728E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80728E04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80728E08  7C 7F 1B 79 */	or. r31, r3, r3
/* 80728E0C  41 82 00 1C */	beq lbl_80728E28
/* 80728E10  3C A0 80 73 */	lis r5, __vt__8cM3dGSph@ha
/* 80728E14  38 05 97 70 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80728E18  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80728E1C  7C 80 07 35 */	extsh. r0, r4
/* 80728E20  40 81 00 08 */	ble lbl_80728E28
/* 80728E24  4B BA 5F 18 */	b __dl__FPv
lbl_80728E28:
/* 80728E28  7F E3 FB 78 */	mr r3, r31
/* 80728E2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80728E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80728E34  7C 08 03 A6 */	mtlr r0
/* 80728E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80728E3C  4E 80 00 20 */	blr 
