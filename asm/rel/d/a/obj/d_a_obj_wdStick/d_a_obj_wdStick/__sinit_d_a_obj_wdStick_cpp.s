lbl_80D3408C:
/* 80D3408C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D34090  7C 08 02 A6 */	mflr r0
/* 80D34094  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D34098  3C 60 80 D3 */	lis r3, l_HIO@ha
/* 80D3409C  38 63 44 24 */	addi r3, r3, l_HIO@l
/* 80D340A0  4B FF DA AD */	bl __ct__15daWdStick_HIO_cFv
/* 80D340A4  3C 80 80 D3 */	lis r4, __dt__15daWdStick_HIO_cFv@ha
/* 80D340A8  38 84 40 30 */	addi r4, r4, __dt__15daWdStick_HIO_cFv@l
/* 80D340AC  3C A0 80 D3 */	lis r5, lit_3643@ha
/* 80D340B0  38 A5 44 18 */	addi r5, r5, lit_3643@l
/* 80D340B4  4B FF DA 25 */	bl __register_global_object
/* 80D340B8  3C 60 80 D3 */	lis r3, mCcDSph__11daWdStick_c@ha
/* 80D340BC  38 63 42 3C */	addi r3, r3, mCcDSph__11daWdStick_c@l
/* 80D340C0  38 A3 FF FC */	addi r5, r3, -4
/* 80D340C4  3C 60 80 D3 */	lis r3, mCcDObjInfo__11daWdStick_c@ha
/* 80D340C8  38 63 41 38 */	addi r3, r3, mCcDObjInfo__11daWdStick_c@l
/* 80D340CC  38 83 FF FC */	addi r4, r3, -4
/* 80D340D0  38 00 00 06 */	li r0, 6
/* 80D340D4  7C 09 03 A6 */	mtctr r0
lbl_80D340D8:
/* 80D340D8  80 64 00 04 */	lwz r3, 4(r4)
/* 80D340DC  84 04 00 08 */	lwzu r0, 8(r4)
/* 80D340E0  90 65 00 04 */	stw r3, 4(r5)
/* 80D340E4  94 05 00 08 */	stwu r0, 8(r5)
/* 80D340E8  42 00 FF F0 */	bdnz lbl_80D340D8
/* 80D340EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D340F0  7C 08 03 A6 */	mtlr r0
/* 80D340F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D340F8  4E 80 00 20 */	blr 
