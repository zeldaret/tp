lbl_80D398E8:
/* 80D398E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D398EC  7C 08 02 A6 */	mflr r0
/* 80D398F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D398F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D398F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D398FC  41 82 00 1C */	beq lbl_80D39918
/* 80D39900  3C A0 80 D4 */	lis r5, __vt__8cM3dGSph@ha /* 0x80D39D98@ha */
/* 80D39904  38 05 9D 98 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80D39D98@l */
/* 80D39908  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D3990C  7C 80 07 35 */	extsh. r0, r4
/* 80D39910  40 81 00 08 */	ble lbl_80D39918
/* 80D39914  4B 59 54 29 */	bl __dl__FPv
lbl_80D39918:
/* 80D39918  7F E3 FB 78 */	mr r3, r31
/* 80D3991C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D39920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D39924  7C 08 03 A6 */	mtlr r0
/* 80D39928  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3992C  4E 80 00 20 */	blr 
