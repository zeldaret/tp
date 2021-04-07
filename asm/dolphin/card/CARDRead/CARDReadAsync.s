lbl_80358788:
/* 80358788  7C 08 02 A6 */	mflr r0
/* 8035878C  90 01 00 04 */	stw r0, 4(r1)
/* 80358790  54 C0 05 FF */	clrlwi. r0, r6, 0x17
/* 80358794  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80358798  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8035879C  3B E5 00 00 */	addi r31, r5, 0
/* 803587A0  93 C1 00 28 */	stw r30, 0x28(r1)
/* 803587A4  3B C4 00 00 */	addi r30, r4, 0
/* 803587A8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 803587AC  3B A3 00 00 */	addi r29, r3, 0
/* 803587B0  93 81 00 20 */	stw r28, 0x20(r1)
/* 803587B4  3B 87 00 00 */	addi r28, r7, 0
/* 803587B8  40 82 00 0C */	bne lbl_803587C4
/* 803587BC  57 E0 05 FF */	clrlwi. r0, r31, 0x17
/* 803587C0  41 82 00 0C */	beq lbl_803587CC
lbl_803587C4:
/* 803587C4  38 60 FF 80 */	li r3, -128
/* 803587C8  48 00 00 E4 */	b lbl_803588AC
lbl_803587CC:
/* 803587CC  38 7D 00 00 */	addi r3, r29, 0
/* 803587D0  38 9F 00 00 */	addi r4, r31, 0
/* 803587D4  38 A6 00 00 */	addi r5, r6, 0
/* 803587D8  38 C1 00 1C */	addi r6, r1, 0x1c
/* 803587DC  4B FF FC C5 */	bl __CARDSeek
/* 803587E0  2C 03 00 00 */	cmpwi r3, 0
/* 803587E4  40 80 00 08 */	bge lbl_803587EC
/* 803587E8  48 00 00 C4 */	b lbl_803588AC
lbl_803587EC:
/* 803587EC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803587F0  4B FF CF 8D */	bl __CARDGetDirBlock
/* 803587F4  80 1D 00 04 */	lwz r0, 4(r29)
/* 803587F8  54 00 30 32 */	slwi r0, r0, 6
/* 803587FC  7C 83 02 14 */	add r4, r3, r0
/* 80358800  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80358804  4B FF F6 A1 */	bl __CARDIsReadable
/* 80358808  7C 64 1B 79 */	or. r4, r3, r3
/* 8035880C  40 80 00 10 */	bge lbl_8035881C
/* 80358810  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80358814  4B FF B4 59 */	bl __CARDPutControlBlock
/* 80358818  48 00 00 94 */	b lbl_803588AC
lbl_8035881C:
/* 8035881C  38 7E 00 00 */	addi r3, r30, 0
/* 80358820  38 9F 00 00 */	addi r4, r31, 0
/* 80358824  4B FE 2D 5D */	bl DCInvalidateRange
/* 80358828  28 1C 00 00 */	cmplwi r28, 0
/* 8035882C  41 82 00 0C */	beq lbl_80358838
/* 80358830  7F 80 E3 78 */	mr r0, r28
/* 80358834  48 00 00 0C */	b lbl_80358840
lbl_80358838:
/* 80358838  3C 60 80 35 */	lis r3, __CARDDefaultApiCallback@ha /* 0x80352A30@ha */
/* 8035883C  38 03 2A 30 */	addi r0, r3, __CARDDefaultApiCallback@l /* 0x80352A30@l */
lbl_80358840:
/* 80358840  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80358844  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 80358848  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 8035884C  80 9D 00 08 */	lwz r4, 8(r29)
/* 80358850  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 80358854  38 05 FF FF */	addi r0, r5, -1
/* 80358858  7C 88 00 38 */	and r8, r4, r0
/* 8035885C  7C 68 28 50 */	subf r3, r8, r5
/* 80358860  7C 1F 18 00 */	cmpw r31, r3
/* 80358864  40 80 00 08 */	bge lbl_8035886C
/* 80358868  7F E3 FB 78 */	mr r3, r31
lbl_8035886C:
/* 8035886C  A0 1D 00 10 */	lhz r0, 0x10(r29)
/* 80358870  3C 80 80 36 */	lis r4, ReadCallback@ha /* 0x80358658@ha */
/* 80358874  3B E3 00 00 */	addi r31, r3, 0
/* 80358878  80 7D 00 00 */	lwz r3, 0(r29)
/* 8035887C  7C 05 01 D6 */	mullw r0, r5, r0
/* 80358880  38 E4 86 58 */	addi r7, r4, ReadCallback@l /* 0x80358658@l */
/* 80358884  38 BF 00 00 */	addi r5, r31, 0
/* 80358888  38 DE 00 00 */	addi r6, r30, 0
/* 8035888C  7C 88 02 14 */	add r4, r8, r0
/* 80358890  4B FF C9 D1 */	bl __CARDRead
/* 80358894  7C 7D 1B 79 */	or. r29, r3, r3
/* 80358898  40 80 00 10 */	bge lbl_803588A8
/* 8035889C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 803588A0  7F A4 EB 78 */	mr r4, r29
/* 803588A4  4B FF B3 C9 */	bl __CARDPutControlBlock
lbl_803588A8:
/* 803588A8  7F A3 EB 78 */	mr r3, r29
lbl_803588AC:
/* 803588AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803588B0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803588B4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 803588B8  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 803588BC  83 81 00 20 */	lwz r28, 0x20(r1)
/* 803588C0  38 21 00 30 */	addi r1, r1, 0x30
/* 803588C4  7C 08 03 A6 */	mtlr r0
/* 803588C8  4E 80 00 20 */	blr 
