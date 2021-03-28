lbl_80B4ABA0:
/* 80B4ABA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B4ABA4  7C 08 02 A6 */	mflr r0
/* 80B4ABA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B4ABAC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B4ABB0  7C 7F 1B 78 */	mr r31, r3
/* 80B4ABB4  3C 80 80 B5 */	lis r4, lit_4595@ha
/* 80B4ABB8  38 A4 D0 00 */	addi r5, r4, lit_4595@l
/* 80B4ABBC  80 85 00 00 */	lwz r4, 0(r5)
/* 80B4ABC0  80 05 00 04 */	lwz r0, 4(r5)
/* 80B4ABC4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B4ABC8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B4ABCC  80 05 00 08 */	lwz r0, 8(r5)
/* 80B4ABD0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B4ABD4  38 81 00 14 */	addi r4, r1, 0x14
/* 80B4ABD8  48 00 07 71 */	bl chkAction__13daNpc_yamiT_cFM13daNpc_yamiT_cFPCvPvPv_i
/* 80B4ABDC  2C 03 00 00 */	cmpwi r3, 0
/* 80B4ABE0  41 82 00 1C */	beq lbl_80B4ABFC
/* 80B4ABE4  7F E3 FB 78 */	mr r3, r31
/* 80B4ABE8  38 80 00 00 */	li r4, 0
/* 80B4ABEC  39 9F 0F 94 */	addi r12, r31, 0xf94
/* 80B4ABF0  4B 81 74 94 */	b __ptmf_scall
/* 80B4ABF4  60 00 00 00 */	nop 
/* 80B4ABF8  48 00 00 74 */	b lbl_80B4AC6C
lbl_80B4ABFC:
/* 80B4ABFC  38 00 00 00 */	li r0, 0
/* 80B4AC00  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4AC04  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4AC08  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80B4AC0C  28 03 00 01 */	cmplwi r3, 1
/* 80B4AC10  41 82 00 0C */	beq lbl_80B4AC1C
/* 80B4AC14  28 03 00 02 */	cmplwi r3, 2
/* 80B4AC18  40 82 00 08 */	bne lbl_80B4AC20
lbl_80B4AC1C:
/* 80B4AC1C  38 00 00 01 */	li r0, 1
lbl_80B4AC20:
/* 80B4AC20  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B4AC24  41 82 00 1C */	beq lbl_80B4AC40
/* 80B4AC28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B4AC2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B4AC30  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80B4AC34  4B 4F DB BC */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80B4AC38  2C 03 00 00 */	cmpwi r3, 0
/* 80B4AC3C  41 82 00 30 */	beq lbl_80B4AC6C
lbl_80B4AC40:
/* 80B4AC40  3C 60 80 B5 */	lis r3, lit_4603@ha
/* 80B4AC44  38 83 D0 0C */	addi r4, r3, lit_4603@l
/* 80B4AC48  80 64 00 00 */	lwz r3, 0(r4)
/* 80B4AC4C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B4AC50  90 61 00 08 */	stw r3, 8(r1)
/* 80B4AC54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B4AC58  80 04 00 08 */	lwz r0, 8(r4)
/* 80B4AC5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B4AC60  7F E3 FB 78 */	mr r3, r31
/* 80B4AC64  38 81 00 08 */	addi r4, r1, 8
/* 80B4AC68  48 00 07 0D */	bl setAction__13daNpc_yamiT_cFM13daNpc_yamiT_cFPCvPvPv_i
lbl_80B4AC6C:
/* 80B4AC6C  38 60 00 01 */	li r3, 1
/* 80B4AC70  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B4AC74  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B4AC78  7C 08 03 A6 */	mtlr r0
/* 80B4AC7C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B4AC80  4E 80 00 20 */	blr 
