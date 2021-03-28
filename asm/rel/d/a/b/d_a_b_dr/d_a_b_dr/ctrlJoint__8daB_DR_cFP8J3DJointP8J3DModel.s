lbl_805BAF80:
/* 805BAF80  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805BAF84  7C 08 02 A6 */	mflr r0
/* 805BAF88  90 01 00 24 */	stw r0, 0x24(r1)
/* 805BAF8C  39 61 00 20 */	addi r11, r1, 0x20
/* 805BAF90  4B DA 72 48 */	b _savegpr_28
/* 805BAF94  7C 7C 1B 78 */	mr r28, r3
/* 805BAF98  7C BD 2B 78 */	mr r29, r5
/* 805BAF9C  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 805BAFA0  80 65 00 84 */	lwz r3, 0x84(r5)
/* 805BAFA4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805BAFA8  1F DF 00 30 */	mulli r30, r31, 0x30
/* 805BAFAC  7C 60 F2 14 */	add r3, r0, r30
/* 805BAFB0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 805BAFB4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 805BAFB8  4B D8 B4 F8 */	b PSMTXCopy
/* 805BAFBC  2C 1F 00 12 */	cmpwi r31, 0x12
/* 805BAFC0  41 82 00 40 */	beq lbl_805BB000
/* 805BAFC4  40 80 00 10 */	bge lbl_805BAFD4
/* 805BAFC8  2C 1F 00 11 */	cmpwi r31, 0x11
/* 805BAFCC  40 80 00 68 */	bge lbl_805BB034
/* 805BAFD0  48 00 00 94 */	b lbl_805BB064
lbl_805BAFD4:
/* 805BAFD4  2C 1F 00 14 */	cmpwi r31, 0x14
/* 805BAFD8  40 80 00 8C */	bge lbl_805BB064
/* 805BAFDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BAFE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BAFE4  A8 9C 07 5A */	lha r4, 0x75a(r28)
/* 805BAFE8  4B A5 14 4C */	b mDoMtx_YrotM__FPA4_fs
/* 805BAFEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BAFF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BAFF4  A8 9C 07 58 */	lha r4, 0x758(r28)
/* 805BAFF8  4B A5 14 D4 */	b mDoMtx_ZrotM__FPA4_fs
/* 805BAFFC  48 00 00 68 */	b lbl_805BB064
lbl_805BB000:
/* 805BB000  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BB004  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BB008  A8 1C 07 5A */	lha r0, 0x75a(r28)
/* 805BB00C  7C 00 0E 70 */	srawi r0, r0, 1
/* 805BB010  7C 04 07 34 */	extsh r4, r0
/* 805BB014  4B A5 14 20 */	b mDoMtx_YrotM__FPA4_fs
/* 805BB018  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BB01C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BB020  A8 1C 07 58 */	lha r0, 0x758(r28)
/* 805BB024  7C 00 0E 70 */	srawi r0, r0, 1
/* 805BB028  7C 04 07 34 */	extsh r4, r0
/* 805BB02C  4B A5 14 A0 */	b mDoMtx_ZrotM__FPA4_fs
/* 805BB030  48 00 00 34 */	b lbl_805BB064
lbl_805BB034:
/* 805BB034  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BB038  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BB03C  A8 1C 07 5A */	lha r0, 0x75a(r28)
/* 805BB040  7C 00 0E 70 */	srawi r0, r0, 1
/* 805BB044  7C 04 07 34 */	extsh r4, r0
/* 805BB048  4B A5 13 EC */	b mDoMtx_YrotM__FPA4_fs
/* 805BB04C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BB050  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BB054  A8 1C 07 58 */	lha r0, 0x758(r28)
/* 805BB058  7C 00 0E 70 */	srawi r0, r0, 1
/* 805BB05C  7C 04 07 34 */	extsh r4, r0
/* 805BB060  4B A5 14 6C */	b mDoMtx_ZrotM__FPA4_fs
lbl_805BB064:
/* 805BB064  2C 1F 00 00 */	cmpwi r31, 0
/* 805BB068  40 82 00 34 */	bne lbl_805BB09C
/* 805BB06C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BB070  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BB074  38 80 00 00 */	li r4, 0
/* 805BB078  4B A5 13 24 */	b mDoMtx_XrotM__FPA4_fs
/* 805BB07C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BB080  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BB084  38 80 00 00 */	li r4, 0
/* 805BB088  4B A5 13 AC */	b mDoMtx_YrotM__FPA4_fs
/* 805BB08C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BB090  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BB094  38 80 00 00 */	li r4, 0
/* 805BB098  4B A5 14 34 */	b mDoMtx_ZrotM__FPA4_fs
lbl_805BB09C:
/* 805BB09C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BB0A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BB0A4  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 805BB0A8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 805BB0AC  7C 80 F2 14 */	add r4, r0, r30
/* 805BB0B0  4B D8 B4 00 */	b PSMTXCopy
/* 805BB0B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 805BB0B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 805BB0BC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 805BB0C0  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 805BB0C4  4B D8 B3 EC */	b PSMTXCopy
/* 805BB0C8  38 60 00 01 */	li r3, 1
/* 805BB0CC  39 61 00 20 */	addi r11, r1, 0x20
/* 805BB0D0  4B DA 71 54 */	b _restgpr_28
/* 805BB0D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805BB0D8  7C 08 03 A6 */	mtlr r0
/* 805BB0DC  38 21 00 20 */	addi r1, r1, 0x20
/* 805BB0E0  4E 80 00 20 */	blr 
