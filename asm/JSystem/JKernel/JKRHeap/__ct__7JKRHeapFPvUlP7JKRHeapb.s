lbl_802CE138:
/* 802CE138  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CE13C  7C 08 02 A6 */	mflr r0
/* 802CE140  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CE144  39 61 00 20 */	addi r11, r1, 0x20
/* 802CE148  48 09 40 89 */	bl _savegpr_26
/* 802CE14C  7C 7F 1B 78 */	mr r31, r3
/* 802CE150  7C 9B 23 78 */	mr r27, r4
/* 802CE154  7C BC 2B 78 */	mr r28, r5
/* 802CE158  7C DD 33 78 */	mr r29, r6
/* 802CE15C  7C FE 3B 78 */	mr r30, r7
/* 802CE160  48 00 33 1D */	bl __ct__11JKRDisposerFv
/* 802CE164  3C 60 80 3D */	lis r3, __vt__7JKRHeap@ha /* 0x803CBF70@ha */
/* 802CE168  38 03 BF 70 */	addi r0, r3, __vt__7JKRHeap@l /* 0x803CBF70@l */
/* 802CE16C  90 1F 00 00 */	stw r0, 0(r31)
/* 802CE170  3B 5F 00 40 */	addi r26, r31, 0x40
/* 802CE174  7F 43 D3 78 */	mr r3, r26
/* 802CE178  48 00 DD 9D */	bl initiate__10JSUPtrListFv
/* 802CE17C  38 7A 00 0C */	addi r3, r26, 0xc
/* 802CE180  7F E4 FB 78 */	mr r4, r31
/* 802CE184  48 00 DC 79 */	bl __ct__10JSUPtrLinkFPv
/* 802CE188  38 7F 00 5C */	addi r3, r31, 0x5c
/* 802CE18C  48 00 DD 89 */	bl initiate__10JSUPtrListFv
/* 802CE190  38 7F 00 18 */	addi r3, r31, 0x18
/* 802CE194  48 07 0E 75 */	bl OSInitMutex
/* 802CE198  93 9F 00 38 */	stw r28, 0x38(r31)
/* 802CE19C  93 7F 00 30 */	stw r27, 0x30(r31)
/* 802CE1A0  7C 1B E2 14 */	add r0, r27, r28
/* 802CE1A4  90 1F 00 34 */	stw r0, 0x34(r31)
/* 802CE1A8  28 1D 00 00 */	cmplwi r29, 0
/* 802CE1AC  40 82 00 18 */	bne lbl_802CE1C4
/* 802CE1B0  7F E3 FB 78 */	mr r3, r31
/* 802CE1B4  48 00 02 75 */	bl becomeSystemHeap__7JKRHeapFv
/* 802CE1B8  7F E3 FB 78 */	mr r3, r31
/* 802CE1BC  48 00 02 7D */	bl becomeCurrentHeap__7JKRHeapFv
/* 802CE1C0  48 00 00 48 */	b lbl_802CE208
lbl_802CE1C4:
/* 802CE1C4  34 9F 00 40 */	addic. r4, r31, 0x40
/* 802CE1C8  41 82 00 08 */	beq lbl_802CE1D0
/* 802CE1CC  38 84 00 0C */	addi r4, r4, 0xc
lbl_802CE1D0:
/* 802CE1D0  38 7D 00 40 */	addi r3, r29, 0x40
/* 802CE1D4  48 00 DD 79 */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802CE1D8  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802CE1DC  80 0D 8D F8 */	lwz r0, sRootHeap__7JKRHeap(r13)
/* 802CE1E0  7C 03 00 40 */	cmplw r3, r0
/* 802CE1E4  40 82 00 0C */	bne lbl_802CE1F0
/* 802CE1E8  7F E3 FB 78 */	mr r3, r31
/* 802CE1EC  48 00 02 3D */	bl becomeSystemHeap__7JKRHeapFv
lbl_802CE1F0:
/* 802CE1F0  80 6D 8D F4 */	lwz r3, sCurrentHeap__7JKRHeap(r13)
/* 802CE1F4  80 0D 8D F8 */	lwz r0, sRootHeap__7JKRHeap(r13)
/* 802CE1F8  7C 03 00 40 */	cmplw r3, r0
/* 802CE1FC  40 82 00 0C */	bne lbl_802CE208
/* 802CE200  7F E3 FB 78 */	mr r3, r31
/* 802CE204  48 00 02 35 */	bl becomeCurrentHeap__7JKRHeapFv
lbl_802CE208:
/* 802CE208  9B DF 00 68 */	stb r30, 0x68(r31)
/* 802CE20C  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 802CE210  28 00 00 01 */	cmplwi r0, 1
/* 802CE214  40 82 00 1C */	bne lbl_802CE230
/* 802CE218  80 0D 8D FC */	lwz r0, mErrorHandler__7JKRHeap(r13)
/* 802CE21C  28 00 00 00 */	cmplwi r0, 0
/* 802CE220  40 82 00 10 */	bne lbl_802CE230
/* 802CE224  3C 60 80 2D */	lis r3, JKRDefaultMemoryErrorRoutine__FPvUli@ha /* 0x802CEB40@ha */
/* 802CE228  38 03 EB 40 */	addi r0, r3, JKRDefaultMemoryErrorRoutine__FPvUli@l /* 0x802CEB40@l */
/* 802CE22C  90 0D 8D FC */	stw r0, mErrorHandler__7JKRHeap(r13)
lbl_802CE230:
/* 802CE230  88 0D 83 30 */	lbz r0, data_804508B0(r13)
/* 802CE234  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802CE238  88 0D 8E 00 */	lbz r0, data_80451380(r13)
/* 802CE23C  98 1F 00 3D */	stb r0, 0x3d(r31)
/* 802CE240  38 00 00 00 */	li r0, 0
/* 802CE244  98 1F 00 69 */	stb r0, 0x69(r31)
/* 802CE248  7F E3 FB 78 */	mr r3, r31
/* 802CE24C  39 61 00 20 */	addi r11, r1, 0x20
/* 802CE250  48 09 3F CD */	bl _restgpr_26
/* 802CE254  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CE258  7C 08 03 A6 */	mtlr r0
/* 802CE25C  38 21 00 20 */	addi r1, r1, 0x20
/* 802CE260  4E 80 00 20 */	blr 
