lbl_802D3614:
/* 802D3614  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802D3618  7C 08 02 A6 */	mflr r0
/* 802D361C  90 01 00 34 */	stw r0, 0x34(r1)
/* 802D3620  39 61 00 30 */	addi r11, r1, 0x30
/* 802D3624  48 08 EB A9 */	bl _savegpr_25
/* 802D3628  7C 7A 1B 78 */	mr r26, r3
/* 802D362C  7C 9B 23 78 */	mr r27, r4
/* 802D3630  7C BC 2B 78 */	mr r28, r5
/* 802D3634  7C DD 33 78 */	mr r29, r6
/* 802D3638  7C FE 3B 78 */	mr r30, r7
/* 802D363C  7D 1F 43 78 */	mr r31, r8
/* 802D3640  3C 60 80 43 */	lis r3, mMutex__12JKRAramPiece@ha
/* 802D3644  38 63 43 30 */	addi r3, r3, mMutex__12JKRAramPiece@l
/* 802D3648  48 06 B9 F9 */	bl OSLockMutex
/* 802D364C  57 60 06 FF */	clrlwi. r0, r27, 0x1b
/* 802D3650  40 82 00 0C */	bne lbl_802D365C
/* 802D3654  57 80 06 FF */	clrlwi. r0, r28, 0x1b
/* 802D3658  41 82 00 80 */	beq lbl_802D36D8
lbl_802D365C:
/* 802D365C  3C 60 80 3A */	lis r3, JKRAramPiece__stringBase0@ha
/* 802D3660  38 63 D0 B8 */	addi r3, r3, JKRAramPiece__stringBase0@l
/* 802D3664  7F 44 D3 78 */	mr r4, r26
/* 802D3668  4C C6 31 82 */	crclr 6
/* 802D366C  4B D3 34 51 */	bl OSReport
/* 802D3670  3C 60 80 3A */	lis r3, JKRAramPiece__stringBase0@ha
/* 802D3674  38 63 D0 B8 */	addi r3, r3, JKRAramPiece__stringBase0@l
/* 802D3678  38 63 00 10 */	addi r3, r3, 0x10
/* 802D367C  7F 64 DB 78 */	mr r4, r27
/* 802D3680  4C C6 31 82 */	crclr 6
/* 802D3684  4B D3 34 39 */	bl OSReport
/* 802D3688  3C 60 80 3A */	lis r3, JKRAramPiece__stringBase0@ha
/* 802D368C  38 63 D0 B8 */	addi r3, r3, JKRAramPiece__stringBase0@l
/* 802D3690  38 63 00 1D */	addi r3, r3, 0x1d
/* 802D3694  7F 84 E3 78 */	mr r4, r28
/* 802D3698  4C C6 31 82 */	crclr 6
/* 802D369C  4B D3 34 21 */	bl OSReport
/* 802D36A0  3C 60 80 3A */	lis r3, JKRAramPiece__stringBase0@ha
/* 802D36A4  38 63 D0 B8 */	addi r3, r3, JKRAramPiece__stringBase0@l
/* 802D36A8  38 63 00 2F */	addi r3, r3, 0x2f
/* 802D36AC  7F A4 EB 78 */	mr r4, r29
/* 802D36B0  4C C6 31 82 */	crclr 6
/* 802D36B4  4B D3 34 09 */	bl OSReport
/* 802D36B8  3C 60 80 3A */	lis r3, JKRAramPiece__stringBase0@ha
/* 802D36BC  38 C3 D0 B8 */	addi r6, r3, JKRAramPiece__stringBase0@l
/* 802D36C0  38 66 00 3C */	addi r3, r6, 0x3c
/* 802D36C4  38 80 00 6C */	li r4, 0x6c
/* 802D36C8  38 A6 00 4D */	addi r5, r6, 0x4d
/* 802D36CC  38 C6 00 50 */	addi r6, r6, 0x50
/* 802D36D0  4C C6 31 82 */	crclr 6
/* 802D36D4  48 00 EB 29 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802D36D8:
/* 802D36D8  38 60 00 08 */	li r3, 8
/* 802D36DC  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802D36E0  38 A0 FF FC */	li r5, -4
/* 802D36E4  4B FF B5 B5 */	bl __nw__FUlP7JKRHeapi
/* 802D36E8  7C 79 1B 78 */	mr r25, r3
/* 802D36EC  7F 43 D3 78 */	mr r3, r26
/* 802D36F0  7F 64 DB 78 */	mr r4, r27
/* 802D36F4  7F 85 E3 78 */	mr r5, r28
/* 802D36F8  7F A6 EB 78 */	mr r6, r29
/* 802D36FC  7F C7 F3 78 */	mr r7, r30
/* 802D3700  7F E8 FB 78 */	mr r8, r31
/* 802D3704  4B FF FE 71 */	bl prepareCommand__12JKRAramPieceFiUlUlUlP12JKRAramBlockPFUl_v
/* 802D3708  7C 7A 1B 78 */	mr r26, r3
/* 802D370C  38 00 00 01 */	li r0, 1
/* 802D3710  90 19 00 00 */	stw r0, 0(r25)
/* 802D3714  93 59 00 04 */	stw r26, 4(r25)
/* 802D3718  3C 60 80 3D */	lis r3, sMessageQueue__7JKRAram@ha
/* 802D371C  38 63 C1 38 */	addi r3, r3, sMessageQueue__7JKRAram@l
/* 802D3720  7F 24 CB 78 */	mr r4, r25
/* 802D3724  38 A0 00 01 */	li r5, 1
/* 802D3728  48 06 B2 CD */	bl OSSendMessage
/* 802D372C  80 1A 00 58 */	lwz r0, 0x58(r26)
/* 802D3730  28 00 00 00 */	cmplwi r0, 0
/* 802D3734  41 82 00 14 */	beq lbl_802D3748
/* 802D3738  3C 60 80 43 */	lis r3, sAramPieceCommandList__12JKRAramPiece@ha
/* 802D373C  38 63 43 24 */	addi r3, r3, sAramPieceCommandList__12JKRAramPiece@l
/* 802D3740  38 9A 00 20 */	addi r4, r26, 0x20
/* 802D3744  48 00 88 09 */	bl append__10JSUPtrListFP10JSUPtrLink
lbl_802D3748:
/* 802D3748  3C 60 80 43 */	lis r3, mMutex__12JKRAramPiece@ha
/* 802D374C  38 63 43 30 */	addi r3, r3, mMutex__12JKRAramPiece@l
/* 802D3750  48 06 B9 CD */	bl OSUnlockMutex
/* 802D3754  7F 43 D3 78 */	mr r3, r26
/* 802D3758  39 61 00 30 */	addi r11, r1, 0x30
/* 802D375C  48 08 EA BD */	bl _restgpr_25
/* 802D3760  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802D3764  7C 08 03 A6 */	mtlr r0
/* 802D3768  38 21 00 30 */	addi r1, r1, 0x30
/* 802D376C  4E 80 00 20 */	blr 
