lbl_806E0958:
/* 806E0958  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806E095C  7C 08 02 A6 */	mflr r0
/* 806E0960  90 01 00 34 */	stw r0, 0x34(r1)
/* 806E0964  39 61 00 30 */	addi r11, r1, 0x30
/* 806E0968  4B C8 18 6C */	b _savegpr_27
/* 806E096C  7C 7E 1B 78 */	mr r30, r3
/* 806E0970  7C BD 2B 78 */	mr r29, r5
/* 806E0974  3C 60 80 6E */	lis r3, lit_3791@ha
/* 806E0978  3B E3 59 20 */	addi r31, r3, lit_3791@l
/* 806E097C  A3 64 00 14 */	lhz r27, 0x14(r4)
/* 806E0980  80 65 00 84 */	lwz r3, 0x84(r5)
/* 806E0984  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806E0988  1F 9B 00 30 */	mulli r28, r27, 0x30
/* 806E098C  7C 60 E2 14 */	add r3, r0, r28
/* 806E0990  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806E0994  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806E0998  4B C6 5B 18 */	b PSMTXCopy
/* 806E099C  A8 1E 05 D2 */	lha r0, 0x5d2(r30)
/* 806E09A0  2C 00 00 01 */	cmpwi r0, 1
/* 806E09A4  40 82 01 BC */	bne lbl_806E0B60
/* 806E09A8  28 1B 00 08 */	cmplwi r27, 8
/* 806E09AC  41 81 03 70 */	bgt lbl_806E0D1C
/* 806E09B0  3C 60 80 6E */	lis r3, lit_4024@ha
/* 806E09B4  38 63 5A D8 */	addi r3, r3, lit_4024@l
/* 806E09B8  57 60 10 3A */	slwi r0, r27, 2
/* 806E09BC  7C 03 00 2E */	lwzx r0, r3, r0
/* 806E09C0  7C 09 03 A6 */	mtctr r0
/* 806E09C4  4E 80 04 20 */	bctr 
lbl_806E09C8:
/* 806E09C8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E09CC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E09D0  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806E09D4  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 806E09D8  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E09DC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E09E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E09E4  3C 00 43 30 */	lis r0, 0x4330
/* 806E09E8  90 01 00 08 */	stw r0, 8(r1)
/* 806E09EC  C8 01 00 08 */	lfd f0, 8(r1)
/* 806E09F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E09F4  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E09F8  FC 00 00 1E */	fctiwz f0, f0
/* 806E09FC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806E0A00  80 81 00 14 */	lwz r4, 0x14(r1)
/* 806E0A04  4B 92 BA 30 */	b mDoMtx_YrotM__FPA4_fs
/* 806E0A08  48 00 03 14 */	b lbl_806E0D1C
lbl_806E0A0C:
/* 806E0A0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0A10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0A14  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806E0A18  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 806E0A1C  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E0A20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E0A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0A28  3C 00 43 30 */	lis r0, 0x4330
/* 806E0A2C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0A30  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806E0A34  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E0A38  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E0A3C  FC 00 00 1E */	fctiwz f0, f0
/* 806E0A40  D8 01 00 08 */	stfd f0, 8(r1)
/* 806E0A44  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E0A48  4B 92 B9 EC */	b mDoMtx_YrotM__FPA4_fs
/* 806E0A4C  48 00 02 D0 */	b lbl_806E0D1C
lbl_806E0A50:
/* 806E0A50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0A54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0A58  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 806E0A5C  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 806E0A60  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E0A64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E0A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0A6C  3C 00 43 30 */	lis r0, 0x4330
/* 806E0A70  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0A74  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806E0A78  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E0A7C  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E0A80  FC 00 00 1E */	fctiwz f0, f0
/* 806E0A84  D8 01 00 08 */	stfd f0, 8(r1)
/* 806E0A88  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E0A8C  4B 92 B9 A8 */	b mDoMtx_YrotM__FPA4_fs
/* 806E0A90  48 00 02 8C */	b lbl_806E0D1C
lbl_806E0A94:
/* 806E0A94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0A98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0A9C  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 806E0AA0  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 806E0AA4  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E0AA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E0AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0AB0  3C 00 43 30 */	lis r0, 0x4330
/* 806E0AB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0AB8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806E0ABC  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E0AC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E0AC4  FC 00 00 1E */	fctiwz f0, f0
/* 806E0AC8  D8 01 00 08 */	stfd f0, 8(r1)
/* 806E0ACC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E0AD0  4B 92 B9 64 */	b mDoMtx_YrotM__FPA4_fs
/* 806E0AD4  48 00 02 48 */	b lbl_806E0D1C
lbl_806E0AD8:
/* 806E0AD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0ADC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0AE0  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 806E0AE4  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 806E0AE8  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E0AEC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E0AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0AF4  3C 00 43 30 */	lis r0, 0x4330
/* 806E0AF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0AFC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806E0B00  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E0B04  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E0B08  FC 00 00 1E */	fctiwz f0, f0
/* 806E0B0C  D8 01 00 08 */	stfd f0, 8(r1)
/* 806E0B10  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E0B14  4B 92 B9 20 */	b mDoMtx_YrotM__FPA4_fs
/* 806E0B18  48 00 02 04 */	b lbl_806E0D1C
lbl_806E0B1C:
/* 806E0B1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0B20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0B24  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 806E0B28  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 806E0B2C  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E0B30  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E0B34  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0B38  3C 00 43 30 */	lis r0, 0x4330
/* 806E0B3C  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0B40  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806E0B44  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E0B48  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E0B4C  FC 00 00 1E */	fctiwz f0, f0
/* 806E0B50  D8 01 00 08 */	stfd f0, 8(r1)
/* 806E0B54  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E0B58  4B 92 B8 DC */	b mDoMtx_YrotM__FPA4_fs
/* 806E0B5C  48 00 01 C0 */	b lbl_806E0D1C
lbl_806E0B60:
/* 806E0B60  2C 00 00 02 */	cmpwi r0, 2
/* 806E0B64  40 82 01 B8 */	bne lbl_806E0D1C
/* 806E0B68  28 1B 00 08 */	cmplwi r27, 8
/* 806E0B6C  41 81 01 B0 */	bgt lbl_806E0D1C
/* 806E0B70  3C 60 80 6E */	lis r3, lit_4028@ha
/* 806E0B74  38 63 5A B4 */	addi r3, r3, lit_4028@l
/* 806E0B78  57 60 10 3A */	slwi r0, r27, 2
/* 806E0B7C  7C 03 00 2E */	lwzx r0, r3, r0
/* 806E0B80  7C 09 03 A6 */	mtctr r0
/* 806E0B84  4E 80 04 20 */	bctr 
lbl_806E0B88:
/* 806E0B88  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0B8C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0B90  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806E0B94  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 806E0B98  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E0B9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E0BA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0BA4  3C 00 43 30 */	lis r0, 0x4330
/* 806E0BA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0BAC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806E0BB0  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E0BB4  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E0BB8  FC 00 00 1E */	fctiwz f0, f0
/* 806E0BBC  D8 01 00 08 */	stfd f0, 8(r1)
/* 806E0BC0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E0BC4  4B 92 B8 70 */	b mDoMtx_YrotM__FPA4_fs
/* 806E0BC8  48 00 01 54 */	b lbl_806E0D1C
lbl_806E0BCC:
/* 806E0BCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0BD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0BD4  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 806E0BD8  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 806E0BDC  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E0BE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E0BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0BE8  3C 00 43 30 */	lis r0, 0x4330
/* 806E0BEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0BF0  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806E0BF4  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E0BF8  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E0BFC  FC 00 00 1E */	fctiwz f0, f0
/* 806E0C00  D8 01 00 08 */	stfd f0, 8(r1)
/* 806E0C04  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E0C08  4B 92 B8 2C */	b mDoMtx_YrotM__FPA4_fs
/* 806E0C0C  48 00 01 10 */	b lbl_806E0D1C
lbl_806E0C10:
/* 806E0C10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0C14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0C18  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 806E0C1C  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 806E0C20  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E0C24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E0C28  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0C2C  3C 00 43 30 */	lis r0, 0x4330
/* 806E0C30  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0C34  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806E0C38  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E0C3C  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E0C40  FC 00 00 1E */	fctiwz f0, f0
/* 806E0C44  D8 01 00 08 */	stfd f0, 8(r1)
/* 806E0C48  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E0C4C  4B 92 B7 E8 */	b mDoMtx_YrotM__FPA4_fs
/* 806E0C50  48 00 00 CC */	b lbl_806E0D1C
lbl_806E0C54:
/* 806E0C54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0C58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0C5C  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 806E0C60  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 806E0C64  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E0C68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E0C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0C70  3C 00 43 30 */	lis r0, 0x4330
/* 806E0C74  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0C78  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806E0C7C  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E0C80  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E0C84  FC 00 00 1E */	fctiwz f0, f0
/* 806E0C88  D8 01 00 08 */	stfd f0, 8(r1)
/* 806E0C8C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E0C90  4B 92 B7 A4 */	b mDoMtx_YrotM__FPA4_fs
/* 806E0C94  48 00 00 88 */	b lbl_806E0D1C
lbl_806E0C98:
/* 806E0C98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0C9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0CA0  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 806E0CA4  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 806E0CA8  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E0CAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E0CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0CB4  3C 00 43 30 */	lis r0, 0x4330
/* 806E0CB8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0CBC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806E0CC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E0CC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E0CC8  FC 00 00 1E */	fctiwz f0, f0
/* 806E0CCC  D8 01 00 08 */	stfd f0, 8(r1)
/* 806E0CD0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E0CD4  4B 92 B7 60 */	b mDoMtx_YrotM__FPA4_fs
/* 806E0CD8  48 00 00 44 */	b lbl_806E0D1C
lbl_806E0CDC:
/* 806E0CDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0CE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0CE4  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 806E0CE8  A8 1E 05 C0 */	lha r0, 0x5c0(r30)
/* 806E0CEC  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 806E0CF0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E0CF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0CF8  3C 00 43 30 */	lis r0, 0x4330
/* 806E0CFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E0D00  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 806E0D04  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E0D08  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E0D0C  FC 00 00 1E */	fctiwz f0, f0
/* 806E0D10  D8 01 00 08 */	stfd f0, 8(r1)
/* 806E0D14  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E0D18  4B 92 B7 1C */	b mDoMtx_YrotM__FPA4_fs
lbl_806E0D1C:
/* 806E0D1C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0D20  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0D24  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 806E0D28  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806E0D2C  7C 80 E2 14 */	add r4, r0, r28
/* 806E0D30  4B C6 57 80 */	b PSMTXCopy
/* 806E0D34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806E0D38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806E0D3C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 806E0D40  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 806E0D44  4B C6 57 6C */	b PSMTXCopy
/* 806E0D48  38 60 00 01 */	li r3, 1
/* 806E0D4C  39 61 00 30 */	addi r11, r1, 0x30
/* 806E0D50  4B C8 14 D0 */	b _restgpr_27
/* 806E0D54  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806E0D58  7C 08 03 A6 */	mtlr r0
/* 806E0D5C  38 21 00 30 */	addi r1, r1, 0x30
/* 806E0D60  4E 80 00 20 */	blr 
