lbl_80AFEA14:
/* 80AFEA14  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AFEA18  7C 08 02 A6 */	mflr r0
/* 80AFEA1C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AFEA20  39 61 00 50 */	addi r11, r1, 0x50
/* 80AFEA24  4B 86 37 B0 */	b _savegpr_27
/* 80AFEA28  7C 7B 1B 78 */	mr r27, r3
/* 80AFEA2C  3C 60 80 B0 */	lis r3, cNullVec__6Z2Calc@ha
/* 80AFEA30  3B C3 10 28 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80AFEA34  3B 80 00 00 */	li r28, 0
/* 80AFEA38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AFEA3C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80AFEA40  88 1F 4F AD */	lbz r0, 0x4fad(r31)
/* 80AFEA44  28 00 00 00 */	cmplwi r0, 0
/* 80AFEA48  41 82 02 9C */	beq lbl_80AFECE4
/* 80AFEA4C  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80AFEA50  28 00 00 01 */	cmplwi r0, 1
/* 80AFEA54  40 82 01 40 */	bne lbl_80AFEB94
/* 80AFEA58  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 80AFEA5C  80 1E 01 78 */	lwz r0, 0x178(r30)
/* 80AFEA60  90 61 00 20 */	stw r3, 0x20(r1)
/* 80AFEA64  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFEA68  80 1E 01 7C */	lwz r0, 0x17c(r30)
/* 80AFEA6C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80AFEA70  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80AFEA74  38 81 00 20 */	addi r4, r1, 0x20
/* 80AFEA78  4B 86 35 D0 */	b __ptmf_cmpr
/* 80AFEA7C  2C 03 00 00 */	cmpwi r3, 0
/* 80AFEA80  40 82 00 1C */	bne lbl_80AFEA9C
/* 80AFEA84  7F 63 DB 78 */	mr r3, r27
/* 80AFEA88  38 80 00 00 */	li r4, 0
/* 80AFEA8C  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80AFEA90  4B 86 35 F4 */	b __ptmf_scall
/* 80AFEA94  60 00 00 00 */	nop 
/* 80AFEA98  48 00 00 F4 */	b lbl_80AFEB8C
lbl_80AFEA9C:
/* 80AFEA9C  38 00 00 00 */	li r0, 0
/* 80AFEAA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AFEAA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AFEAA8  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80AFEAAC  28 03 00 01 */	cmplwi r3, 1
/* 80AFEAB0  41 82 00 0C */	beq lbl_80AFEABC
/* 80AFEAB4  28 03 00 02 */	cmplwi r3, 2
/* 80AFEAB8  40 82 00 08 */	bne lbl_80AFEAC0
lbl_80AFEABC:
/* 80AFEABC  38 00 00 01 */	li r0, 1
lbl_80AFEAC0:
/* 80AFEAC0  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AFEAC4  41 82 00 14 */	beq lbl_80AFEAD8
/* 80AFEAC8  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80AFEACC  4B 54 9D 24 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80AFEAD0  2C 03 00 00 */	cmpwi r3, 0
/* 80AFEAD4  41 82 00 B8 */	beq lbl_80AFEB8C
lbl_80AFEAD8:
/* 80AFEAD8  80 7E 01 80 */	lwz r3, 0x180(r30)
/* 80AFEADC  80 1E 01 84 */	lwz r0, 0x184(r30)
/* 80AFEAE0  90 61 00 14 */	stw r3, 0x14(r1)
/* 80AFEAE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AFEAE8  80 1E 01 88 */	lwz r0, 0x188(r30)
/* 80AFEAEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AFEAF0  38 00 00 03 */	li r0, 3
/* 80AFEAF4  B0 1B 0E 02 */	sth r0, 0xe02(r27)
/* 80AFEAF8  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80AFEAFC  4B 86 35 1C */	b __ptmf_test
/* 80AFEB00  2C 03 00 00 */	cmpwi r3, 0
/* 80AFEB04  41 82 00 18 */	beq lbl_80AFEB1C
/* 80AFEB08  7F 63 DB 78 */	mr r3, r27
/* 80AFEB0C  38 80 00 00 */	li r4, 0
/* 80AFEB10  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80AFEB14  4B 86 35 70 */	b __ptmf_scall
/* 80AFEB18  60 00 00 00 */	nop 
lbl_80AFEB1C:
/* 80AFEB1C  38 00 00 00 */	li r0, 0
/* 80AFEB20  B0 1B 0E 02 */	sth r0, 0xe02(r27)
/* 80AFEB24  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80AFEB28  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80AFEB2C  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80AFEB30  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80AFEB34  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80AFEB38  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80AFEB3C  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80AFEB40  4B 86 34 D8 */	b __ptmf_test
/* 80AFEB44  2C 03 00 00 */	cmpwi r3, 0
/* 80AFEB48  41 82 00 18 */	beq lbl_80AFEB60
/* 80AFEB4C  7F 63 DB 78 */	mr r3, r27
/* 80AFEB50  38 80 00 00 */	li r4, 0
/* 80AFEB54  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80AFEB58  4B 86 35 2C */	b __ptmf_scall
/* 80AFEB5C  60 00 00 00 */	nop 
lbl_80AFEB60:
/* 80AFEB60  80 1B 04 A4 */	lwz r0, 0x4a4(r27)
/* 80AFEB64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AFEB68  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80AFEB6C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80AFEB70  38 81 00 10 */	addi r4, r1, 0x10
/* 80AFEB74  4B 51 AC 84 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80AFEB78  28 03 00 00 */	cmplwi r3, 0
/* 80AFEB7C  41 82 00 10 */	beq lbl_80AFEB8C
/* 80AFEB80  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80AFEB84  60 00 08 00 */	ori r0, r0, 0x800
/* 80AFEB88  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80AFEB8C:
/* 80AFEB8C  3B 80 00 01 */	li r28, 1
/* 80AFEB90  48 00 01 78 */	b lbl_80AFED08
lbl_80AFEB94:
/* 80AFEB94  3B BF 4F F8 */	addi r29, r31, 0x4ff8
/* 80AFEB98  7F A3 EB 78 */	mr r3, r29
/* 80AFEB9C  80 9E 00 C0 */	lwz r4, 0xc0(r30)
/* 80AFEBA0  38 A0 00 00 */	li r5, 0
/* 80AFEBA4  38 C0 00 00 */	li r6, 0
/* 80AFEBA8  4B 54 8F 74 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80AFEBAC  2C 03 FF FF */	cmpwi r3, -1
/* 80AFEBB0  41 82 00 74 */	beq lbl_80AFEC24
/* 80AFEBB4  7C 7C 1B 78 */	mr r28, r3
/* 80AFEBB8  93 9B 09 2C */	stw r28, 0x92c(r27)
/* 80AFEBBC  80 1B 04 A4 */	lwz r0, 0x4a4(r27)
/* 80AFEBC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AFEBC4  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80AFEBC8  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80AFEBCC  38 81 00 0C */	addi r4, r1, 0xc
/* 80AFEBD0  4B 51 AC 28 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80AFEBD4  28 03 00 00 */	cmplwi r3, 0
/* 80AFEBD8  41 82 00 10 */	beq lbl_80AFEBE8
/* 80AFEBDC  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80AFEBE0  60 00 08 00 */	ori r0, r0, 0x800
/* 80AFEBE4  90 03 04 9C */	stw r0, 0x49c(r3)
lbl_80AFEBE8:
/* 80AFEBE8  7F 63 DB 78 */	mr r3, r27
/* 80AFEBEC  7F 84 E3 78 */	mr r4, r28
/* 80AFEBF0  A0 1B 09 E6 */	lhz r0, 0x9e6(r27)
/* 80AFEBF4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80AFEBF8  39 9E 01 00 */	addi r12, r30, 0x100
/* 80AFEBFC  7D 8C 02 14 */	add r12, r12, r0
/* 80AFEC00  4B 86 34 84 */	b __ptmf_scall
/* 80AFEC04  60 00 00 00 */	nop 
/* 80AFEC08  2C 03 00 00 */	cmpwi r3, 0
/* 80AFEC0C  41 82 00 10 */	beq lbl_80AFEC1C
/* 80AFEC10  7F A3 EB 78 */	mr r3, r29
/* 80AFEC14  7F 84 E3 78 */	mr r4, r28
/* 80AFEC18  4B 54 95 64 */	b cutEnd__16dEvent_manager_cFi
lbl_80AFEC1C:
/* 80AFEC1C  3B 80 00 01 */	li r28, 1
/* 80AFEC20  48 00 00 80 */	b lbl_80AFECA0
lbl_80AFEC24:
/* 80AFEC24  38 7F 4E 00 */	addi r3, r31, 0x4e00
/* 80AFEC28  3C 80 80 B0 */	lis r4, struct_80B00FA0+0x0@ha
/* 80AFEC2C  38 84 0F A0 */	addi r4, r4, struct_80B00FA0+0x0@l
/* 80AFEC30  38 84 00 76 */	addi r4, r4, 0x76
/* 80AFEC34  4B 86 9D 60 */	b strcmp
/* 80AFEC38  2C 03 00 00 */	cmpwi r3, 0
/* 80AFEC3C  40 82 00 64 */	bne lbl_80AFECA0
/* 80AFEC40  88 1B 0E 0E */	lbz r0, 0xe0e(r27)
/* 80AFEC44  28 00 00 00 */	cmplwi r0, 0
/* 80AFEC48  41 82 00 14 */	beq lbl_80AFEC5C
/* 80AFEC4C  7F 63 DB 78 */	mr r3, r27
/* 80AFEC50  48 00 0F 65 */	bl EvCut_PersonalCombatAfter__11daNpcTheB_cFv
/* 80AFEC54  3B 80 00 01 */	li r28, 1
/* 80AFEC58  48 00 00 48 */	b lbl_80AFECA0
lbl_80AFEC5C:
/* 80AFEC5C  38 00 00 EF */	li r0, 0xef
/* 80AFEC60  B0 01 00 08 */	sth r0, 8(r1)
/* 80AFEC64  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80AFEC68  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80AFEC6C  38 81 00 08 */	addi r4, r1, 8
/* 80AFEC70  4B 51 AB 88 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80AFEC74  A8 03 16 9E */	lha r0, 0x169e(r3)
/* 80AFEC78  2C 00 00 60 */	cmpwi r0, 0x60
/* 80AFEC7C  40 82 00 24 */	bne lbl_80AFECA0
/* 80AFEC80  A8 03 16 A0 */	lha r0, 0x16a0(r3)
/* 80AFEC84  2C 00 00 01 */	cmpwi r0, 1
/* 80AFEC88  40 82 00 18 */	bne lbl_80AFECA0
/* 80AFEC8C  38 00 00 01 */	li r0, 1
/* 80AFEC90  98 1B 0E 0E */	stb r0, 0xe0e(r27)
/* 80AFEC94  7F 63 DB 78 */	mr r3, r27
/* 80AFEC98  48 00 0F 1D */	bl EvCut_PersonalCombatAfter__11daNpcTheB_cFv
/* 80AFEC9C  3B 80 00 01 */	li r28, 1
lbl_80AFECA0:
/* 80AFECA0  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80AFECA4  28 00 00 02 */	cmplwi r0, 2
/* 80AFECA8  40 82 00 60 */	bne lbl_80AFED08
/* 80AFECAC  A8 9B 09 D4 */	lha r4, 0x9d4(r27)
/* 80AFECB0  2C 04 FF FF */	cmpwi r4, -1
/* 80AFECB4  41 82 00 54 */	beq lbl_80AFED08
/* 80AFECB8  7F A3 EB 78 */	mr r3, r29
/* 80AFECBC  4B 54 8D BC */	b endCheck__16dEvent_manager_cFs
/* 80AFECC0  2C 03 00 00 */	cmpwi r3, 0
/* 80AFECC4  41 82 00 44 */	beq lbl_80AFED08
/* 80AFECC8  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80AFECCC  4B 54 37 9C */	b reset__14dEvt_control_cFv
/* 80AFECD0  38 00 00 00 */	li r0, 0
/* 80AFECD4  B0 1B 09 E6 */	sth r0, 0x9e6(r27)
/* 80AFECD8  38 00 FF FF */	li r0, -1
/* 80AFECDC  B0 1B 09 D4 */	sth r0, 0x9d4(r27)
/* 80AFECE0  48 00 00 28 */	b lbl_80AFED08
lbl_80AFECE4:
/* 80AFECE4  38 00 00 00 */	li r0, 0
/* 80AFECE8  90 1B 09 50 */	stw r0, 0x950(r27)
/* 80AFECEC  80 1B 09 2C */	lwz r0, 0x92c(r27)
/* 80AFECF0  2C 00 FF FF */	cmpwi r0, -1
/* 80AFECF4  41 82 00 14 */	beq lbl_80AFED08
/* 80AFECF8  38 00 00 01 */	li r0, 1
/* 80AFECFC  B0 1B 0E 02 */	sth r0, 0xe02(r27)
/* 80AFED00  38 00 FF FF */	li r0, -1
/* 80AFED04  90 1B 09 2C */	stw r0, 0x92c(r27)
lbl_80AFED08:
/* 80AFED08  7F 83 E3 78 */	mr r3, r28
/* 80AFED0C  39 61 00 50 */	addi r11, r1, 0x50
/* 80AFED10  4B 86 35 10 */	b _restgpr_27
/* 80AFED14  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AFED18  7C 08 03 A6 */	mtlr r0
/* 80AFED1C  38 21 00 50 */	addi r1, r1, 0x50
/* 80AFED20  4E 80 00 20 */	blr 
