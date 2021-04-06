lbl_80284338:
/* 80284338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028433C  7C 08 02 A6 */	mflr r0
/* 80284340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80284344  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284348  7C 7F 1B 78 */	mr r31, r3
/* 8028434C  7F E5 FB 78 */	mr r5, r31
/* 80284350  80 84 00 00 */	lwz r4, 0(r4)
/* 80284354  A0 04 00 06 */	lhz r0, 6(r4)
/* 80284358  38 60 00 00 */	li r3, 0
/* 8028435C  28 00 00 00 */	cmplwi r0, 0
/* 80284360  41 82 00 08 */	beq lbl_80284368
/* 80284364  38 64 00 08 */	addi r3, r4, 8
lbl_80284368:
/* 80284368  90 65 00 00 */	stw r3, 0(r5)
/* 8028436C  90 05 00 04 */	stw r0, 4(r5)
/* 80284370  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb7TObject@ha /* 0x803C4AB0@ha */
/* 80284374  38 03 4A B0 */	addi r0, r3, __vt__Q37JStudio3fvb7TObject@l /* 0x803C4AB0@l */
/* 80284378  90 05 00 08 */	stw r0, 8(r5)
/* 8028437C  38 00 00 00 */	li r0, 0
/* 80284380  90 05 00 0C */	stw r0, 0xc(r5)
/* 80284384  90 05 00 10 */	stw r0, 0x10(r5)
/* 80284388  38 7F 00 18 */	addi r3, r31, 0x18
/* 8028438C  90 65 00 14 */	stw r3, 0x14(r5)
/* 80284390  3C 80 80 3C */	lis r4, __vt__Q37JStudio3fvb16TObject_constant@ha /* 0x803C4A90@ha */
/* 80284394  38 04 4A 90 */	addi r0, r4, __vt__Q37JStudio3fvb16TObject_constant@l /* 0x803C4A90@l */
/* 80284398  90 1F 00 08 */	stw r0, 8(r31)
/* 8028439C  4B FF DF D1 */	bl __ct__Q27JStudio23TFunctionValue_constantFv
/* 802843A0  7F E3 FB 78 */	mr r3, r31
/* 802843A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802843A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802843AC  7C 08 03 A6 */	mtlr r0
/* 802843B0  38 21 00 10 */	addi r1, r1, 0x10
/* 802843B4  4E 80 00 20 */	blr 
