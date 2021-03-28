lbl_80974090:
/* 80974090  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80974094  7C 08 02 A6 */	mflr r0
/* 80974098  90 01 00 34 */	stw r0, 0x34(r1)
/* 8097409C  39 61 00 30 */	addi r11, r1, 0x30
/* 809740A0  4B 9E E1 38 */	b _savegpr_28
/* 809740A4  7C 7F 1B 78 */	mr r31, r3
/* 809740A8  7C BC 2B 78 */	mr r28, r5
/* 809740AC  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 809740B0  7C BD 2B 78 */	mr r29, r5
/* 809740B4  3C 60 80 98 */	lis r3, lit_4497@ha
/* 809740B8  38 83 84 B4 */	addi r4, r3, lit_4497@l
/* 809740BC  80 64 00 00 */	lwz r3, 0(r4)
/* 809740C0  80 04 00 04 */	lwz r0, 4(r4)
/* 809740C4  90 61 00 08 */	stw r3, 8(r1)
/* 809740C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 809740CC  80 04 00 08 */	lwz r0, 8(r4)
/* 809740D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 809740D4  2C 05 00 00 */	cmpwi r5, 0
/* 809740D8  40 82 00 B0 */	bne lbl_80974188
/* 809740DC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809740E0  80 63 00 04 */	lwz r3, 4(r3)
/* 809740E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809740E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809740EC  38 63 00 30 */	addi r3, r3, 0x30
/* 809740F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 809740F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809740F8  4B 9D 23 B8 */	b PSMTXCopy
/* 809740FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80974100  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 80974104  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80974108  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 8097410C  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80974110  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 80974114  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80974118  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 8097411C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80974120  80 63 00 04 */	lwz r3, 4(r3)
/* 80974124  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80974128  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8097412C  38 63 00 90 */	addi r3, r3, 0x90
/* 80974130  7F C4 F3 78 */	mr r4, r30
/* 80974134  4B 9D 23 7C */	b PSMTXCopy
/* 80974138  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8097413C  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 80974140  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80974144  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 80974148  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8097414C  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 80974150  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80974154  80 63 00 04 */	lwz r3, 4(r3)
/* 80974158  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8097415C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80974160  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80974164  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80974168  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8097416C  4B 9D 23 44 */	b PSMTXCopy
/* 80974170  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80974174  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 80974178  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 8097417C  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 80974180  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80974184  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_80974188:
/* 80974188  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 8097418C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80974190  1F DD 00 30 */	mulli r30, r29, 0x30
/* 80974194  7C 60 F2 14 */	add r3, r0, r30
/* 80974198  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8097419C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 809741A0  4B 9D 23 10 */	b PSMTXCopy
/* 809741A4  2C 1D 00 02 */	cmpwi r29, 2
/* 809741A8  41 82 00 38 */	beq lbl_809741E0
/* 809741AC  40 80 00 10 */	bge lbl_809741BC
/* 809741B0  2C 1D 00 01 */	cmpwi r29, 1
/* 809741B4  40 80 00 10 */	bge lbl_809741C4
/* 809741B8  48 00 00 28 */	b lbl_809741E0
lbl_809741BC:
/* 809741BC  2C 1D 00 05 */	cmpwi r29, 5
/* 809741C0  40 80 00 20 */	bge lbl_809741E0
lbl_809741C4:
/* 809741C4  7F E3 FB 78 */	mr r3, r31
/* 809741C8  7F A4 EB 78 */	mr r4, r29
/* 809741CC  38 A1 00 08 */	addi r5, r1, 8
/* 809741D0  3C C0 80 98 */	lis r6, m__17daNpcBouS_Param_c@ha
/* 809741D4  38 C6 84 10 */	addi r6, r6, m__17daNpcBouS_Param_c@l
/* 809741D8  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 809741DC  4B 7D F1 A0 */	b setLookatMtx__8daNpcF_cFiPif
lbl_809741E0:
/* 809741E0  2C 1D 00 01 */	cmpwi r29, 1
/* 809741E4  40 82 00 30 */	bne lbl_80974214
/* 809741E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809741EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809741F0  A8 9F 09 0C */	lha r4, 0x90c(r31)
/* 809741F4  4B 69 82 40 */	b mDoMtx_YrotM__FPA4_fs
/* 809741F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809741FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80974200  A8 1F 09 08 */	lha r0, 0x908(r31)
/* 80974204  7C 00 00 D0 */	neg r0, r0
/* 80974208  7C 04 07 34 */	extsh r4, r0
/* 8097420C  4B 69 82 C0 */	b mDoMtx_ZrotM__FPA4_fs
/* 80974210  48 00 00 2C */	b lbl_8097423C
lbl_80974214:
/* 80974214  2C 1D 00 04 */	cmpwi r29, 4
/* 80974218  40 82 00 24 */	bne lbl_8097423C
/* 8097421C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80974220  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80974224  A8 9F 09 18 */	lha r4, 0x918(r31)
/* 80974228  4B 69 82 0C */	b mDoMtx_YrotM__FPA4_fs
/* 8097422C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80974230  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80974234  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 80974238  4B 69 82 94 */	b mDoMtx_ZrotM__FPA4_fs
lbl_8097423C:
/* 8097423C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80974240  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80974244  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 80974248  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8097424C  7C 80 F2 14 */	add r4, r0, r30
/* 80974250  4B 9D 22 60 */	b PSMTXCopy
/* 80974254  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80974258  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8097425C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80974260  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80974264  4B 9D 22 4C */	b PSMTXCopy
/* 80974268  2C 1D 00 04 */	cmpwi r29, 4
/* 8097426C  41 82 00 0C */	beq lbl_80974278
/* 80974270  2C 1D 00 08 */	cmpwi r29, 8
/* 80974274  40 82 00 2C */	bne lbl_809742A0
lbl_80974278:
/* 80974278  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 8097427C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80974280  41 82 00 20 */	beq lbl_809742A0
/* 80974284  83 9F 05 80 */	lwz r28, 0x580(r31)
/* 80974288  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8097428C  80 83 00 08 */	lwz r4, 8(r3)
/* 80974290  38 7F 05 6C */	addi r3, r31, 0x56c
/* 80974294  4B 69 96 FC */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80974298  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 8097429C  93 83 00 08 */	stw r28, 8(r3)
lbl_809742A0:
/* 809742A0  38 60 00 01 */	li r3, 1
/* 809742A4  39 61 00 30 */	addi r11, r1, 0x30
/* 809742A8  4B 9E DF 7C */	b _restgpr_28
/* 809742AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809742B0  7C 08 03 A6 */	mtlr r0
/* 809742B4  38 21 00 30 */	addi r1, r1, 0x30
/* 809742B8  4E 80 00 20 */	blr 
