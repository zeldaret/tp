lbl_8028717C:
/* 8028717C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287180  7C 08 02 A6 */	mflr r0
/* 80287184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028718C  93 C1 00 08 */	stw r30, 8(r1)
/* 80287190  7C 7E 1B 79 */	or. r30, r3, r3
/* 80287194  7C 9F 23 78 */	mr r31, r4
/* 80287198  41 82 00 28 */	beq lbl_802871C0
/* 8028719C  3C 80 80 3C */	lis r4, __vt__Q27JStudio12TAdaptor_fog@ha
/* 802871A0  38 04 54 C4 */	addi r0, r4, __vt__Q27JStudio12TAdaptor_fog@l
/* 802871A4  90 1E 00 00 */	stw r0, 0(r30)
/* 802871A8  38 80 00 00 */	li r4, 0
/* 802871AC  4B FF EE 25 */	bl __dt__Q27JStudio8TAdaptorFv
/* 802871B0  7F E0 07 35 */	extsh. r0, r31
/* 802871B4  40 81 00 0C */	ble lbl_802871C0
/* 802871B8  7F C3 F3 78 */	mr r3, r30
/* 802871BC  48 04 7B 81 */	bl __dl__FPv
lbl_802871C0:
/* 802871C0  7F C3 F3 78 */	mr r3, r30
/* 802871C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802871C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802871CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802871D0  7C 08 03 A6 */	mtlr r0
/* 802871D4  38 21 00 10 */	addi r1, r1, 0x10
/* 802871D8  4E 80 00 20 */	blr 
