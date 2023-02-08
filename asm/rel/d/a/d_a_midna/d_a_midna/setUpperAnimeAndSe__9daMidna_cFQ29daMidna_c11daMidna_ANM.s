lbl_804C0020:
/* 804C0020  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804C0024  7C 08 02 A6 */	mflr r0
/* 804C0028  90 01 00 14 */	stw r0, 0x14(r1)
/* 804C002C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804C0030  93 C1 00 08 */	stw r30, 8(r1)
/* 804C0034  7C 7E 1B 78 */	mr r30, r3
/* 804C0038  1C A4 00 0C */	mulli r5, r4, 0xc
/* 804C003C  3C 80 80 4C */	lis r4, m_anmDataTable__9daMidna_c@ha /* 0x804C65E4@ha */
/* 804C0040  38 04 65 E4 */	addi r0, r4, m_anmDataTable__9daMidna_c@l /* 0x804C65E4@l */
/* 804C0044  7F E0 2A 14 */	add r31, r0, r5
/* 804C0048  A0 9F 00 00 */	lhz r4, 0(r31)
/* 804C004C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804C0050  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804C0054  4B FF FF 2D */	bl setUpperAnime__9daMidna_cFUsUs
/* 804C0058  2C 03 00 00 */	cmpwi r3, 0
/* 804C005C  41 82 00 1C */	beq lbl_804C0078
/* 804C0060  80 1F 00 08 */	lwz r0, 8(r31)
/* 804C0064  90 1E 08 C4 */	stw r0, 0x8c4(r30)
/* 804C0068  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804C006C  D0 1E 08 C8 */	stfs f0, 0x8c8(r30)
/* 804C0070  38 60 00 01 */	li r3, 1
/* 804C0074  48 00 00 08 */	b lbl_804C007C
lbl_804C0078:
/* 804C0078  38 60 00 00 */	li r3, 0
lbl_804C007C:
/* 804C007C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804C0080  83 C1 00 08 */	lwz r30, 8(r1)
/* 804C0084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804C0088  7C 08 03 A6 */	mtlr r0
/* 804C008C  38 21 00 10 */	addi r1, r1, 0x10
/* 804C0090  4E 80 00 20 */	blr 
