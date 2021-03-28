lbl_8073C77C:
/* 8073C77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073C780  7C 08 02 A6 */	mflr r0
/* 8073C784  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073C788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073C78C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8073C790  41 82 00 1C */	beq lbl_8073C7AC
/* 8073C794  3C A0 80 74 */	lis r5, __vt__8cM3dGSph@ha
/* 8073C798  38 05 D2 10 */	addi r0, r5, __vt__8cM3dGSph@l
/* 8073C79C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8073C7A0  7C 80 07 35 */	extsh. r0, r4
/* 8073C7A4  40 81 00 08 */	ble lbl_8073C7AC
/* 8073C7A8  4B B9 25 94 */	b __dl__FPv
lbl_8073C7AC:
/* 8073C7AC  7F E3 FB 78 */	mr r3, r31
/* 8073C7B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073C7B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073C7B8  7C 08 03 A6 */	mtlr r0
/* 8073C7BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8073C7C0  4E 80 00 20 */	blr 
