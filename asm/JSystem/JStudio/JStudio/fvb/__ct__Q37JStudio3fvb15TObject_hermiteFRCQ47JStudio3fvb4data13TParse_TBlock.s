lbl_802845B0:
/* 802845B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802845B4  7C 08 02 A6 */	mflr r0
/* 802845B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802845BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802845C0  7C 7F 1B 78 */	mr r31, r3
/* 802845C4  7F E5 FB 78 */	mr r5, r31
/* 802845C8  80 84 00 00 */	lwz r4, 0(r4)
/* 802845CC  A0 04 00 06 */	lhz r0, 6(r4)
/* 802845D0  38 60 00 00 */	li r3, 0
/* 802845D4  28 00 00 00 */	cmplwi r0, 0
/* 802845D8  41 82 00 08 */	beq lbl_802845E0
/* 802845DC  38 64 00 08 */	addi r3, r4, 8
lbl_802845E0:
/* 802845E0  90 65 00 00 */	stw r3, 0(r5)
/* 802845E4  90 05 00 04 */	stw r0, 4(r5)
/* 802845E8  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb7TObject@ha
/* 802845EC  38 03 4A B0 */	addi r0, r3, __vt__Q37JStudio3fvb7TObject@l
/* 802845F0  90 05 00 08 */	stw r0, 8(r5)
/* 802845F4  38 00 00 00 */	li r0, 0
/* 802845F8  90 05 00 0C */	stw r0, 0xc(r5)
/* 802845FC  90 05 00 10 */	stw r0, 0x10(r5)
/* 80284600  38 7F 00 18 */	addi r3, r31, 0x18
/* 80284604  90 65 00 14 */	stw r3, 0x14(r5)
/* 80284608  3C 80 80 3C */	lis r4, __vt__Q37JStudio3fvb15TObject_hermite@ha
/* 8028460C  38 04 4A 50 */	addi r0, r4, __vt__Q37JStudio3fvb15TObject_hermite@l
/* 80284610  90 1F 00 08 */	stw r0, 8(r31)
/* 80284614  4B FF EC B1 */	bl __ct__Q27JStudio22TFunctionValue_hermiteFv
/* 80284618  7F E3 FB 78 */	mr r3, r31
/* 8028461C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80284620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80284624  7C 08 03 A6 */	mtlr r0
/* 80284628  38 21 00 10 */	addi r1, r1, 0x10
/* 8028462C  4E 80 00 20 */	blr 
