lbl_802DF000:
/* 802DF000  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF004  7C 08 02 A6 */	mflr r0
/* 802DF008  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF00C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DF010  93 C1 00 08 */	stw r30, 8(r1)
/* 802DF014  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DF018  7C 9F 23 78 */	mr r31, r4
/* 802DF01C  41 82 00 54 */	beq lbl_802DF070
/* 802DF020  3C 80 80 3D */	lis r4, __vt__10JUTResFont@ha
/* 802DF024  38 04 C5 A0 */	addi r0, r4, __vt__10JUTResFont@l
/* 802DF028  90 1E 00 00 */	stw r0, 0(r30)
/* 802DF02C  88 1E 00 04 */	lbz r0, 4(r30)
/* 802DF030  28 00 00 00 */	cmplwi r0, 0
/* 802DF034  41 82 00 18 */	beq lbl_802DF04C
/* 802DF038  48 00 00 55 */	bl deleteMemBlocks_ResFont__10JUTResFontFv
/* 802DF03C  7F C3 F3 78 */	mr r3, r30
/* 802DF040  48 00 00 71 */	bl initialize_state__10JUTResFontFv
/* 802DF044  7F C3 F3 78 */	mr r3, r30
/* 802DF048  4B FF FC DD */	bl initialize_state__7JUTFontFv
lbl_802DF04C:
/* 802DF04C  28 1E 00 00 */	cmplwi r30, 0
/* 802DF050  41 82 00 10 */	beq lbl_802DF060
/* 802DF054  3C 60 80 3A */	lis r3, __vt__7JUTFont@ha
/* 802DF058  38 03 31 F0 */	addi r0, r3, __vt__7JUTFont@l
/* 802DF05C  90 1E 00 00 */	stw r0, 0(r30)
lbl_802DF060:
/* 802DF060  7F E0 07 35 */	extsh. r0, r31
/* 802DF064  40 81 00 0C */	ble lbl_802DF070
/* 802DF068  7F C3 F3 78 */	mr r3, r30
/* 802DF06C  4B FE FC D1 */	bl __dl__FPv
lbl_802DF070:
/* 802DF070  7F C3 F3 78 */	mr r3, r30
/* 802DF074  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DF078  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DF07C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF080  7C 08 03 A6 */	mtlr r0
/* 802DF084  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF088  4E 80 00 20 */	blr 
