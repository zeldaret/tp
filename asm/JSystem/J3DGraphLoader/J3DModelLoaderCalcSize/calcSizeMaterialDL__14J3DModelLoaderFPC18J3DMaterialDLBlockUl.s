lbl_803370A0:
/* 803370A0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 803370A4  7C 08 02 A6 */	mflr r0
/* 803370A8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 803370AC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 803370B0  48 02 B1 25 */	bl _savegpr_27
/* 803370B4  7C 7B 1B 78 */	mr r27, r3
/* 803370B8  7C 9C 23 78 */	mr r28, r4
/* 803370BC  7C BF 2B 78 */	mr r31, r5
/* 803370C0  3B C0 00 00 */	li r30, 0
/* 803370C4  38 61 00 08 */	addi r3, r1, 8
/* 803370C8  4B FF 91 6D */	bl __ct__18J3DMaterialFactoryFRC18J3DMaterialDLBlock
/* 803370CC  88 1B 00 18 */	lbz r0, 0x18(r27)
/* 803370D0  28 00 00 00 */	cmplwi r0, 0
/* 803370D4  40 82 00 54 */	bne lbl_80337128
/* 803370D8  A3 BC 00 08 */	lhz r29, 8(r28)
/* 803370DC  80 1C 00 20 */	lwz r0, 0x20(r28)
/* 803370E0  28 00 00 00 */	cmplwi r0, 0
/* 803370E4  41 82 00 08 */	beq lbl_803370EC
/* 803370E8  3B C0 00 10 */	li r30, 0x10
lbl_803370EC:
/* 803370EC  57 A0 10 3A */	slwi r0, r29, 2
/* 803370F0  7F DE 02 14 */	add r30, r30, r0
/* 803370F4  3B 80 00 00 */	li r28, 0
/* 803370F8  48 00 00 20 */	b lbl_80337118
lbl_803370FC:
/* 803370FC  38 61 00 08 */	addi r3, r1, 8
/* 80337100  38 80 00 00 */	li r4, 0
/* 80337104  38 A0 00 01 */	li r5, 1
/* 80337108  7F E7 FB 78 */	mr r7, r31
/* 8033710C  4B FF A9 71 */	bl calcSize__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 80337110  7F DE 1A 14 */	add r30, r30, r3
/* 80337114  3B 9C 00 01 */	addi r28, r28, 1
lbl_80337118:
/* 80337118  57 86 04 3E */	clrlwi r6, r28, 0x10
/* 8033711C  7C 06 E8 40 */	cmplw r6, r29
/* 80337120  41 80 FF DC */	blt lbl_803370FC
/* 80337124  48 00 00 38 */	b lbl_8033715C
lbl_80337128:
/* 80337128  A3 9C 00 08 */	lhz r28, 8(r28)
/* 8033712C  3B A0 00 00 */	li r29, 0
/* 80337130  48 00 00 20 */	b lbl_80337150
lbl_80337134:
/* 80337134  38 61 00 08 */	addi r3, r1, 8
/* 80337138  7F 64 DB 78 */	mr r4, r27
/* 8033713C  38 A0 00 01 */	li r5, 1
/* 80337140  7F E7 FB 78 */	mr r7, r31
/* 80337144  4B FF A9 39 */	bl calcSize__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 80337148  7F DE 1A 14 */	add r30, r30, r3
/* 8033714C  3B BD 00 01 */	addi r29, r29, 1
lbl_80337150:
/* 80337150  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 80337154  7C 06 E0 40 */	cmplw r6, r28
/* 80337158  41 80 FF DC */	blt lbl_80337134
lbl_8033715C:
/* 8033715C  7F C3 F3 78 */	mr r3, r30
/* 80337160  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80337164  48 02 B0 BD */	bl _restgpr_27
/* 80337168  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8033716C  7C 08 03 A6 */	mtlr r0
/* 80337170  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80337174  4E 80 00 20 */	blr 
