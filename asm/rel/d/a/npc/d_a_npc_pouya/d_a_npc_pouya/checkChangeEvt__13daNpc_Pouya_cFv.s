lbl_80AAEFB4:
/* 80AAEFB4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AAEFB8  7C 08 02 A6 */	mflr r0
/* 80AAEFBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AAEFC0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AAEFC4  7C 7F 1B 78 */	mr r31, r3
/* 80AAEFC8  3C 80 80 AB */	lis r4, lit_4663@ha
/* 80AAEFCC  38 A4 2A 50 */	addi r5, r4, lit_4663@l
/* 80AAEFD0  80 85 00 00 */	lwz r4, 0(r5)
/* 80AAEFD4  80 05 00 04 */	lwz r0, 4(r5)
/* 80AAEFD8  90 81 00 08 */	stw r4, 8(r1)
/* 80AAEFDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AAEFE0  80 05 00 08 */	lwz r0, 8(r5)
/* 80AAEFE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AAEFE8  38 81 00 08 */	addi r4, r1, 8
/* 80AAEFEC  48 00 0C 39 */	bl chkAction__13daNpc_Pouya_cFM13daNpc_Pouya_cFPCvPvPv_i
/* 80AAEFF0  2C 03 00 00 */	cmpwi r3, 0
/* 80AAEFF4  40 82 01 3C */	bne lbl_80AAF130
/* 80AAEFF8  38 00 00 00 */	li r0, 0
/* 80AAEFFC  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80AAF000  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAF004  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AAF008  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AAF00C  28 04 00 01 */	cmplwi r4, 1
/* 80AAF010  41 82 00 0C */	beq lbl_80AAF01C
/* 80AAF014  28 04 00 02 */	cmplwi r4, 2
/* 80AAF018  40 82 00 08 */	bne lbl_80AAF020
lbl_80AAF01C:
/* 80AAF01C  38 00 00 01 */	li r0, 1
lbl_80AAF020:
/* 80AAF020  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AAF024  41 82 00 2C */	beq lbl_80AAF050
/* 80AAF028  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AAF02C  4B 59 97 C4 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80AAF030  2C 03 00 00 */	cmpwi r3, 0
/* 80AAF034  41 82 00 14 */	beq lbl_80AAF048
/* 80AAF038  38 00 00 02 */	li r0, 2
/* 80AAF03C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AAF040  7F E3 FB 78 */	mr r3, r31
/* 80AAF044  4B 69 B1 E0 */	b evtChange__8daNpcT_cFv
lbl_80AAF048:
/* 80AAF048  38 60 00 01 */	li r3, 1
/* 80AAF04C  48 00 00 E8 */	b lbl_80AAF134
lbl_80AAF050:
/* 80AAF050  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80AAF054  2C 00 00 01 */	cmpwi r0, 1
/* 80AAF058  41 82 00 10 */	beq lbl_80AAF068
/* 80AAF05C  40 80 00 D4 */	bge lbl_80AAF130
/* 80AAF060  48 00 00 D0 */	b lbl_80AAF130
/* 80AAF064  48 00 00 CC */	b lbl_80AAF130
lbl_80AAF068:
/* 80AAF068  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAF06C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AAF070  38 63 09 58 */	addi r3, r3, 0x958
/* 80AAF074  38 80 00 1F */	li r4, 0x1f
/* 80AAF078  4B 58 57 E8 */	b isSwitch__12dSv_memBit_cCFi
/* 80AAF07C  2C 03 00 00 */	cmpwi r3, 0
/* 80AAF080  41 82 00 B0 */	beq lbl_80AAF130
/* 80AAF084  38 60 01 C8 */	li r3, 0x1c8
/* 80AAF088  4B 69 DA 24 */	b daNpcT_chkEvtBit__FUl
/* 80AAF08C  2C 03 00 00 */	cmpwi r3, 0
/* 80AAF090  40 82 00 24 */	bne lbl_80AAF0B4
/* 80AAF094  38 60 00 0B */	li r3, 0xb
/* 80AAF098  4B 69 DA 94 */	b daNpcT_offTmpBit__FUl
/* 80AAF09C  38 00 00 03 */	li r0, 3
/* 80AAF0A0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AAF0A4  7F E3 FB 78 */	mr r3, r31
/* 80AAF0A8  4B 69 B1 7C */	b evtChange__8daNpcT_cFv
/* 80AAF0AC  38 60 00 01 */	li r3, 1
/* 80AAF0B0  48 00 00 84 */	b lbl_80AAF134
lbl_80AAF0B4:
/* 80AAF0B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AAF0B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AAF0BC  88 03 01 0C */	lbz r0, 0x10c(r3)
/* 80AAF0C0  28 00 00 3C */	cmplwi r0, 0x3c
/* 80AAF0C4  41 80 00 34 */	blt lbl_80AAF0F8
/* 80AAF0C8  38 60 01 CA */	li r3, 0x1ca
/* 80AAF0CC  4B 69 D9 E0 */	b daNpcT_chkEvtBit__FUl
/* 80AAF0D0  2C 03 00 00 */	cmpwi r3, 0
/* 80AAF0D4  40 82 00 5C */	bne lbl_80AAF130
/* 80AAF0D8  38 60 00 0B */	li r3, 0xb
/* 80AAF0DC  4B 69 DA 50 */	b daNpcT_offTmpBit__FUl
/* 80AAF0E0  38 00 00 07 */	li r0, 7
/* 80AAF0E4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AAF0E8  7F E3 FB 78 */	mr r3, r31
/* 80AAF0EC  4B 69 B1 38 */	b evtChange__8daNpcT_cFv
/* 80AAF0F0  38 60 00 01 */	li r3, 1
/* 80AAF0F4  48 00 00 40 */	b lbl_80AAF134
lbl_80AAF0F8:
/* 80AAF0F8  28 00 00 14 */	cmplwi r0, 0x14
/* 80AAF0FC  41 80 00 34 */	blt lbl_80AAF130
/* 80AAF100  38 60 02 B6 */	li r3, 0x2b6
/* 80AAF104  4B 69 D9 A8 */	b daNpcT_chkEvtBit__FUl
/* 80AAF108  2C 03 00 00 */	cmpwi r3, 0
/* 80AAF10C  40 82 00 24 */	bne lbl_80AAF130
/* 80AAF110  38 60 00 0B */	li r3, 0xb
/* 80AAF114  4B 69 DA 18 */	b daNpcT_offTmpBit__FUl
/* 80AAF118  38 00 00 05 */	li r0, 5
/* 80AAF11C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AAF120  7F E3 FB 78 */	mr r3, r31
/* 80AAF124  4B 69 B1 00 */	b evtChange__8daNpcT_cFv
/* 80AAF128  38 60 00 01 */	li r3, 1
/* 80AAF12C  48 00 00 08 */	b lbl_80AAF134
lbl_80AAF130:
/* 80AAF130  38 60 00 00 */	li r3, 0
lbl_80AAF134:
/* 80AAF134  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AAF138  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AAF13C  7C 08 03 A6 */	mtlr r0
/* 80AAF140  38 21 00 20 */	addi r1, r1, 0x20
/* 80AAF144  4E 80 00 20 */	blr 
