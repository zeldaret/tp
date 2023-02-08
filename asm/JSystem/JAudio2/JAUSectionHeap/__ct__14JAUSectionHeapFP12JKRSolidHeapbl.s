lbl_802A5FE0:
/* 802A5FE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802A5FE4  7C 08 02 A6 */	mflr r0
/* 802A5FE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802A5FEC  39 61 00 20 */	addi r11, r1, 0x20
/* 802A5FF0  48 0B C1 ED */	bl _savegpr_29
/* 802A5FF4  7C 7D 1B 78 */	mr r29, r3
/* 802A5FF8  7C 9E 23 78 */	mr r30, r4
/* 802A5FFC  7C BF 2B 78 */	mr r31, r5
/* 802A6000  7F A4 EB 78 */	mr r4, r29
/* 802A6004  38 A0 00 00 */	li r5, 0
/* 802A6008  4B FF F0 59 */	bl __ct__10JAUSectionFP14JAUSectionHeapUll
/* 802A600C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802A6010  41 82 00 14 */	beq lbl_802A6024
/* 802A6014  34 7D 00 DC */	addic. r3, r29, 0xdc
/* 802A6018  41 82 00 08 */	beq lbl_802A6020
/* 802A601C  38 63 FF 24 */	addi r3, r3, -220
lbl_802A6020:
/* 802A6020  90 6D 87 40 */	stw r3, data_80450CC0(r13)
lbl_802A6024:
/* 802A6024  3C 60 80 3D */	lis r3, __vt__13JAISeqDataMgr@ha /* 0x803C9928@ha */
/* 802A6028  38 03 99 28 */	addi r0, r3, __vt__13JAISeqDataMgr@l /* 0x803C9928@l */
/* 802A602C  90 1D 00 DC */	stw r0, 0xdc(r29)
/* 802A6030  3C 60 80 3D */	lis r3, __vt__14JAUSectionHeap@ha /* 0x803C9AC0@ha */
/* 802A6034  38 63 9A C0 */	addi r3, r3, __vt__14JAUSectionHeap@l /* 0x803C9AC0@l */
/* 802A6038  90 7D 00 00 */	stw r3, 0(r29)
/* 802A603C  38 03 00 10 */	addi r0, r3, 0x10
/* 802A6040  90 1D 00 DC */	stw r0, 0xdc(r29)
/* 802A6044  93 DD 00 E0 */	stw r30, 0xe0(r29)
/* 802A6048  38 7D 00 E8 */	addi r3, r29, 0xe8
/* 802A604C  48 03 5E C9 */	bl initiate__10JSUPtrListFv
/* 802A6050  38 7D 00 F4 */	addi r3, r29, 0xf4
/* 802A6054  4B FF FD A1 */	bl __ct__Q214JAUSectionHeap16TSectionHeapDataFv
/* 802A6058  38 00 00 00 */	li r0, 0
/* 802A605C  90 1D 00 E4 */	stw r0, 0xe4(r29)
/* 802A6060  7F A4 EB 78 */	mr r4, r29
/* 802A6064  28 1D 00 00 */	cmplwi r29, 0
/* 802A6068  41 82 00 08 */	beq lbl_802A6070
/* 802A606C  38 9D 00 18 */	addi r4, r29, 0x18
lbl_802A6070:
/* 802A6070  38 7D 00 E8 */	addi r3, r29, 0xe8
/* 802A6074  48 03 5E D9 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802A6078  7F A3 EB 78 */	mr r3, r29
/* 802A607C  39 61 00 20 */	addi r11, r1, 0x20
/* 802A6080  48 0B C1 A9 */	bl _restgpr_29
/* 802A6084  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802A6088  7C 08 03 A6 */	mtlr r0
/* 802A608C  38 21 00 20 */	addi r1, r1, 0x20
/* 802A6090  4E 80 00 20 */	blr 
