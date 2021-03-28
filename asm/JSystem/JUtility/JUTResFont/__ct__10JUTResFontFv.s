lbl_802DEF48:
/* 802DEF48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DEF4C  7C 08 02 A6 */	mflr r0
/* 802DEF50  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DEF54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DEF58  7C 7F 1B 78 */	mr r31, r3
/* 802DEF5C  4B FF FD 9D */	bl __ct__7JUTFontFv
/* 802DEF60  3C 60 80 3D */	lis r3, __vt__10JUTResFont@ha
/* 802DEF64  38 03 C5 A0 */	addi r0, r3, __vt__10JUTResFont@l
/* 802DEF68  90 1F 00 00 */	stw r0, 0(r31)
/* 802DEF6C  7F E3 FB 78 */	mr r3, r31
/* 802DEF70  48 00 01 41 */	bl initialize_state__10JUTResFontFv
/* 802DEF74  7F E3 FB 78 */	mr r3, r31
/* 802DEF78  4B FF FD AD */	bl initialize_state__7JUTFontFv
/* 802DEF7C  7F E3 FB 78 */	mr r3, r31
/* 802DEF80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DEF84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DEF88  7C 08 03 A6 */	mtlr r0
/* 802DEF8C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DEF90  4E 80 00 20 */	blr 
