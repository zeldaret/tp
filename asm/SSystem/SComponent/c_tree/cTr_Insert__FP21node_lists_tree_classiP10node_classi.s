lbl_802664A4:
/* 802664A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802664A8  7C 08 02 A6 */	mflr r0
/* 802664AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802664B0  80 03 00 04 */	lwz r0, 4(r3)
/* 802664B4  7C 04 00 00 */	cmpw r4, r0
/* 802664B8  41 80 00 0C */	blt lbl_802664C4
/* 802664BC  38 60 00 00 */	li r3, 0
/* 802664C0  48 00 00 18 */	b lbl_802664D8
lbl_802664C4:
/* 802664C4  80 63 00 00 */	lwz r3, 0(r3)
/* 802664C8  1C 04 00 0C */	mulli r0, r4, 0xc
/* 802664CC  7C 63 02 14 */	add r3, r3, r0
/* 802664D0  7C C4 33 78 */	mr r4, r6
/* 802664D4  4B FF FA 9D */	bl cLs_Insert__FP15node_list_classiP10node_class
lbl_802664D8:
/* 802664D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802664DC  7C 08 03 A6 */	mtlr r0
/* 802664E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802664E4  4E 80 00 20 */	blr 
