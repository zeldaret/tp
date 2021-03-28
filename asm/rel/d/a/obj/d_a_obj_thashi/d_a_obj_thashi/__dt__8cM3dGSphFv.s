lbl_80D0CDA8:
/* 80D0CDA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0CDAC  7C 08 02 A6 */	mflr r0
/* 80D0CDB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0CDB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0CDB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D0CDBC  41 82 00 1C */	beq lbl_80D0CDD8
/* 80D0CDC0  3C A0 80 D1 */	lis r5, __vt__8cM3dGSph@ha
/* 80D0CDC4  38 05 D3 AC */	addi r0, r5, __vt__8cM3dGSph@l
/* 80D0CDC8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D0CDCC  7C 80 07 35 */	extsh. r0, r4
/* 80D0CDD0  40 81 00 08 */	ble lbl_80D0CDD8
/* 80D0CDD4  4B 5C 1F 68 */	b __dl__FPv
lbl_80D0CDD8:
/* 80D0CDD8  7F E3 FB 78 */	mr r3, r31
/* 80D0CDDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D0CDE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0CDE4  7C 08 03 A6 */	mtlr r0
/* 80D0CDE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0CDEC  4E 80 00 20 */	blr 
