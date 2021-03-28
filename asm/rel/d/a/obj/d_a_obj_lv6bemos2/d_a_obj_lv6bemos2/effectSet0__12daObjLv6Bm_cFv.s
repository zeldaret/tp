lbl_80C7FEC4:
/* 80C7FEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7FEC8  7C 08 02 A6 */	mflr r0
/* 80C7FECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7FED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7FED4  7C 7F 1B 78 */	mr r31, r3
/* 80C7FED8  80 A3 0A 24 */	lwz r5, 0xa24(r3)
/* 80C7FEDC  28 05 00 00 */	cmplwi r5, 0
/* 80C7FEE0  41 82 00 84 */	beq lbl_80C7FF64
/* 80C7FEE4  38 80 00 00 */	li r4, 0
/* 80C7FEE8  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C7FEEC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C7FEF0  41 82 00 18 */	beq lbl_80C7FF08
/* 80C7FEF4  80 65 00 D0 */	lwz r3, 0xd0(r5)
/* 80C7FEF8  80 05 00 DC */	lwz r0, 0xdc(r5)
/* 80C7FEFC  7C 03 02 15 */	add. r0, r3, r0
/* 80C7FF00  40 82 00 08 */	bne lbl_80C7FF08
/* 80C7FF04  38 80 00 01 */	li r4, 1
lbl_80C7FF08:
/* 80C7FF08  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C7FF0C  41 82 00 1C */	beq lbl_80C7FF28
/* 80C7FF10  80 05 00 F4 */	lwz r0, 0xf4(r5)
/* 80C7FF14  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 80C7FF18  90 05 00 F4 */	stw r0, 0xf4(r5)
/* 80C7FF1C  38 00 00 00 */	li r0, 0
/* 80C7FF20  90 1F 0A 24 */	stw r0, 0xa24(r31)
/* 80C7FF24  48 00 00 40 */	b lbl_80C7FF64
lbl_80C7FF28:
/* 80C7FF28  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80C7FF2C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C7FF30  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C7FF34  A8 1F 09 B8 */	lha r0, 0x9b8(r31)
/* 80C7FF38  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80C7FF3C  7C 63 02 14 */	add r3, r3, r0
/* 80C7FF40  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C7FF44  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C7FF48  4B 6C 65 68 */	b PSMTXCopy
/* 80C7FF4C  80 BF 0A 24 */	lwz r5, 0xa24(r31)
/* 80C7FF50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C7FF54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C7FF58  38 85 00 68 */	addi r4, r5, 0x68
/* 80C7FF5C  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80C7FF60  4B 60 08 80 */	b func_802807E0
lbl_80C7FF64:
/* 80C7FF64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7FF68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7FF6C  7C 08 03 A6 */	mtlr r0
/* 80C7FF70  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7FF74  4E 80 00 20 */	blr 
