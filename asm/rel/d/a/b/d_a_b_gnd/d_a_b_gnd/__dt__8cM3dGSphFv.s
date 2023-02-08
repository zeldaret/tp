lbl_80601E94:
/* 80601E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80601E98  7C 08 02 A6 */	mflr r0
/* 80601E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80601EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80601EA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80601EA8  41 82 00 1C */	beq lbl_80601EC4
/* 80601EAC  3C A0 80 60 */	lis r5, __vt__8cM3dGSph@ha /* 0x80602F00@ha */
/* 80601EB0  38 05 2F 00 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80602F00@l */
/* 80601EB4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80601EB8  7C 80 07 35 */	extsh. r0, r4
/* 80601EBC  40 81 00 08 */	ble lbl_80601EC4
/* 80601EC0  4B CC CE 7D */	bl __dl__FPv
lbl_80601EC4:
/* 80601EC4  7F E3 FB 78 */	mr r3, r31
/* 80601EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80601ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80601ED0  7C 08 03 A6 */	mtlr r0
/* 80601ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80601ED8  4E 80 00 20 */	blr 
