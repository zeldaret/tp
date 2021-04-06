lbl_807FA7B0:
/* 807FA7B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807FA7B4  7C 08 02 A6 */	mflr r0
/* 807FA7B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 807FA7BC  39 61 00 20 */	addi r11, r1, 0x20
/* 807FA7C0  4B B6 7A 11 */	bl _savegpr_26
/* 807FA7C4  7C 9C 23 78 */	mr r28, r4
/* 807FA7C8  7C BA 2B 78 */	mr r26, r5
/* 807FA7CC  7C DB 33 78 */	mr r27, r6
/* 807FA7D0  3C 80 80 80 */	lis r4, lit_3801@ha /* 0x807FCCB4@ha */
/* 807FA7D4  3B C4 CC B4 */	addi r30, r4, lit_3801@l /* 0x807FCCB4@l */
/* 807FA7D8  7F 44 D3 78 */	mr r4, r26
/* 807FA7DC  7F 65 DB 78 */	mr r5, r27
/* 807FA7E0  4B FF FC 99 */	bl ke_control__FP10e_yg_classP7yg_ke_sif
/* 807FA7E4  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 807FA7E8  57 60 28 34 */	slwi r0, r27, 5
/* 807FA7EC  7F A3 00 2E */	lwzx r29, r3, r0
/* 807FA7F0  7C 63 02 14 */	add r3, r3, r0
/* 807FA7F4  83 83 00 04 */	lwz r28, 4(r3)
/* 807FA7F8  3B 60 00 00 */	li r27, 0
/* 807FA7FC  3B E0 00 00 */	li r31, 0
lbl_807FA800:
/* 807FA800  7C 7A FA 14 */	add r3, r26, r31
/* 807FA804  C0 03 00 00 */	lfs f0, 0(r3)
/* 807FA808  D0 1D 00 00 */	stfs f0, 0(r29)
/* 807FA80C  C0 03 00 04 */	lfs f0, 4(r3)
/* 807FA810  D0 1D 00 04 */	stfs f0, 4(r29)
/* 807FA814  C0 03 00 08 */	lfs f0, 8(r3)
/* 807FA818  D0 1D 00 08 */	stfs f0, 8(r29)
/* 807FA81C  2C 1B 00 08 */	cmpwi r27, 8
/* 807FA820  40 82 00 10 */	bne lbl_807FA830
/* 807FA824  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 807FA828  D0 1C 00 00 */	stfs f0, 0(r28)
/* 807FA82C  48 00 00 2C */	b lbl_807FA858
lbl_807FA830:
/* 807FA830  2C 1B 00 05 */	cmpwi r27, 5
/* 807FA834  40 80 00 10 */	bge lbl_807FA844
/* 807FA838  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 807FA83C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 807FA840  48 00 00 18 */	b lbl_807FA858
lbl_807FA844:
/* 807FA844  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807FA848  4B A6 D2 85 */	bl cM_rndF2__Ff
/* 807FA84C  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 807FA850  EC 00 08 2A */	fadds f0, f0, f1
/* 807FA854  D0 1C 00 00 */	stfs f0, 0(r28)
lbl_807FA858:
/* 807FA858  3B 7B 00 01 */	addi r27, r27, 1
/* 807FA85C  2C 1B 00 0A */	cmpwi r27, 0xa
/* 807FA860  3B FF 00 0C */	addi r31, r31, 0xc
/* 807FA864  3B BD 00 0C */	addi r29, r29, 0xc
/* 807FA868  3B 9C 00 04 */	addi r28, r28, 4
/* 807FA86C  41 80 FF 94 */	blt lbl_807FA800
/* 807FA870  39 61 00 20 */	addi r11, r1, 0x20
/* 807FA874  4B B6 79 A9 */	bl _restgpr_26
/* 807FA878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807FA87C  7C 08 03 A6 */	mtlr r0
/* 807FA880  38 21 00 20 */	addi r1, r1, 0x20
/* 807FA884  4E 80 00 20 */	blr 
