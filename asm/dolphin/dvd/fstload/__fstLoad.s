lbl_8034BE04:
/* 8034BE04  7C 08 02 A6 */	mflr r0
/* 8034BE08  3C 60 80 3D */	lis r3, lit_38@ha
/* 8034BE0C  90 01 00 04 */	stw r0, 4(r1)
/* 8034BE10  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8034BE14  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8034BE18  3B E3 16 F0 */	addi r31, r3, lit_38@l
/* 8034BE1C  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8034BE20  93 A1 00 54 */	stw r29, 0x54(r1)
/* 8034BE24  4B FE F4 69 */	bl OSGetArenaHi
/* 8034BE28  3C 60 80 45 */	lis r3, bb2Buf@ha
/* 8034BE2C  38 63 C9 B8 */	addi r3, r3, bb2Buf@l
/* 8034BE30  38 81 00 2B */	addi r4, r1, 0x2b
/* 8034BE34  38 03 00 1F */	addi r0, r3, 0x1f
/* 8034BE38  54 83 00 34 */	rlwinm r3, r4, 0, 0, 0x1a
/* 8034BE3C  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 8034BE40  90 6D 92 58 */	stw r3, idTmp(r13)
/* 8034BE44  90 0D 92 54 */	stw r0, bb2(r13)
/* 8034BE48  4B FF F2 F1 */	bl DVDReset
/* 8034BE4C  3C 60 80 45 */	lis r3, block@ha
/* 8034BE50  80 8D 92 58 */	lwz r4, idTmp(r13)
/* 8034BE54  3C A0 80 35 */	lis r5, cb@ha
/* 8034BE58  38 63 C9 F8 */	addi r3, r3, block@l
/* 8034BE5C  38 A5 BD 2C */	addi r5, r5, cb@l
/* 8034BE60  4B FF F0 79 */	bl DVDReadDiskID
lbl_8034BE64:
/* 8034BE64  4B FF F3 65 */	bl DVDGetDriveStatus
/* 8034BE68  2C 03 00 00 */	cmpwi r3, 0
/* 8034BE6C  40 82 FF F8 */	bne lbl_8034BE64
/* 8034BE70  80 6D 92 54 */	lwz r3, bb2(r13)
/* 8034BE74  3F A0 80 00 */	lis r29, 0x8000 /* 0x80000000@ha */
/* 8034BE78  3F C0 80 00 */	lis r30, 0x8000 /* 0x80000038@ha */
/* 8034BE7C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8034BE80  38 7D 00 00 */	addi r3, r29, 0x0000 /* 0x80000000@l */
/* 8034BE84  38 A0 00 20 */	li r5, 0x20
/* 8034BE88  90 1E 00 38 */	stw r0, 0x0038(r30)
/* 8034BE8C  80 8D 92 54 */	lwz r4, bb2(r13)
/* 8034BE90  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8034BE94  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 8034BE98  80 8D 92 58 */	lwz r4, idTmp(r13)
/* 8034BE9C  4B CB 76 A5 */	bl memcpy
/* 8034BEA0  38 6D 84 80 */	la r3, lit_37(r13) /* 80450A00-_SDA_BASE_ */
/* 8034BEA4  4C C6 31 82 */	crclr 6
/* 8034BEA8  4B CB AC 15 */	bl OSReport
/* 8034BEAC  88 9D 00 00 */	lbz r4, 0(r29)
/* 8034BEB0  7F E3 FB 78 */	mr r3, r31
/* 8034BEB4  88 BD 00 01 */	lbz r5, 1(r29)
/* 8034BEB8  4C C6 31 82 */	crclr 6
/* 8034BEBC  88 DD 00 02 */	lbz r6, 2(r29)
/* 8034BEC0  88 FD 00 03 */	lbz r7, 3(r29)
/* 8034BEC4  7C 84 07 74 */	extsb r4, r4
/* 8034BEC8  7C A5 07 74 */	extsb r5, r5
/* 8034BECC  7C C6 07 74 */	extsb r6, r6
/* 8034BED0  7C E7 07 74 */	extsb r7, r7
/* 8034BED4  4B CB AB E9 */	bl OSReport
/* 8034BED8  88 9D 00 04 */	lbz r4, 4(r29)
/* 8034BEDC  38 7F 00 1C */	addi r3, r31, 0x1c
/* 8034BEE0  88 BD 00 05 */	lbz r5, 5(r29)
/* 8034BEE4  4C C6 31 82 */	crclr 6
/* 8034BEE8  7C 84 07 74 */	extsb r4, r4
/* 8034BEEC  7C A5 07 74 */	extsb r5, r5
/* 8034BEF0  4B CB AB CD */	bl OSReport
/* 8034BEF4  88 9D 00 06 */	lbz r4, 6(r29)
/* 8034BEF8  38 7F 00 34 */	addi r3, r31, 0x34
/* 8034BEFC  4C C6 31 82 */	crclr 6
/* 8034BF00  4B CB AB BD */	bl OSReport
/* 8034BF04  88 9D 00 07 */	lbz r4, 7(r29)
/* 8034BF08  38 7F 00 48 */	addi r3, r31, 0x48
/* 8034BF0C  4C C6 31 82 */	crclr 6
/* 8034BF10  4B CB AB AD */	bl OSReport
/* 8034BF14  88 1E 00 08 */	lbz r0, 8(r30)
/* 8034BF18  28 00 00 00 */	cmplwi r0, 0
/* 8034BF1C  40 82 00 0C */	bne lbl_8034BF28
/* 8034BF20  38 8D 84 84 */	la r4, lit_42(r13) /* 80450A04-_SDA_BASE_ */
/* 8034BF24  48 00 00 08 */	b lbl_8034BF2C
lbl_8034BF28:
/* 8034BF28  38 8D 84 88 */	la r4, lit_43(r13) /* 80450A08-_SDA_BASE_ */
lbl_8034BF2C:
/* 8034BF2C  4C C6 31 82 */	crclr 6
/* 8034BF30  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8034BF34  4B CB AB 89 */	bl OSReport
/* 8034BF38  38 6D 84 80 */	la r3, lit_37(r13) /* 80450A00-_SDA_BASE_ */
/* 8034BF3C  4C C6 31 82 */	crclr 6
/* 8034BF40  4B CB AB 7D */	bl OSReport
/* 8034BF44  80 6D 92 54 */	lwz r3, bb2(r13)
/* 8034BF48  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8034BF4C  4B FE F3 51 */	bl OSSetArenaHi
/* 8034BF50  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8034BF54  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8034BF58  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8034BF5C  83 A1 00 54 */	lwz r29, 0x54(r1)
/* 8034BF60  38 21 00 60 */	addi r1, r1, 0x60
/* 8034BF64  7C 08 03 A6 */	mtlr r0
/* 8034BF68  4E 80 00 20 */	blr 
