lbl_80BB60F8:
/* 80BB60F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB60FC  7C 08 02 A6 */	mflr r0
/* 80BB6100  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB6104  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BB6108  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB610C  80 03 04 DC */	lwz r0, 0x4dc(r3)
/* 80BB6110  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BB6114  A0 03 04 E0 */	lhz r0, 0x4e0(r3)
/* 80BB6118  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80BB611C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BB6120  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80BB6124  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80BB6128  50 60 44 2E */	rlwimi r0, r3, 8, 0x10, 0x17
/* 80BB612C  B0 01 00 10 */	sth r0, 0x10(r1)
/* 80BB6130  38 00 40 0D */	li r0, 0x400d
/* 80BB6134  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80BB6138  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80BB613C  7C 07 07 74 */	extsb r7, r0
/* 80BB6140  38 00 00 00 */	li r0, 0
/* 80BB6144  90 01 00 08 */	stw r0, 8(r1)
/* 80BB6148  38 60 02 FC */	li r3, 0x2fc
/* 80BB614C  41 82 00 0C */	beq lbl_80BB6158
/* 80BB6150  80 9F 00 04 */	lwz r4, 4(r31)
/* 80BB6154  48 00 00 08 */	b lbl_80BB615C
lbl_80BB6158:
/* 80BB6158  38 80 FF FF */	li r4, -1
lbl_80BB615C:
/* 80BB615C  38 A0 00 00 */	li r5, 0
/* 80BB6160  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80BB6164  39 01 00 10 */	addi r8, r1, 0x10
/* 80BB6168  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80BB616C  39 40 FF FF */	li r10, -1
/* 80BB6170  4B 46 3D 81 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80BB6174  90 7F 05 78 */	stw r3, 0x578(r31)
/* 80BB6178  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BB617C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB6180  7C 08 03 A6 */	mtlr r0
/* 80BB6184  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB6188  4E 80 00 20 */	blr 
