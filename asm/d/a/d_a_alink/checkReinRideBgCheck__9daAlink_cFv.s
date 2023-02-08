lbl_800EC8F8:
/* 800EC8F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800EC8FC  7C 08 02 A6 */	mflr r0
/* 800EC900  90 01 00 34 */	stw r0, 0x34(r1)
/* 800EC904  39 61 00 30 */	addi r11, r1, 0x30
/* 800EC908  48 27 58 D5 */	bl _savegpr_29
/* 800EC90C  7C 7D 1B 78 */	mr r29, r3
/* 800EC910  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800EC914  3B E4 D6 58 */	addi r31, r4, lit_3757@l /* 0x8038D658@l */
/* 800EC918  4B FF FF 65 */	bl getReinRideDirection__9daAlink_cFv
/* 800EC91C  80 9D 27 F4 */	lwz r4, 0x27f4(r29)
/* 800EC920  A8 04 00 08 */	lha r0, 8(r4)
/* 800EC924  2C 00 00 EE */	cmpwi r0, 0xee
/* 800EC928  40 82 00 2C */	bne lbl_800EC954
/* 800EC92C  2C 03 00 01 */	cmpwi r3, 1
/* 800EC930  40 82 00 0C */	bne lbl_800EC93C
/* 800EC934  3B FF 42 D8 */	addi r31, r31, 0x42d8
/* 800EC938  48 00 00 30 */	b lbl_800EC968
lbl_800EC93C:
/* 800EC93C  2C 03 00 02 */	cmpwi r3, 2
/* 800EC940  40 82 00 0C */	bne lbl_800EC94C
/* 800EC944  3B FF 42 C0 */	addi r31, r31, 0x42c0
/* 800EC948  48 00 00 20 */	b lbl_800EC968
lbl_800EC94C:
/* 800EC94C  3B FF 42 CC */	addi r31, r31, 0x42cc
/* 800EC950  48 00 00 18 */	b lbl_800EC968
lbl_800EC954:
/* 800EC954  2C 03 00 02 */	cmpwi r3, 2
/* 800EC958  40 82 00 0C */	bne lbl_800EC964
/* 800EC95C  3B FF 42 E4 */	addi r31, r31, 0x42e4
/* 800EC960  48 00 00 08 */	b lbl_800EC968
lbl_800EC964:
/* 800EC964  3B FF 42 F0 */	addi r31, r31, 0x42f0
lbl_800EC968:
/* 800EC968  C0 44 04 D8 */	lfs f2, 0x4d8(r4)
/* 800EC96C  C0 24 04 D4 */	lfs f1, 0x4d4(r4)
/* 800EC970  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 800EC974  D0 01 00 08 */	stfs f0, 8(r1)
/* 800EC978  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800EC97C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800EC980  80 7D 27 F4 */	lwz r3, 0x27f4(r29)
/* 800EC984  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 800EC988  4B F2 03 DD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 800EC98C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800EC990  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800EC994  80 9D 27 F4 */	lwz r4, 0x27f4(r29)
/* 800EC998  A8 84 04 E6 */	lha r4, 0x4e6(r4)
/* 800EC99C  4B F1 FA 99 */	bl mDoMtx_YrotM__FPA4_fs
/* 800EC9A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800EC9A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800EC9A8  7F E4 FB 78 */	mr r4, r31
/* 800EC9AC  38 A1 00 14 */	addi r5, r1, 0x14
/* 800EC9B0  48 25 A3 BD */	bl PSMTXMultVec
/* 800EC9B4  3B FD 18 B0 */	addi r31, r29, 0x18b0
/* 800EC9B8  3B C0 00 00 */	li r30, 0
lbl_800EC9BC:
/* 800EC9BC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 800EC9C0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 800EC9C4  EC 01 00 2A */	fadds f0, f1, f0
/* 800EC9C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800EC9CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800EC9D0  7F A3 EB 78 */	mr r3, r29
/* 800EC9D4  38 81 00 14 */	addi r4, r1, 0x14
/* 800EC9D8  38 A1 00 08 */	addi r5, r1, 8
/* 800EC9DC  4B FB 57 BD */	bl commonLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800EC9E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800EC9E4  41 82 00 0C */	beq lbl_800EC9F0
/* 800EC9E8  38 60 00 00 */	li r3, 0
/* 800EC9EC  48 00 00 38 */	b lbl_800ECA24
lbl_800EC9F0:
/* 800EC9F0  2C 1E 00 02 */	cmpwi r30, 2
/* 800EC9F4  40 82 00 1C */	bne lbl_800ECA10
/* 800EC9F8  3B FD 18 B0 */	addi r31, r29, 0x18b0
/* 800EC9FC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 800ECA00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800ECA04  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 800ECA08  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800ECA0C  48 00 00 08 */	b lbl_800ECA14
lbl_800ECA10:
/* 800ECA10  3B FF 00 40 */	addi r31, r31, 0x40
lbl_800ECA14:
/* 800ECA14  3B DE 00 01 */	addi r30, r30, 1
/* 800ECA18  2C 1E 00 06 */	cmpwi r30, 6
/* 800ECA1C  41 80 FF A0 */	blt lbl_800EC9BC
/* 800ECA20  38 60 00 01 */	li r3, 1
lbl_800ECA24:
/* 800ECA24  39 61 00 30 */	addi r11, r1, 0x30
/* 800ECA28  48 27 58 01 */	bl _restgpr_29
/* 800ECA2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800ECA30  7C 08 03 A6 */	mtlr r0
/* 800ECA34  38 21 00 30 */	addi r1, r1, 0x30
/* 800ECA38  4E 80 00 20 */	blr 
