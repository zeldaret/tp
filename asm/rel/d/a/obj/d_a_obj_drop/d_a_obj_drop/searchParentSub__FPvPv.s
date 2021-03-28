lbl_80BDFCD8:
/* 80BDFCD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDFCDC  7C 08 02 A6 */	mflr r0
/* 80BDFCE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDFCE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDFCE8  93 C1 00 08 */	stw r30, 8(r1)
/* 80BDFCEC  7C 9E 23 78 */	mr r30, r4
/* 80BDFCF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BDFCF4  41 82 00 7C */	beq lbl_80BDFD70
/* 80BDFCF8  4B 43 8F E8 */	b fopAc_IsActor__FPv
/* 80BDFCFC  2C 03 00 00 */	cmpwi r3, 0
/* 80BDFD00  41 82 00 70 */	beq lbl_80BDFD70
/* 80BDFD04  A8 1F 00 0E */	lha r0, 0xe(r31)
/* 80BDFD08  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 80BDFD0C  40 82 00 30 */	bne lbl_80BDFD3C
/* 80BDFD10  88 7F 06 A2 */	lbz r3, 0x6a2(r31)
/* 80BDFD14  28 03 00 FF */	cmplwi r3, 0xff
/* 80BDFD18  41 82 00 58 */	beq lbl_80BDFD70
/* 80BDFD1C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BDFD20  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BDFD24  7C 03 00 40 */	cmplw r3, r0
/* 80BDFD28  40 82 00 48 */	bne lbl_80BDFD70
/* 80BDFD2C  38 00 00 01 */	li r0, 1
/* 80BDFD30  98 1E 06 B7 */	stb r0, 0x6b7(r30)
/* 80BDFD34  7F E3 FB 78 */	mr r3, r31
/* 80BDFD38  48 00 00 3C */	b lbl_80BDFD74
lbl_80BDFD3C:
/* 80BDFD3C  2C 00 01 F6 */	cmpwi r0, 0x1f6
/* 80BDFD40  40 82 00 30 */	bne lbl_80BDFD70
/* 80BDFD44  88 7F 06 C0 */	lbz r3, 0x6c0(r31)
/* 80BDFD48  28 03 00 FF */	cmplwi r3, 0xff
/* 80BDFD4C  41 82 00 24 */	beq lbl_80BDFD70
/* 80BDFD50  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BDFD54  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80BDFD58  7C 03 00 40 */	cmplw r3, r0
/* 80BDFD5C  40 82 00 14 */	bne lbl_80BDFD70
/* 80BDFD60  38 00 00 02 */	li r0, 2
/* 80BDFD64  98 1E 06 B7 */	stb r0, 0x6b7(r30)
/* 80BDFD68  7F E3 FB 78 */	mr r3, r31
/* 80BDFD6C  48 00 00 08 */	b lbl_80BDFD74
lbl_80BDFD70:
/* 80BDFD70  38 60 00 00 */	li r3, 0
lbl_80BDFD74:
/* 80BDFD74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDFD78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BDFD7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDFD80  7C 08 03 A6 */	mtlr r0
/* 80BDFD84  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDFD88  4E 80 00 20 */	blr 
