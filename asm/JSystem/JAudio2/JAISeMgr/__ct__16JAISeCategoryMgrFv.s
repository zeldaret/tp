lbl_802A0994:
/* 802A0994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A0998  7C 08 02 A6 */	mflr r0
/* 802A099C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A09A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A09A4  7C 7F 1B 78 */	mr r31, r3
/* 802A09A8  3C 60 80 3D */	lis r3, __vt__14JAISeqDataUser@ha
/* 802A09AC  38 03 99 40 */	addi r0, r3, __vt__14JAISeqDataUser@l
/* 802A09B0  90 1F 00 00 */	stw r0, 0(r31)
/* 802A09B4  3C 60 80 3D */	lis r3, __vt__16JAISeCategoryMgr@ha
/* 802A09B8  38 03 98 C4 */	addi r0, r3, __vt__16JAISeCategoryMgr@l
/* 802A09BC  90 1F 00 00 */	stw r0, 0(r31)
/* 802A09C0  C0 02 BD 8C */	lfs f0, lit_1040(r2)
/* 802A09C4  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802A09C8  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 802A09CC  C0 22 BD 90 */	lfs f1, lit_1041(r2)
/* 802A09D0  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 802A09D4  C0 02 BD 94 */	lfs f0, lit_1042(r2)
/* 802A09D8  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 802A09DC  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 802A09E0  38 7F 00 58 */	addi r3, r31, 0x58
/* 802A09E4  48 03 B5 31 */	bl initiate__10JSUPtrListFv
/* 802A09E8  C0 02 BD 8C */	lfs f0, lit_1040(r2)
/* 802A09EC  D0 1F 00 08 */	stfs f0, 8(r31)
/* 802A09F0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 802A09F4  C0 22 BD 90 */	lfs f1, lit_1041(r2)
/* 802A09F8  D0 3F 00 0C */	stfs f1, 0xc(r31)
/* 802A09FC  C0 02 BD 94 */	lfs f0, lit_1042(r2)
/* 802A0A00  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 802A0A04  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 802A0A08  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 802A0A0C  38 00 00 00 */	li r0, 0
/* 802A0A10  90 1F 00 24 */	stw r0, 0x24(r31)
/* 802A0A14  D0 3F 00 20 */	stfs f1, 0x20(r31)
/* 802A0A18  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 802A0A1C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 802A0A20  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 802A0A24  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 802A0A28  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 802A0A2C  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 802A0A30  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 802A0A34  90 1F 00 48 */	stw r0, 0x48(r31)
/* 802A0A38  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 802A0A3C  D0 3F 00 4C */	stfs f1, 0x4c(r31)
/* 802A0A40  90 1F 00 54 */	stw r0, 0x54(r31)
/* 802A0A44  D0 3F 00 50 */	stfs f1, 0x50(r31)
/* 802A0A48  90 1F 00 68 */	stw r0, 0x68(r31)
/* 802A0A4C  90 1F 00 64 */	stw r0, 0x64(r31)
/* 802A0A50  90 1F 00 04 */	stw r0, 4(r31)
/* 802A0A54  7F E3 FB 78 */	mr r3, r31
/* 802A0A58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A0A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A0A60  7C 08 03 A6 */	mtlr r0
/* 802A0A64  38 21 00 10 */	addi r1, r1, 0x10
/* 802A0A68  4E 80 00 20 */	blr 
