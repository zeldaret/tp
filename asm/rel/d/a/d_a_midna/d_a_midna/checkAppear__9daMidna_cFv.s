lbl_804BEFA0:
/* 804BEFA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BEFA4  7C 08 02 A6 */	mflr r0
/* 804BEFA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BEFAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BEFB0  93 C1 00 08 */	stw r30, 8(r1)
/* 804BEFB4  7C 7E 1B 78 */	mr r30, r3
/* 804BEFB8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804BEFBC  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804BEFC0  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804BEFC4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804BEFC8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 804BEFCC  41 82 00 88 */	beq lbl_804BF054
/* 804BEFD0  38 7F 07 F0 */	addi r3, r31, 0x7f0
/* 804BEFD4  38 80 0C 10 */	li r4, 0xc10
/* 804BEFD8  4B B7 59 E5 */	bl isEventBit__11dSv_event_cCFUs
/* 804BEFDC  2C 03 00 00 */	cmpwi r3, 0
/* 804BEFE0  41 82 00 74 */	beq lbl_804BF054
/* 804BEFE4  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804BEFE8  4B C7 81 B9 */	bl checkMidnaDisappearMode__9daAlink_cCFv
/* 804BEFEC  2C 03 00 00 */	cmpwi r3, 0
/* 804BEFF0  41 82 00 5C */	beq lbl_804BF04C
/* 804BEFF4  80 1E 08 90 */	lwz r0, 0x890(r30)
/* 804BEFF8  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804BEFFC  40 82 00 50 */	bne lbl_804BF04C
/* 804BF000  3C 60 80 4C */	lis r3, m_anmDataTable__9daMidna_c@ha /* 0x804C65E4@ha */
/* 804BF004  38 63 65 E4 */	addi r3, r3, m_anmDataTable__9daMidna_c@l /* 0x804C65E4@l */
/* 804BF008  A0 63 01 50 */	lhz r3, 0x150(r3)
/* 804BF00C  A0 1E 05 E4 */	lhz r0, 0x5e4(r30)
/* 804BF010  7C 03 00 40 */	cmplw r3, r0
/* 804BF014  40 82 00 40 */	bne lbl_804BF054
/* 804BF018  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 804BF01C  38 A0 00 01 */	li r5, 1
/* 804BF020  88 04 00 11 */	lbz r0, 0x11(r4)
/* 804BF024  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804BF028  40 82 00 1C */	bne lbl_804BF044
/* 804BF02C  3C 60 80 4C */	lis r3, lit_4278@ha /* 0x804C6580@ha */
/* 804BF030  C0 23 65 80 */	lfs f1, lit_4278@l(r3)  /* 0x804C6580@l */
/* 804BF034  C0 04 00 18 */	lfs f0, 0x18(r4)
/* 804BF038  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804BF03C  41 82 00 08 */	beq lbl_804BF044
/* 804BF040  38 A0 00 00 */	li r5, 0
lbl_804BF044:
/* 804BF044  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 804BF048  40 82 00 0C */	bne lbl_804BF054
lbl_804BF04C:
/* 804BF04C  38 60 00 01 */	li r3, 1
/* 804BF050  48 00 00 08 */	b lbl_804BF058
lbl_804BF054:
/* 804BF054  38 60 00 00 */	li r3, 0
lbl_804BF058:
/* 804BF058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BF05C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804BF060  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BF064  7C 08 03 A6 */	mtlr r0
/* 804BF068  38 21 00 10 */	addi r1, r1, 0x10
/* 804BF06C  4E 80 00 20 */	blr 
