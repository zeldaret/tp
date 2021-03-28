lbl_8028A328:
/* 8028A328  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8028A32C  7C 08 02 A6 */	mflr r0
/* 8028A330  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8028A334  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8028A338  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8028A33C  7C 7E 1B 78 */	mr r30, r3
/* 8028A340  7C 9F 23 78 */	mr r31, r4
/* 8028A344  28 05 00 00 */	cmplwi r5, 0
/* 8028A348  40 82 00 0C */	bne lbl_8028A354
/* 8028A34C  38 60 00 00 */	li r3, 0
/* 8028A350  48 00 00 64 */	b lbl_8028A3B4
lbl_8028A354:
/* 8028A354  7C A3 2B 78 */	mr r3, r5
/* 8028A358  7C C4 33 78 */	mr r4, r6
/* 8028A35C  38 A1 00 68 */	addi r5, r1, 0x68
/* 8028A360  81 83 00 00 */	lwz r12, 0(r3)
/* 8028A364  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 8028A368  7D 89 03 A6 */	mtctr r12
/* 8028A36C  4E 80 04 21 */	bctrl 
/* 8028A370  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8028A374  40 82 00 0C */	bne lbl_8028A380
/* 8028A378  38 60 00 00 */	li r3, 0
/* 8028A37C  48 00 00 38 */	b lbl_8028A3B4
lbl_8028A380:
/* 8028A380  38 61 00 38 */	addi r3, r1, 0x38
/* 8028A384  38 9F 00 18 */	addi r4, r31, 0x18
/* 8028A388  38 BF 00 0C */	addi r5, r31, 0xc
/* 8028A38C  7F E6 FB 78 */	mr r6, r31
/* 8028A390  4B FF B7 B5 */	bl getTransformation_SRxyzT__Q27JStudio4mathFPA4_fRC3VecRC3VecRC3Vec
/* 8028A394  38 61 00 68 */	addi r3, r1, 0x68
/* 8028A398  38 81 00 08 */	addi r4, r1, 8
/* 8028A39C  48 0B C2 15 */	bl PSMTXInverse
/* 8028A3A0  38 61 00 08 */	addi r3, r1, 8
/* 8028A3A4  38 81 00 38 */	addi r4, r1, 0x38
/* 8028A3A8  7F C5 F3 78 */	mr r5, r30
/* 8028A3AC  48 0B C1 39 */	bl PSMTXConcat
/* 8028A3B0  38 60 00 01 */	li r3, 1
lbl_8028A3B4:
/* 8028A3B4  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8028A3B8  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8028A3BC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8028A3C0  7C 08 03 A6 */	mtlr r0
/* 8028A3C4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8028A3C8  4E 80 00 20 */	blr 
