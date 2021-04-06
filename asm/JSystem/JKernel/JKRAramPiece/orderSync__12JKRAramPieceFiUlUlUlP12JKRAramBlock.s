lbl_802D3838:
/* 802D3838  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D383C  7C 08 02 A6 */	mflr r0
/* 802D3840  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D3844  39 61 00 20 */	addi r11, r1, 0x20
/* 802D3848  48 08 E9 8D */	bl _savegpr_27
/* 802D384C  7C 7B 1B 78 */	mr r27, r3
/* 802D3850  7C 9C 23 78 */	mr r28, r4
/* 802D3854  7C BD 2B 78 */	mr r29, r5
/* 802D3858  7C DF 33 78 */	mr r31, r6
/* 802D385C  7C FE 3B 78 */	mr r30, r7
/* 802D3860  3C 60 80 43 */	lis r3, mMutex__12JKRAramPiece@ha /* 0x80434330@ha */
/* 802D3864  38 63 43 30 */	addi r3, r3, mMutex__12JKRAramPiece@l /* 0x80434330@l */
/* 802D3868  48 06 B7 D9 */	bl OSLockMutex
/* 802D386C  7F 63 DB 78 */	mr r3, r27
/* 802D3870  7F 84 E3 78 */	mr r4, r28
/* 802D3874  7F A5 EB 78 */	mr r5, r29
/* 802D3878  7F E6 FB 78 */	mr r6, r31
/* 802D387C  7F C7 F3 78 */	mr r7, r30
/* 802D3880  39 00 00 00 */	li r8, 0
/* 802D3884  4B FF FD 91 */	bl orderAsync__12JKRAramPieceFiUlUlUlP12JKRAramBlockPFUl_v
/* 802D3888  7C 7F 1B 78 */	mr r31, r3
/* 802D388C  38 80 00 00 */	li r4, 0
/* 802D3890  4B FF FE E1 */	bl sync__12JKRAramPieceFP12JKRAMCommandi
/* 802D3894  7C 7E 1B 78 */	mr r30, r3
/* 802D3898  7F E3 FB 78 */	mr r3, r31
/* 802D389C  38 80 00 01 */	li r4, 1
/* 802D38A0  48 00 01 BD */	bl __dt__12JKRAMCommandFv
/* 802D38A4  3C 60 80 43 */	lis r3, mMutex__12JKRAramPiece@ha /* 0x80434330@ha */
/* 802D38A8  38 63 43 30 */	addi r3, r3, mMutex__12JKRAramPiece@l /* 0x80434330@l */
/* 802D38AC  48 06 B8 71 */	bl OSUnlockMutex
/* 802D38B0  7F C3 F3 78 */	mr r3, r30
/* 802D38B4  39 61 00 20 */	addi r11, r1, 0x20
/* 802D38B8  48 08 E9 69 */	bl _restgpr_27
/* 802D38BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D38C0  7C 08 03 A6 */	mtlr r0
/* 802D38C4  38 21 00 20 */	addi r1, r1, 0x20
/* 802D38C8  4E 80 00 20 */	blr 
