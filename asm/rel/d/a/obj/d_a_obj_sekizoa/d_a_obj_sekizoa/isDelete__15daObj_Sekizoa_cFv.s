lbl_80CCF03C:
/* 80CCF03C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCF040  7C 08 02 A6 */	mflr r0
/* 80CCF044  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCF048  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCF04C  7C 65 1B 78 */	mr r5, r3
/* 80CCF050  88 03 10 C8 */	lbz r0, 0x10c8(r3)
/* 80CCF054  2C 00 00 04 */	cmpwi r0, 4
/* 80CCF058  41 82 00 7C */	beq lbl_80CCF0D4
/* 80CCF05C  40 80 00 1C */	bge lbl_80CCF078
/* 80CCF060  2C 00 00 02 */	cmpwi r0, 2
/* 80CCF064  41 82 00 60 */	beq lbl_80CCF0C4
/* 80CCF068  40 80 00 64 */	bge lbl_80CCF0CC
/* 80CCF06C  2C 00 00 00 */	cmpwi r0, 0
/* 80CCF070  40 80 00 18 */	bge lbl_80CCF088
/* 80CCF074  48 00 00 AC */	b lbl_80CCF120
lbl_80CCF078:
/* 80CCF078  2C 00 00 06 */	cmpwi r0, 6
/* 80CCF07C  41 82 00 68 */	beq lbl_80CCF0E4
/* 80CCF080  40 80 00 A0 */	bge lbl_80CCF120
/* 80CCF084  48 00 00 58 */	b lbl_80CCF0DC
lbl_80CCF088:
/* 80CCF088  3B E0 00 00 */	li r31, 0
/* 80CCF08C  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 80CCF090  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CCF094  28 04 00 FF */	cmplwi r4, 0xff
/* 80CCF098  41 82 00 24 */	beq lbl_80CCF0BC
/* 80CCF09C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCF0A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCF0A4  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 80CCF0A8  7C 05 07 74 */	extsb r5, r0
/* 80CCF0AC  4B 36 62 B4 */	b isSwitch__10dSv_info_cCFii
/* 80CCF0B0  2C 03 00 00 */	cmpwi r3, 0
/* 80CCF0B4  41 82 00 08 */	beq lbl_80CCF0BC
/* 80CCF0B8  3B E0 00 01 */	li r31, 1
lbl_80CCF0BC:
/* 80CCF0BC  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80CCF0C0  48 00 00 64 */	b lbl_80CCF124
lbl_80CCF0C4:
/* 80CCF0C4  38 60 00 00 */	li r3, 0
/* 80CCF0C8  48 00 00 5C */	b lbl_80CCF124
lbl_80CCF0CC:
/* 80CCF0CC  38 60 00 00 */	li r3, 0
/* 80CCF0D0  48 00 00 54 */	b lbl_80CCF124
lbl_80CCF0D4:
/* 80CCF0D4  38 60 00 00 */	li r3, 0
/* 80CCF0D8  48 00 00 4C */	b lbl_80CCF124
lbl_80CCF0DC:
/* 80CCF0DC  38 60 00 00 */	li r3, 0
/* 80CCF0E0  48 00 00 44 */	b lbl_80CCF124
lbl_80CCF0E4:
/* 80CCF0E4  3B E0 00 00 */	li r31, 0
/* 80CCF0E8  80 05 00 B0 */	lwz r0, 0xb0(r5)
/* 80CCF0EC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CCF0F0  28 04 00 FF */	cmplwi r4, 0xff
/* 80CCF0F4  41 82 00 24 */	beq lbl_80CCF118
/* 80CCF0F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CCF0FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CCF100  88 05 04 E2 */	lbz r0, 0x4e2(r5)
/* 80CCF104  7C 05 07 74 */	extsb r5, r0
/* 80CCF108  4B 36 62 58 */	b isSwitch__10dSv_info_cCFii
/* 80CCF10C  2C 03 00 00 */	cmpwi r3, 0
/* 80CCF110  41 82 00 08 */	beq lbl_80CCF118
/* 80CCF114  3B E0 00 01 */	li r31, 1
lbl_80CCF118:
/* 80CCF118  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80CCF11C  48 00 00 08 */	b lbl_80CCF124
lbl_80CCF120:
/* 80CCF120  38 60 00 00 */	li r3, 0
lbl_80CCF124:
/* 80CCF124  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCF128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCF12C  7C 08 03 A6 */	mtlr r0
/* 80CCF130  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCF134  4E 80 00 20 */	blr 
