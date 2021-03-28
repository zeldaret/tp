lbl_8036EE94:
/* 8036EE94  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8036EE98  7C 08 02 A6 */	mflr r0
/* 8036EE9C  38 A0 00 40 */	li r5, 0x40
/* 8036EEA0  90 01 00 74 */	stw r0, 0x74(r1)
/* 8036EEA4  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8036EEA8  7C 7F 1B 78 */	mr r31, r3
/* 8036EEAC  38 61 00 14 */	addi r3, r1, 0x14
/* 8036EEB0  93 C1 00 68 */	stw r30, 0x68(r1)
/* 8036EEB4  93 A1 00 64 */	stw r29, 0x64(r1)
/* 8036EEB8  7C 9D 23 78 */	mr r29, r4
/* 8036EEBC  38 80 00 00 */	li r4, 0
/* 8036EEC0  4B C9 45 99 */	bl memset
/* 8036EEC4  38 60 00 D3 */	li r3, 0xd3
/* 8036EEC8  38 00 00 40 */	li r0, 0x40
/* 8036EECC  98 61 00 18 */	stb r3, 0x18(r1)
/* 8036EED0  38 61 00 0C */	addi r3, r1, 0xc
/* 8036EED4  38 81 00 08 */	addi r4, r1, 8
/* 8036EED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036EEDC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8036EEE0  4B FF E8 3D */	bl TRKGetFreeBuffer
/* 8036EEE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8036EEE8  40 82 00 18 */	bne lbl_8036EF00
/* 8036EEEC  80 61 00 08 */	lwz r3, 8(r1)
/* 8036EEF0  38 81 00 14 */	addi r4, r1, 0x14
/* 8036EEF4  38 A0 00 40 */	li r5, 0x40
/* 8036EEF8  4B FF E4 91 */	bl TRKAppendBuffer_ui8
/* 8036EEFC  7C 7F 1B 78 */	mr r31, r3
lbl_8036EF00:
/* 8036EF00  2C 1F 00 00 */	cmpwi r31, 0
/* 8036EF04  40 82 00 50 */	bne lbl_8036EF54
/* 8036EF08  38 00 00 00 */	li r0, 0
/* 8036EF0C  38 81 00 10 */	addi r4, r1, 0x10
/* 8036EF10  90 1D 00 00 */	stw r0, 0(r29)
/* 8036EF14  38 A0 00 03 */	li r5, 3
/* 8036EF18  38 C0 00 03 */	li r6, 3
/* 8036EF1C  38 E0 00 00 */	li r7, 0
/* 8036EF20  80 61 00 08 */	lwz r3, 8(r1)
/* 8036EF24  48 00 01 75 */	bl TRKRequestSend
/* 8036EF28  7C 7F 1B 79 */	or. r31, r3, r3
/* 8036EF2C  40 82 00 10 */	bne lbl_8036EF3C
/* 8036EF30  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8036EF34  4B FF E7 BD */	bl TRKGetBuffer
/* 8036EF38  7C 7E 1B 78 */	mr r30, r3
lbl_8036EF3C:
/* 8036EF3C  2C 1F 00 00 */	cmpwi r31, 0
/* 8036EF40  40 82 00 0C */	bne lbl_8036EF4C
/* 8036EF44  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 8036EF48  90 1D 00 00 */	stw r0, 0(r29)
lbl_8036EF4C:
/* 8036EF4C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8036EF50  4B FF E7 3D */	bl TRKReleaseBuffer
lbl_8036EF54:
/* 8036EF54  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8036EF58  4B FF E7 35 */	bl TRKReleaseBuffer
/* 8036EF5C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8036EF60  7F E3 FB 78 */	mr r3, r31
/* 8036EF64  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8036EF68  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8036EF6C  83 A1 00 64 */	lwz r29, 0x64(r1)
/* 8036EF70  7C 08 03 A6 */	mtlr r0
/* 8036EF74  38 21 00 70 */	addi r1, r1, 0x70
/* 8036EF78  4E 80 00 20 */	blr 
