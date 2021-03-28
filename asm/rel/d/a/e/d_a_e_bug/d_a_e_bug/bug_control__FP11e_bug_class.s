lbl_80696E84:
/* 80696E84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80696E88  7C 08 02 A6 */	mflr r0
/* 80696E8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80696E90  39 61 00 30 */	addi r11, r1, 0x30
/* 80696E94  4B CC B3 34 */	b _savegpr_24
/* 80696E98  7C 7E 1B 78 */	mr r30, r3
/* 80696E9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80696EA0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80696EA4  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80696EA8  3B 9E 05 88 */	addi r28, r30, 0x588
/* 80696EAC  3B 60 00 00 */	li r27, 0
/* 80696EB0  3B 40 00 00 */	li r26, 0
/* 80696EB4  3B 20 00 00 */	li r25, 0
/* 80696EB8  3B 00 00 00 */	li r24, 0
/* 80696EBC  48 00 01 D8 */	b lbl_80697094
lbl_80696EC0:
/* 80696EC0  88 1C 00 50 */	lbz r0, 0x50(r28)
/* 80696EC4  7C 00 07 75 */	extsb. r0, r0
/* 80696EC8  41 82 01 C4 */	beq lbl_8069708C
/* 80696ECC  C0 5C 00 1C */	lfs f2, 0x1c(r28)
/* 80696ED0  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80696ED4  3C 60 80 69 */	lis r3, lit_4842@ha
/* 80696ED8  C0 03 7D 74 */	lfs f0, lit_4842@l(r3)
/* 80696EDC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80696EE0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80696EE4  40 80 00 0C */	bge lbl_80696EF0
/* 80696EE8  38 00 00 00 */	li r0, 0
/* 80696EEC  98 1C 00 50 */	stb r0, 0x50(r28)
lbl_80696EF0:
/* 80696EF0  3B 7B 00 01 */	addi r27, r27, 1
/* 80696EF4  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 80696EF8  D0 1C 00 0C */	stfs f0, 0xc(r28)
/* 80696EFC  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80696F00  D0 1C 00 10 */	stfs f0, 0x10(r28)
/* 80696F04  C0 1C 00 20 */	lfs f0, 0x20(r28)
/* 80696F08  D0 1C 00 14 */	stfs f0, 0x14(r28)
/* 80696F0C  C0 1C 00 18 */	lfs f0, 0x18(r28)
/* 80696F10  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80696F14  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80696F18  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80696F1C  C0 1C 00 20 */	lfs f0, 0x20(r28)
/* 80696F20  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80696F24  38 A0 00 00 */	li r5, 0
/* 80696F28  38 00 00 03 */	li r0, 3
/* 80696F2C  7C 09 03 A6 */	mtctr r0
lbl_80696F30:
/* 80696F30  38 85 00 54 */	addi r4, r5, 0x54
/* 80696F34  7C 7C 20 AE */	lbzx r3, r28, r4
/* 80696F38  28 03 00 00 */	cmplwi r3, 0
/* 80696F3C  41 82 00 0C */	beq lbl_80696F48
/* 80696F40  38 03 FF FF */	addi r0, r3, -1
/* 80696F44  7C 1C 21 AE */	stbx r0, r28, r4
lbl_80696F48:
/* 80696F48  38 A5 00 01 */	addi r5, r5, 1
/* 80696F4C  42 00 FF E4 */	bdnz lbl_80696F30
/* 80696F50  88 7C 00 52 */	lbz r3, 0x52(r28)
/* 80696F54  38 03 00 01 */	addi r0, r3, 1
/* 80696F58  98 1C 00 52 */	stb r0, 0x52(r28)
/* 80696F5C  88 1C 00 50 */	lbz r0, 0x50(r28)
/* 80696F60  7C 00 07 74 */	extsb r0, r0
/* 80696F64  2C 00 FF FF */	cmpwi r0, -1
/* 80696F68  40 82 00 1C */	bne lbl_80696F84
/* 80696F6C  7F C3 F3 78 */	mr r3, r30
/* 80696F70  7F 84 E3 78 */	mr r4, r28
/* 80696F74  4B FF F6 41 */	bl set_wait__FP11e_bug_classP5bug_s
/* 80696F78  7F 83 E3 78 */	mr r3, r28
/* 80696F7C  4B FF E0 19 */	bl bug_mtxset__FP5bug_s
/* 80696F80  48 00 00 DC */	b lbl_8069705C
lbl_80696F84:
/* 80696F84  2C 00 00 01 */	cmpwi r0, 1
/* 80696F88  40 82 00 40 */	bne lbl_80696FC8
/* 80696F8C  7F C3 F3 78 */	mr r3, r30
/* 80696F90  7F 84 E3 78 */	mr r4, r28
/* 80696F94  4B FF F8 95 */	bl normal_move__FP11e_bug_classP5bug_s
/* 80696F98  88 1C 00 53 */	lbz r0, 0x53(r28)
/* 80696F9C  28 00 00 00 */	cmplwi r0, 0
/* 80696FA0  41 82 00 10 */	beq lbl_80696FB0
/* 80696FA4  57 43 06 3E */	clrlwi r3, r26, 0x18
/* 80696FA8  38 03 00 01 */	addi r0, r3, 1
/* 80696FAC  54 1A 06 3E */	clrlwi r26, r0, 0x18
lbl_80696FB0:
/* 80696FB0  7F 83 E3 78 */	mr r3, r28
/* 80696FB4  4B FF DF E1 */	bl bug_mtxset__FP5bug_s
/* 80696FB8  7F C3 F3 78 */	mr r3, r30
/* 80696FBC  7F 84 E3 78 */	mr r4, r28
/* 80696FC0  4B FF F0 0D */	bl damage_check__FP11e_bug_classP5bug_s
/* 80696FC4  48 00 00 98 */	b lbl_8069705C
lbl_80696FC8:
/* 80696FC8  2C 00 00 02 */	cmpwi r0, 2
/* 80696FCC  40 82 00 4C */	bne lbl_80697018
/* 80696FD0  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 80696FD4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80696FD8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80696FDC  41 82 00 18 */	beq lbl_80696FF4
/* 80696FE0  7F 83 E3 78 */	mr r3, r28
/* 80696FE4  4B FF EC 01 */	bl bug_stickW__FP5bug_s
/* 80696FE8  7F 83 E3 78 */	mr r3, r28
/* 80696FEC  4B FF E1 DD */	bl bug_mtxset_stickW__FP5bug_s
/* 80696FF0  48 00 00 14 */	b lbl_80697004
lbl_80696FF4:
/* 80696FF4  7F 83 E3 78 */	mr r3, r28
/* 80696FF8  4B FF E8 F1 */	bl bug_stick__FP5bug_s
/* 80696FFC  7F 83 E3 78 */	mr r3, r28
/* 80697000  4B FF E0 6D */	bl bug_mtxset_stick__FP5bug_s
lbl_80697004:
/* 80697004  7F C3 F3 78 */	mr r3, r30
/* 80697008  7F 84 E3 78 */	mr r4, r28
/* 8069700C  3B 39 00 01 */	addi r25, r25, 1
/* 80697010  4B FF EF BD */	bl damage_check__FP11e_bug_classP5bug_s
/* 80697014  48 00 00 48 */	b lbl_8069705C
lbl_80697018:
/* 80697018  2C 00 00 03 */	cmpwi r0, 3
/* 8069701C  40 82 00 24 */	bne lbl_80697040
/* 80697020  7F 83 E3 78 */	mr r3, r28
/* 80697024  4B FF ED C5 */	bl wind_move__FP5bug_s
/* 80697028  7F 83 E3 78 */	mr r3, r28
/* 8069702C  4B FF DF 69 */	bl bug_mtxset__FP5bug_s
/* 80697030  7F C3 F3 78 */	mr r3, r30
/* 80697034  7F 84 E3 78 */	mr r4, r28
/* 80697038  4B FF EF 95 */	bl damage_check__FP11e_bug_classP5bug_s
/* 8069703C  48 00 00 20 */	b lbl_8069705C
lbl_80697040:
/* 80697040  2C 00 00 04 */	cmpwi r0, 4
/* 80697044  40 82 00 18 */	bne lbl_8069705C
/* 80697048  7F C3 F3 78 */	mr r3, r30
/* 8069704C  7F 84 E3 78 */	mr r4, r28
/* 80697050  4B FF EE 7D */	bl bug_fail__FP11e_bug_classP5bug_s
/* 80697054  7F 83 E3 78 */	mr r3, r28
/* 80697058  4B FF E3 8D */	bl bug_mtxset_fail__FP5bug_s
lbl_8069705C:
/* 8069705C  3C 60 80 69 */	lis r3, struct_80697E8C+0x0@ha
/* 80697060  38 63 7E 8C */	addi r3, r3, struct_80697E8C+0x0@l
/* 80697064  88 63 00 00 */	lbz r3, 0(r3)
/* 80697068  7C 63 07 74 */	extsb r3, r3
/* 8069706C  4B 99 60 00 */	b dComIfGp_getReverb__Fi
/* 80697070  7C 65 1B 78 */	mr r5, r3
/* 80697074  38 7C 00 58 */	addi r3, r28, 0x58
/* 80697078  38 80 00 00 */	li r4, 0
/* 8069707C  81 9C 00 68 */	lwz r12, 0x68(r28)
/* 80697080  81 8C 00 08 */	lwz r12, 8(r12)
/* 80697084  7D 89 03 A6 */	mtctr r12
/* 80697088  4E 80 04 21 */	bctrl 
lbl_8069708C:
/* 8069708C  3B 18 00 01 */	addi r24, r24, 1
/* 80697090  3B 9C 00 78 */	addi r28, r28, 0x78
lbl_80697094:
/* 80697094  80 1E 7D 88 */	lwz r0, 0x7d88(r30)
/* 80697098  7C 18 00 00 */	cmpw r24, r0
/* 8069709C  41 80 FE 24 */	blt lbl_80696EC0
/* 806970A0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 806970A4  40 82 00 10 */	bne lbl_806970B4
/* 806970A8  7F C3 F3 78 */	mr r3, r30
/* 806970AC  4B 98 2B D0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 806970B0  48 00 00 74 */	b lbl_80697124
lbl_806970B4:
/* 806970B4  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 806970B8  41 82 00 20 */	beq lbl_806970D8
/* 806970BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070375@ha */
/* 806970C0  38 03 03 75 */	addi r0, r3, 0x0375 /* 0x00070375@l */
/* 806970C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806970C8  38 7E 7D 8C */	addi r3, r30, 0x7d8c
/* 806970CC  38 81 00 0C */	addi r4, r1, 0xc
/* 806970D0  7F 45 D3 78 */	mr r5, r26
/* 806970D4  4B C2 AC 98 */	b playBeeGroupSound__18Z2SoundObjBeeGroupF10JAISoundIDUc
lbl_806970D8:
/* 806970D8  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 806970DC  41 82 00 20 */	beq lbl_806970FC
/* 806970E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070377@ha */
/* 806970E4  38 03 03 77 */	addi r0, r3, 0x0377 /* 0x00070377@l */
/* 806970E8  90 01 00 08 */	stw r0, 8(r1)
/* 806970EC  38 7E 7D 8C */	addi r3, r30, 0x7d8c
/* 806970F0  38 81 00 08 */	addi r4, r1, 8
/* 806970F4  7F 25 CB 78 */	mr r5, r25
/* 806970F8  4B C2 AC 74 */	b playBeeGroupSound__18Z2SoundObjBeeGroupF10JAISoundIDUc
lbl_806970FC:
/* 806970FC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80697100  7C 03 07 74 */	extsb r3, r0
/* 80697104  4B 99 5F 68 */	b dComIfGp_getReverb__Fi
/* 80697108  7C 65 1B 78 */	mr r5, r3
/* 8069710C  38 7E 7D 8C */	addi r3, r30, 0x7d8c
/* 80697110  38 80 00 00 */	li r4, 0
/* 80697114  81 9E 7D 9C */	lwz r12, 0x7d9c(r30)
/* 80697118  81 8C 00 08 */	lwz r12, 8(r12)
/* 8069711C  7D 89 03 A6 */	mtctr r12
/* 80697120  4E 80 04 21 */	bctrl 
lbl_80697124:
/* 80697124  57 20 06 3E */	clrlwi r0, r25, 0x18
/* 80697128  28 00 00 0A */	cmplwi r0, 0xa
/* 8069712C  40 81 00 1C */	ble lbl_80697148
/* 80697130  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80697134  64 00 40 00 */	oris r0, r0, 0x4000
/* 80697138  90 1D 05 70 */	stw r0, 0x570(r29)
/* 8069713C  80 1D 05 8C */	lwz r0, 0x58c(r29)
/* 80697140  64 00 00 04 */	oris r0, r0, 4
/* 80697144  90 1D 05 8C */	stw r0, 0x58c(r29)
lbl_80697148:
/* 80697148  39 61 00 30 */	addi r11, r1, 0x30
/* 8069714C  4B CC B0 C8 */	b _restgpr_24
/* 80697150  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80697154  7C 08 03 A6 */	mtlr r0
/* 80697158  38 21 00 30 */	addi r1, r1, 0x30
/* 8069715C  4E 80 00 20 */	blr 
