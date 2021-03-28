lbl_802D9584:
/* 802D9584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D9588  7C 08 02 A6 */	mflr r0
/* 802D958C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D9590  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D9594  93 C1 00 08 */	stw r30, 8(r1)
/* 802D9598  7C 7E 1B 78 */	mr r30, r3
/* 802D959C  7F C0 F3 78 */	mr r0, r30
/* 802D95A0  7C 1F 03 78 */	mr r31, r0
/* 802D95A4  4B FF 7E D9 */	bl __ct__11JKRDisposerFv
/* 802D95A8  3C 60 80 3D */	lis r3, __vt__7JKRFile@ha
/* 802D95AC  38 03 C3 28 */	addi r0, r3, __vt__7JKRFile@l
/* 802D95B0  90 1F 00 00 */	stw r0, 0(r31)
/* 802D95B4  38 00 00 00 */	li r0, 0
/* 802D95B8  98 1F 00 18 */	stb r0, 0x18(r31)
/* 802D95BC  3C 60 80 3D */	lis r3, __vt__10JKRDvdFile@ha
/* 802D95C0  38 03 C4 38 */	addi r0, r3, __vt__10JKRDvdFile@l
/* 802D95C4  90 1E 00 00 */	stw r0, 0(r30)
/* 802D95C8  38 7E 00 E4 */	addi r3, r30, 0xe4
/* 802D95CC  7F C4 F3 78 */	mr r4, r30
/* 802D95D0  48 00 28 2D */	bl __ct__10JSUPtrLinkFPv
/* 802D95D4  7F C3 F3 78 */	mr r3, r30
/* 802D95D8  48 00 02 0D */	bl initiate__10JKRDvdFileFv
/* 802D95DC  7F C3 F3 78 */	mr r3, r30
/* 802D95E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D95E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D95E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D95EC  7C 08 03 A6 */	mtlr r0
/* 802D95F0  38 21 00 10 */	addi r1, r1, 0x10
/* 802D95F4  4E 80 00 20 */	blr 
