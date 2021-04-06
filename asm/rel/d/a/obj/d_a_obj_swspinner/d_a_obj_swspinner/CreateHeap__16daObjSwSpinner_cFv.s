lbl_80D0035C:
/* 80D0035C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D00360  7C 08 02 A6 */	mflr r0
/* 80D00364  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D00368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D0036C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D00370  7C 7F 1B 78 */	mr r31, r3
/* 80D00374  3C 60 80 D0 */	lis r3, l_arcName@ha /* 0x80D00AE0@ha */
/* 80D00378  38 63 0A E0 */	addi r3, r3, l_arcName@l /* 0x80D00AE0@l */
/* 80D0037C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D00380  38 80 00 04 */	li r4, 4
/* 80D00384  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D00388  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D0038C  3F C5 00 02 */	addis r30, r5, 2
/* 80D00390  3B DE C2 F8 */	addi r30, r30, -15624
/* 80D00394  7F C5 F3 78 */	mr r5, r30
/* 80D00398  38 C0 00 80 */	li r6, 0x80
/* 80D0039C  4B 33 BF 51 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D003A0  3C 80 00 08 */	lis r4, 8
/* 80D003A4  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D003A8  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D003AC  4B 31 48 A9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D003B0  90 7F 05 A8 */	stw r3, 0x5a8(r31)
/* 80D003B4  80 1F 05 A8 */	lwz r0, 0x5a8(r31)
/* 80D003B8  28 00 00 00 */	cmplwi r0, 0
/* 80D003BC  40 82 00 0C */	bne lbl_80D003C8
/* 80D003C0  38 60 00 00 */	li r3, 0
/* 80D003C4  48 00 00 BC */	b lbl_80D00480
lbl_80D003C8:
/* 80D003C8  3C 60 80 D0 */	lis r3, l_arcName@ha /* 0x80D00AE0@ha */
/* 80D003CC  38 63 0A E0 */	addi r3, r3, l_arcName@l /* 0x80D00AE0@l */
/* 80D003D0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D003D4  38 80 00 05 */	li r4, 5
/* 80D003D8  7F C5 F3 78 */	mr r5, r30
/* 80D003DC  38 C0 00 80 */	li r6, 0x80
/* 80D003E0  4B 33 BF 0D */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D003E4  3C 80 00 08 */	lis r4, 8
/* 80D003E8  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80D003EC  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80D003F0  4B 31 48 65 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80D003F4  90 7F 05 AC */	stw r3, 0x5ac(r31)
/* 80D003F8  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 80D003FC  28 00 00 00 */	cmplwi r0, 0
/* 80D00400  40 82 00 0C */	bne lbl_80D0040C
/* 80D00404  38 60 00 00 */	li r3, 0
/* 80D00408  48 00 00 78 */	b lbl_80D00480
lbl_80D0040C:
/* 80D0040C  38 60 00 C0 */	li r3, 0xc0
/* 80D00410  4B 5C E8 3D */	bl __nw__FUl
/* 80D00414  7C 60 1B 79 */	or. r0, r3, r3
/* 80D00418  41 82 00 0C */	beq lbl_80D00424
/* 80D0041C  4B 37 B5 55 */	bl __ct__4dBgWFv
/* 80D00420  7C 60 1B 78 */	mr r0, r3
lbl_80D00424:
/* 80D00424  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 80D00428  80 1F 05 B0 */	lwz r0, 0x5b0(r31)
/* 80D0042C  28 00 00 00 */	cmplwi r0, 0
/* 80D00430  41 82 00 3C */	beq lbl_80D0046C
/* 80D00434  3C 60 80 D0 */	lis r3, l_arcName@ha /* 0x80D00AE0@ha */
/* 80D00438  38 63 0A E0 */	addi r3, r3, l_arcName@l /* 0x80D00AE0@l */
/* 80D0043C  80 63 00 00 */	lwz r3, 0(r3)
/* 80D00440  38 80 00 08 */	li r4, 8
/* 80D00444  7F C5 F3 78 */	mr r5, r30
/* 80D00448  38 C0 00 80 */	li r6, 0x80
/* 80D0044C  4B 33 BE A1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80D00450  7C 64 1B 78 */	mr r4, r3
/* 80D00454  80 7F 05 B0 */	lwz r3, 0x5b0(r31)
/* 80D00458  38 A0 00 01 */	li r5, 1
/* 80D0045C  38 DF 05 B4 */	addi r6, r31, 0x5b4
/* 80D00460  4B 37 9A D9 */	bl Set__4cBgWFP6cBgD_tUlPA3_A4_f
/* 80D00464  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D00468  41 82 00 14 */	beq lbl_80D0047C
lbl_80D0046C:
/* 80D0046C  38 00 00 00 */	li r0, 0
/* 80D00470  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 80D00474  38 60 00 00 */	li r3, 0
/* 80D00478  48 00 00 08 */	b lbl_80D00480
lbl_80D0047C:
/* 80D0047C  38 60 00 01 */	li r3, 1
lbl_80D00480:
/* 80D00480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D00484  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D00488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0048C  7C 08 03 A6 */	mtlr r0
/* 80D00490  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00494  4E 80 00 20 */	blr 
