lbl_80963DB0:
/* 80963DB0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80963DB4  7C 08 02 A6 */	mflr r0
/* 80963DB8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80963DBC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80963DC0  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80963DC4  7C 7E 1B 78 */	mr r30, r3
/* 80963DC8  3C 80 80 97 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80968000@ha */
/* 80963DCC  3B E4 80 00 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80968000@l */
/* 80963DD0  88 03 12 65 */	lbz r0, 0x1265(r3)
/* 80963DD4  28 00 00 00 */	cmplwi r0, 0
/* 80963DD8  41 82 00 84 */	beq lbl_80963E5C
/* 80963DDC  80 9F 05 9C */	lwz r4, 0x59c(r31)
/* 80963DE0  80 1F 05 A0 */	lwz r0, 0x5a0(r31)
/* 80963DE4  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80963DE8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80963DEC  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 80963DF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80963DF4  38 81 00 2C */	addi r4, r1, 0x2c
/* 80963DF8  48 00 0E 55 */	bl chkAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i
/* 80963DFC  2C 03 00 00 */	cmpwi r3, 0
/* 80963E00  41 82 00 1C */	beq lbl_80963E1C
/* 80963E04  7F C3 F3 78 */	mr r3, r30
/* 80963E08  38 80 00 00 */	li r4, 0
/* 80963E0C  39 9E 12 50 */	addi r12, r30, 0x1250
/* 80963E10  4B 9F E2 75 */	bl __ptmf_scall
/* 80963E14  60 00 00 00 */	nop 
/* 80963E18  48 00 00 A8 */	b lbl_80963EC0
lbl_80963E1C:
/* 80963E1C  38 60 00 39 */	li r3, 0x39
/* 80963E20  4B 7E 8D 4D */	bl daNpcT_chkTmpBit__FUl
/* 80963E24  2C 03 00 00 */	cmpwi r3, 0
/* 80963E28  40 82 00 0C */	bne lbl_80963E34
/* 80963E2C  38 7E 0E 78 */	addi r3, r30, 0xe78
/* 80963E30  4B 83 1E 6D */	bl shop_cam_action_init__16ShopCam_action_cFv
lbl_80963E34:
/* 80963E34  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80963E38  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 80963E3C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80963E40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80963E44  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80963E48  90 01 00 28 */	stw r0, 0x28(r1)
/* 80963E4C  7F C3 F3 78 */	mr r3, r30
/* 80963E50  38 81 00 20 */	addi r4, r1, 0x20
/* 80963E54  48 00 0E 25 */	bl setAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i
/* 80963E58  48 00 00 68 */	b lbl_80963EC0
lbl_80963E5C:
/* 80963E5C  80 9F 05 B4 */	lwz r4, 0x5b4(r31)
/* 80963E60  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 80963E64  90 81 00 14 */	stw r4, 0x14(r1)
/* 80963E68  90 01 00 18 */	stw r0, 0x18(r1)
/* 80963E6C  80 1F 05 BC */	lwz r0, 0x5bc(r31)
/* 80963E70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80963E74  38 81 00 14 */	addi r4, r1, 0x14
/* 80963E78  48 00 0D D5 */	bl chkAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i
/* 80963E7C  2C 03 00 00 */	cmpwi r3, 0
/* 80963E80  41 82 00 1C */	beq lbl_80963E9C
/* 80963E84  7F C3 F3 78 */	mr r3, r30
/* 80963E88  38 80 00 00 */	li r4, 0
/* 80963E8C  39 9E 12 50 */	addi r12, r30, 0x1250
/* 80963E90  4B 9F E1 F5 */	bl __ptmf_scall
/* 80963E94  60 00 00 00 */	nop 
/* 80963E98  48 00 00 28 */	b lbl_80963EC0
lbl_80963E9C:
/* 80963E9C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80963EA0  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 80963EA4  90 61 00 08 */	stw r3, 8(r1)
/* 80963EA8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80963EAC  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 80963EB0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80963EB4  7F C3 F3 78 */	mr r3, r30
/* 80963EB8  38 81 00 08 */	addi r4, r1, 8
/* 80963EBC  48 00 0D BD */	bl setAction__12daNpc_Bans_cFM12daNpc_Bans_cFPCvPvPv_i
lbl_80963EC0:
/* 80963EC0  38 60 00 01 */	li r3, 1
/* 80963EC4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80963EC8  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80963ECC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80963ED0  7C 08 03 A6 */	mtlr r0
/* 80963ED4  38 21 00 40 */	addi r1, r1, 0x40
/* 80963ED8  4E 80 00 20 */	blr 
