lbl_802A5060:
/* 802A5060  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A5064  7C 08 02 A6 */	mflr r0
/* 802A5068  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A506C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5070  48 0B D1 69 */	bl _savegpr_28
/* 802A5074  7C 7C 1B 78 */	mr r28, r3
/* 802A5078  7C 9D 23 78 */	mr r29, r4
/* 802A507C  7C BE 2B 78 */	mr r30, r5
/* 802A5080  7C DF 33 78 */	mr r31, r6
/* 802A5084  48 02 C3 F9 */	bl __ct__11JKRDisposerFv
/* 802A5088  38 7C 00 18 */	addi r3, r28, 0x18
/* 802A508C  7F 84 E3 78 */	mr r4, r28
/* 802A5090  48 03 6D 6D */	bl __ct__10JSUPtrLinkFPv
/* 802A5094  3C 60 80 3D */	lis r3, __vt__10JAUSection@ha
/* 802A5098  38 03 9B 24 */	addi r0, r3, __vt__10JAUSection@l
/* 802A509C  90 1C 00 00 */	stw r0, 0(r28)
/* 802A50A0  93 DC 00 28 */	stw r30, 0x28(r28)
/* 802A50A4  93 BC 00 30 */	stw r29, 0x30(r28)
/* 802A50A8  38 7C 00 38 */	addi r3, r28, 0x38
/* 802A50AC  4B FF FE 3D */	bl __ct__Q210JAUSection12TSectionDataFv
/* 802A50B0  38 00 00 00 */	li r0, 0
/* 802A50B4  90 1C 00 34 */	stw r0, 0x34(r28)
/* 802A50B8  38 00 00 01 */	li r0, 1
/* 802A50BC  98 1C 00 2C */	stb r0, 0x2c(r28)
/* 802A50C0  93 FC 00 D0 */	stw r31, 0xd0(r28)
/* 802A50C4  80 7C 00 30 */	lwz r3, 0x30(r28)
/* 802A50C8  7C 1C 18 40 */	cmplw r28, r3
/* 802A50CC  41 82 00 10 */	beq lbl_802A50DC
/* 802A50D0  80 83 05 20 */	lwz r4, 0x520(r3)
/* 802A50D4  38 7C 00 38 */	addi r3, r28, 0x38
/* 802A50D8  48 00 19 C9 */	bl setSeqDataArchive__23JAUDynamicSeqDataBlocksFP10JKRArchive
lbl_802A50DC:
/* 802A50DC  7F 83 E3 78 */	mr r3, r28
/* 802A50E0  39 61 00 20 */	addi r11, r1, 0x20
/* 802A50E4  48 0B D1 41 */	bl _restgpr_28
/* 802A50E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A50EC  7C 08 03 A6 */	mtlr r0
/* 802A50F0  38 21 00 20 */	addi r1, r1, 0x20
/* 802A50F4  4E 80 00 20 */	blr 
