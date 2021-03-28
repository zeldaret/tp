lbl_805C69F0:
/* 805C69F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C69F4  7C 08 02 A6 */	mflr r0
/* 805C69F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C69FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C6A00  7C 7F 1B 79 */	or. r31, r3, r3
/* 805C6A04  41 82 00 30 */	beq lbl_805C6A34
/* 805C6A08  3C 60 80 5C */	lis r3, __vt__10dCcD_GStts@ha
/* 805C6A0C  38 03 78 4C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 805C6A10  90 1F 00 00 */	stw r0, 0(r31)
/* 805C6A14  41 82 00 10 */	beq lbl_805C6A24
/* 805C6A18  3C 60 80 5C */	lis r3, __vt__10cCcD_GStts@ha
/* 805C6A1C  38 03 78 40 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 805C6A20  90 1F 00 00 */	stw r0, 0(r31)
lbl_805C6A24:
/* 805C6A24  7C 80 07 35 */	extsh. r0, r4
/* 805C6A28  40 81 00 0C */	ble lbl_805C6A34
/* 805C6A2C  7F E3 FB 78 */	mr r3, r31
/* 805C6A30  4B D0 83 0C */	b __dl__FPv
lbl_805C6A34:
/* 805C6A34  7F E3 FB 78 */	mr r3, r31
/* 805C6A38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C6A3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C6A40  7C 08 03 A6 */	mtlr r0
/* 805C6A44  38 21 00 10 */	addi r1, r1, 0x10
/* 805C6A48  4E 80 00 20 */	blr 
