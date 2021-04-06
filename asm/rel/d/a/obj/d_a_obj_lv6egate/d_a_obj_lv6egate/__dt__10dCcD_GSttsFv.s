lbl_80C82970:
/* 80C82970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C82974  7C 08 02 A6 */	mflr r0
/* 80C82978  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8297C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C82980  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C82984  41 82 00 30 */	beq lbl_80C829B4
/* 80C82988  3C 60 80 C8 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C82C54@ha */
/* 80C8298C  38 03 2C 54 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C82C54@l */
/* 80C82990  90 1F 00 00 */	stw r0, 0(r31)
/* 80C82994  41 82 00 10 */	beq lbl_80C829A4
/* 80C82998  3C 60 80 C8 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C82C48@ha */
/* 80C8299C  38 03 2C 48 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C82C48@l */
/* 80C829A0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C829A4:
/* 80C829A4  7C 80 07 35 */	extsh. r0, r4
/* 80C829A8  40 81 00 0C */	ble lbl_80C829B4
/* 80C829AC  7F E3 FB 78 */	mr r3, r31
/* 80C829B0  4B 64 C3 8D */	bl __dl__FPv
lbl_80C829B4:
/* 80C829B4  7F E3 FB 78 */	mr r3, r31
/* 80C829B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C829BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C829C0  7C 08 03 A6 */	mtlr r0
/* 80C829C4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C829C8  4E 80 00 20 */	blr 
