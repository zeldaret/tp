lbl_80B66D40:
/* 80B66D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B66D44  7C 08 02 A6 */	mflr r0
/* 80B66D48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B66D4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B66D50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B66D54  41 82 00 1C */	beq lbl_80B66D70
/* 80B66D58  3C A0 80 B7 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80B68C78@ha */
/* 80B66D5C  38 05 8C 78 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80B68C78@l */
/* 80B66D60  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B66D64  7C 80 07 35 */	extsh. r0, r4
/* 80B66D68  40 81 00 08 */	ble lbl_80B66D70
/* 80B66D6C  4B 76 7F D1 */	bl __dl__FPv
lbl_80B66D70:
/* 80B66D70  7F E3 FB 78 */	mr r3, r31
/* 80B66D74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B66D78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B66D7C  7C 08 03 A6 */	mtlr r0
/* 80B66D80  38 21 00 10 */	addi r1, r1, 0x10
/* 80B66D84  4E 80 00 20 */	blr 
