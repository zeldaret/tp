lbl_80284254:
/* 80284254  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284258  7C 08 02 A6 */	mflr r0
/* 8028425C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80284260  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80284264  7C 7F 1B 78 */	mr r31, r3
/* 80284268  7F E5 FB 78 */	mr r5, r31
/* 8028426C  80 84 00 00 */	lwz r4, 0(r4)
/* 80284270  A0 04 00 06 */	lhz r0, 6(r4)
/* 80284274  38 60 00 00 */	li r3, 0
/* 80284278  28 00 00 00 */	cmplwi r0, 0
/* 8028427C  41 82 00 08 */	beq lbl_80284284
/* 80284280  38 64 00 08 */	addi r3, r4, 8
lbl_80284284:
/* 80284284  90 65 00 00 */	stw r3, 0(r5)
/* 80284288  90 05 00 04 */	stw r0, 4(r5)
/* 8028428C  3C 60 80 3C */	lis r3, __vt__Q37JStudio3fvb7TObject@ha
/* 80284290  38 03 4A B0 */	addi r0, r3, __vt__Q37JStudio3fvb7TObject@l
/* 80284294  90 05 00 08 */	stw r0, 8(r5)
/* 80284298  38 00 00 00 */	li r0, 0
/* 8028429C  90 05 00 0C */	stw r0, 0xc(r5)
/* 802842A0  90 05 00 10 */	stw r0, 0x10(r5)
/* 802842A4  38 7F 00 18 */	addi r3, r31, 0x18
/* 802842A8  90 65 00 14 */	stw r3, 0x14(r5)
/* 802842AC  3C 80 80 3C */	lis r4, __vt__Q37JStudio3fvb17TObject_composite@ha
/* 802842B0  38 04 4A A0 */	addi r0, r4, __vt__Q37JStudio3fvb17TObject_composite@l
/* 802842B4  90 1F 00 08 */	stw r0, 8(r31)
/* 802842B8  4B FF DA A5 */	bl __ct__Q27JStudio24TFunctionValue_compositeFv
/* 802842BC  7F E3 FB 78 */	mr r3, r31
/* 802842C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802842C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802842C8  7C 08 03 A6 */	mtlr r0
/* 802842CC  38 21 00 10 */	addi r1, r1, 0x10
/* 802842D0  4E 80 00 20 */	blr 
