lbl_80728FC4:
/* 80728FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80728FC8  7C 08 02 A6 */	mflr r0
/* 80728FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80728FD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80728FD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80728FD8  41 82 00 1C */	beq lbl_80728FF4
/* 80728FDC  3C A0 80 73 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80729758@ha */
/* 80728FE0  38 05 97 58 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80729758@l */
/* 80728FE4  90 1F 00 00 */	stw r0, 0(r31)
/* 80728FE8  7C 80 07 35 */	extsh. r0, r4
/* 80728FEC  40 81 00 08 */	ble lbl_80728FF4
/* 80728FF0  4B BA 5D 4D */	bl __dl__FPv
lbl_80728FF4:
/* 80728FF4  7F E3 FB 78 */	mr r3, r31
/* 80728FF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80728FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80729000  7C 08 03 A6 */	mtlr r0
/* 80729004  38 21 00 10 */	addi r1, r1, 0x10
/* 80729008  4E 80 00 20 */	blr 
