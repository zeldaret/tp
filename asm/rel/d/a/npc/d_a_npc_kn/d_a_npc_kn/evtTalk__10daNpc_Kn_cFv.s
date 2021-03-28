lbl_80A2C234:
/* 80A2C234  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A2C238  7C 08 02 A6 */	mflr r0
/* 80A2C23C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A2C240  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80A2C244  7C 7F 1B 78 */	mr r31, r3
/* 80A2C248  3C 80 80 A4 */	lis r4, lit_6873@ha
/* 80A2C24C  38 A4 18 40 */	addi r5, r4, lit_6873@l
/* 80A2C250  80 85 00 00 */	lwz r4, 0(r5)
/* 80A2C254  80 05 00 04 */	lwz r0, 4(r5)
/* 80A2C258  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A2C25C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A2C260  80 05 00 08 */	lwz r0, 8(r5)
/* 80A2C264  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A2C268  38 81 00 14 */	addi r4, r1, 0x14
/* 80A2C26C  48 00 14 9D */	bl chkAction__10daNpc_Kn_cFM10daNpc_Kn_cFPCvPvPv_i
/* 80A2C270  2C 03 00 00 */	cmpwi r3, 0
/* 80A2C274  41 82 00 1C */	beq lbl_80A2C290
/* 80A2C278  7F E3 FB 78 */	mr r3, r31
/* 80A2C27C  38 80 00 00 */	li r4, 0
/* 80A2C280  39 9F 17 20 */	addi r12, r31, 0x1720
/* 80A2C284  4B 93 5E 00 */	b __ptmf_scall
/* 80A2C288  60 00 00 00 */	nop 
/* 80A2C28C  48 00 00 74 */	b lbl_80A2C300
lbl_80A2C290:
/* 80A2C290  38 00 00 00 */	li r0, 0
/* 80A2C294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2C298  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A2C29C  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80A2C2A0  28 03 00 01 */	cmplwi r3, 1
/* 80A2C2A4  41 82 00 0C */	beq lbl_80A2C2B0
/* 80A2C2A8  28 03 00 02 */	cmplwi r3, 2
/* 80A2C2AC  40 82 00 08 */	bne lbl_80A2C2B4
lbl_80A2C2B0:
/* 80A2C2B0  38 00 00 01 */	li r0, 1
lbl_80A2C2B4:
/* 80A2C2B4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A2C2B8  41 82 00 1C */	beq lbl_80A2C2D4
/* 80A2C2BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A2C2C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A2C2C4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80A2C2C8  4B 61 C5 28 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80A2C2CC  2C 03 00 00 */	cmpwi r3, 0
/* 80A2C2D0  41 82 00 30 */	beq lbl_80A2C300
lbl_80A2C2D4:
/* 80A2C2D4  3C 60 80 A4 */	lis r3, lit_6881@ha
/* 80A2C2D8  38 83 18 4C */	addi r4, r3, lit_6881@l
/* 80A2C2DC  80 64 00 00 */	lwz r3, 0(r4)
/* 80A2C2E0  80 04 00 04 */	lwz r0, 4(r4)
/* 80A2C2E4  90 61 00 08 */	stw r3, 8(r1)
/* 80A2C2E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A2C2EC  80 04 00 08 */	lwz r0, 8(r4)
/* 80A2C2F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A2C2F4  7F E3 FB 78 */	mr r3, r31
/* 80A2C2F8  38 81 00 08 */	addi r4, r1, 8
/* 80A2C2FC  48 00 14 39 */	bl setAction__10daNpc_Kn_cFM10daNpc_Kn_cFPCvPvPv_i
lbl_80A2C300:
/* 80A2C300  38 60 00 01 */	li r3, 1
/* 80A2C304  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80A2C308  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A2C30C  7C 08 03 A6 */	mtlr r0
/* 80A2C310  38 21 00 30 */	addi r1, r1, 0x30
/* 80A2C314  4E 80 00 20 */	blr 
