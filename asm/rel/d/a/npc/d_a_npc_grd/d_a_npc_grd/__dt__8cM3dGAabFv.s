lbl_809CFEF8:
/* 809CFEF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CFEFC  7C 08 02 A6 */	mflr r0
/* 809CFF00  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CFF04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CFF08  7C 7F 1B 79 */	or. r31, r3, r3
/* 809CFF0C  41 82 00 1C */	beq lbl_809CFF28
/* 809CFF10  3C A0 80 9D */	lis r5, __vt__8cM3dGAab@ha
/* 809CFF14  38 05 3E 84 */	addi r0, r5, __vt__8cM3dGAab@l
/* 809CFF18  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809CFF1C  7C 80 07 35 */	extsh. r0, r4
/* 809CFF20  40 81 00 08 */	ble lbl_809CFF28
/* 809CFF24  4B 8F EE 18 */	b __dl__FPv
lbl_809CFF28:
/* 809CFF28  7F E3 FB 78 */	mr r3, r31
/* 809CFF2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CFF30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CFF34  7C 08 03 A6 */	mtlr r0
/* 809CFF38  38 21 00 10 */	addi r1, r1, 0x10
/* 809CFF3C  4E 80 00 20 */	blr 
