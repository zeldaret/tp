lbl_8035CB30:
/* 8035CB30  7C 08 02 A6 */	mflr r0
/* 8035CB34  2C 05 00 13 */	cmpwi r5, 0x13
/* 8035CB38  90 01 00 04 */	stw r0, 4(r1)
/* 8035CB3C  38 00 00 00 */	li r0, 0
/* 8035CB40  39 03 00 00 */	addi r8, r3, 0
/* 8035CB44  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 8035CB48  93 E1 00 24 */	stw r31, 0x24(r1)
/* 8035CB4C  54 BF 07 3E */	clrlwi r31, r5, 0x1c
/* 8035CB50  93 C1 00 20 */	stw r30, 0x20(r1)
/* 8035CB54  3B C6 00 00 */	addi r30, r6, 0
/* 8035CB58  80 E2 CB 80 */	lwz r7, __GXData(r2)
/* 8035CB5C  98 07 02 00 */	stb r0, 0x200(r7)
/* 8035CB60  38 E4 00 00 */	addi r7, r4, 0
/* 8035CB64  40 82 00 08 */	bne lbl_8035CB6C
/* 8035CB68  3B E0 00 0B */	li r31, 0xb
lbl_8035CB6C:
/* 8035CB6C  2C 05 00 26 */	cmpwi r5, 0x26
/* 8035CB70  41 82 00 1C */	beq lbl_8035CB8C
/* 8035CB74  40 80 00 30 */	bge lbl_8035CBA4
/* 8035CB78  2C 05 00 04 */	cmpwi r5, 4
/* 8035CB7C  40 80 00 28 */	bge lbl_8035CBA4
/* 8035CB80  2C 05 00 00 */	cmpwi r5, 0
/* 8035CB84  40 80 00 08 */	bge lbl_8035CB8C
/* 8035CB88  48 00 00 1C */	b lbl_8035CBA4
lbl_8035CB8C:
/* 8035CB8C  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035CB90  38 00 00 03 */	li r0, 3
/* 8035CB94  80 64 01 FC */	lwz r3, 0x1fc(r4)
/* 8035CB98  50 03 7B E0 */	rlwimi r3, r0, 0xf, 0xf, 0x10
/* 8035CB9C  90 64 01 FC */	stw r3, 0x1fc(r4)
/* 8035CBA0  48 00 00 18 */	b lbl_8035CBB8
lbl_8035CBA4:
/* 8035CBA4  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035CBA8  38 00 00 02 */	li r0, 2
/* 8035CBAC  80 64 01 FC */	lwz r3, 0x1fc(r4)
/* 8035CBB0  50 03 7B E0 */	rlwimi r3, r0, 0xf, 0xf, 0x10
/* 8035CBB4  90 64 01 FC */	stw r3, 0x1fc(r4)
lbl_8035CBB8:
/* 8035CBB8  54 A3 06 F6 */	rlwinm r3, r5, 0, 0x1b, 0x1b
/* 8035CBBC  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035CBC0  38 03 FF F0 */	addi r0, r3, -16
/* 8035CBC4  7C 00 00 34 */	cntlzw r0, r0
/* 8035CBC8  54 00 DE 3E */	rlwinm r0, r0, 0x1b, 0x18, 0x1f
/* 8035CBCC  98 04 02 00 */	stb r0, 0x200(r4)
/* 8035CBD0  38 65 00 00 */	addi r3, r5, 0
/* 8035CBD4  38 A7 00 00 */	addi r5, r7, 0
/* 8035CBD8  80 04 01 FC */	lwz r0, 0x1fc(r4)
/* 8035CBDC  53 E0 07 38 */	rlwimi r0, r31, 0, 0x1c, 0x1c
/* 8035CBE0  57 FF 07 7E */	clrlwi r31, r31, 0x1d
/* 8035CBE4  90 04 01 FC */	stw r0, 0x1fc(r4)
/* 8035CBE8  38 88 00 00 */	addi r4, r8, 0
/* 8035CBEC  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8035CBF0  38 E1 00 18 */	addi r7, r1, 0x18
/* 8035CBF4  39 01 00 14 */	addi r8, r1, 0x14
/* 8035CBF8  48 00 11 81 */	bl __GetImageTileCount
/* 8035CBFC  80 E2 CB 80 */	lwz r7, __GXData(r2)
/* 8035CC00  38 00 00 00 */	li r0, 0
/* 8035CC04  38 60 00 4D */	li r3, 0x4d
/* 8035CC08  90 07 01 F8 */	stw r0, 0x1f8(r7)
/* 8035CC0C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 8035CC10  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8035CC14  80 C7 01 F8 */	lwz r6, 0x1f8(r7)
/* 8035CC18  7C 85 21 D6 */	mullw r4, r5, r4
/* 8035CC1C  50 86 05 BE */	rlwimi r6, r4, 0, 0x16, 0x1f
/* 8035CC20  90 C7 01 F8 */	stw r6, 0x1f8(r7)
/* 8035CC24  80 87 01 F8 */	lwz r4, 0x1f8(r7)
/* 8035CC28  50 64 C0 0E */	rlwimi r4, r3, 0x18, 0, 7
/* 8035CC2C  90 87 01 F8 */	stw r4, 0x1f8(r7)
/* 8035CC30  80 67 01 FC */	lwz r3, 0x1fc(r7)
/* 8035CC34  53 C3 4D AC */	rlwimi r3, r30, 9, 0x16, 0x16
/* 8035CC38  90 67 01 FC */	stw r3, 0x1fc(r7)
/* 8035CC3C  80 07 01 FC */	lwz r0, 0x1fc(r7)
/* 8035CC40  53 E0 26 76 */	rlwimi r0, r31, 4, 0x19, 0x1b
/* 8035CC44  90 07 01 FC */	stw r0, 0x1fc(r7)
/* 8035CC48  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8035CC4C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 8035CC50  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 8035CC54  38 21 00 28 */	addi r1, r1, 0x28
/* 8035CC58  7C 08 03 A6 */	mtlr r0
/* 8035CC5C  4E 80 00 20 */	blr 
