lbl_80AE3C28:
/* 80AE3C28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AE3C2C  7C 08 02 A6 */	mflr r0
/* 80AE3C30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE3C34  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AE3C38  7C 7F 1B 78 */	mr r31, r3
/* 80AE3C3C  3C 80 80 AE */	lis r4, lit_4549@ha
/* 80AE3C40  38 A4 70 D8 */	addi r5, r4, lit_4549@l
/* 80AE3C44  80 85 00 00 */	lwz r4, 0(r5)
/* 80AE3C48  80 05 00 04 */	lwz r0, 4(r5)
/* 80AE3C4C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AE3C50  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AE3C54  80 05 00 08 */	lwz r0, 8(r5)
/* 80AE3C58  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AE3C5C  38 81 00 14 */	addi r4, r1, 0x14
/* 80AE3C60  48 00 08 A9 */	bl chkAction__11daNpc_Sha_cFM11daNpc_Sha_cFPCvPvPv_i
/* 80AE3C64  2C 03 00 00 */	cmpwi r3, 0
/* 80AE3C68  41 82 00 1C */	beq lbl_80AE3C84
/* 80AE3C6C  7F E3 FB 78 */	mr r3, r31
/* 80AE3C70  38 80 00 00 */	li r4, 0
/* 80AE3C74  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80AE3C78  4B 87 E4 0C */	b __ptmf_scall
/* 80AE3C7C  60 00 00 00 */	nop 
/* 80AE3C80  48 00 00 90 */	b lbl_80AE3D10
lbl_80AE3C84:
/* 80AE3C84  38 00 00 00 */	li r0, 0
/* 80AE3C88  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80AE3C8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE3C90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AE3C94  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AE3C98  28 04 00 01 */	cmplwi r4, 1
/* 80AE3C9C  41 82 00 0C */	beq lbl_80AE3CA8
/* 80AE3CA0  28 04 00 02 */	cmplwi r4, 2
/* 80AE3CA4  40 82 00 08 */	bne lbl_80AE3CAC
lbl_80AE3CA8:
/* 80AE3CA8  38 00 00 01 */	li r0, 1
lbl_80AE3CAC:
/* 80AE3CAC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AE3CB0  41 82 00 34 */	beq lbl_80AE3CE4
/* 80AE3CB4  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AE3CB8  4B 56 4B 38 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80AE3CBC  2C 03 00 00 */	cmpwi r3, 0
/* 80AE3CC0  40 82 00 0C */	bne lbl_80AE3CCC
/* 80AE3CC4  38 60 00 01 */	li r3, 1
/* 80AE3CC8  48 00 00 4C */	b lbl_80AE3D14
lbl_80AE3CCC:
/* 80AE3CCC  38 00 00 01 */	li r0, 1
/* 80AE3CD0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AE3CD4  7F E3 FB 78 */	mr r3, r31
/* 80AE3CD8  4B 66 65 4C */	b evtChange__8daNpcT_cFv
/* 80AE3CDC  38 60 00 01 */	li r3, 1
/* 80AE3CE0  48 00 00 34 */	b lbl_80AE3D14
lbl_80AE3CE4:
/* 80AE3CE4  3C 60 80 AE */	lis r3, lit_4559@ha
/* 80AE3CE8  38 83 70 E4 */	addi r4, r3, lit_4559@l
/* 80AE3CEC  80 64 00 00 */	lwz r3, 0(r4)
/* 80AE3CF0  80 04 00 04 */	lwz r0, 4(r4)
/* 80AE3CF4  90 61 00 08 */	stw r3, 8(r1)
/* 80AE3CF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AE3CFC  80 04 00 08 */	lwz r0, 8(r4)
/* 80AE3D00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AE3D04  7F E3 FB 78 */	mr r3, r31
/* 80AE3D08  38 81 00 08 */	addi r4, r1, 8
/* 80AE3D0C  48 00 08 29 */	bl setAction__11daNpc_Sha_cFM11daNpc_Sha_cFPCvPvPv_i
lbl_80AE3D10:
/* 80AE3D10  38 60 00 01 */	li r3, 1
lbl_80AE3D14:
/* 80AE3D14  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AE3D18  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE3D1C  7C 08 03 A6 */	mtlr r0
/* 80AE3D20  38 21 00 30 */	addi r1, r1, 0x30
/* 80AE3D24  4E 80 00 20 */	blr 
