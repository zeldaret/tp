lbl_80A9A05C:
/* 80A9A05C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A9A060  7C 08 02 A6 */	mflr r0
/* 80A9A064  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A9A068  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A9A06C  3C A0 80 AA */	lis r5, m__24daNpc_Pachi_Maro_Param_c@ha
/* 80A9A070  38 A5 B8 8C */	addi r5, r5, m__24daNpc_Pachi_Maro_Param_c@l
/* 80A9A074  3B E0 00 00 */	li r31, 0
/* 80A9A078  80 04 00 00 */	lwz r0, 0(r4)
/* 80A9A07C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A9A080  41 82 00 28 */	beq lbl_80A9A0A8
/* 80A9A084  40 80 00 10 */	bge lbl_80A9A094
/* 80A9A088  2C 00 00 05 */	cmpwi r0, 5
/* 80A9A08C  41 82 00 14 */	beq lbl_80A9A0A0
/* 80A9A090  48 00 00 48 */	b lbl_80A9A0D8
lbl_80A9A094:
/* 80A9A094  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A9A098  41 82 00 40 */	beq lbl_80A9A0D8
/* 80A9A09C  48 00 00 3C */	b lbl_80A9A0D8
lbl_80A9A0A0:
/* 80A9A0A0  3B E0 00 01 */	li r31, 1
/* 80A9A0A4  48 00 00 34 */	b lbl_80A9A0D8
lbl_80A9A0A8:
/* 80A9A0A8  C0 05 00 F0 */	lfs f0, 0xf0(r5)
/* 80A9A0AC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A9A0B0  C0 05 00 F4 */	lfs f0, 0xf4(r5)
/* 80A9A0B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A9A0B8  C0 05 00 F8 */	lfs f0, 0xf8(r5)
/* 80A9A0BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A9A0C0  38 81 00 08 */	addi r4, r1, 8
/* 80A9A0C4  38 A0 10 00 */	li r5, 0x1000
/* 80A9A0C8  4B FF F8 81 */	bl _turn_pos__18daNpc_Pachi_Maro_cFRC4cXyzs
/* 80A9A0CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A9A0D0  41 82 00 08 */	beq lbl_80A9A0D8
/* 80A9A0D4  3B E0 00 01 */	li r31, 1
lbl_80A9A0D8:
/* 80A9A0D8  7F E3 FB 78 */	mr r3, r31
/* 80A9A0DC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A9A0E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A9A0E4  7C 08 03 A6 */	mtlr r0
/* 80A9A0E8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9A0EC  4E 80 00 20 */	blr 
