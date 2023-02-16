lbl_802A0074:
/* 802A0074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0078  7C 08 02 A6 */	mflr r0
/* 802A007C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A0080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A0084  7C 7F 1B 78 */	mr r31, r3
/* 802A0088  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802A008C  41 82 00 08 */	beq lbl_802A0094
/* 802A0090  93 ED 85 EC */	stw r31, __OSReport_disable-0x2C(r13)
lbl_802A0094:
/* 802A0094  3C 60 80 3D */	lis r3, __vt__14JAISeqDataUser@ha /* 0x803C9940@ha */
/* 802A0098  38 03 99 40 */	addi r0, r3, __vt__14JAISeqDataUser@l /* 0x803C9940@l */
/* 802A009C  90 1F 00 00 */	stw r0, 0(r31)
/* 802A00A0  3C 60 80 3D */	lis r3, __vt__8JAISeMgr@ha /* 0x803C98B0@ha */
/* 802A00A4  38 03 98 B0 */	addi r0, r3, __vt__8JAISeMgr@l /* 0x803C98B0@l */
/* 802A00A8  90 1F 00 00 */	stw r0, 0(r31)
/* 802A00AC  38 7F 00 14 */	addi r3, r31, 0x14
/* 802A00B0  3C 80 80 2A */	lis r4, __ct__16JAISeCategoryMgrFv@ha /* 0x802A0994@ha */
/* 802A00B4  38 84 09 94 */	addi r4, r4, __ct__16JAISeCategoryMgrFv@l /* 0x802A0994@l */
/* 802A00B8  3C A0 80 00 */	lis r5, __dt__16JAISeCategoryMgrFv@ha /* 0x800078DC@ha */
/* 802A00BC  38 A5 78 DC */	addi r5, r5, __dt__16JAISeCategoryMgrFv@l /* 0x800078DC@l */
/* 802A00C0  38 C0 00 6C */	li r6, 0x6c
/* 802A00C4  38 E0 00 10 */	li r7, 0x10
/* 802A00C8  48 0C 1C 99 */	bl __construct_array
/* 802A00CC  C0 42 BD 8C */	lfs f2, lit_1040(r2)
/* 802A00D0  D0 5F 06 D4 */	stfs f2, 0x6d4(r31)
/* 802A00D4  D0 5F 06 DC */	stfs f2, 0x6dc(r31)
/* 802A00D8  C0 22 BD 90 */	lfs f1, lit_1041(r2)
/* 802A00DC  D0 3F 06 D8 */	stfs f1, 0x6d8(r31)
/* 802A00E0  C0 02 BD 94 */	lfs f0, lit_1042(r2)
/* 802A00E4  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 802A00E8  D0 3F 06 E4 */	stfs f1, 0x6e4(r31)
/* 802A00EC  38 00 00 00 */	li r0, 0
/* 802A00F0  90 1F 00 08 */	stw r0, 8(r31)
/* 802A00F4  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802A00F8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 802A00FC  D0 5F 06 D4 */	stfs f2, 0x6d4(r31)
/* 802A0100  D0 5F 06 DC */	stfs f2, 0x6dc(r31)
/* 802A0104  D0 3F 06 D8 */	stfs f1, 0x6d8(r31)
/* 802A0108  D0 1F 06 E0 */	stfs f0, 0x6e0(r31)
/* 802A010C  D0 3F 06 E4 */	stfs f1, 0x6e4(r31)
/* 802A0110  D0 3F 06 E8 */	stfs f1, 0x6e8(r31)
/* 802A0114  90 1F 06 F0 */	stw r0, 0x6f0(r31)
/* 802A0118  D0 3F 06 EC */	stfs f1, 0x6ec(r31)
/* 802A011C  D0 3F 06 F4 */	stfs f1, 0x6f4(r31)
/* 802A0120  90 1F 06 FC */	stw r0, 0x6fc(r31)
/* 802A0124  D0 3F 06 F8 */	stfs f1, 0x6f8(r31)
/* 802A0128  D0 3F 07 00 */	stfs f1, 0x700(r31)
/* 802A012C  90 1F 07 08 */	stw r0, 0x708(r31)
/* 802A0130  D0 3F 07 04 */	stfs f1, 0x704(r31)
/* 802A0134  D0 3F 07 0C */	stfs f1, 0x70c(r31)
/* 802A0138  90 1F 07 14 */	stw r0, 0x714(r31)
/* 802A013C  D0 3F 07 10 */	stfs f1, 0x710(r31)
/* 802A0140  D0 3F 07 18 */	stfs f1, 0x718(r31)
/* 802A0144  90 1F 07 20 */	stw r0, 0x720(r31)
/* 802A0148  D0 3F 07 1C */	stfs f1, 0x71c(r31)
/* 802A014C  98 1F 00 04 */	stb r0, 4(r31)
/* 802A0150  7F E3 FB 78 */	mr r3, r31
/* 802A0154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A0158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A015C  7C 08 03 A6 */	mtlr r0
/* 802A0160  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0164  4E 80 00 20 */	blr 
