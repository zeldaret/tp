lbl_809CFEB0:
/* 809CFEB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CFEB4  7C 08 02 A6 */	mflr r0
/* 809CFEB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CFEBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CFEC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809CFEC4  41 82 00 1C */	beq lbl_809CFEE0
/* 809CFEC8  3C A0 80 9D */	lis r5, __vt__8cM3dGCyl@ha
/* 809CFECC  38 05 3E 78 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 809CFED0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 809CFED4  7C 80 07 35 */	extsh. r0, r4
/* 809CFED8  40 81 00 08 */	ble lbl_809CFEE0
/* 809CFEDC  4B 8F EE 60 */	b __dl__FPv
lbl_809CFEE0:
/* 809CFEE0  7F E3 FB 78 */	mr r3, r31
/* 809CFEE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CFEE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CFEEC  7C 08 03 A6 */	mtlr r0
/* 809CFEF0  38 21 00 10 */	addi r1, r1, 0x10
/* 809CFEF4  4E 80 00 20 */	blr 
