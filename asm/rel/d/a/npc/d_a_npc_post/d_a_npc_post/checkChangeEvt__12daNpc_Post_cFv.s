lbl_80AA9BA4:
/* 80AA9BA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA9BA8  7C 08 02 A6 */	mflr r0
/* 80AA9BAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA9BB0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AA9BB4  7C 7F 1B 78 */	mr r31, r3
/* 80AA9BB8  3C 80 80 AB */	lis r4, lit_4596@ha
/* 80AA9BBC  38 A4 D9 1C */	addi r5, r4, lit_4596@l
/* 80AA9BC0  80 85 00 00 */	lwz r4, 0(r5)
/* 80AA9BC4  80 05 00 04 */	lwz r0, 4(r5)
/* 80AA9BC8  90 81 00 08 */	stw r4, 8(r1)
/* 80AA9BCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AA9BD0  80 05 00 08 */	lwz r0, 8(r5)
/* 80AA9BD4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AA9BD8  38 81 00 08 */	addi r4, r1, 8
/* 80AA9BDC  48 00 0E 09 */	bl chkAction__12daNpc_Post_cFM12daNpc_Post_cFPCvPvPv_i
/* 80AA9BE0  2C 03 00 00 */	cmpwi r3, 0
/* 80AA9BE4  40 82 00 5C */	bne lbl_80AA9C40
/* 80AA9BE8  38 00 00 00 */	li r0, 0
/* 80AA9BEC  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80AA9BF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AA9BF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AA9BF8  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AA9BFC  28 04 00 01 */	cmplwi r4, 1
/* 80AA9C00  41 82 00 0C */	beq lbl_80AA9C0C
/* 80AA9C04  28 04 00 02 */	cmplwi r4, 2
/* 80AA9C08  40 82 00 08 */	bne lbl_80AA9C10
lbl_80AA9C0C:
/* 80AA9C0C  38 00 00 01 */	li r0, 1
lbl_80AA9C10:
/* 80AA9C10  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AA9C14  41 82 00 2C */	beq lbl_80AA9C40
/* 80AA9C18  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AA9C1C  4B 59 EB D4 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80AA9C20  2C 03 00 00 */	cmpwi r3, 0
/* 80AA9C24  41 82 00 14 */	beq lbl_80AA9C38
/* 80AA9C28  38 00 00 01 */	li r0, 1
/* 80AA9C2C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AA9C30  7F E3 FB 78 */	mr r3, r31
/* 80AA9C34  4B 6A 05 F0 */	b evtChange__8daNpcT_cFv
lbl_80AA9C38:
/* 80AA9C38  38 60 00 01 */	li r3, 1
/* 80AA9C3C  48 00 00 08 */	b lbl_80AA9C44
lbl_80AA9C40:
/* 80AA9C40  38 60 00 00 */	li r3, 0
lbl_80AA9C44:
/* 80AA9C44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AA9C48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA9C4C  7C 08 03 A6 */	mtlr r0
/* 80AA9C50  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA9C54  4E 80 00 20 */	blr 
