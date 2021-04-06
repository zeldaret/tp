lbl_80358B34:
/* 80358B34  7C 08 02 A6 */	mflr r0
/* 80358B38  90 01 00 04 */	stw r0, 4(r1)
/* 80358B3C  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 80358B40  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 80358B44  3B 86 00 00 */	addi r28, r6, 0
/* 80358B48  3B 65 00 00 */	addi r27, r5, 0
/* 80358B4C  3B E4 00 00 */	addi r31, r4, 0
/* 80358B50  3B C3 00 00 */	addi r30, r3, 0
/* 80358B54  3B A7 00 00 */	addi r29, r7, 0
/* 80358B58  38 9B 00 00 */	addi r4, r27, 0
/* 80358B5C  38 BC 00 00 */	addi r5, r28, 0
/* 80358B60  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80358B64  4B FF F9 3D */	bl __CARDSeek
/* 80358B68  2C 03 00 00 */	cmpwi r3, 0
/* 80358B6C  40 80 00 08 */	bge lbl_80358B74
/* 80358B70  48 00 00 C4 */	b lbl_80358C34
lbl_80358B74:
/* 80358B74  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80358B78  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80358B7C  38 84 FF FF */	addi r4, r4, -1
/* 80358B80  7F 80 20 39 */	and. r0, r28, r4
/* 80358B84  40 82 00 0C */	bne lbl_80358B90
/* 80358B88  7F 60 20 39 */	and. r0, r27, r4
/* 80358B8C  41 82 00 10 */	beq lbl_80358B9C
lbl_80358B90:
/* 80358B90  38 80 FF 80 */	li r4, -128
/* 80358B94  4B FF B0 D9 */	bl __CARDPutControlBlock
/* 80358B98  48 00 00 9C */	b lbl_80358C34
lbl_80358B9C:
/* 80358B9C  4B FF CB E1 */	bl __CARDGetDirBlock
/* 80358BA0  80 1E 00 04 */	lwz r0, 4(r30)
/* 80358BA4  54 00 30 32 */	slwi r0, r0, 6
/* 80358BA8  7C 83 02 14 */	add r4, r3, r0
/* 80358BAC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80358BB0  4B FF F1 C1 */	bl __CARDIsWritable
/* 80358BB4  7C 64 1B 79 */	or. r4, r3, r3
/* 80358BB8  40 80 00 10 */	bge lbl_80358BC8
/* 80358BBC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80358BC0  4B FF B0 AD */	bl __CARDPutControlBlock
/* 80358BC4  48 00 00 70 */	b lbl_80358C34
lbl_80358BC8:
/* 80358BC8  38 7F 00 00 */	addi r3, r31, 0
/* 80358BCC  38 9B 00 00 */	addi r4, r27, 0
/* 80358BD0  4B FE 2A 0D */	bl DCStoreRange
/* 80358BD4  28 1D 00 00 */	cmplwi r29, 0
/* 80358BD8  41 82 00 0C */	beq lbl_80358BE4
/* 80358BDC  7F A0 EB 78 */	mr r0, r29
/* 80358BE0  48 00 00 0C */	b lbl_80358BEC
lbl_80358BE4:
/* 80358BE4  3C 60 80 35 */	lis r3, __CARDDefaultApiCallback@ha /* 0x80352A30@ha */
/* 80358BE8  38 03 2A 30 */	addi r0, r3, __CARDDefaultApiCallback@l /* 0x80352A30@l */
lbl_80358BEC:
/* 80358BEC  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 80358BF0  3C 60 80 36 */	lis r3, EraseCallback@ha /* 0x80358A84@ha */
/* 80358BF4  38 A3 8A 84 */	addi r5, r3, EraseCallback@l /* 0x80358A84@l */
/* 80358BF8  90 04 00 D0 */	stw r0, 0xd0(r4)
/* 80358BFC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80358C00  93 E3 00 B4 */	stw r31, 0xb4(r3)
/* 80358C04  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80358C08  A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 80358C0C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 80358C10  80 7E 00 00 */	lwz r3, 0(r30)
/* 80358C14  7C 84 01 D6 */	mullw r4, r4, r0
/* 80358C18  4B FF AD A1 */	bl __CARDEraseSector
/* 80358C1C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80358C20  40 80 00 10 */	bge lbl_80358C30
/* 80358C24  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80358C28  7F C4 F3 78 */	mr r4, r30
/* 80358C2C  4B FF B0 41 */	bl __CARDPutControlBlock
lbl_80358C30:
/* 80358C30  7F C3 F3 78 */	mr r3, r30
lbl_80358C34:
/* 80358C34  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 80358C38  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80358C3C  38 21 00 38 */	addi r1, r1, 0x38
/* 80358C40  7C 08 03 A6 */	mtlr r0
/* 80358C44  4E 80 00 20 */	blr 
