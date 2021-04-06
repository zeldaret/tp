lbl_805F3E1C:
/* 805F3E1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F3E20  7C 08 02 A6 */	mflr r0
/* 805F3E24  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F3E28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F3E2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 805F3E30  41 82 00 1C */	beq lbl_805F3E4C
/* 805F3E34  3C A0 80 5F */	lis r5, __vt__10cCcD_GStts@ha /* 0x805F4710@ha */
/* 805F3E38  38 05 47 10 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x805F4710@l */
/* 805F3E3C  90 1F 00 00 */	stw r0, 0(r31)
/* 805F3E40  7C 80 07 35 */	extsh. r0, r4
/* 805F3E44  40 81 00 08 */	ble lbl_805F3E4C
/* 805F3E48  4B CD AE F5 */	bl __dl__FPv
lbl_805F3E4C:
/* 805F3E4C  7F E3 FB 78 */	mr r3, r31
/* 805F3E50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F3E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3E58  7C 08 03 A6 */	mtlr r0
/* 805F3E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 805F3E60  4E 80 00 20 */	blr 
