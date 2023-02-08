lbl_80C47270:
/* 80C47270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C47274  7C 08 02 A6 */	mflr r0
/* 80C47278  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C4727C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C47280  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C47284  41 82 00 1C */	beq lbl_80C472A0
/* 80C47288  3C A0 80 C4 */	lis r5, __vt__8cM3dGSph@ha /* 0x80C47A1C@ha */
/* 80C4728C  38 05 7A 1C */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80C47A1C@l */
/* 80C47290  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C47294  7C 80 07 35 */	extsh. r0, r4
/* 80C47298  40 81 00 08 */	ble lbl_80C472A0
/* 80C4729C  4B 68 7A A1 */	bl __dl__FPv
lbl_80C472A0:
/* 80C472A0  7F E3 FB 78 */	mr r3, r31
/* 80C472A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C472A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C472AC  7C 08 03 A6 */	mtlr r0
/* 80C472B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C472B4  4E 80 00 20 */	blr 
