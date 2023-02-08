lbl_809ECD50:
/* 809ECD50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809ECD54  7C 08 02 A6 */	mflr r0
/* 809ECD58  90 01 00 24 */	stw r0, 0x24(r1)
/* 809ECD5C  39 61 00 20 */	addi r11, r1, 0x20
/* 809ECD60  4B 97 54 79 */	bl _savegpr_28
/* 809ECD64  7C 7D 1B 78 */	mr r29, r3
/* 809ECD68  3B E0 00 00 */	li r31, 0
/* 809ECD6C  3B C0 00 00 */	li r30, 0
/* 809ECD70  A0 03 1A 7A */	lhz r0, 0x1a7a(r3)
/* 809ECD74  2C 00 00 02 */	cmpwi r0, 2
/* 809ECD78  41 82 00 40 */	beq lbl_809ECDB8
/* 809ECD7C  40 80 01 F0 */	bge lbl_809ECF6C
/* 809ECD80  2C 00 00 00 */	cmpwi r0, 0
/* 809ECD84  41 82 00 0C */	beq lbl_809ECD90
/* 809ECD88  48 00 01 E4 */	b lbl_809ECF6C
/* 809ECD8C  48 00 01 E0 */	b lbl_809ECF6C
lbl_809ECD90:
/* 809ECD90  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 809ECD94  28 00 00 00 */	cmplwi r0, 0
/* 809ECD98  40 82 01 D4 */	bne lbl_809ECF6C
/* 809ECD9C  80 9D 1A 74 */	lwz r4, 0x1a74(r29)
/* 809ECDA0  38 A0 00 00 */	li r5, 0
/* 809ECDA4  4B 76 6F 79 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 809ECDA8  38 00 00 00 */	li r0, 0
/* 809ECDAC  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809ECDB0  38 00 00 02 */	li r0, 2
/* 809ECDB4  B0 1D 1A 7A */	sth r0, 0x1a7a(r29)
lbl_809ECDB8:
/* 809ECDB8  88 1D 09 EA */	lbz r0, 0x9ea(r29)
/* 809ECDBC  28 00 00 00 */	cmplwi r0, 0
/* 809ECDC0  41 82 00 0C */	beq lbl_809ECDCC
/* 809ECDC4  3B C0 00 01 */	li r30, 1
/* 809ECDC8  48 00 01 48 */	b lbl_809ECF10
lbl_809ECDCC:
/* 809ECDCC  7F A3 EB 78 */	mr r3, r29
/* 809ECDD0  38 80 00 03 */	li r4, 3
/* 809ECDD4  4B FF F3 91 */	bl setLookMode__11daNpc_Grz_cFi
/* 809ECDD8  38 7D 12 A8 */	addi r3, r29, 0x12a8
/* 809ECDDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809ECDE0  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809ECDE4  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809ECDE8  4B 76 38 D5 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 809ECDEC  7F A3 EB 78 */	mr r3, r29
/* 809ECDF0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809ECDF4  4B 62 D9 1D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809ECDF8  A8 9D 08 F2 */	lha r4, 0x8f2(r29)
/* 809ECDFC  7C 60 07 34 */	extsh r0, r3
/* 809ECE00  7C 04 00 00 */	cmpw r4, r0
/* 809ECE04  40 82 00 0C */	bne lbl_809ECE10
/* 809ECE08  3B C0 00 01 */	li r30, 1
/* 809ECE0C  48 00 01 04 */	b lbl_809ECF10
lbl_809ECE10:
/* 809ECE10  88 1D 1A 7C */	lbz r0, 0x1a7c(r29)
/* 809ECE14  28 00 00 01 */	cmplwi r0, 1
/* 809ECE18  40 82 00 80 */	bne lbl_809ECE98
/* 809ECE1C  7F A3 EB 78 */	mr r3, r29
/* 809ECE20  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809ECE24  4B 62 D8 ED */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809ECE28  7C 64 1B 78 */	mr r4, r3
/* 809ECE2C  7F A3 EB 78 */	mr r3, r29
/* 809ECE30  38 A0 00 09 */	li r5, 9
/* 809ECE34  38 C0 00 0E */	li r6, 0xe
/* 809ECE38  38 E0 00 1E */	li r7, 0x1e
/* 809ECE3C  4B 76 72 69 */	bl step__8daNpcF_cFsiii
/* 809ECE40  2C 03 00 00 */	cmpwi r3, 0
/* 809ECE44  41 82 00 CC */	beq lbl_809ECF10
/* 809ECE48  7F A3 EB 78 */	mr r3, r29
/* 809ECE4C  38 80 00 09 */	li r4, 9
/* 809ECE50  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809ECE54  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809ECE58  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809ECE5C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809ECE60  7D 89 03 A6 */	mtctr r12
/* 809ECE64  4E 80 04 21 */	bctrl 
/* 809ECE68  7F A3 EB 78 */	mr r3, r29
/* 809ECE6C  38 80 00 01 */	li r4, 1
/* 809ECE70  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809ECE74  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809ECE78  38 A0 00 00 */	li r5, 0
/* 809ECE7C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809ECE80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809ECE84  7D 89 03 A6 */	mtctr r12
/* 809ECE88  4E 80 04 21 */	bctrl 
/* 809ECE8C  38 00 00 00 */	li r0, 0
/* 809ECE90  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 809ECE94  48 00 00 7C */	b lbl_809ECF10
lbl_809ECE98:
/* 809ECE98  7F A3 EB 78 */	mr r3, r29
/* 809ECE9C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 809ECEA0  4B 62 D8 71 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809ECEA4  7C 64 1B 78 */	mr r4, r3
/* 809ECEA8  7F A3 EB 78 */	mr r3, r29
/* 809ECEAC  38 A0 00 0A */	li r5, 0xa
/* 809ECEB0  38 C0 00 0D */	li r6, 0xd
/* 809ECEB4  38 E0 00 0F */	li r7, 0xf
/* 809ECEB8  4B 76 71 ED */	bl step__8daNpcF_cFsiii
/* 809ECEBC  2C 03 00 00 */	cmpwi r3, 0
/* 809ECEC0  41 82 00 50 */	beq lbl_809ECF10
/* 809ECEC4  7F A3 EB 78 */	mr r3, r29
/* 809ECEC8  38 80 00 0A */	li r4, 0xa
/* 809ECECC  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809ECED0  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809ECED4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809ECED8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809ECEDC  7D 89 03 A6 */	mtctr r12
/* 809ECEE0  4E 80 04 21 */	bctrl 
/* 809ECEE4  7F A3 EB 78 */	mr r3, r29
/* 809ECEE8  38 80 00 00 */	li r4, 0
/* 809ECEEC  3C A0 80 9F */	lis r5, lit_4685@ha /* 0x809EF2B0@ha */
/* 809ECEF0  C0 25 F2 B0 */	lfs f1, lit_4685@l(r5)  /* 0x809EF2B0@l */
/* 809ECEF4  38 A0 00 00 */	li r5, 0
/* 809ECEF8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 809ECEFC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809ECF00  7D 89 03 A6 */	mtctr r12
/* 809ECF04  4E 80 04 21 */	bctrl 
/* 809ECF08  38 00 00 00 */	li r0, 0
/* 809ECF0C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_809ECF10:
/* 809ECF10  2C 1E 00 00 */	cmpwi r30, 0
/* 809ECF14  41 82 00 24 */	beq lbl_809ECF38
/* 809ECF18  7F A3 EB 78 */	mr r3, r29
/* 809ECF1C  38 80 00 00 */	li r4, 0
/* 809ECF20  38 A0 00 01 */	li r5, 1
/* 809ECF24  38 C0 00 00 */	li r6, 0
/* 809ECF28  4B 76 6E 5D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 809ECF2C  2C 03 00 00 */	cmpwi r3, 0
/* 809ECF30  41 82 00 08 */	beq lbl_809ECF38
/* 809ECF34  3B E0 00 01 */	li r31, 1
lbl_809ECF38:
/* 809ECF38  2C 1F 00 00 */	cmpwi r31, 0
/* 809ECF3C  41 82 00 30 */	beq lbl_809ECF6C
/* 809ECF40  38 00 00 03 */	li r0, 3
/* 809ECF44  B0 1D 1A 7A */	sth r0, 0x1a7a(r29)
/* 809ECF48  88 1D 09 EC */	lbz r0, 0x9ec(r29)
/* 809ECF4C  28 00 00 00 */	cmplwi r0, 0
/* 809ECF50  40 82 00 14 */	bne lbl_809ECF64
/* 809ECF54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809ECF58  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809ECF5C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 809ECF60  4B 65 55 09 */	bl reset__14dEvt_control_cFv
lbl_809ECF64:
/* 809ECF64  38 00 00 00 */	li r0, 0
/* 809ECF68  98 1D 09 EC */	stb r0, 0x9ec(r29)
lbl_809ECF6C:
/* 809ECF6C  7F E3 FB 78 */	mr r3, r31
/* 809ECF70  39 61 00 20 */	addi r11, r1, 0x20
/* 809ECF74  4B 97 52 B1 */	bl _restgpr_28
/* 809ECF78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809ECF7C  7C 08 03 A6 */	mtlr r0
/* 809ECF80  38 21 00 20 */	addi r1, r1, 0x20
/* 809ECF84  4E 80 00 20 */	blr 
