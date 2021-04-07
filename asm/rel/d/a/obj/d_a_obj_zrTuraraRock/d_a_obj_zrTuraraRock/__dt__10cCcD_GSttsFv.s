lbl_80D42288:
/* 80D42288  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4228C  7C 08 02 A6 */	mflr r0
/* 80D42290  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42294  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D42298  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4229C  41 82 00 1C */	beq lbl_80D422B8
/* 80D422A0  3C A0 80 D4 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80D42520@ha */
/* 80D422A4  38 05 25 20 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80D42520@l */
/* 80D422A8  90 1F 00 00 */	stw r0, 0(r31)
/* 80D422AC  7C 80 07 35 */	extsh. r0, r4
/* 80D422B0  40 81 00 08 */	ble lbl_80D422B8
/* 80D422B4  4B 58 CA 89 */	bl __dl__FPv
lbl_80D422B8:
/* 80D422B8  7F E3 FB 78 */	mr r3, r31
/* 80D422BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D422C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D422C4  7C 08 03 A6 */	mtlr r0
/* 80D422C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D422CC  4E 80 00 20 */	blr 
