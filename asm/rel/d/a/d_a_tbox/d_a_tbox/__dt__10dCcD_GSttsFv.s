lbl_80495FA8:
/* 80495FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80495FAC  7C 08 02 A6 */	mflr r0
/* 80495FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80495FB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80495FB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80495FBC  41 82 00 30 */	beq lbl_80495FEC
/* 80495FC0  3C 60 80 49 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8049678C@ha */
/* 80495FC4  38 03 67 8C */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8049678C@l */
/* 80495FC8  90 1F 00 00 */	stw r0, 0(r31)
/* 80495FCC  41 82 00 10 */	beq lbl_80495FDC
/* 80495FD0  3C 60 80 49 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80496780@ha */
/* 80495FD4  38 03 67 80 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80496780@l */
/* 80495FD8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80495FDC:
/* 80495FDC  7C 80 07 35 */	extsh. r0, r4
/* 80495FE0  40 81 00 0C */	ble lbl_80495FEC
/* 80495FE4  7F E3 FB 78 */	mr r3, r31
/* 80495FE8  4B E3 8D 55 */	bl __dl__FPv
lbl_80495FEC:
/* 80495FEC  7F E3 FB 78 */	mr r3, r31
/* 80495FF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80495FF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80495FF8  7C 08 03 A6 */	mtlr r0
/* 80495FFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80496000  4E 80 00 20 */	blr 
