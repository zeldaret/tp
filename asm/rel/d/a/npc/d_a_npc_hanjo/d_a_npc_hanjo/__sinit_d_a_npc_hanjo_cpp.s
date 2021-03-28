lbl_809FFEC4:
/* 809FFEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FFEC8  7C 08 02 A6 */	mflr r0
/* 809FFECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FFED0  3C 60 80 A0 */	lis r3, cNullVec__6Z2Calc@ha
/* 809FFED4  38 A3 09 40 */	addi r5, r3, cNullVec__6Z2Calc@l
/* 809FFED8  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 809FFEDC  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 809FFEE0  80 64 00 00 */	lwz r3, 0(r4)
/* 809FFEE4  80 04 00 04 */	lwz r0, 4(r4)
/* 809FFEE8  90 65 06 8C */	stw r3, 0x68c(r5)
/* 809FFEEC  90 05 06 90 */	stw r0, 0x690(r5)
/* 809FFEF0  80 04 00 08 */	lwz r0, 8(r4)
/* 809FFEF4  90 05 06 94 */	stw r0, 0x694(r5)
/* 809FFEF8  38 85 06 8C */	addi r4, r5, 0x68c
/* 809FFEFC  80 65 06 50 */	lwz r3, 0x650(r5)
/* 809FFF00  80 05 06 54 */	lwz r0, 0x654(r5)
/* 809FFF04  90 64 00 0C */	stw r3, 0xc(r4)
/* 809FFF08  90 04 00 10 */	stw r0, 0x10(r4)
/* 809FFF0C  80 05 06 58 */	lwz r0, 0x658(r5)
/* 809FFF10  90 04 00 14 */	stw r0, 0x14(r4)
/* 809FFF14  80 65 06 5C */	lwz r3, 0x65c(r5)
/* 809FFF18  80 05 06 60 */	lwz r0, 0x660(r5)
/* 809FFF1C  90 64 00 18 */	stw r3, 0x18(r4)
/* 809FFF20  90 04 00 1C */	stw r0, 0x1c(r4)
/* 809FFF24  80 05 06 64 */	lwz r0, 0x664(r5)
/* 809FFF28  90 04 00 20 */	stw r0, 0x20(r4)
/* 809FFF2C  80 65 06 68 */	lwz r3, 0x668(r5)
/* 809FFF30  80 05 06 6C */	lwz r0, 0x66c(r5)
/* 809FFF34  90 64 00 24 */	stw r3, 0x24(r4)
/* 809FFF38  90 04 00 28 */	stw r0, 0x28(r4)
/* 809FFF3C  80 05 06 70 */	lwz r0, 0x670(r5)
/* 809FFF40  90 04 00 2C */	stw r0, 0x2c(r4)
/* 809FFF44  80 65 06 74 */	lwz r3, 0x674(r5)
/* 809FFF48  80 05 06 78 */	lwz r0, 0x678(r5)
/* 809FFF4C  90 64 00 30 */	stw r3, 0x30(r4)
/* 809FFF50  90 04 00 34 */	stw r0, 0x34(r4)
/* 809FFF54  80 05 06 7C */	lwz r0, 0x67c(r5)
/* 809FFF58  90 04 00 38 */	stw r0, 0x38(r4)
/* 809FFF5C  80 65 06 80 */	lwz r3, 0x680(r5)
/* 809FFF60  80 05 06 84 */	lwz r0, 0x684(r5)
/* 809FFF64  90 64 00 3C */	stw r3, 0x3c(r4)
/* 809FFF68  90 04 00 40 */	stw r0, 0x40(r4)
/* 809FFF6C  80 05 06 88 */	lwz r0, 0x688(r5)
/* 809FFF70  90 04 00 44 */	stw r0, 0x44(r4)
/* 809FFF74  38 A5 06 D0 */	addi r5, r5, 0x6d0
/* 809FFF78  3C 60 80 A0 */	lis r3, mStoneCcDObjInfo__13daNpc_Hanjo_c@ha
/* 809FFF7C  38 63 06 B4 */	addi r3, r3, mStoneCcDObjInfo__13daNpc_Hanjo_c@l
/* 809FFF80  38 83 FF FC */	addi r4, r3, -4
/* 809FFF84  38 00 00 06 */	li r0, 6
/* 809FFF88  7C 09 03 A6 */	mtctr r0
lbl_809FFF8C:
/* 809FFF8C  80 64 00 04 */	lwz r3, 4(r4)
/* 809FFF90  84 04 00 08 */	lwzu r0, 8(r4)
/* 809FFF94  90 65 00 04 */	stw r3, 4(r5)
/* 809FFF98  94 05 00 08 */	stwu r0, 8(r5)
/* 809FFF9C  42 00 FF F0 */	bdnz lbl_809FFF8C
/* 809FFFA0  3C 60 80 A0 */	lis r3, __vt__19daNpc_Hanjo_Param_c@ha
/* 809FFFA4  38 03 12 70 */	addi r0, r3, __vt__19daNpc_Hanjo_Param_c@l
/* 809FFFA8  3C 60 80 A0 */	lis r3, l_HIO@ha
/* 809FFFAC  94 03 12 D4 */	stwu r0, l_HIO@l(r3)
/* 809FFFB0  3C 80 80 A0 */	lis r4, __dt__19daNpc_Hanjo_Param_cFv@ha
/* 809FFFB4  38 84 05 34 */	addi r4, r4, __dt__19daNpc_Hanjo_Param_cFv@l
/* 809FFFB8  3C A0 80 A0 */	lis r5, lit_3859@ha
/* 809FFFBC  38 A5 12 C8 */	addi r5, r5, lit_3859@l
/* 809FFFC0  4B FF 90 59 */	bl __register_global_object
/* 809FFFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FFFC8  7C 08 03 A6 */	mtlr r0
/* 809FFFCC  38 21 00 10 */	addi r1, r1, 0x10
/* 809FFFD0  4E 80 00 20 */	blr 
