lbl_80D4ECCC:
/* 80D4ECCC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4ECD0  7C 08 02 A6 */	mflr r0
/* 80D4ECD4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4ECD8  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4ECDC  4B 61 34 FC */	b _savegpr_28
/* 80D4ECE0  7C 7C 1B 78 */	mr r28, r3
/* 80D4ECE4  3B A0 00 00 */	li r29, 0
/* 80D4ECE8  3B E0 00 00 */	li r31, 0
/* 80D4ECEC  3B C1 00 0C */	addi r30, r1, 0xc
lbl_80D4ECF0:
/* 80D4ECF0  38 1F 05 68 */	addi r0, r31, 0x568
/* 80D4ECF4  7C 7C 00 2E */	lwzx r3, r28, r0
/* 80D4ECF8  3C 03 00 01 */	addis r0, r3, 1
/* 80D4ECFC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80D4ED00  41 82 00 24 */	beq lbl_80D4ED24
/* 80D4ED04  90 61 00 08 */	stw r3, 8(r1)
/* 80D4ED08  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80D4ED0C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80D4ED10  38 81 00 08 */	addi r4, r1, 8
/* 80D4ED14  4B 2C AA E4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80D4ED18  38 81 00 0C */	addi r4, r1, 0xc
/* 80D4ED1C  7C 64 F9 2E */	stwx r3, r4, r31
/* 80D4ED20  48 00 00 10 */	b lbl_80D4ED30
lbl_80D4ED24:
/* 80D4ED24  38 00 00 00 */	li r0, 0
/* 80D4ED28  38 61 00 0C */	addi r3, r1, 0xc
/* 80D4ED2C  7C 03 F9 2E */	stwx r0, r3, r31
lbl_80D4ED30:
/* 80D4ED30  7C 9E F8 2E */	lwzx r4, r30, r31
/* 80D4ED34  28 04 00 00 */	cmplwi r4, 0
/* 80D4ED38  41 82 00 1C */	beq lbl_80D4ED54
/* 80D4ED3C  7F 83 E3 78 */	mr r3, r28
/* 80D4ED40  4B FF FE 4D */	bl checkArea_sub__11daSwLBall_cFP10fopAc_ac_c
/* 80D4ED44  2C 03 00 00 */	cmpwi r3, 0
/* 80D4ED48  41 82 00 0C */	beq lbl_80D4ED54
/* 80D4ED4C  38 60 00 01 */	li r3, 1
/* 80D4ED50  48 00 00 18 */	b lbl_80D4ED68
lbl_80D4ED54:
/* 80D4ED54  3B BD 00 01 */	addi r29, r29, 1
/* 80D4ED58  2C 1D 00 02 */	cmpwi r29, 2
/* 80D4ED5C  3B FF 00 04 */	addi r31, r31, 4
/* 80D4ED60  41 80 FF 90 */	blt lbl_80D4ECF0
/* 80D4ED64  38 60 00 00 */	li r3, 0
lbl_80D4ED68:
/* 80D4ED68  39 61 00 30 */	addi r11, r1, 0x30
/* 80D4ED6C  4B 61 34 B8 */	b _restgpr_28
/* 80D4ED70  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4ED74  7C 08 03 A6 */	mtlr r0
/* 80D4ED78  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4ED7C  4E 80 00 20 */	blr 
