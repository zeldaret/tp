lbl_80B47440:
/* 80B47440  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B47444  7C 08 02 A6 */	mflr r0
/* 80B47448  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B4744C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B47450  7C 7F 1B 78 */	mr r31, r3
/* 80B47454  3C 80 80 B5 */	lis r4, lit_4588@ha /* 0x80B498E0@ha */
/* 80B47458  38 A4 98 E0 */	addi r5, r4, lit_4588@l /* 0x80B498E0@l */
/* 80B4745C  80 85 00 00 */	lwz r4, 0(r5)
/* 80B47460  80 05 00 04 */	lwz r0, 4(r5)
/* 80B47464  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B47468  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B4746C  80 05 00 08 */	lwz r0, 8(r5)
/* 80B47470  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B47474  38 81 00 14 */	addi r4, r1, 0x14
/* 80B47478  48 00 07 2D */	bl chkAction__13daNpc_yamiS_cFM13daNpc_yamiS_cFPCvPvPv_i
/* 80B4747C  2C 03 00 00 */	cmpwi r3, 0
/* 80B47480  41 82 00 1C */	beq lbl_80B4749C
/* 80B47484  7F E3 FB 78 */	mr r3, r31
/* 80B47488  38 80 00 00 */	li r4, 0
/* 80B4748C  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B47490  4B 81 AB F5 */	bl __ptmf_scall
/* 80B47494  60 00 00 00 */	nop 
/* 80B47498  48 00 00 74 */	b lbl_80B4750C
lbl_80B4749C:
/* 80B4749C  38 00 00 00 */	li r0, 0
/* 80B474A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B474A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B474A8  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80B474AC  28 03 00 01 */	cmplwi r3, 1
/* 80B474B0  41 82 00 0C */	beq lbl_80B474BC
/* 80B474B4  28 03 00 02 */	cmplwi r3, 2
/* 80B474B8  40 82 00 08 */	bne lbl_80B474C0
lbl_80B474BC:
/* 80B474BC  38 00 00 01 */	li r0, 1
lbl_80B474C0:
/* 80B474C0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B474C4  41 82 00 1C */	beq lbl_80B474E0
/* 80B474C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B474CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B474D0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80B474D4  4B 50 13 1D */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80B474D8  2C 03 00 00 */	cmpwi r3, 0
/* 80B474DC  41 82 00 30 */	beq lbl_80B4750C
lbl_80B474E0:
/* 80B474E0  3C 60 80 B5 */	lis r3, lit_4596@ha /* 0x80B498EC@ha */
/* 80B474E4  38 83 98 EC */	addi r4, r3, lit_4596@l /* 0x80B498EC@l */
/* 80B474E8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B474EC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B474F0  90 61 00 08 */	stw r3, 8(r1)
/* 80B474F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B474F8  80 04 00 08 */	lwz r0, 8(r4)
/* 80B474FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B47500  7F E3 FB 78 */	mr r3, r31
/* 80B47504  38 81 00 08 */	addi r4, r1, 8
/* 80B47508  48 00 06 C9 */	bl setAction__13daNpc_yamiS_cFM13daNpc_yamiS_cFPCvPvPv_i
lbl_80B4750C:
/* 80B4750C  38 60 00 01 */	li r3, 1
/* 80B47510  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B47514  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B47518  7C 08 03 A6 */	mtlr r0
/* 80B4751C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B47520  4E 80 00 20 */	blr 
