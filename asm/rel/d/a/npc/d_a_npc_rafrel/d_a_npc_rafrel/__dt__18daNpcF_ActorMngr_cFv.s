lbl_80ABF18C:
/* 80ABF18C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABF190  7C 08 02 A6 */	mflr r0
/* 80ABF194  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABF198  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABF19C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ABF1A0  41 82 00 1C */	beq lbl_80ABF1BC
/* 80ABF1A4  3C A0 80 AC */	lis r5, __vt__18daNpcF_ActorMngr_c@ha /* 0x80AC02D0@ha */
/* 80ABF1A8  38 05 02 D0 */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l /* 0x80AC02D0@l */
/* 80ABF1AC  90 1F 00 04 */	stw r0, 4(r31)
/* 80ABF1B0  7C 80 07 35 */	extsh. r0, r4
/* 80ABF1B4  40 81 00 08 */	ble lbl_80ABF1BC
/* 80ABF1B8  4B 80 FB 85 */	bl __dl__FPv
lbl_80ABF1BC:
/* 80ABF1BC  7F E3 FB 78 */	mr r3, r31
/* 80ABF1C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABF1C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABF1C8  7C 08 03 A6 */	mtlr r0
/* 80ABF1CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABF1D0  4E 80 00 20 */	blr 
