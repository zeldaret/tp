lbl_80D47D5C:
/* 80D47D5C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D47D60  7C 08 02 A6 */	mflr r0
/* 80D47D64  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D47D68  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D47D6C  7C 7F 1B 78 */	mr r31, r3
/* 80D47D70  3C 60 80 D5 */	lis r3, lit_4568@ha
/* 80D47D74  38 83 C5 38 */	addi r4, r3, lit_4568@l
/* 80D47D78  80 64 00 00 */	lwz r3, 0(r4)
/* 80D47D7C  80 04 00 04 */	lwz r0, 4(r4)
/* 80D47D80  90 61 00 14 */	stw r3, 0x14(r1)
/* 80D47D84  90 01 00 18 */	stw r0, 0x18(r1)
/* 80D47D88  80 04 00 08 */	lwz r0, 8(r4)
/* 80D47D8C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D47D90  38 7F 0E 5C */	addi r3, r31, 0xe5c
/* 80D47D94  38 81 00 14 */	addi r4, r1, 0x14
/* 80D47D98  4B 61 A2 B0 */	b __ptmf_cmpr
/* 80D47D9C  2C 03 00 00 */	cmpwi r3, 0
/* 80D47DA0  40 82 00 1C */	bne lbl_80D47DBC
/* 80D47DA4  7F E3 FB 78 */	mr r3, r31
/* 80D47DA8  38 80 00 00 */	li r4, 0
/* 80D47DAC  39 9F 0E 5C */	addi r12, r31, 0xe5c
/* 80D47DB0  4B 61 A2 D4 */	b __ptmf_scall
/* 80D47DB4  60 00 00 00 */	nop 
/* 80D47DB8  48 00 00 78 */	b lbl_80D47E30
lbl_80D47DBC:
/* 80D47DBC  38 00 00 00 */	li r0, 0
/* 80D47DC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D47DC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D47DC8  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80D47DCC  28 03 00 01 */	cmplwi r3, 1
/* 80D47DD0  41 82 00 0C */	beq lbl_80D47DDC
/* 80D47DD4  28 03 00 02 */	cmplwi r3, 2
/* 80D47DD8  40 82 00 08 */	bne lbl_80D47DE0
lbl_80D47DDC:
/* 80D47DDC  38 00 00 01 */	li r0, 1
lbl_80D47DE0:
/* 80D47DE0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D47DE4  41 82 00 1C */	beq lbl_80D47E00
/* 80D47DE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D47DEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D47DF0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80D47DF4  4B 30 09 FC */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80D47DF8  2C 03 00 00 */	cmpwi r3, 0
/* 80D47DFC  41 82 00 34 */	beq lbl_80D47E30
lbl_80D47E00:
/* 80D47E00  3C 60 80 D5 */	lis r3, lit_4576@ha
/* 80D47E04  38 83 C5 44 */	addi r4, r3, lit_4576@l
/* 80D47E08  80 64 00 00 */	lwz r3, 0(r4)
/* 80D47E0C  80 04 00 04 */	lwz r0, 4(r4)
/* 80D47E10  90 61 00 08 */	stw r3, 8(r1)
/* 80D47E14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D47E18  80 04 00 08 */	lwz r0, 8(r4)
/* 80D47E1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D47E20  7F E3 FB 78 */	mr r3, r31
/* 80D47E24  38 81 00 08 */	addi r4, r1, 8
/* 80D47E28  38 A0 00 00 */	li r5, 0
/* 80D47E2C  48 00 05 39 */	bl setAction__8daPeru_cFM8daPeru_cFPCvPvi_ii
lbl_80D47E30:
/* 80D47E30  38 60 00 01 */	li r3, 1
/* 80D47E34  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D47E38  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D47E3C  7C 08 03 A6 */	mtlr r0
/* 80D47E40  38 21 00 30 */	addi r1, r1, 0x30
/* 80D47E44  4E 80 00 20 */	blr 
