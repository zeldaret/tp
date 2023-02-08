lbl_80A610C4:
/* 80A610C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A610C8  7C 08 02 A6 */	mflr r0
/* 80A610CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A610D0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A610D4  7C 7F 1B 78 */	mr r31, r3
/* 80A610D8  3C 80 80 A6 */	lis r4, lit_4596@ha /* 0x80A6402C@ha */
/* 80A610DC  38 A4 40 2C */	addi r5, r4, lit_4596@l /* 0x80A6402C@l */
/* 80A610E0  80 85 00 00 */	lwz r4, 0(r5)
/* 80A610E4  80 05 00 04 */	lwz r0, 4(r5)
/* 80A610E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A610EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A610F0  80 05 00 08 */	lwz r0, 8(r5)
/* 80A610F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A610F8  38 81 00 14 */	addi r4, r1, 0x14
/* 80A610FC  48 00 09 05 */	bl chkAction__13daNpc_Kyury_cFM13daNpc_Kyury_cFPCvPvPv_i
/* 80A61100  2C 03 00 00 */	cmpwi r3, 0
/* 80A61104  41 82 00 1C */	beq lbl_80A61120
/* 80A61108  7F E3 FB 78 */	mr r3, r31
/* 80A6110C  38 80 00 00 */	li r4, 0
/* 80A61110  39 9F 0F C8 */	addi r12, r31, 0xfc8
/* 80A61114  4B 90 0F 71 */	bl __ptmf_scall
/* 80A61118  60 00 00 00 */	nop 
/* 80A6111C  48 00 00 30 */	b lbl_80A6114C
lbl_80A61120:
/* 80A61120  3C 60 80 A6 */	lis r3, lit_4601@ha /* 0x80A64038@ha */
/* 80A61124  38 83 40 38 */	addi r4, r3, lit_4601@l /* 0x80A64038@l */
/* 80A61128  80 64 00 00 */	lwz r3, 0(r4)
/* 80A6112C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A61130  90 61 00 08 */	stw r3, 8(r1)
/* 80A61134  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A61138  80 04 00 08 */	lwz r0, 8(r4)
/* 80A6113C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A61140  7F E3 FB 78 */	mr r3, r31
/* 80A61144  38 81 00 08 */	addi r4, r1, 8
/* 80A61148  48 00 08 E5 */	bl setAction__13daNpc_Kyury_cFM13daNpc_Kyury_cFPCvPvPv_i
lbl_80A6114C:
/* 80A6114C  38 60 00 01 */	li r3, 1
/* 80A61150  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A61154  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A61158  7C 08 03 A6 */	mtlr r0
/* 80A6115C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A61160  4E 80 00 20 */	blr 
