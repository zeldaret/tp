lbl_800AF9A8:
/* 800AF9A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AF9AC  7C 08 02 A6 */	mflr r0
/* 800AF9B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AF9B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800AF9B8  93 C1 00 08 */	stw r30, 8(r1)
/* 800AF9BC  7C 7E 1B 78 */	mr r30, r3
/* 800AF9C0  1C A4 00 0C */	mulli r5, r4, 0xc
/* 800AF9C4  3C 80 80 39 */	lis r4, m_anmDataTable__9daAlink_c@ha
/* 800AF9C8  38 04 FC A8 */	addi r0, r4, m_anmDataTable__9daAlink_c@l
/* 800AF9CC  7F E0 2A 14 */	add r31, r0, r5
/* 800AF9D0  A0 9F 00 06 */	lhz r4, 6(r31)
/* 800AF9D4  4B FF FE CD */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800AF9D8  A0 1F 00 06 */	lhz r0, 6(r31)
/* 800AF9DC  7C 03 00 00 */	cmpw r3, r0
/* 800AF9E0  41 82 00 98 */	beq lbl_800AFA78
/* 800AF9E4  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800AF9E8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800AF9EC  40 82 00 8C */	bne lbl_800AFA78
/* 800AF9F0  2C 03 00 39 */	cmpwi r3, 0x39
/* 800AF9F4  40 82 00 20 */	bne lbl_800AFA14
/* 800AF9F8  7F C3 F3 78 */	mr r3, r30
/* 800AF9FC  38 80 01 26 */	li r4, 0x126
/* 800AFA00  38 A0 00 00 */	li r5, 0
/* 800AFA04  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800AFA08  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800AFA0C  4B FF FA A5 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800AFA10  48 00 00 80 */	b lbl_800AFA90
lbl_800AFA14:
/* 800AFA14  2C 03 00 01 */	cmpwi r3, 1
/* 800AFA18  40 82 00 20 */	bne lbl_800AFA38
/* 800AFA1C  7F C3 F3 78 */	mr r3, r30
/* 800AFA20  38 80 01 20 */	li r4, 0x120
/* 800AFA24  38 A0 00 00 */	li r5, 0
/* 800AFA28  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800AFA2C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800AFA30  4B FF FA 81 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800AFA34  48 00 00 5C */	b lbl_800AFA90
lbl_800AFA38:
/* 800AFA38  2C 03 00 05 */	cmpwi r3, 5
/* 800AFA3C  40 82 00 20 */	bne lbl_800AFA5C
/* 800AFA40  7F C3 F3 78 */	mr r3, r30
/* 800AFA44  38 80 01 37 */	li r4, 0x137
/* 800AFA48  38 A0 00 00 */	li r5, 0
/* 800AFA4C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800AFA50  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800AFA54  4B FF FA 5D */	bl setFaceBck__9daAlink_cFUsiUs
/* 800AFA58  48 00 00 38 */	b lbl_800AFA90
lbl_800AFA5C:
/* 800AFA5C  7F C3 F3 78 */	mr r3, r30
/* 800AFA60  A0 9F 00 08 */	lhz r4, 8(r31)
/* 800AFA64  38 A0 00 00 */	li r5, 0
/* 800AFA68  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800AFA6C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800AFA70  4B FF FA 41 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800AFA74  48 00 00 1C */	b lbl_800AFA90
lbl_800AFA78:
/* 800AFA78  7F C3 F3 78 */	mr r3, r30
/* 800AFA7C  A0 9F 00 08 */	lhz r4, 8(r31)
/* 800AFA80  38 A0 00 00 */	li r5, 0
/* 800AFA84  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800AFA88  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800AFA8C  4B FF FA 25 */	bl setFaceBck__9daAlink_cFUsiUs
lbl_800AFA90:
/* 800AFA90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800AFA94  83 C1 00 08 */	lwz r30, 8(r1)
/* 800AFA98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AFA9C  7C 08 03 A6 */	mtlr r0
/* 800AFAA0  38 21 00 10 */	addi r1, r1, 0x10
/* 800AFAA4  4E 80 00 20 */	blr 
