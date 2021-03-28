lbl_80BE4FD4:
/* 80BE4FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE4FD8  7C 08 02 A6 */	mflr r0
/* 80BE4FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE4FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE4FE4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE4FE8  7C 7F 1B 78 */	mr r31, r3
/* 80BE4FEC  88 03 0A D4 */	lbz r0, 0xad4(r3)
/* 80BE4FF0  54 00 10 3A */	slwi r0, r0, 2
/* 80BE4FF4  3C 60 80 BE */	lis r3, l_arcName@ha
/* 80BE4FF8  38 63 5E 78 */	addi r3, r3, l_arcName@l
/* 80BE4FFC  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BE5000  3C 80 80 BE */	lis r4, l_bmd@ha
/* 80BE5004  38 84 5D 80 */	addi r4, r4, l_bmd@l
/* 80BE5008  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BE500C  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 80BE5010  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 80BE5014  3F C5 00 02 */	addis r30, r5, 2
/* 80BE5018  3B DE C2 F8 */	addi r30, r30, -15624
/* 80BE501C  7F C5 F3 78 */	mr r5, r30
/* 80BE5020  38 C0 00 80 */	li r6, 0x80
/* 80BE5024  4B 45 72 C8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BE5028  3C 80 00 08 */	lis r4, 8
/* 80BE502C  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80BE5030  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80BE5034  4B 42 FC 20 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BE5038  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80BE503C  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80BE5040  28 00 00 00 */	cmplwi r0, 0
/* 80BE5044  40 82 00 0C */	bne lbl_80BE5050
/* 80BE5048  38 60 00 00 */	li r3, 0
/* 80BE504C  48 00 00 88 */	b lbl_80BE50D4
lbl_80BE5050:
/* 80BE5050  38 60 00 C0 */	li r3, 0xc0
/* 80BE5054  4B 6E 9B F8 */	b __nw__FUl
/* 80BE5058  7C 60 1B 79 */	or. r0, r3, r3
/* 80BE505C  41 82 00 0C */	beq lbl_80BE5068
/* 80BE5060  4B 49 69 10 */	b __ct__4dBgWFv
/* 80BE5064  7C 60 1B 78 */	mr r0, r3
lbl_80BE5068:
/* 80BE5068  90 1F 05 AC */	stw r0, 0x5ac(r31)
/* 80BE506C  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 80BE5070  28 00 00 00 */	cmplwi r0, 0
/* 80BE5074  41 82 00 4C */	beq lbl_80BE50C0
/* 80BE5078  88 1F 0A D4 */	lbz r0, 0xad4(r31)
/* 80BE507C  54 00 10 3A */	slwi r0, r0, 2
/* 80BE5080  3C 60 80 BE */	lis r3, l_arcName@ha
/* 80BE5084  38 63 5E 78 */	addi r3, r3, l_arcName@l
/* 80BE5088  7C 63 00 2E */	lwzx r3, r3, r0
/* 80BE508C  3C 80 80 BE */	lis r4, l_dzb3@ha
/* 80BE5090  38 84 5D 98 */	addi r4, r4, l_dzb3@l
/* 80BE5094  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BE5098  7F C5 F3 78 */	mr r5, r30
/* 80BE509C  38 C0 00 80 */	li r6, 0x80
/* 80BE50A0  4B 45 72 4C */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BE50A4  7C 64 1B 78 */	mr r4, r3
/* 80BE50A8  80 7F 05 AC */	lwz r3, 0x5ac(r31)
/* 80BE50AC  38 A0 00 01 */	li r5, 1
/* 80BE50B0  38 DF 05 6C */	addi r6, r31, 0x56c
/* 80BE50B4  4B 49 4E 84 */	b Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80BE50B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BE50BC  41 82 00 14 */	beq lbl_80BE50D0
lbl_80BE50C0:
/* 80BE50C0  38 00 00 00 */	li r0, 0
/* 80BE50C4  90 1F 05 AC */	stw r0, 0x5ac(r31)
/* 80BE50C8  38 60 00 00 */	li r3, 0
/* 80BE50CC  48 00 00 08 */	b lbl_80BE50D4
lbl_80BE50D0:
/* 80BE50D0  38 60 00 01 */	li r3, 1
lbl_80BE50D4:
/* 80BE50D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE50D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE50DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE50E0  7C 08 03 A6 */	mtlr r0
/* 80BE50E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE50E8  4E 80 00 20 */	blr 
