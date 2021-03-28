lbl_804E20C4:
/* 804E20C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E20C8  7C 08 02 A6 */	mflr r0
/* 804E20CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E20D0  4B FF FC C9 */	bl getNowLevel__Fv
/* 804E20D4  2C 03 00 03 */	cmpwi r3, 3
/* 804E20D8  40 80 00 18 */	bge lbl_804E20F0
/* 804E20DC  2C 03 00 01 */	cmpwi r3, 1
/* 804E20E0  40 80 00 08 */	bge lbl_804E20E8
/* 804E20E4  48 00 00 0C */	b lbl_804E20F0
lbl_804E20E8:
/* 804E20E8  38 60 00 00 */	li r3, 0
/* 804E20EC  48 00 00 08 */	b lbl_804E20F4
lbl_804E20F0:
/* 804E20F0  38 60 00 01 */	li r3, 1
lbl_804E20F4:
/* 804E20F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E20F8  7C 08 03 A6 */	mtlr r0
/* 804E20FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2100  4E 80 00 20 */	blr 
