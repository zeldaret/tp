lbl_802EC01C:
/* 802EC01C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EC020  7C 08 02 A6 */	mflr r0
/* 802EC024  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EC028  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EC02C  93 C1 00 08 */	stw r30, 8(r1)
/* 802EC030  7C 7E 1B 78 */	mr r30, r3
/* 802EC034  7C BF 2B 78 */	mr r31, r5
/* 802EC038  28 04 00 00 */	cmplwi r4, 0
/* 802EC03C  41 82 00 0C */	beq lbl_802EC048
/* 802EC040  38 60 00 00 */	li r3, 0
/* 802EC044  48 00 00 4C */	b lbl_802EC090
lbl_802EC048:
/* 802EC048  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 802EC04C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 802EC050  41 82 00 10 */	beq lbl_802EC060
/* 802EC054  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 802EC058  38 80 00 01 */	li r4, 1
/* 802EC05C  4B FF 21 D9 */	bl __dt__10JUTTextureFv
lbl_802EC060:
/* 802EC060  93 FE 00 50 */	stw r31, 0x50(r30)
/* 802EC064  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 802EC068  54 00 06 30 */	rlwinm r0, r0, 0, 0x18, 0x18
/* 802EC06C  98 1E 00 5C */	stb r0, 0x5c(r30)
/* 802EC070  80 7E 00 54 */	lwz r3, 0x54(r30)
/* 802EC074  4B FE 2C C9 */	bl __dl__FPv
/* 802EC078  38 00 00 00 */	li r0, 0
/* 802EC07C  90 1E 00 54 */	stw r0, 0x54(r30)
/* 802EC080  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EC084  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EC088  B0 1E 00 04 */	sth r0, 4(r30)
/* 802EC08C  38 60 00 01 */	li r3, 1
lbl_802EC090:
/* 802EC090  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EC094  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EC098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EC09C  7C 08 03 A6 */	mtlr r0
/* 802EC0A0  38 21 00 10 */	addi r1, r1, 0x10
/* 802EC0A4  4E 80 00 20 */	blr 
