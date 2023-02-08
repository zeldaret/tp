lbl_80C34E94:
/* 80C34E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C34E98  7C 08 02 A6 */	mflr r0
/* 80C34E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C34EA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C34EA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C34EA8  41 82 00 1C */	beq lbl_80C34EC4
/* 80C34EAC  3C A0 80 C3 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C35094@ha */
/* 80C34EB0  38 05 50 94 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C35094@l */
/* 80C34EB4  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C34EB8  7C 80 07 35 */	extsh. r0, r4
/* 80C34EBC  40 81 00 08 */	ble lbl_80C34EC4
/* 80C34EC0  4B 69 9E 7D */	bl __dl__FPv
lbl_80C34EC4:
/* 80C34EC4  7F E3 FB 78 */	mr r3, r31
/* 80C34EC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C34ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C34ED0  7C 08 03 A6 */	mtlr r0
/* 80C34ED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C34ED8  4E 80 00 20 */	blr 
