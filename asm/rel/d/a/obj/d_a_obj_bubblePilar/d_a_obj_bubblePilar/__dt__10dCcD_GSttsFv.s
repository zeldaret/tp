lbl_80BC38D8:
/* 80BC38D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC38DC  7C 08 02 A6 */	mflr r0
/* 80BC38E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC38E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC38E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC38EC  41 82 00 30 */	beq lbl_80BC391C
/* 80BC38F0  3C 60 80 BC */	lis r3, __vt__10dCcD_GStts@ha
/* 80BC38F4  38 03 41 AC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BC38F8  90 1F 00 00 */	stw r0, 0(r31)
/* 80BC38FC  41 82 00 10 */	beq lbl_80BC390C
/* 80BC3900  3C 60 80 BC */	lis r3, __vt__10cCcD_GStts@ha
/* 80BC3904  38 03 41 A0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BC3908  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BC390C:
/* 80BC390C  7C 80 07 35 */	extsh. r0, r4
/* 80BC3910  40 81 00 0C */	ble lbl_80BC391C
/* 80BC3914  7F E3 FB 78 */	mr r3, r31
/* 80BC3918  4B 70 B4 24 */	b __dl__FPv
lbl_80BC391C:
/* 80BC391C  7F E3 FB 78 */	mr r3, r31
/* 80BC3920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC3924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC3928  7C 08 03 A6 */	mtlr r0
/* 80BC392C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC3930  4E 80 00 20 */	blr 
