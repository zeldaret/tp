lbl_805CB314:
/* 805CB314  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CB318  7C 08 02 A6 */	mflr r0
/* 805CB31C  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CB320  39 61 00 30 */	addi r11, r1, 0x30
/* 805CB324  4B D9 6E B1 */	bl _savegpr_27
/* 805CB328  7C 7C 1B 78 */	mr r28, r3
/* 805CB32C  7C BD 2B 78 */	mr r29, r5
/* 805CB330  3C 60 80 5E */	lis r3, lit_1109@ha /* 0x805DDA70@ha */
/* 805CB334  3B E3 DA 70 */	addi r31, r3, lit_1109@l /* 0x805DDA70@l */
/* 805CB338  A3 64 00 14 */	lhz r27, 0x14(r4)
/* 805CB33C  80 65 00 84 */	lwz r3, 0x84(r5)
/* 805CB340  80 03 00 0C */	lwz r0, 0xc(r3)
/* 805CB344  1F DB 00 30 */	mulli r30, r27, 0x30
/* 805CB348  7C 60 F2 14 */	add r3, r0, r30
/* 805CB34C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CB350  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CB354  4B D7 B1 5D */	bl PSMTXCopy
/* 805CB358  88 1C 08 52 */	lbz r0, 0x852(r28)
/* 805CB35C  28 00 00 00 */	cmplwi r0, 0
/* 805CB360  40 82 00 FC */	bne lbl_805CB45C
/* 805CB364  38 1B FF FC */	addi r0, r27, -4
/* 805CB368  28 00 00 19 */	cmplwi r0, 0x19
/* 805CB36C  41 81 00 F0 */	bgt lbl_805CB45C
/* 805CB370  3C 60 80 5E */	lis r3, lit_4017@ha /* 0x805DD408@ha */
/* 805CB374  38 63 D4 08 */	addi r3, r3, lit_4017@l /* 0x805DD408@l */
/* 805CB378  54 00 10 3A */	slwi r0, r0, 2
/* 805CB37C  7C 03 00 2E */	lwzx r0, r3, r0
/* 805CB380  7C 09 03 A6 */	mtctr r0
/* 805CB384  4E 80 04 20 */	bctr 
lbl_805CB388:
/* 805CB388  38 00 00 00 */	li r0, 0
/* 805CB38C  B0 01 00 08 */	sth r0, 8(r1)
/* 805CB390  A8 1C 07 AA */	lha r0, 0x7aa(r28)
/* 805CB394  7C 00 0E 70 */	srawi r0, r0, 1
/* 805CB398  B0 01 00 0A */	sth r0, 0xa(r1)
/* 805CB39C  A8 1C 07 A8 */	lha r0, 0x7a8(r28)
/* 805CB3A0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805CB3A4  38 61 00 08 */	addi r3, r1, 8
/* 805CB3A8  4B A4 1B 9D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805CB3AC  48 00 00 B0 */	b lbl_805CB45C
lbl_805CB3B0:
/* 805CB3B0  38 00 00 00 */	li r0, 0
/* 805CB3B4  B0 01 00 08 */	sth r0, 8(r1)
/* 805CB3B8  A8 1C 07 AA */	lha r0, 0x7aa(r28)
/* 805CB3BC  7C 00 0E 70 */	srawi r0, r0, 1
/* 805CB3C0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 805CB3C4  A8 1C 07 A8 */	lha r0, 0x7a8(r28)
/* 805CB3C8  B0 01 00 0C */	sth r0, 0xc(r1)
/* 805CB3CC  38 61 00 08 */	addi r3, r1, 8
/* 805CB3D0  4B A4 1B 75 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 805CB3D4  48 00 00 88 */	b lbl_805CB45C
lbl_805CB3D8:
/* 805CB3D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CB3DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CB3E0  A8 9F 00 9C */	lha r4, 0x9c(r31)
/* 805CB3E4  4B A4 10 51 */	bl mDoMtx_YrotM__FPA4_fs
/* 805CB3E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CB3EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CB3F0  A8 9F 00 A0 */	lha r4, 0xa0(r31)
/* 805CB3F4  4B A4 0F A9 */	bl mDoMtx_XrotM__FPA4_fs
/* 805CB3F8  48 00 00 64 */	b lbl_805CB45C
lbl_805CB3FC:
/* 805CB3FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CB400  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CB404  A8 1F 00 9C */	lha r0, 0x9c(r31)
/* 805CB408  7C 00 00 D0 */	neg r0, r0
/* 805CB40C  7C 04 07 34 */	extsh r4, r0
/* 805CB410  4B A4 10 25 */	bl mDoMtx_YrotM__FPA4_fs
/* 805CB414  48 00 00 48 */	b lbl_805CB45C
lbl_805CB418:
/* 805CB418  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CB41C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CB420  A8 1F 00 9E */	lha r0, 0x9e(r31)
/* 805CB424  7C 00 00 D0 */	neg r0, r0
/* 805CB428  7C 04 07 34 */	extsh r4, r0
/* 805CB42C  4B A4 10 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 805CB430  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CB434  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CB438  A8 1F 00 A0 */	lha r0, 0xa0(r31)
/* 805CB43C  7C 00 00 D0 */	neg r0, r0
/* 805CB440  7C 04 07 34 */	extsh r4, r0
/* 805CB444  4B A4 0F 59 */	bl mDoMtx_XrotM__FPA4_fs
/* 805CB448  48 00 00 14 */	b lbl_805CB45C
lbl_805CB44C:
/* 805CB44C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CB450  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CB454  A8 9F 00 9E */	lha r4, 0x9e(r31)
/* 805CB458  4B A4 0F DD */	bl mDoMtx_YrotM__FPA4_fs
lbl_805CB45C:
/* 805CB45C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CB460  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CB464  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 805CB468  80 04 00 0C */	lwz r0, 0xc(r4)
/* 805CB46C  7C 80 F2 14 */	add r4, r0, r30
/* 805CB470  4B D7 B0 41 */	bl PSMTXCopy
/* 805CB474  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805CB478  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805CB47C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 805CB480  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 805CB484  4B D7 B0 2D */	bl PSMTXCopy
/* 805CB488  38 60 00 01 */	li r3, 1
/* 805CB48C  39 61 00 30 */	addi r11, r1, 0x30
/* 805CB490  4B D9 6D 91 */	bl _restgpr_27
/* 805CB494  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CB498  7C 08 03 A6 */	mtlr r0
/* 805CB49C  38 21 00 30 */	addi r1, r1, 0x30
/* 805CB4A0  4E 80 00 20 */	blr 
