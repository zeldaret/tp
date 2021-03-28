lbl_80C38974:
/* 80C38974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C38978  7C 08 02 A6 */	mflr r0
/* 80C3897C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C38980  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C38984  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C38988  41 82 00 1C */	beq lbl_80C389A4
/* 80C3898C  3C A0 80 C4 */	lis r5, __vt__8cM3dGPla@ha
/* 80C38990  38 05 98 50 */	addi r0, r5, __vt__8cM3dGPla@l
/* 80C38994  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C38998  7C 80 07 35 */	extsh. r0, r4
/* 80C3899C  40 81 00 08 */	ble lbl_80C389A4
/* 80C389A0  4B 69 63 9C */	b __dl__FPv
lbl_80C389A4:
/* 80C389A4  7F E3 FB 78 */	mr r3, r31
/* 80C389A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C389AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C389B0  7C 08 03 A6 */	mtlr r0
/* 80C389B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C389B8  4E 80 00 20 */	blr 
