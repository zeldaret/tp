lbl_802A61D0:
/* 802A61D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A61D4  7C 08 02 A6 */	mflr r0
/* 802A61D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A61DC  39 61 00 20 */	addi r11, r1, 0x20
/* 802A61E0  48 0B BF F9 */	bl _savegpr_28
/* 802A61E4  7C 7C 1B 78 */	mr r28, r3
/* 802A61E8  7C 9D 23 78 */	mr r29, r4
/* 802A61EC  7C BE 2B 78 */	mr r30, r5
/* 802A61F0  83 E3 00 E8 */	lwz r31, 0xe8(r3)
/* 802A61F4  48 00 00 3C */	b lbl_802A6230
lbl_802A61F8:
/* 802A61F8  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A61FC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802A6200  80 7F 00 00 */	lwz r3, 0(r31)
/* 802A6204  38 63 00 38 */	addi r3, r3, 0x38
/* 802A6208  38 81 00 0C */	addi r4, r1, 0xc
/* 802A620C  80 BC 04 F8 */	lwz r5, 0x4f8(r28)
/* 802A6210  7F C6 F3 78 */	mr r6, r30
/* 802A6214  38 E0 00 00 */	li r7, 0
/* 802A6218  48 00 08 91 */	bl getSeqData__23JAUDynamicSeqDataBlocksF10JAISoundIDP14JAISeqDataUserP10JAISeqDatab
/* 802A621C  2C 03 00 02 */	cmpwi r3, 2
/* 802A6220  40 82 00 0C */	bne lbl_802A622C
/* 802A6224  38 60 00 02 */	li r3, 2
/* 802A6228  48 00 00 30 */	b lbl_802A6258
lbl_802A622C:
/* 802A622C  83 FF 00 0C */	lwz r31, 0xc(r31)
lbl_802A6230:
/* 802A6230  28 1F 00 00 */	cmplwi r31, 0
/* 802A6234  40 82 FF C4 */	bne lbl_802A61F8
/* 802A6238  80 1D 00 00 */	lwz r0, 0(r29)
/* 802A623C  90 01 00 08 */	stw r0, 8(r1)
/* 802A6240  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 802A6244  38 81 00 08 */	addi r4, r1, 8
/* 802A6248  80 BC 04 F8 */	lwz r5, 0x4f8(r28)
/* 802A624C  7F C6 F3 78 */	mr r6, r30
/* 802A6250  38 E0 00 01 */	li r7, 1
/* 802A6254  48 00 08 55 */	bl getSeqData__23JAUDynamicSeqDataBlocksF10JAISoundIDP14JAISeqDataUserP10JAISeqDatab
lbl_802A6258:
/* 802A6258  39 61 00 20 */	addi r11, r1, 0x20
/* 802A625C  48 0B BF C9 */	bl _restgpr_28
/* 802A6260  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A6264  7C 08 03 A6 */	mtlr r0
/* 802A6268  38 21 00 20 */	addi r1, r1, 0x20
/* 802A626C  4E 80 00 20 */	blr 
