lbl_80AF7260:
/* 80AF7260  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF7264  7C 08 02 A6 */	mflr r0
/* 80AF7268  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF726C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF7270  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF7274  41 82 00 1C */	beq lbl_80AF7290
/* 80AF7278  3C A0 80 AF */	lis r5, __vt__8cM3dGSph@ha /* 0x80AF7560@ha */
/* 80AF727C  38 05 75 60 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80AF7560@l */
/* 80AF7280  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80AF7284  7C 80 07 35 */	extsh. r0, r4
/* 80AF7288  40 81 00 08 */	ble lbl_80AF7290
/* 80AF728C  4B 7D 7A B1 */	bl __dl__FPv
lbl_80AF7290:
/* 80AF7290  7F E3 FB 78 */	mr r3, r31
/* 80AF7294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF7298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF729C  7C 08 03 A6 */	mtlr r0
/* 80AF72A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF72A4  4E 80 00 20 */	blr 
