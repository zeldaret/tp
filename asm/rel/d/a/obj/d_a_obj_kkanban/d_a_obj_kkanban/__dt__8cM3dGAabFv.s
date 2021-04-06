lbl_80C46E98:
/* 80C46E98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46E9C  7C 08 02 A6 */	mflr r0
/* 80C46EA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46EA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C46EA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C46EAC  41 82 00 1C */	beq lbl_80C46EC8
/* 80C46EB0  3C A0 80 C4 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C47058@ha */
/* 80C46EB4  38 05 70 58 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C47058@l */
/* 80C46EB8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C46EBC  7C 80 07 35 */	extsh. r0, r4
/* 80C46EC0  40 81 00 08 */	ble lbl_80C46EC8
/* 80C46EC4  4B 68 7E 79 */	bl __dl__FPv
lbl_80C46EC8:
/* 80C46EC8  7F E3 FB 78 */	mr r3, r31
/* 80C46ECC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C46ED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46ED4  7C 08 03 A6 */	mtlr r0
/* 80C46ED8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46EDC  4E 80 00 20 */	blr 
