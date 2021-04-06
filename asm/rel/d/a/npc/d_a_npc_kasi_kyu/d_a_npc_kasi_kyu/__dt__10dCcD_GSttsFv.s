lbl_80A25660:
/* 80A25660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A25664  7C 08 02 A6 */	mflr r0
/* 80A25668  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2566C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A25670  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A25674  41 82 00 30 */	beq lbl_80A256A4
/* 80A25678  3C 60 80 A2 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A25F98@ha */
/* 80A2567C  38 03 5F 98 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A25F98@l */
/* 80A25680  90 1F 00 00 */	stw r0, 0(r31)
/* 80A25684  41 82 00 10 */	beq lbl_80A25694
/* 80A25688  3C 60 80 A2 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A25F8C@ha */
/* 80A2568C  38 03 5F 8C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A25F8C@l */
/* 80A25690  90 1F 00 00 */	stw r0, 0(r31)
lbl_80A25694:
/* 80A25694  7C 80 07 35 */	extsh. r0, r4
/* 80A25698  40 81 00 0C */	ble lbl_80A256A4
/* 80A2569C  7F E3 FB 78 */	mr r3, r31
/* 80A256A0  4B 8A 96 9D */	bl __dl__FPv
lbl_80A256A4:
/* 80A256A4  7F E3 FB 78 */	mr r3, r31
/* 80A256A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A256AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A256B0  7C 08 03 A6 */	mtlr r0
/* 80A256B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A256B8  4E 80 00 20 */	blr 
