lbl_8032F9C0:
/* 8032F9C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8032F9C4  7C 08 02 A6 */	mflr r0
/* 8032F9C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8032F9CC  39 61 00 30 */	addi r11, r1, 0x30
/* 8032F9D0  48 03 27 F9 */	bl _savegpr_24
/* 8032F9D4  7C 7C 1B 78 */	mr r28, r3
/* 8032F9D8  7C 9D 23 78 */	mr r29, r4
/* 8032F9DC  3B E0 00 00 */	li r31, 0
/* 8032F9E0  A0 64 00 14 */	lhz r3, 0x14(r4)
/* 8032F9E4  38 00 00 03 */	li r0, 3
/* 8032F9E8  7C 03 03 D6 */	divw r0, r3, r0
/* 8032F9EC  54 1B 04 3E */	clrlwi r27, r0, 0x10
/* 8032F9F0  A0 1C 00 1C */	lhz r0, 0x1c(r28)
/* 8032F9F4  28 00 00 01 */	cmplwi r0, 1
/* 8032F9F8  40 82 00 0C */	bne lbl_8032FA04
/* 8032F9FC  38 60 00 02 */	li r3, 2
/* 8032FA00  48 00 00 DC */	b lbl_8032FADC
lbl_8032FA04:
/* 8032FA04  3B C0 00 00 */	li r30, 0
/* 8032FA08  48 00 00 C4 */	b lbl_8032FACC
lbl_8032FA0C:
/* 8032FA0C  80 7D 00 2C */	lwz r3, 0x2c(r29)
/* 8032FA10  57 C4 04 3E */	clrlwi r4, r30, 0x10
/* 8032FA14  57 C0 0B FC */	rlwinm r0, r30, 1, 0xf, 0x1e
/* 8032FA18  7C 03 02 2E */	lhzx r0, r3, r0
/* 8032FA1C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8032FA20  41 82 00 A8 */	beq lbl_8032FAC8
/* 8032FA24  80 7C 00 08 */	lwz r3, 8(r28)
/* 8032FA28  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 8032FA2C  7F 43 00 2E */	lwzx r26, r3, r0
/* 8032FA30  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 8032FA34  7C 83 20 AE */	lbzx r4, r3, r4
/* 8032FA38  80 7A 00 3C */	lwz r3, 0x3c(r26)
/* 8032FA3C  3C 00 C0 00 */	lis r0, 0xc000
/* 8032FA40  7C 03 00 40 */	cmplw r3, r0
/* 8032FA44  40 80 00 08 */	bge lbl_8032FA4C
/* 8032FA48  48 00 00 08 */	b lbl_8032FA50
lbl_8032FA4C:
/* 8032FA4C  38 60 00 00 */	li r3, 0
lbl_8032FA50:
/* 8032FA50  28 03 00 00 */	cmplwi r3, 0
/* 8032FA54  40 82 00 0C */	bne lbl_8032FA60
/* 8032FA58  3B E0 00 01 */	li r31, 1
/* 8032FA5C  48 00 00 6C */	b lbl_8032FAC8
lbl_8032FA60:
/* 8032FA60  54 98 06 3E */	clrlwi r24, r4, 0x18
/* 8032FA64  28 18 00 FF */	cmplwi r24, 0xff
/* 8032FA68  41 82 00 60 */	beq lbl_8032FAC8
/* 8032FA6C  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 8032FA70  7F 04 C3 78 */	mr r4, r24
/* 8032FA74  81 83 00 00 */	lwz r12, 0(r3)
/* 8032FA78  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8032FA7C  7D 89 03 A6 */	mtctr r12
/* 8032FA80  4E 80 04 21 */	bctrl 
/* 8032FA84  28 03 00 00 */	cmplwi r3, 0
/* 8032FA88  40 82 00 40 */	bne lbl_8032FAC8
/* 8032FA8C  38 60 00 94 */	li r3, 0x94
/* 8032FA90  4B F9 F1 BD */	bl __nw__FUl
/* 8032FA94  7C 79 1B 79 */	or. r25, r3, r3
/* 8032FA98  41 82 00 10 */	beq lbl_8032FAA8
/* 8032FA9C  3C 80 80 3A */	lis r4, j3dDefaultTexMtxInfo@ha /* 0x803A1F1C@ha */
/* 8032FAA0  38 84 1F 1C */	addi r4, r4, j3dDefaultTexMtxInfo@l /* 0x803A1F1C@l */
/* 8032FAA4  4B FF 5C 75 */	bl __as__13J3DTexMtxInfoFRC13J3DTexMtxInfo
lbl_8032FAA8:
/* 8032FAA8  3B E0 00 04 */	li r31, 4
/* 8032FAAC  80 7A 00 28 */	lwz r3, 0x28(r26)
/* 8032FAB0  7F 04 C3 78 */	mr r4, r24
/* 8032FAB4  7F 25 CB 78 */	mr r5, r25
/* 8032FAB8  81 83 00 00 */	lwz r12, 0(r3)
/* 8032FABC  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 8032FAC0  7D 89 03 A6 */	mtctr r12
/* 8032FAC4  4E 80 04 21 */	bctrl 
lbl_8032FAC8:
/* 8032FAC8  3B DE 00 01 */	addi r30, r30, 1
lbl_8032FACC:
/* 8032FACC  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8032FAD0  7C 00 D8 40 */	cmplw r0, r27
/* 8032FAD4  41 80 FF 38 */	blt lbl_8032FA0C
/* 8032FAD8  7F E3 FB 78 */	mr r3, r31
lbl_8032FADC:
/* 8032FADC  39 61 00 30 */	addi r11, r1, 0x30
/* 8032FAE0  48 03 27 35 */	bl _restgpr_24
/* 8032FAE4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8032FAE8  7C 08 03 A6 */	mtlr r0
/* 8032FAEC  38 21 00 30 */	addi r1, r1, 0x30
/* 8032FAF0  4E 80 00 20 */	blr 
