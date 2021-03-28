lbl_80B6CB54:
/* 80B6CB54  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B6CB58  7C 08 02 A6 */	mflr r0
/* 80B6CB5C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B6CB60  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B6CB64  7C 7F 1B 78 */	mr r31, r3
/* 80B6CB68  3C 80 80 B7 */	lis r4, lit_4457@ha
/* 80B6CB6C  38 A4 EB 48 */	addi r5, r4, lit_4457@l
/* 80B6CB70  80 85 00 00 */	lwz r4, 0(r5)
/* 80B6CB74  80 05 00 04 */	lwz r0, 4(r5)
/* 80B6CB78  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B6CB7C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B6CB80  80 05 00 08 */	lwz r0, 8(r5)
/* 80B6CB84  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B6CB88  38 81 00 14 */	addi r4, r1, 0x14
/* 80B6CB8C  48 00 06 D9 */	bl chkAction__12daNpc_Zant_cFM12daNpc_Zant_cFPCvPvPv_i
/* 80B6CB90  2C 03 00 00 */	cmpwi r3, 0
/* 80B6CB94  41 82 00 1C */	beq lbl_80B6CBB0
/* 80B6CB98  7F E3 FB 78 */	mr r3, r31
/* 80B6CB9C  38 80 00 00 */	li r4, 0
/* 80B6CBA0  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80B6CBA4  4B 7F 54 E0 */	b __ptmf_scall
/* 80B6CBA8  60 00 00 00 */	nop 
/* 80B6CBAC  48 00 00 90 */	b lbl_80B6CC3C
lbl_80B6CBB0:
/* 80B6CBB0  38 00 00 00 */	li r0, 0
/* 80B6CBB4  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80B6CBB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6CBBC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B6CBC0  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80B6CBC4  28 04 00 01 */	cmplwi r4, 1
/* 80B6CBC8  41 82 00 0C */	beq lbl_80B6CBD4
/* 80B6CBCC  28 04 00 02 */	cmplwi r4, 2
/* 80B6CBD0  40 82 00 08 */	bne lbl_80B6CBD8
lbl_80B6CBD4:
/* 80B6CBD4  38 00 00 01 */	li r0, 1
lbl_80B6CBD8:
/* 80B6CBD8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B6CBDC  41 82 00 34 */	beq lbl_80B6CC10
/* 80B6CBE0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80B6CBE4  4B 4D BC 0C */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80B6CBE8  2C 03 00 00 */	cmpwi r3, 0
/* 80B6CBEC  40 82 00 0C */	bne lbl_80B6CBF8
/* 80B6CBF0  38 60 00 01 */	li r3, 1
/* 80B6CBF4  48 00 00 4C */	b lbl_80B6CC40
lbl_80B6CBF8:
/* 80B6CBF8  38 00 00 01 */	li r0, 1
/* 80B6CBFC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80B6CC00  7F E3 FB 78 */	mr r3, r31
/* 80B6CC04  4B 5D D6 20 */	b evtChange__8daNpcT_cFv
/* 80B6CC08  38 60 00 01 */	li r3, 1
/* 80B6CC0C  48 00 00 34 */	b lbl_80B6CC40
lbl_80B6CC10:
/* 80B6CC10  3C 60 80 B7 */	lis r3, lit_4467@ha
/* 80B6CC14  38 83 EB 54 */	addi r4, r3, lit_4467@l
/* 80B6CC18  80 64 00 00 */	lwz r3, 0(r4)
/* 80B6CC1C  80 04 00 04 */	lwz r0, 4(r4)
/* 80B6CC20  90 61 00 08 */	stw r3, 8(r1)
/* 80B6CC24  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B6CC28  80 04 00 08 */	lwz r0, 8(r4)
/* 80B6CC2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B6CC30  7F E3 FB 78 */	mr r3, r31
/* 80B6CC34  38 81 00 08 */	addi r4, r1, 8
/* 80B6CC38  48 00 06 59 */	bl setAction__12daNpc_Zant_cFM12daNpc_Zant_cFPCvPvPv_i
lbl_80B6CC3C:
/* 80B6CC3C  38 60 00 01 */	li r3, 1
lbl_80B6CC40:
/* 80B6CC40  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B6CC44  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B6CC48  7C 08 03 A6 */	mtlr r0
/* 80B6CC4C  38 21 00 30 */	addi r1, r1, 0x30
/* 80B6CC50  4E 80 00 20 */	blr 
