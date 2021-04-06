lbl_80AB6C14:
/* 80AB6C14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AB6C18  7C 08 02 A6 */	mflr r0
/* 80AB6C1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AB6C20  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AB6C24  7C 7F 1B 78 */	mr r31, r3
/* 80AB6C28  3C 80 80 AC */	lis r4, lit_4592@ha /* 0x80AB9320@ha */
/* 80AB6C2C  38 A4 93 20 */	addi r5, r4, lit_4592@l /* 0x80AB9320@l */
/* 80AB6C30  80 85 00 00 */	lwz r4, 0(r5)
/* 80AB6C34  80 05 00 04 */	lwz r0, 4(r5)
/* 80AB6C38  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AB6C3C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AB6C40  80 05 00 08 */	lwz r0, 8(r5)
/* 80AB6C44  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AB6C48  38 81 00 14 */	addi r4, r1, 0x14
/* 80AB6C4C  48 00 07 65 */	bl chkAction__12daNpc_Raca_cFM12daNpc_Raca_cFPCvPvPv_i
/* 80AB6C50  2C 03 00 00 */	cmpwi r3, 0
/* 80AB6C54  41 82 00 1C */	beq lbl_80AB6C70
/* 80AB6C58  7F E3 FB 78 */	mr r3, r31
/* 80AB6C5C  38 80 00 00 */	li r4, 0
/* 80AB6C60  39 9F 0F 98 */	addi r12, r31, 0xf98
/* 80AB6C64  4B 8A B4 21 */	bl __ptmf_scall
/* 80AB6C68  60 00 00 00 */	nop 
/* 80AB6C6C  48 00 00 90 */	b lbl_80AB6CFC
lbl_80AB6C70:
/* 80AB6C70  38 00 00 00 */	li r0, 0
/* 80AB6C74  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80AB6C78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AB6C7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AB6C80  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AB6C84  28 04 00 01 */	cmplwi r4, 1
/* 80AB6C88  41 82 00 0C */	beq lbl_80AB6C94
/* 80AB6C8C  28 04 00 02 */	cmplwi r4, 2
/* 80AB6C90  40 82 00 08 */	bne lbl_80AB6C98
lbl_80AB6C94:
/* 80AB6C94  38 00 00 01 */	li r0, 1
lbl_80AB6C98:
/* 80AB6C98  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AB6C9C  41 82 00 34 */	beq lbl_80AB6CD0
/* 80AB6CA0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AB6CA4  4B 59 1B 4D */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80AB6CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80AB6CAC  40 82 00 0C */	bne lbl_80AB6CB8
/* 80AB6CB0  38 60 00 01 */	li r3, 1
/* 80AB6CB4  48 00 00 4C */	b lbl_80AB6D00
lbl_80AB6CB8:
/* 80AB6CB8  38 00 00 01 */	li r0, 1
/* 80AB6CBC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AB6CC0  7F E3 FB 78 */	mr r3, r31
/* 80AB6CC4  4B 69 35 61 */	bl evtChange__8daNpcT_cFv
/* 80AB6CC8  38 60 00 01 */	li r3, 1
/* 80AB6CCC  48 00 00 34 */	b lbl_80AB6D00
lbl_80AB6CD0:
/* 80AB6CD0  3C 60 80 AC */	lis r3, lit_4602@ha /* 0x80AB932C@ha */
/* 80AB6CD4  38 83 93 2C */	addi r4, r3, lit_4602@l /* 0x80AB932C@l */
/* 80AB6CD8  80 64 00 00 */	lwz r3, 0(r4)
/* 80AB6CDC  80 04 00 04 */	lwz r0, 4(r4)
/* 80AB6CE0  90 61 00 08 */	stw r3, 8(r1)
/* 80AB6CE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AB6CE8  80 04 00 08 */	lwz r0, 8(r4)
/* 80AB6CEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AB6CF0  7F E3 FB 78 */	mr r3, r31
/* 80AB6CF4  38 81 00 08 */	addi r4, r1, 8
/* 80AB6CF8  48 00 06 E5 */	bl setAction__12daNpc_Raca_cFM12daNpc_Raca_cFPCvPvPv_i
lbl_80AB6CFC:
/* 80AB6CFC  38 60 00 01 */	li r3, 1
lbl_80AB6D00:
/* 80AB6D00  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AB6D04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AB6D08  7C 08 03 A6 */	mtlr r0
/* 80AB6D0C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AB6D10  4E 80 00 20 */	blr 
