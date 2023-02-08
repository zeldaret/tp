lbl_804A6C48:
/* 804A6C48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A6C4C  7C 08 02 A6 */	mflr r0
/* 804A6C50  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A6C54  39 61 00 20 */	addi r11, r1, 0x20
/* 804A6C58  4B EB B5 79 */	bl _savegpr_26
/* 804A6C5C  7C 9C 23 78 */	mr r28, r4
/* 804A6C60  7C BA 2B 78 */	mr r26, r5
/* 804A6C64  7C DB 33 78 */	mr r27, r6
/* 804A6C68  3C 80 80 4B */	lis r4, lit_3727@ha /* 0x804A8860@ha */
/* 804A6C6C  3B C4 88 60 */	addi r30, r4, lit_3727@l /* 0x804A8860@l */
/* 804A6C70  7F 44 D3 78 */	mr r4, r26
/* 804A6C74  7F 65 DB 78 */	mr r5, r27
/* 804A6C78  4B FF FC B5 */	bl ke_control__FP10daDemo00_cP12demo_s1_ke_sif
/* 804A6C7C  80 7C 00 18 */	lwz r3, 0x18(r28)
/* 804A6C80  57 60 28 34 */	slwi r0, r27, 5
/* 804A6C84  7F A3 00 2E */	lwzx r29, r3, r0
/* 804A6C88  7C 63 02 14 */	add r3, r3, r0
/* 804A6C8C  83 83 00 04 */	lwz r28, 4(r3)
/* 804A6C90  3B 60 00 00 */	li r27, 0
/* 804A6C94  3B E0 00 00 */	li r31, 0
lbl_804A6C98:
/* 804A6C98  7C 7A FA 14 */	add r3, r26, r31
/* 804A6C9C  C0 03 00 00 */	lfs f0, 0(r3)
/* 804A6CA0  D0 1D 00 00 */	stfs f0, 0(r29)
/* 804A6CA4  C0 03 00 04 */	lfs f0, 4(r3)
/* 804A6CA8  D0 1D 00 04 */	stfs f0, 4(r29)
/* 804A6CAC  C0 03 00 08 */	lfs f0, 8(r3)
/* 804A6CB0  D0 1D 00 08 */	stfs f0, 8(r29)
/* 804A6CB4  2C 1B 00 0E */	cmpwi r27, 0xe
/* 804A6CB8  40 82 00 10 */	bne lbl_804A6CC8
/* 804A6CBC  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 804A6CC0  D0 1C 00 00 */	stfs f0, 0(r28)
/* 804A6CC4  48 00 00 2C */	b lbl_804A6CF0
lbl_804A6CC8:
/* 804A6CC8  2C 1B 00 05 */	cmpwi r27, 5
/* 804A6CCC  40 80 00 10 */	bge lbl_804A6CDC
/* 804A6CD0  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 804A6CD4  D0 1C 00 00 */	stfs f0, 0(r28)
/* 804A6CD8  48 00 00 18 */	b lbl_804A6CF0
lbl_804A6CDC:
/* 804A6CDC  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 804A6CE0  4B DC 0D ED */	bl cM_rndF2__Ff
/* 804A6CE4  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 804A6CE8  EC 00 08 2A */	fadds f0, f0, f1
/* 804A6CEC  D0 1C 00 00 */	stfs f0, 0(r28)
lbl_804A6CF0:
/* 804A6CF0  3B 7B 00 01 */	addi r27, r27, 1
/* 804A6CF4  2C 1B 00 10 */	cmpwi r27, 0x10
/* 804A6CF8  3B FF 00 0C */	addi r31, r31, 0xc
/* 804A6CFC  3B BD 00 0C */	addi r29, r29, 0xc
/* 804A6D00  3B 9C 00 04 */	addi r28, r28, 4
/* 804A6D04  41 80 FF 94 */	blt lbl_804A6C98
/* 804A6D08  39 61 00 20 */	addi r11, r1, 0x20
/* 804A6D0C  4B EB B5 11 */	bl _restgpr_26
/* 804A6D10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A6D14  7C 08 03 A6 */	mtlr r0
/* 804A6D18  38 21 00 20 */	addi r1, r1, 0x20
/* 804A6D1C  4E 80 00 20 */	blr 
