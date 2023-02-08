lbl_80A951DC:
/* 80A951DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A951E0  7C 08 02 A6 */	mflr r0
/* 80A951E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A951E8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A951EC  3C A0 80 A9 */	lis r5, m__24daNpc_Pachi_Besu_Param_c@ha /* 0x80A96A6C@ha */
/* 80A951F0  38 A5 6A 6C */	addi r5, r5, m__24daNpc_Pachi_Besu_Param_c@l /* 0x80A96A6C@l */
/* 80A951F4  3B E0 00 00 */	li r31, 0
/* 80A951F8  80 04 00 00 */	lwz r0, 0(r4)
/* 80A951FC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A95200  41 82 00 28 */	beq lbl_80A95228
/* 80A95204  40 80 00 10 */	bge lbl_80A95214
/* 80A95208  2C 00 00 05 */	cmpwi r0, 5
/* 80A9520C  41 82 00 14 */	beq lbl_80A95220
/* 80A95210  48 00 00 48 */	b lbl_80A95258
lbl_80A95214:
/* 80A95214  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A95218  41 82 00 40 */	beq lbl_80A95258
/* 80A9521C  48 00 00 3C */	b lbl_80A95258
lbl_80A95220:
/* 80A95220  3B E0 00 01 */	li r31, 1
/* 80A95224  48 00 00 34 */	b lbl_80A95258
lbl_80A95228:
/* 80A95228  C0 05 00 E8 */	lfs f0, 0xe8(r5)
/* 80A9522C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A95230  C0 05 00 EC */	lfs f0, 0xec(r5)
/* 80A95234  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A95238  C0 05 00 F0 */	lfs f0, 0xf0(r5)
/* 80A9523C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A95240  38 81 00 08 */	addi r4, r1, 8
/* 80A95244  38 A0 10 00 */	li r5, 0x1000
/* 80A95248  4B FF F8 81 */	bl _turn_pos__18daNpc_Pachi_Besu_cFRC4cXyzs
/* 80A9524C  2C 03 00 00 */	cmpwi r3, 0
/* 80A95250  41 82 00 08 */	beq lbl_80A95258
/* 80A95254  3B E0 00 01 */	li r31, 1
lbl_80A95258:
/* 80A95258  7F E3 FB 78 */	mr r3, r31
/* 80A9525C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A95260  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A95264  7C 08 03 A6 */	mtlr r0
/* 80A95268  38 21 00 20 */	addi r1, r1, 0x20
/* 80A9526C  4E 80 00 20 */	blr 
