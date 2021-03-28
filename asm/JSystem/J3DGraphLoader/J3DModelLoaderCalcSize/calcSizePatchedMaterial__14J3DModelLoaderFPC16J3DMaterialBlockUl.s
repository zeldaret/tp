lbl_80337010:
/* 80337010  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80337014  7C 08 02 A6 */	mflr r0
/* 80337018  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8033701C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80337020  48 02 B1 B9 */	bl _savegpr_28
/* 80337024  7C 9D 23 78 */	mr r29, r4
/* 80337028  7C BC 2B 78 */	mr r28, r5
/* 8033702C  3B E0 00 00 */	li r31, 0
/* 80337030  A3 C4 00 08 */	lhz r30, 8(r4)
/* 80337034  38 61 00 08 */	addi r3, r1, 8
/* 80337038  4B FF 8F B5 */	bl __ct__18J3DMaterialFactoryFRC16J3DMaterialBlock
/* 8033703C  80 1D 00 14 */	lwz r0, 0x14(r29)
/* 80337040  28 00 00 00 */	cmplwi r0, 0
/* 80337044  41 82 00 08 */	beq lbl_8033704C
/* 80337048  3B E0 00 10 */	li r31, 0x10
lbl_8033704C:
/* 8033704C  57 C0 10 3A */	slwi r0, r30, 2
/* 80337050  7F FF 02 14 */	add r31, r31, r0
/* 80337054  3B A0 00 00 */	li r29, 0
/* 80337058  48 00 00 20 */	b lbl_80337078
lbl_8033705C:
/* 8033705C  38 61 00 08 */	addi r3, r1, 8
/* 80337060  38 80 00 00 */	li r4, 0
/* 80337064  38 A0 00 02 */	li r5, 2
/* 80337068  7F 87 E3 78 */	mr r7, r28
/* 8033706C  4B FF AA 11 */	bl calcSize__18J3DMaterialFactoryCFP11J3DMaterialQ218J3DMaterialFactory12MaterialTypeiUl
/* 80337070  7F FF 1A 14 */	add r31, r31, r3
/* 80337074  3B BD 00 01 */	addi r29, r29, 1
lbl_80337078:
/* 80337078  57 A6 04 3E */	clrlwi r6, r29, 0x10
/* 8033707C  7C 06 F0 40 */	cmplw r6, r30
/* 80337080  41 80 FF DC */	blt lbl_8033705C
/* 80337084  7F E3 FB 78 */	mr r3, r31
/* 80337088  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8033708C  48 02 B1 99 */	bl _restgpr_28
/* 80337090  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80337094  7C 08 03 A6 */	mtlr r0
/* 80337098  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8033709C  4E 80 00 20 */	blr 
