lbl_802EB184:
/* 802EB184  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EB188  7C 08 02 A6 */	mflr r0
/* 802EB18C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EB190  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EB194  7C 7F 1B 79 */	or. r31, r3, r3
/* 802EB198  41 82 00 1C */	beq lbl_802EB1B4
/* 802EB19C  3C A0 80 3D */	lis r5, __vt__11J2DTevBlock@ha
/* 802EB1A0  38 05 CE 74 */	addi r0, r5, __vt__11J2DTevBlock@l
/* 802EB1A4  90 1F 00 00 */	stw r0, 0(r31)
/* 802EB1A8  7C 80 07 35 */	extsh. r0, r4
/* 802EB1AC  40 81 00 08 */	ble lbl_802EB1B4
/* 802EB1B0  4B FE 3B 8D */	bl __dl__FPv
lbl_802EB1B4:
/* 802EB1B4  7F E3 FB 78 */	mr r3, r31
/* 802EB1B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EB1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EB1C0  7C 08 03 A6 */	mtlr r0
/* 802EB1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802EB1C8  4E 80 00 20 */	blr 
