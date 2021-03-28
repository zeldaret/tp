lbl_80B6FD00:
/* 80B6FD00  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B6FD04  7C 08 02 A6 */	mflr r0
/* 80B6FD08  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B6FD0C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B6FD10  7C 7F 1B 78 */	mr r31, r3
/* 80B6FD14  3C 80 80 B7 */	lis r4, lit_4609@ha
/* 80B6FD18  38 A4 1C B8 */	addi r5, r4, lit_4609@l
/* 80B6FD1C  80 85 00 00 */	lwz r4, 0(r5)
/* 80B6FD20  80 05 00 04 */	lwz r0, 4(r5)
/* 80B6FD24  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B6FD28  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B6FD2C  80 05 00 08 */	lwz r0, 8(r5)
/* 80B6FD30  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B6FD34  38 81 00 14 */	addi r4, r1, 0x14
/* 80B6FD38  48 00 06 F9 */	bl chkAction__12daNpc_ZelR_cFM12daNpc_ZelR_cFPCvPvPv_i
/* 80B6FD3C  2C 03 00 00 */	cmpwi r3, 0
/* 80B6FD40  41 82 00 1C */	beq lbl_80B6FD5C
/* 80B6FD44  7F E3 FB 78 */	mr r3, r31
/* 80B6FD48  38 80 00 00 */	li r4, 0
/* 80B6FD4C  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B6FD50  4B 7F 23 34 */	b __ptmf_scall
/* 80B6FD54  60 00 00 00 */	nop 
/* 80B6FD58  48 00 00 90 */	b lbl_80B6FDE8
lbl_80B6FD5C:
/* 80B6FD5C  38 00 00 00 */	li r0, 0
/* 80B6FD60  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80B6FD64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6FD68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B6FD6C  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80B6FD70  28 04 00 01 */	cmplwi r4, 1
/* 80B6FD74  41 82 00 0C */	beq lbl_80B6FD80
/* 80B6FD78  28 04 00 02 */	cmplwi r4, 2
/* 80B6FD7C  40 82 00 08 */	bne lbl_80B6FD84
lbl_80B6FD80:
/* 80B6FD80  38 00 00 01 */	li r0, 1
lbl_80B6FD84:
/* 80B6FD84  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B6FD88  41 82 00 34 */	beq lbl_80B6FDBC
/* 80B6FD8C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80B6FD90  4B 4D 8A 60 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80B6FD94  2C 03 00 00 */	cmpwi r3, 0
/* 80B6FD98  40 82 00 0C */	bne lbl_80B6FDA4
/* 80B6FD9C  38 60 00 01 */	li r3, 1
/* 80B6FDA0  48 00 00 4C */	b lbl_80B6FDEC
lbl_80B6FDA4:
/* 80B6FDA4  38 00 00 01 */	li r0, 1
/* 80B6FDA8  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B6FDAC  7F E3 FB 78 */	mr r3, r31
/* 80B6FDB0  4B 5D A4 74 */	b evtChange__8daNpcT_cFv
/* 80B6FDB4  38 60 00 01 */	li r3, 1
/* 80B6FDB8  48 00 00 34 */	b lbl_80B6FDEC
lbl_80B6FDBC:
/* 80B6FDBC  3C 60 80 B7 */	lis r3, lit_4619@ha
/* 80B6FDC0  38 83 1C C4 */	addi r4, r3, lit_4619@l
/* 80B6FDC4  80 64 00 00 */	lwz r3, 0(r4)
/* 80B6FDC8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B6FDCC  90 61 00 08 */	stw r3, 8(r1)
/* 80B6FDD0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B6FDD4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B6FDD8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B6FDDC  7F E3 FB 78 */	mr r3, r31
/* 80B6FDE0  38 81 00 08 */	addi r4, r1, 8
/* 80B6FDE4  48 00 06 79 */	bl setAction__12daNpc_ZelR_cFM12daNpc_ZelR_cFPCvPvPv_i
lbl_80B6FDE8:
/* 80B6FDE8  38 60 00 01 */	li r3, 1
lbl_80B6FDEC:
/* 80B6FDEC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B6FDF0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B6FDF4  7C 08 03 A6 */	mtlr r0
/* 80B6FDF8  38 21 00 30 */	addi r1, r1, 0x30
/* 80B6FDFC  4E 80 00 20 */	blr 
