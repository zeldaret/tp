lbl_80A18FE0:
/* 80A18FE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A18FE4  7C 08 02 A6 */	mflr r0
/* 80A18FE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A18FEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A18FF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A18FF4  41 82 00 1C */	beq lbl_80A19010
/* 80A18FF8  3C A0 80 A2 */	lis r5, __vt__10cCcD_GStts@ha
/* 80A18FFC  38 05 AC A8 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80A19000  90 1F 00 00 */	stw r0, 0(r31)
/* 80A19004  7C 80 07 35 */	extsh. r0, r4
/* 80A19008  40 81 00 08 */	ble lbl_80A19010
/* 80A1900C  4B 8B 5D 30 */	b __dl__FPv
lbl_80A19010:
/* 80A19010  7F E3 FB 78 */	mr r3, r31
/* 80A19014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A19018  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A1901C  7C 08 03 A6 */	mtlr r0
/* 80A19020  38 21 00 10 */	addi r1, r1, 0x10
/* 80A19024  4E 80 00 20 */	blr 
