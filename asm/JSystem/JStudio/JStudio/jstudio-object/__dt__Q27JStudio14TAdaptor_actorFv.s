lbl_802868B0:
/* 802868B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802868B4  7C 08 02 A6 */	mflr r0
/* 802868B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802868BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802868C0  93 C1 00 08 */	stw r30, 8(r1)
/* 802868C4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802868C8  7C 9F 23 78 */	mr r31, r4
/* 802868CC  41 82 00 28 */	beq lbl_802868F4
/* 802868D0  3C 80 80 3C */	lis r4, __vt__Q27JStudio14TAdaptor_actor@ha
/* 802868D4  38 04 55 A0 */	addi r0, r4, __vt__Q27JStudio14TAdaptor_actor@l
/* 802868D8  90 1E 00 00 */	stw r0, 0(r30)
/* 802868DC  38 80 00 00 */	li r4, 0
/* 802868E0  4B FF F6 F1 */	bl __dt__Q27JStudio8TAdaptorFv
/* 802868E4  7F E0 07 35 */	extsh. r0, r31
/* 802868E8  40 81 00 0C */	ble lbl_802868F4
/* 802868EC  7F C3 F3 78 */	mr r3, r30
/* 802868F0  48 04 84 4D */	bl __dl__FPv
lbl_802868F4:
/* 802868F4  7F C3 F3 78 */	mr r3, r30
/* 802868F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802868FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80286900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286904  7C 08 03 A6 */	mtlr r0
/* 80286908  38 21 00 10 */	addi r1, r1, 0x10
/* 8028690C  4E 80 00 20 */	blr 
