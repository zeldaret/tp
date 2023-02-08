lbl_80BEFFC4:
/* 80BEFFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEFFC8  7C 08 02 A6 */	mflr r0
/* 80BEFFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEFFD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEFFD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEFFD8  41 82 00 30 */	beq lbl_80BF0008
/* 80BEFFDC  3C 60 80 BF */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BF05E8@ha */
/* 80BEFFE0  38 03 05 E8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BF05E8@l */
/* 80BEFFE4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BEFFE8  41 82 00 10 */	beq lbl_80BEFFF8
/* 80BEFFEC  3C 60 80 BF */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BF05DC@ha */
/* 80BEFFF0  38 03 05 DC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BF05DC@l */
/* 80BEFFF4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BEFFF8:
/* 80BEFFF8  7C 80 07 35 */	extsh. r0, r4
/* 80BEFFFC  40 81 00 0C */	ble lbl_80BF0008
/* 80BF0000  7F E3 FB 78 */	mr r3, r31
/* 80BF0004  4B 6D ED 39 */	bl __dl__FPv
lbl_80BF0008:
/* 80BF0008  7F E3 FB 78 */	mr r3, r31
/* 80BF000C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF0010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF0014  7C 08 03 A6 */	mtlr r0
/* 80BF0018  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF001C  4E 80 00 20 */	blr 
