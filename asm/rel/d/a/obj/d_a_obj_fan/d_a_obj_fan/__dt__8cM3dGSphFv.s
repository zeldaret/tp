lbl_80BE5C7C:
/* 80BE5C7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE5C80  7C 08 02 A6 */	mflr r0
/* 80BE5C84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE5C88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE5C8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BE5C90  41 82 00 1C */	beq lbl_80BE5CAC
/* 80BE5C94  3C A0 80 BE */	lis r5, __vt__8cM3dGSph@ha /* 0x80BE5F40@ha */
/* 80BE5C98  38 05 5F 40 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80BE5F40@l */
/* 80BE5C9C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BE5CA0  7C 80 07 35 */	extsh. r0, r4
/* 80BE5CA4  40 81 00 08 */	ble lbl_80BE5CAC
/* 80BE5CA8  4B 6E 90 95 */	bl __dl__FPv
lbl_80BE5CAC:
/* 80BE5CAC  7F E3 FB 78 */	mr r3, r31
/* 80BE5CB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE5CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE5CB8  7C 08 03 A6 */	mtlr r0
/* 80BE5CBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE5CC0  4E 80 00 20 */	blr 
