lbl_8097BBF8:
/* 8097BBF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097BBFC  7C 08 02 A6 */	mflr r0
/* 8097BC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097BC04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097BC08  7C 7F 1B 78 */	mr r31, r3
/* 8097BC0C  88 03 0B 94 */	lbz r0, 0xb94(r3)
/* 8097BC10  28 00 00 00 */	cmplwi r0, 0
/* 8097BC14  41 82 00 48 */	beq lbl_8097BC5C
/* 8097BC18  38 80 00 10 */	li r4, 0x10
/* 8097BC1C  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 8097BC20  4B 7D C4 D0 */	b getAnmP__10daNpcCd2_cFii
/* 8097BC24  7C 64 1B 78 */	mr r4, r3
/* 8097BC28  7F E3 FB 78 */	mr r3, r31
/* 8097BC2C  3C A0 80 98 */	lis r5, lit_4091@ha
/* 8097BC30  C0 25 F5 44 */	lfs f1, lit_4091@l(r5)
/* 8097BC34  3C A0 80 98 */	lis r5, lit_4092@ha
/* 8097BC38  C0 45 F5 48 */	lfs f2, lit_4092@l(r5)
/* 8097BC3C  38 A0 00 02 */	li r5, 2
/* 8097BC40  38 C0 00 00 */	li r6, 0
/* 8097BC44  38 E0 FF FF */	li r7, -1
/* 8097BC48  4B 7D D2 B8 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 8097BC4C  38 00 00 01 */	li r0, 1
/* 8097BC50  90 1F 0A A0 */	stw r0, 0xaa0(r31)
/* 8097BC54  38 00 00 00 */	li r0, 0
/* 8097BC58  98 1F 0B 94 */	stb r0, 0xb94(r31)
lbl_8097BC5C:
/* 8097BC5C  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 8097BC60  7C 00 00 34 */	cntlzw r0, r0
/* 8097BC64  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 8097BC68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097BC6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097BC70  7C 08 03 A6 */	mtlr r0
/* 8097BC74  38 21 00 10 */	addi r1, r1, 0x10
/* 8097BC78  4E 80 00 20 */	blr 
