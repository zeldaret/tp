lbl_80B76078:
/* 80B76078  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B7607C  7C 08 02 A6 */	mflr r0
/* 80B76080  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B76084  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B76088  7C 7F 1B 78 */	mr r31, r3
/* 80B7608C  3C 80 80 B8 */	lis r4, lit_4631@ha /* 0x80B7821C@ha */
/* 80B76090  38 A4 82 1C */	addi r5, r4, lit_4631@l /* 0x80B7821C@l */
/* 80B76094  80 85 00 00 */	lwz r4, 0(r5)
/* 80B76098  80 05 00 04 */	lwz r0, 4(r5)
/* 80B7609C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B760A0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B760A4  80 05 00 08 */	lwz r0, 8(r5)
/* 80B760A8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B760AC  38 81 00 14 */	addi r4, r1, 0x14
/* 80B760B0  48 00 07 15 */	bl chkAction__13daNpc_Zelda_cFM13daNpc_Zelda_cFPCvPvPv_i
/* 80B760B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B760B8  41 82 00 1C */	beq lbl_80B760D4
/* 80B760BC  7F E3 FB 78 */	mr r3, r31
/* 80B760C0  38 80 00 00 */	li r4, 0
/* 80B760C4  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B760C8  4B 7E BF BD */	bl __ptmf_scall
/* 80B760CC  60 00 00 00 */	nop 
/* 80B760D0  48 00 00 30 */	b lbl_80B76100
lbl_80B760D4:
/* 80B760D4  3C 60 80 B8 */	lis r3, lit_4636@ha /* 0x80B78228@ha */
/* 80B760D8  38 83 82 28 */	addi r4, r3, lit_4636@l /* 0x80B78228@l */
/* 80B760DC  80 64 00 00 */	lwz r3, 0(r4)
/* 80B760E0  80 04 00 04 */	lwz r0, 4(r4)
/* 80B760E4  90 61 00 08 */	stw r3, 8(r1)
/* 80B760E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B760EC  80 04 00 08 */	lwz r0, 8(r4)
/* 80B760F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B760F4  7F E3 FB 78 */	mr r3, r31
/* 80B760F8  38 81 00 08 */	addi r4, r1, 8
/* 80B760FC  48 00 06 F5 */	bl setAction__13daNpc_Zelda_cFM13daNpc_Zelda_cFPCvPvPv_i
lbl_80B76100:
/* 80B76100  38 60 00 01 */	li r3, 1
/* 80B76104  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B76108  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B7610C  7C 08 03 A6 */	mtlr r0
/* 80B76110  38 21 00 30 */	addi r1, r1, 0x30
/* 80B76114  4E 80 00 20 */	blr 
