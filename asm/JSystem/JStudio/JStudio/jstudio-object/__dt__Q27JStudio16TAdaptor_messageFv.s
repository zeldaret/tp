lbl_802875E0:
/* 802875E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802875E4  7C 08 02 A6 */	mflr r0
/* 802875E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802875EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802875F0  93 C1 00 08 */	stw r30, 8(r1)
/* 802875F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802875F8  7C 9F 23 78 */	mr r31, r4
/* 802875FC  41 82 00 28 */	beq lbl_80287624
/* 80287600  3C 80 80 3A */	lis r4, __vt__Q27JStudio16TAdaptor_message@ha /* 0x803A7BC0@ha */
/* 80287604  38 04 7B C0 */	addi r0, r4, __vt__Q27JStudio16TAdaptor_message@l /* 0x803A7BC0@l */
/* 80287608  90 1E 00 00 */	stw r0, 0(r30)
/* 8028760C  38 80 00 00 */	li r4, 0
/* 80287610  4B FF E9 C1 */	bl __dt__Q27JStudio8TAdaptorFv
/* 80287614  7F E0 07 35 */	extsh. r0, r31
/* 80287618  40 81 00 0C */	ble lbl_80287624
/* 8028761C  7F C3 F3 78 */	mr r3, r30
/* 80287620  48 04 77 1D */	bl __dl__FPv
lbl_80287624:
/* 80287624  7F C3 F3 78 */	mr r3, r30
/* 80287628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028762C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80287630  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287634  7C 08 03 A6 */	mtlr r0
/* 80287638  38 21 00 10 */	addi r1, r1, 0x10
/* 8028763C  4E 80 00 20 */	blr 
