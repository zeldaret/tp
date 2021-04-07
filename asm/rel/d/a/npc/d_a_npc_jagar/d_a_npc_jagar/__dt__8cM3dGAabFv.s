lbl_80A1953C:
/* 80A1953C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A19540  7C 08 02 A6 */	mflr r0
/* 80A19544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A19548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A1954C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A19550  41 82 00 1C */	beq lbl_80A1956C
/* 80A19554  3C A0 80 A2 */	lis r5, __vt__8cM3dGAab@ha /* 0x80A1ACE4@ha */
/* 80A19558  38 05 AC E4 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80A1ACE4@l */
/* 80A1955C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A19560  7C 80 07 35 */	extsh. r0, r4
/* 80A19564  40 81 00 08 */	ble lbl_80A1956C
/* 80A19568  4B 8B 57 D5 */	bl __dl__FPv
lbl_80A1956C:
/* 80A1956C  7F E3 FB 78 */	mr r3, r31
/* 80A19570  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A19574  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A19578  7C 08 03 A6 */	mtlr r0
/* 80A1957C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A19580  4E 80 00 20 */	blr 
