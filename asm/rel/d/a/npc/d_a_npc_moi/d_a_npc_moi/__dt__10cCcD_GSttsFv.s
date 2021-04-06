lbl_80A79988:
/* 80A79988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7998C  7C 08 02 A6 */	mflr r0
/* 80A79990  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A79994  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A79998  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A7999C  41 82 00 1C */	beq lbl_80A799B8
/* 80A799A0  3C A0 80 A8 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80A7BE64@ha */
/* 80A799A4  38 05 BE 64 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80A7BE64@l */
/* 80A799A8  90 1F 00 00 */	stw r0, 0(r31)
/* 80A799AC  7C 80 07 35 */	extsh. r0, r4
/* 80A799B0  40 81 00 08 */	ble lbl_80A799B8
/* 80A799B4  4B 85 53 89 */	bl __dl__FPv
lbl_80A799B8:
/* 80A799B8  7F E3 FB 78 */	mr r3, r31
/* 80A799BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A799C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A799C4  7C 08 03 A6 */	mtlr r0
/* 80A799C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A799CC  4E 80 00 20 */	blr 
