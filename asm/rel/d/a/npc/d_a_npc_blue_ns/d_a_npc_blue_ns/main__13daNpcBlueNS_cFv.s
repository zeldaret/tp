lbl_80969F54:
/* 80969F54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80969F58  7C 08 02 A6 */	mflr r0
/* 80969F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80969F60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80969F64  93 C1 00 08 */	stw r30, 8(r1)
/* 80969F68  7C 7F 1B 78 */	mr r31, r3
/* 80969F6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80969F70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80969F74  38 80 00 58 */	li r4, 0x58
/* 80969F78  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80969F7C  7C 05 07 74 */	extsb r5, r0
/* 80969F80  4B 6C B3 E0 */	b isSwitch__10dSv_info_cCFii
/* 80969F84  2C 03 00 00 */	cmpwi r3, 0
/* 80969F88  41 82 00 3C */	beq lbl_80969FC4
/* 80969F8C  7F E3 FB 78 */	mr r3, r31
/* 80969F90  38 80 00 01 */	li r4, 1
/* 80969F94  4B FF F5 71 */	bl create_Yamijin__13daNpcBlueNS_cFi
/* 80969F98  90 7F 0E 00 */	stw r3, 0xe00(r31)
/* 80969F9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80969FA0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80969FA4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80969FA8  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80969FAC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80969FB0  7C 05 07 74 */	extsb r5, r0
/* 80969FB4  4B 6C B2 4C */	b onSwitch__10dSv_info_cFii
/* 80969FB8  7F E3 FB 78 */	mr r3, r31
/* 80969FBC  4B 6A FC C0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80969FC0  48 00 00 B4 */	b lbl_8096A074
lbl_80969FC4:
/* 80969FC4  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 80969FC8  4B 9F 80 50 */	b __ptmf_test
/* 80969FCC  2C 03 00 00 */	cmpwi r3, 0
/* 80969FD0  41 82 00 18 */	beq lbl_80969FE8
/* 80969FD4  7F E3 FB 78 */	mr r3, r31
/* 80969FD8  38 80 00 00 */	li r4, 0
/* 80969FDC  39 9F 0D C4 */	addi r12, r31, 0xdc4
/* 80969FE0  4B 9F 80 A4 */	b __ptmf_scall
/* 80969FE4  60 00 00 00 */	nop 
lbl_80969FE8:
/* 80969FE8  7F E3 FB 78 */	mr r3, r31
/* 80969FEC  4B FF F6 05 */	bl col_check__13daNpcBlueNS_cFv
/* 80969FF0  2C 03 00 00 */	cmpwi r3, 0
/* 80969FF4  41 82 00 24 */	beq lbl_8096A018
/* 80969FF8  88 1F 0E 12 */	lbz r0, 0xe12(r31)
/* 80969FFC  7C 00 07 75 */	extsb. r0, r0
/* 8096A000  40 82 00 6C */	bne lbl_8096A06C
/* 8096A004  7F E3 FB 78 */	mr r3, r31
/* 8096A008  4B FF F4 61 */	bl callEvt_changeYami__13daNpcBlueNS_cFv
/* 8096A00C  38 00 00 01 */	li r0, 1
/* 8096A010  98 1F 0E 12 */	stb r0, 0xe12(r31)
/* 8096A014  48 00 00 58 */	b lbl_8096A06C
lbl_8096A018:
/* 8096A018  88 1F 0E 12 */	lbz r0, 0xe12(r31)
/* 8096A01C  7C 00 07 75 */	extsb. r0, r0
/* 8096A020  40 82 00 4C */	bne lbl_8096A06C
/* 8096A024  3B C0 00 01 */	li r30, 1
/* 8096A028  7F E3 FB 78 */	mr r3, r31
/* 8096A02C  80 9F 0D F0 */	lwz r4, 0xdf0(r31)
/* 8096A030  4B FF F6 69 */	bl holyball_check_main__13daNpcBlueNS_cFP10fopAc_ac_c
/* 8096A034  2C 03 00 00 */	cmpwi r3, 0
/* 8096A038  40 82 00 1C */	bne lbl_8096A054
/* 8096A03C  7F E3 FB 78 */	mr r3, r31
/* 8096A040  80 9F 0D F4 */	lwz r4, 0xdf4(r31)
/* 8096A044  4B FF F6 55 */	bl holyball_check_main__13daNpcBlueNS_cFP10fopAc_ac_c
/* 8096A048  2C 03 00 00 */	cmpwi r3, 0
/* 8096A04C  40 82 00 08 */	bne lbl_8096A054
/* 8096A050  3B C0 00 00 */	li r30, 0
lbl_8096A054:
/* 8096A054  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 8096A058  41 82 00 14 */	beq lbl_8096A06C
/* 8096A05C  7F E3 FB 78 */	mr r3, r31
/* 8096A060  4B FF F4 09 */	bl callEvt_changeYami__13daNpcBlueNS_cFv
/* 8096A064  38 00 00 01 */	li r0, 1
/* 8096A068  98 1F 0E 12 */	stb r0, 0xe12(r31)
lbl_8096A06C:
/* 8096A06C  7F E3 FB 78 */	mr r3, r31
/* 8096A070  48 00 04 A9 */	bl playMotion__13daNpcBlueNS_cFv
lbl_8096A074:
/* 8096A074  38 60 00 00 */	li r3, 0
/* 8096A078  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8096A07C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8096A080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096A084  7C 08 03 A6 */	mtlr r0
/* 8096A088  38 21 00 10 */	addi r1, r1, 0x10
/* 8096A08C  4E 80 00 20 */	blr 
