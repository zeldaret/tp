lbl_80CF7FB4:
/* 80CF7FB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF7FB8  7C 08 02 A6 */	mflr r0
/* 80CF7FBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF7FC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF7FC4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CF7FC8  41 82 00 30 */	beq lbl_80CF7FF8
/* 80CF7FCC  3C 60 80 D0 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CF85A4@ha */
/* 80CF7FD0  38 03 85 A4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CF85A4@l */
/* 80CF7FD4  90 1F 00 00 */	stw r0, 0(r31)
/* 80CF7FD8  41 82 00 10 */	beq lbl_80CF7FE8
/* 80CF7FDC  3C 60 80 D0 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CF8598@ha */
/* 80CF7FE0  38 03 85 98 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CF8598@l */
/* 80CF7FE4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CF7FE8:
/* 80CF7FE8  7C 80 07 35 */	extsh. r0, r4
/* 80CF7FEC  40 81 00 0C */	ble lbl_80CF7FF8
/* 80CF7FF0  7F E3 FB 78 */	mr r3, r31
/* 80CF7FF4  4B 5D 6D 49 */	bl __dl__FPv
lbl_80CF7FF8:
/* 80CF7FF8  7F E3 FB 78 */	mr r3, r31
/* 80CF7FFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF8000  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF8004  7C 08 03 A6 */	mtlr r0
/* 80CF8008  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF800C  4E 80 00 20 */	blr 
