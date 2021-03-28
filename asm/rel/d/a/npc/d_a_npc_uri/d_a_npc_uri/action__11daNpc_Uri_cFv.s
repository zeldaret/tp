lbl_80B27DF4:
/* 80B27DF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B27DF8  7C 08 02 A6 */	mflr r0
/* 80B27DFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B27E00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B27E04  7C 7F 1B 78 */	mr r31, r3
/* 80B27E08  38 9F 0E 48 */	addi r4, r31, 0xe48
/* 80B27E0C  38 A0 FF FF */	li r5, -1
/* 80B27E10  4B 62 2C 30 */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80B27E14  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80B27E18  2C 00 00 00 */	cmpwi r0, 0
/* 80B27E1C  41 82 00 5C */	beq lbl_80B27E78
/* 80B27E20  38 C0 00 00 */	li r6, 0
/* 80B27E24  38 60 00 00 */	li r3, 0
/* 80B27E28  7C C4 33 78 */	mr r4, r6
/* 80B27E2C  3C A0 80 B3 */	lis r5, lit_4055@ha
/* 80B27E30  C0 05 CE EC */	lfs f0, lit_4055@l(r5)
/* 80B27E34  38 00 00 02 */	li r0, 2
/* 80B27E38  7C 09 03 A6 */	mtctr r0
lbl_80B27E3C:
/* 80B27E3C  7C BF 22 14 */	add r5, r31, r4
/* 80B27E40  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B27E44  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B27E48  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B27E4C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B27E50  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B27E54  38 63 00 04 */	addi r3, r3, 4
/* 80B27E58  38 84 00 06 */	addi r4, r4, 6
/* 80B27E5C  42 00 FF E0 */	bdnz lbl_80B27E3C
/* 80B27E60  38 00 00 00 */	li r0, 0
/* 80B27E64  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B27E68  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B27E6C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B27E70  38 00 00 01 */	li r0, 1
/* 80B27E74  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B27E78:
/* 80B27E78  38 7F 0F C0 */	addi r3, r31, 0xfc0
/* 80B27E7C  4B 83 A1 9C */	b __ptmf_test
/* 80B27E80  2C 03 00 00 */	cmpwi r3, 0
/* 80B27E84  41 82 00 54 */	beq lbl_80B27ED8
/* 80B27E88  38 7F 0F CC */	addi r3, r31, 0xfcc
/* 80B27E8C  38 9F 0F C0 */	addi r4, r31, 0xfc0
/* 80B27E90  4B 83 A1 B8 */	b __ptmf_cmpr
/* 80B27E94  2C 03 00 00 */	cmpwi r3, 0
/* 80B27E98  40 82 00 1C */	bne lbl_80B27EB4
/* 80B27E9C  7F E3 FB 78 */	mr r3, r31
/* 80B27EA0  38 80 00 00 */	li r4, 0
/* 80B27EA4  39 9F 0F CC */	addi r12, r31, 0xfcc
/* 80B27EA8  4B 83 A1 DC */	b __ptmf_scall
/* 80B27EAC  60 00 00 00 */	nop 
/* 80B27EB0  48 00 00 28 */	b lbl_80B27ED8
lbl_80B27EB4:
/* 80B27EB4  80 7F 0F C0 */	lwz r3, 0xfc0(r31)
/* 80B27EB8  80 1F 0F C4 */	lwz r0, 0xfc4(r31)
/* 80B27EBC  90 61 00 08 */	stw r3, 8(r1)
/* 80B27EC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B27EC4  80 1F 0F C8 */	lwz r0, 0xfc8(r31)
/* 80B27EC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B27ECC  7F E3 FB 78 */	mr r3, r31
/* 80B27ED0  38 81 00 08 */	addi r4, r1, 8
/* 80B27ED4  48 00 08 ED */	bl setAction__11daNpc_Uri_cFM11daNpc_Uri_cFPCvPvPv_i
lbl_80B27ED8:
/* 80B27ED8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B27EDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B27EE0  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B27EE4  28 00 00 00 */	cmplwi r0, 0
/* 80B27EE8  40 82 00 18 */	bne lbl_80B27F00
/* 80B27EEC  88 1F 10 12 */	lbz r0, 0x1012(r31)
/* 80B27EF0  28 00 00 00 */	cmplwi r0, 0
/* 80B27EF4  41 82 00 0C */	beq lbl_80B27F00
/* 80B27EF8  7F E3 FB 78 */	mr r3, r31
/* 80B27EFC  4B 4F 1D 80 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80B27F00:
/* 80B27F00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B27F04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B27F08  7C 08 03 A6 */	mtlr r0
/* 80B27F0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80B27F10  4E 80 00 20 */	blr 
