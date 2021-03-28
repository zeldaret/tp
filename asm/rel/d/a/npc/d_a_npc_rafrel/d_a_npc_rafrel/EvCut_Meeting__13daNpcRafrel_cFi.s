lbl_80ABCE74:
/* 80ABCE74  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ABCE78  7C 08 02 A6 */	mflr r0
/* 80ABCE7C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ABCE80  39 61 00 30 */	addi r11, r1, 0x30
/* 80ABCE84  4B 8A 53 50 */	b _savegpr_27
/* 80ABCE88  7C 7D 1B 78 */	mr r29, r3
/* 80ABCE8C  7C 9B 23 78 */	mr r27, r4
/* 80ABCE90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABCE94  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80ABCE98  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80ABCE9C  7F 83 E3 78 */	mr r3, r28
/* 80ABCEA0  3C A0 80 AC */	lis r5, struct_80ABFDBC+0x0@ha
/* 80ABCEA4  38 A5 FD BC */	addi r5, r5, struct_80ABFDBC+0x0@l
/* 80ABCEA8  38 A5 00 BE */	addi r5, r5, 0xbe
/* 80ABCEAC  38 C0 00 03 */	li r6, 3
/* 80ABCEB0  4B 58 B2 3C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ABCEB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ABCEB8  40 82 00 0C */	bne lbl_80ABCEC4
/* 80ABCEBC  38 60 00 00 */	li r3, 0
/* 80ABCEC0  48 00 02 4C */	b lbl_80ABD10C
lbl_80ABCEC4:
/* 80ABCEC4  7F 83 E3 78 */	mr r3, r28
/* 80ABCEC8  7F 64 DB 78 */	mr r4, r27
/* 80ABCECC  4B 58 AE 80 */	b getIsAddvance__16dEvent_manager_cFi
/* 80ABCED0  2C 03 00 00 */	cmpwi r3, 0
/* 80ABCED4  41 82 00 90 */	beq lbl_80ABCF64
/* 80ABCED8  80 1F 00 00 */	lwz r0, 0(r31)
/* 80ABCEDC  2C 00 00 01 */	cmpwi r0, 1
/* 80ABCEE0  41 82 00 5C */	beq lbl_80ABCF3C
/* 80ABCEE4  40 80 00 80 */	bge lbl_80ABCF64
/* 80ABCEE8  2C 00 00 00 */	cmpwi r0, 0
/* 80ABCEEC  40 80 00 08 */	bge lbl_80ABCEF4
/* 80ABCEF0  48 00 00 74 */	b lbl_80ABCF64
lbl_80ABCEF4:
/* 80ABCEF4  7F A3 EB 78 */	mr r3, r29
/* 80ABCEF8  38 80 00 07 */	li r4, 7
/* 80ABCEFC  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABCF00  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABCF04  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABCF08  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABCF0C  7D 89 03 A6 */	mtctr r12
/* 80ABCF10  4E 80 04 21 */	bctrl 
/* 80ABCF14  7F A3 EB 78 */	mr r3, r29
/* 80ABCF18  38 80 00 01 */	li r4, 1
/* 80ABCF1C  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABCF20  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABCF24  38 A0 00 00 */	li r5, 0
/* 80ABCF28  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABCF2C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABCF30  7D 89 03 A6 */	mtctr r12
/* 80ABCF34  4E 80 04 21 */	bctrl 
/* 80ABCF38  48 00 00 2C */	b lbl_80ABCF64
lbl_80ABCF3C:
/* 80ABCF3C  A8 1D 0E 0E */	lha r0, 0xe0e(r29)
/* 80ABCF40  2C 00 00 02 */	cmpwi r0, 2
/* 80ABCF44  40 82 00 10 */	bne lbl_80ABCF54
/* 80ABCF48  80 1D 0C 9C */	lwz r0, 0xc9c(r29)
/* 80ABCF4C  28 00 00 00 */	cmplwi r0, 0
/* 80ABCF50  41 82 00 14 */	beq lbl_80ABCF64
lbl_80ABCF54:
/* 80ABCF54  38 00 00 02 */	li r0, 2
/* 80ABCF58  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
/* 80ABCF5C  38 00 00 00 */	li r0, 0
/* 80ABCF60  90 1D 0C 9C */	stw r0, 0xc9c(r29)
lbl_80ABCF64:
/* 80ABCF64  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 80ABCF68  7F A3 EB 78 */	mr r3, r29
/* 80ABCF6C  38 81 00 0C */	addi r4, r1, 0xc
/* 80ABCF70  38 A1 00 08 */	addi r5, r1, 8
/* 80ABCF74  7F A6 EB 78 */	mr r6, r29
/* 80ABCF78  38 E0 00 00 */	li r7, 0
/* 80ABCF7C  4B 69 67 9C */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ABCF80  2C 03 00 00 */	cmpwi r3, 0
/* 80ABCF84  41 82 00 4C */	beq lbl_80ABCFD0
/* 80ABCF88  7F A3 EB 78 */	mr r3, r29
/* 80ABCF8C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ABCF90  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABCF94  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABCF98  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABCF9C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABCFA0  7D 89 03 A6 */	mtctr r12
/* 80ABCFA4  4E 80 04 21 */	bctrl 
/* 80ABCFA8  7F A3 EB 78 */	mr r3, r29
/* 80ABCFAC  80 81 00 08 */	lwz r4, 8(r1)
/* 80ABCFB0  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABCFB4  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABCFB8  38 A0 00 00 */	li r5, 0
/* 80ABCFBC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABCFC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ABCFC4  7D 89 03 A6 */	mtctr r12
/* 80ABCFC8  4E 80 04 21 */	bctrl 
/* 80ABCFCC  48 00 00 CC */	b lbl_80ABD098
lbl_80ABCFD0:
/* 80ABCFD0  2C 1C 00 00 */	cmpwi r28, 0
/* 80ABCFD4  41 82 00 C4 */	beq lbl_80ABD098
/* 80ABCFD8  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80ABCFDC  2C 00 00 00 */	cmpwi r0, 0
/* 80ABCFE0  40 82 00 B8 */	bne lbl_80ABD098
/* 80ABCFE4  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80ABCFE8  2C 00 00 02 */	cmpwi r0, 2
/* 80ABCFEC  41 82 00 44 */	beq lbl_80ABD030
/* 80ABCFF0  40 80 00 10 */	bge lbl_80ABD000
/* 80ABCFF4  2C 00 00 01 */	cmpwi r0, 1
/* 80ABCFF8  40 80 00 14 */	bge lbl_80ABD00C
/* 80ABCFFC  48 00 00 7C */	b lbl_80ABD078
lbl_80ABD000:
/* 80ABD000  2C 00 00 04 */	cmpwi r0, 4
/* 80ABD004  40 80 00 74 */	bge lbl_80ABD078
/* 80ABD008  48 00 00 4C */	b lbl_80ABD054
lbl_80ABD00C:
/* 80ABD00C  7F A3 EB 78 */	mr r3, r29
/* 80ABD010  38 80 00 04 */	li r4, 4
/* 80ABD014  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABD018  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABD01C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABD020  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD024  7D 89 03 A6 */	mtctr r12
/* 80ABD028  4E 80 04 21 */	bctrl 
/* 80ABD02C  48 00 00 6C */	b lbl_80ABD098
lbl_80ABD030:
/* 80ABD030  7F A3 EB 78 */	mr r3, r29
/* 80ABD034  38 80 00 05 */	li r4, 5
/* 80ABD038  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABD03C  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABD040  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABD044  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD048  7D 89 03 A6 */	mtctr r12
/* 80ABD04C  4E 80 04 21 */	bctrl 
/* 80ABD050  48 00 00 48 */	b lbl_80ABD098
lbl_80ABD054:
/* 80ABD054  7F A3 EB 78 */	mr r3, r29
/* 80ABD058  38 80 00 06 */	li r4, 6
/* 80ABD05C  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABD060  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABD064  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABD068  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD06C  7D 89 03 A6 */	mtctr r12
/* 80ABD070  4E 80 04 21 */	bctrl 
/* 80ABD074  48 00 00 24 */	b lbl_80ABD098
lbl_80ABD078:
/* 80ABD078  7F A3 EB 78 */	mr r3, r29
/* 80ABD07C  38 80 00 07 */	li r4, 7
/* 80ABD080  3C A0 80 AC */	lis r5, lit_5080@ha
/* 80ABD084  C0 25 FD 30 */	lfs f1, lit_5080@l(r5)
/* 80ABD088  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ABD08C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ABD090  7D 89 03 A6 */	mtctr r12
/* 80ABD094  4E 80 04 21 */	bctrl 
lbl_80ABD098:
/* 80ABD098  80 1F 00 00 */	lwz r0, 0(r31)
/* 80ABD09C  2C 00 00 01 */	cmpwi r0, 1
/* 80ABD0A0  41 82 00 60 */	beq lbl_80ABD100
/* 80ABD0A4  40 80 00 64 */	bge lbl_80ABD108
/* 80ABD0A8  2C 00 00 00 */	cmpwi r0, 0
/* 80ABD0AC  40 80 00 08 */	bge lbl_80ABD0B4
/* 80ABD0B0  48 00 00 58 */	b lbl_80ABD108
lbl_80ABD0B4:
/* 80ABD0B4  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80ABD0B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ABD0BC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ABD0C0  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 80ABD0C4  4B 58 62 28 */	b convPId__14dEvt_control_cFUi
/* 80ABD0C8  7C 03 E8 40 */	cmplw r3, r29
/* 80ABD0CC  40 82 00 08 */	bne lbl_80ABD0D4
/* 80ABD0D0  38 60 00 00 */	li r3, 0
lbl_80ABD0D4:
/* 80ABD0D4  A8 1D 0E 0E */	lha r0, 0xe0e(r29)
/* 80ABD0D8  2C 00 00 04 */	cmpwi r0, 4
/* 80ABD0DC  40 82 00 10 */	bne lbl_80ABD0EC
/* 80ABD0E0  80 1D 0C 9C */	lwz r0, 0xc9c(r29)
/* 80ABD0E4  7C 03 00 40 */	cmplw r3, r0
/* 80ABD0E8  41 82 00 10 */	beq lbl_80ABD0F8
lbl_80ABD0EC:
/* 80ABD0EC  38 00 00 04 */	li r0, 4
/* 80ABD0F0  B0 1D 0E 0E */	sth r0, 0xe0e(r29)
/* 80ABD0F4  90 7D 0C 9C */	stw r3, 0xc9c(r29)
lbl_80ABD0F8:
/* 80ABD0F8  38 60 00 01 */	li r3, 1
/* 80ABD0FC  48 00 00 10 */	b lbl_80ABD10C
lbl_80ABD100:
/* 80ABD100  38 60 00 01 */	li r3, 1
/* 80ABD104  48 00 00 08 */	b lbl_80ABD10C
lbl_80ABD108:
/* 80ABD108  38 60 00 00 */	li r3, 0
lbl_80ABD10C:
/* 80ABD10C  39 61 00 30 */	addi r11, r1, 0x30
/* 80ABD110  4B 8A 51 10 */	b _restgpr_27
/* 80ABD114  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ABD118  7C 08 03 A6 */	mtlr r0
/* 80ABD11C  38 21 00 30 */	addi r1, r1, 0x30
/* 80ABD120  4E 80 00 20 */	blr 
