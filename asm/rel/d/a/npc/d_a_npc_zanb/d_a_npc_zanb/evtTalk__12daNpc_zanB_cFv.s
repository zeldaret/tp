lbl_80B69D0C:
/* 80B69D0C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B69D10  7C 08 02 A6 */	mflr r0
/* 80B69D14  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B69D18  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B69D1C  7C 7F 1B 78 */	mr r31, r3
/* 80B69D20  3C 80 80 B7 */	lis r4, lit_4540@ha /* 0x80B6BEBC@ha */
/* 80B69D24  38 A4 BE BC */	addi r5, r4, lit_4540@l /* 0x80B6BEBC@l */
/* 80B69D28  80 85 00 00 */	lwz r4, 0(r5)
/* 80B69D2C  80 05 00 04 */	lwz r0, 4(r5)
/* 80B69D30  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B69D34  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B69D38  80 05 00 08 */	lwz r0, 8(r5)
/* 80B69D3C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B69D40  38 81 00 14 */	addi r4, r1, 0x14
/* 80B69D44  48 00 07 81 */	bl chkAction__12daNpc_zanB_cFM12daNpc_zanB_cFPCvPvPv_i
/* 80B69D48  2C 03 00 00 */	cmpwi r3, 0
/* 80B69D4C  41 82 00 1C */	beq lbl_80B69D68
/* 80B69D50  7F E3 FB 78 */	mr r3, r31
/* 80B69D54  38 80 00 00 */	li r4, 0
/* 80B69D58  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B69D5C  4B 7F 83 29 */	bl __ptmf_scall
/* 80B69D60  60 00 00 00 */	nop 
/* 80B69D64  48 00 00 30 */	b lbl_80B69D94
lbl_80B69D68:
/* 80B69D68  3C 60 80 B7 */	lis r3, lit_4545@ha /* 0x80B6BEC8@ha */
/* 80B69D6C  38 83 BE C8 */	addi r4, r3, lit_4545@l /* 0x80B6BEC8@l */
/* 80B69D70  80 64 00 00 */	lwz r3, 0(r4)
/* 80B69D74  80 04 00 04 */	lwz r0, 4(r4)
/* 80B69D78  90 61 00 08 */	stw r3, 8(r1)
/* 80B69D7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B69D80  80 04 00 08 */	lwz r0, 8(r4)
/* 80B69D84  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B69D88  7F E3 FB 78 */	mr r3, r31
/* 80B69D8C  38 81 00 08 */	addi r4, r1, 8
/* 80B69D90  48 00 07 61 */	bl setAction__12daNpc_zanB_cFM12daNpc_zanB_cFPCvPvPv_i
lbl_80B69D94:
/* 80B69D94  38 60 00 01 */	li r3, 1
/* 80B69D98  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B69D9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B69DA0  7C 08 03 A6 */	mtlr r0
/* 80B69DA4  38 21 00 30 */	addi r1, r1, 0x30
/* 80B69DA8  4E 80 00 20 */	blr 
