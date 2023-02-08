lbl_80C63FA8:
/* 80C63FA8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C63FAC  7C 08 02 A6 */	mflr r0
/* 80C63FB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C63FB4  39 61 00 30 */	addi r11, r1, 0x30
/* 80C63FB8  4B 6F E2 11 */	bl _savegpr_24
/* 80C63FBC  7C 7E 1B 78 */	mr r30, r3
/* 80C63FC0  3C 60 80 C6 */	lis r3, l_bmdidx@ha /* 0x80C66860@ha */
/* 80C63FC4  3B E3 68 60 */	addi r31, r3, l_bmdidx@l /* 0x80C66860@l */
/* 80C63FC8  80 7E 06 08 */	lwz r3, 0x608(r30)
/* 80C63FCC  C0 1E 04 EC */	lfs f0, 0x4ec(r30)
/* 80C63FD0  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C63FD4  C0 1E 04 F0 */	lfs f0, 0x4f0(r30)
/* 80C63FD8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80C63FDC  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 80C63FE0  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80C63FE4  38 80 00 00 */	li r4, 0
/* 80C63FE8  90 9E 23 D4 */	stw r4, 0x23d4(r30)
/* 80C63FEC  7C 83 23 78 */	mr r3, r4
/* 80C63FF0  38 00 00 08 */	li r0, 8
/* 80C63FF4  7C 09 03 A6 */	mtctr r0
lbl_80C63FF8:
/* 80C63FF8  7C BE 1A 14 */	add r5, r30, r3
/* 80C63FFC  90 85 23 D8 */	stw r4, 0x23d8(r5)
/* 80C64000  90 85 23 F8 */	stw r4, 0x23f8(r5)
/* 80C64004  38 63 00 04 */	addi r3, r3, 4
/* 80C64008  42 00 FF F0 */	bdnz lbl_80C63FF8
/* 80C6400C  38 00 00 01 */	li r0, 1
/* 80C64010  90 1E 24 18 */	stw r0, 0x2418(r30)
/* 80C64014  38 00 00 00 */	li r0, 0
/* 80C64018  90 1E 24 1C */	stw r0, 0x241c(r30)
/* 80C6401C  38 80 00 00 */	li r4, 0
/* 80C64020  38 A0 00 00 */	li r5, 0
/* 80C64024  3C 60 80 43 */	lis r3, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80C64028  38 63 0C F4 */	addi r3, r3, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80C6402C  C0 BF 00 30 */	lfs f5, 0x30(r31)
/* 80C64030  C0 9F 00 34 */	lfs f4, 0x34(r31)
/* 80C64034  C0 7F 00 18 */	lfs f3, 0x18(r31)
/* 80C64038  C0 5F 00 38 */	lfs f2, 0x38(r31)
/* 80C6403C  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 80C64040  48 00 01 44 */	b lbl_80C64184
lbl_80C64044:
/* 80C64044  80 1E 06 1C */	lwz r0, 0x61c(r30)
/* 80C64048  38 C5 00 0C */	addi r6, r5, 0xc
/* 80C6404C  7C C0 32 14 */	add r6, r0, r6
/* 80C64050  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C64054  D0 06 00 00 */	stfs f0, 0(r6)
/* 80C64058  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C6405C  D0 06 00 04 */	stfs f0, 4(r6)
/* 80C64060  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C64064  D0 06 00 08 */	stfs f0, 8(r6)
/* 80C64068  80 DE 06 1C */	lwz r6, 0x61c(r30)
/* 80C6406C  39 25 00 0C */	addi r9, r5, 0xc
/* 80C64070  7C 06 4C 2E */	lfsx f0, r6, r9
/* 80C64074  EC 00 28 2A */	fadds f0, f0, f5
/* 80C64078  7C 06 4D 2E */	stfsx f0, r6, r9
/* 80C6407C  80 DE 06 1C */	lwz r6, 0x61c(r30)
/* 80C64080  39 05 00 14 */	addi r8, r5, 0x14
/* 80C64084  7C 06 44 2E */	lfsx f0, r6, r8
/* 80C64088  EC 00 20 2A */	fadds f0, f0, f4
/* 80C6408C  7C 06 45 2E */	stfsx f0, r6, r8
/* 80C64090  80 1E 06 1C */	lwz r0, 0x61c(r30)
/* 80C64094  7C C0 2A 14 */	add r6, r0, r5
/* 80C64098  C0 03 00 00 */	lfs f0, 0(r3)
/* 80C6409C  D0 06 00 00 */	stfs f0, 0(r6)
/* 80C640A0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C640A4  D0 06 00 04 */	stfs f0, 4(r6)
/* 80C640A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C640AC  D0 06 00 08 */	stfs f0, 8(r6)
/* 80C640B0  80 DE 06 1C */	lwz r6, 0x61c(r30)
/* 80C640B4  38 E5 00 24 */	addi r7, r5, 0x24
/* 80C640B8  7C 66 3D 2E */	stfsx f3, r6, r7
/* 80C640BC  80 1E 06 20 */	lwz r0, 0x620(r30)
/* 80C640C0  7C C0 4A 14 */	add r6, r0, r9
/* 80C640C4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C640C8  D0 06 00 00 */	stfs f0, 0(r6)
/* 80C640CC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C640D0  D0 06 00 04 */	stfs f0, 4(r6)
/* 80C640D4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C640D8  D0 06 00 08 */	stfs f0, 8(r6)
/* 80C640DC  80 DE 06 20 */	lwz r6, 0x620(r30)
/* 80C640E0  7C 06 4C 2E */	lfsx f0, r6, r9
/* 80C640E4  EC 00 28 2A */	fadds f0, f0, f5
/* 80C640E8  7C 06 4D 2E */	stfsx f0, r6, r9
/* 80C640EC  80 DE 06 20 */	lwz r6, 0x620(r30)
/* 80C640F0  7C 06 44 2E */	lfsx f0, r6, r8
/* 80C640F4  EC 00 10 2A */	fadds f0, f0, f2
/* 80C640F8  7C 06 45 2E */	stfsx f0, r6, r8
/* 80C640FC  80 1E 06 20 */	lwz r0, 0x620(r30)
/* 80C64100  7C C0 2A 14 */	add r6, r0, r5
/* 80C64104  C0 03 00 00 */	lfs f0, 0(r3)
/* 80C64108  D0 06 00 00 */	stfs f0, 0(r6)
/* 80C6410C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C64110  D0 06 00 04 */	stfs f0, 4(r6)
/* 80C64114  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C64118  D0 06 00 08 */	stfs f0, 8(r6)
/* 80C6411C  80 DE 06 20 */	lwz r6, 0x620(r30)
/* 80C64120  7C 66 3D 2E */	stfsx f3, r6, r7
/* 80C64124  80 1E 06 24 */	lwz r0, 0x624(r30)
/* 80C64128  7C C0 4A 14 */	add r6, r0, r9
/* 80C6412C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C64130  D0 06 00 00 */	stfs f0, 0(r6)
/* 80C64134  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C64138  D0 06 00 04 */	stfs f0, 4(r6)
/* 80C6413C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C64140  D0 06 00 08 */	stfs f0, 8(r6)
/* 80C64144  80 DE 06 24 */	lwz r6, 0x624(r30)
/* 80C64148  7C 06 4C 2E */	lfsx f0, r6, r9
/* 80C6414C  EC 00 08 2A */	fadds f0, f0, f1
/* 80C64150  7C 06 4D 2E */	stfsx f0, r6, r9
/* 80C64154  80 1E 06 24 */	lwz r0, 0x624(r30)
/* 80C64158  7C C0 2A 14 */	add r6, r0, r5
/* 80C6415C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80C64160  D0 06 00 00 */	stfs f0, 0(r6)
/* 80C64164  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C64168  D0 06 00 04 */	stfs f0, 4(r6)
/* 80C6416C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C64170  D0 06 00 08 */	stfs f0, 8(r6)
/* 80C64174  80 DE 06 24 */	lwz r6, 0x624(r30)
/* 80C64178  7C 66 3D 2E */	stfsx f3, r6, r7
/* 80C6417C  38 84 00 01 */	addi r4, r4, 1
/* 80C64180  38 A5 00 28 */	addi r5, r5, 0x28
lbl_80C64184:
/* 80C64184  80 1E 24 18 */	lwz r0, 0x2418(r30)
/* 80C64188  7C 04 00 00 */	cmpw r4, r0
/* 80C6418C  41 80 FE B8 */	blt lbl_80C64044
/* 80C64190  7C 07 03 78 */	mr r7, r0
/* 80C64194  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80C64198  38 C4 0C F4 */	addi r6, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80C6419C  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80C641A0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C641A4  1C 80 00 28 */	mulli r4, r0, 0x28
/* 80C641A8  48 00 00 6C */	b lbl_80C64214
lbl_80C641AC:
/* 80C641AC  80 1E 06 1C */	lwz r0, 0x61c(r30)
/* 80C641B0  7C A0 22 14 */	add r5, r0, r4
/* 80C641B4  C0 26 00 00 */	lfs f1, 0(r6)
/* 80C641B8  D0 25 00 00 */	stfs f1, 0(r5)
/* 80C641BC  C0 23 00 04 */	lfs f1, 4(r3)
/* 80C641C0  D0 25 00 04 */	stfs f1, 4(r5)
/* 80C641C4  C0 23 00 08 */	lfs f1, 8(r3)
/* 80C641C8  D0 25 00 08 */	stfs f1, 8(r5)
/* 80C641CC  80 BE 06 1C */	lwz r5, 0x61c(r30)
/* 80C641D0  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C641D4  38 04 00 0C */	addi r0, r4, 0xc
/* 80C641D8  7C 25 05 2E */	stfsx f1, r5, r0
/* 80C641DC  80 1E 06 1C */	lwz r0, 0x61c(r30)
/* 80C641E0  7C A0 22 14 */	add r5, r0, r4
/* 80C641E4  C0 25 FF E8 */	lfs f1, -0x18(r5)
/* 80C641E8  EC 21 10 28 */	fsubs f1, f1, f2
/* 80C641EC  D0 25 00 10 */	stfs f1, 0x10(r5)
/* 80C641F0  80 BE 06 1C */	lwz r5, 0x61c(r30)
/* 80C641F4  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 80C641F8  38 04 00 14 */	addi r0, r4, 0x14
/* 80C641FC  7C 25 05 2E */	stfsx f1, r5, r0
/* 80C64200  80 BE 06 1C */	lwz r5, 0x61c(r30)
/* 80C64204  38 04 00 24 */	addi r0, r4, 0x24
/* 80C64208  7C 05 05 2E */	stfsx f0, r5, r0
/* 80C6420C  38 E7 00 01 */	addi r7, r7, 1
/* 80C64210  38 84 00 28 */	addi r4, r4, 0x28
lbl_80C64214:
/* 80C64214  80 1E 06 10 */	lwz r0, 0x610(r30)
/* 80C64218  7C 07 00 00 */	cmpw r7, r0
/* 80C6421C  41 80 FF 90 */	blt lbl_80C641AC
/* 80C64220  80 FE 24 18 */	lwz r7, 0x2418(r30)
/* 80C64224  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80C64228  38 C4 0C F4 */	addi r6, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80C6422C  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80C64230  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C64234  1C 87 00 28 */	mulli r4, r7, 0x28
/* 80C64238  48 00 00 6C */	b lbl_80C642A4
lbl_80C6423C:
/* 80C6423C  80 1E 06 20 */	lwz r0, 0x620(r30)
/* 80C64240  7C A0 22 14 */	add r5, r0, r4
/* 80C64244  C0 26 00 00 */	lfs f1, 0(r6)
/* 80C64248  D0 25 00 00 */	stfs f1, 0(r5)
/* 80C6424C  C0 23 00 04 */	lfs f1, 4(r3)
/* 80C64250  D0 25 00 04 */	stfs f1, 4(r5)
/* 80C64254  C0 23 00 08 */	lfs f1, 8(r3)
/* 80C64258  D0 25 00 08 */	stfs f1, 8(r5)
/* 80C6425C  80 BE 06 20 */	lwz r5, 0x620(r30)
/* 80C64260  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C64264  38 04 00 0C */	addi r0, r4, 0xc
/* 80C64268  7C 25 05 2E */	stfsx f1, r5, r0
/* 80C6426C  80 1E 06 20 */	lwz r0, 0x620(r30)
/* 80C64270  7C A0 22 14 */	add r5, r0, r4
/* 80C64274  C0 25 FF E8 */	lfs f1, -0x18(r5)
/* 80C64278  EC 21 10 28 */	fsubs f1, f1, f2
/* 80C6427C  D0 25 00 10 */	stfs f1, 0x10(r5)
/* 80C64280  80 BE 06 20 */	lwz r5, 0x620(r30)
/* 80C64284  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 80C64288  38 04 00 14 */	addi r0, r4, 0x14
/* 80C6428C  7C 25 05 2E */	stfsx f1, r5, r0
/* 80C64290  80 BE 06 20 */	lwz r5, 0x620(r30)
/* 80C64294  38 04 00 24 */	addi r0, r4, 0x24
/* 80C64298  7C 05 05 2E */	stfsx f0, r5, r0
/* 80C6429C  38 E7 00 01 */	addi r7, r7, 1
/* 80C642A0  38 84 00 28 */	addi r4, r4, 0x28
lbl_80C642A4:
/* 80C642A4  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 80C642A8  7C 07 00 00 */	cmpw r7, r0
/* 80C642AC  41 80 FF 90 */	blt lbl_80C6423C
/* 80C642B0  80 FE 24 18 */	lwz r7, 0x2418(r30)
/* 80C642B4  3C 80 80 43 */	lis r4, Zero__4cXyz@ha /* 0x80430CF4@ha */
/* 80C642B8  38 C4 0C F4 */	addi r6, r4, Zero__4cXyz@l /* 0x80430CF4@l */
/* 80C642BC  C0 5F 00 40 */	lfs f2, 0x40(r31)
/* 80C642C0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C642C4  1C 87 00 28 */	mulli r4, r7, 0x28
/* 80C642C8  48 00 00 6C */	b lbl_80C64334
lbl_80C642CC:
/* 80C642CC  80 1E 06 24 */	lwz r0, 0x624(r30)
/* 80C642D0  7C A0 22 14 */	add r5, r0, r4
/* 80C642D4  C0 26 00 00 */	lfs f1, 0(r6)
/* 80C642D8  D0 25 00 00 */	stfs f1, 0(r5)
/* 80C642DC  C0 23 00 04 */	lfs f1, 4(r3)
/* 80C642E0  D0 25 00 04 */	stfs f1, 4(r5)
/* 80C642E4  C0 23 00 08 */	lfs f1, 8(r3)
/* 80C642E8  D0 25 00 08 */	stfs f1, 8(r5)
/* 80C642EC  80 BE 06 24 */	lwz r5, 0x624(r30)
/* 80C642F0  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 80C642F4  38 04 00 0C */	addi r0, r4, 0xc
/* 80C642F8  7C 25 05 2E */	stfsx f1, r5, r0
/* 80C642FC  80 1E 06 24 */	lwz r0, 0x624(r30)
/* 80C64300  7C A0 22 14 */	add r5, r0, r4
/* 80C64304  C0 25 FF E8 */	lfs f1, -0x18(r5)
/* 80C64308  EC 21 10 28 */	fsubs f1, f1, f2
/* 80C6430C  D0 25 00 10 */	stfs f1, 0x10(r5)
/* 80C64310  80 BE 06 24 */	lwz r5, 0x624(r30)
/* 80C64314  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 80C64318  38 04 00 14 */	addi r0, r4, 0x14
/* 80C6431C  7C 25 05 2E */	stfsx f1, r5, r0
/* 80C64320  80 BE 06 24 */	lwz r5, 0x624(r30)
/* 80C64324  38 04 00 24 */	addi r0, r4, 0x24
/* 80C64328  7C 05 05 2E */	stfsx f0, r5, r0
/* 80C6432C  38 E7 00 01 */	addi r7, r7, 1
/* 80C64330  38 84 00 28 */	addi r4, r4, 0x28
lbl_80C64334:
/* 80C64334  80 1E 06 18 */	lwz r0, 0x618(r30)
/* 80C64338  7C 07 00 00 */	cmpw r7, r0
/* 80C6433C  41 80 FF 90 */	blt lbl_80C642CC
/* 80C64340  7F C3 F3 78 */	mr r3, r30
/* 80C64344  4B FF F3 71 */	bl setMtx__14daObjLv4Chan_cFv
/* 80C64348  C0 1E 23 BC */	lfs f0, 0x23bc(r30)
/* 80C6434C  D0 1E 23 C8 */	stfs f0, 0x23c8(r30)
/* 80C64350  C0 1E 23 C0 */	lfs f0, 0x23c0(r30)
/* 80C64354  D0 1E 23 CC */	stfs f0, 0x23cc(r30)
/* 80C64358  C0 1E 23 C4 */	lfs f0, 0x23c4(r30)
/* 80C6435C  D0 1E 23 D0 */	stfs f0, 0x23d0(r30)
/* 80C64360  38 1E 05 D8 */	addi r0, r30, 0x5d8
/* 80C64364  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C64368  7F C3 F3 78 */	mr r3, r30
/* 80C6436C  48 00 05 0D */	bl chkGnd__14daObjLv4Chan_cFv
/* 80C64370  7F C3 F3 78 */	mr r3, r30
/* 80C64374  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 80C64378  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80C6437C  80 1E 06 28 */	lwz r0, 0x628(r30)
/* 80C64380  7C 00 00 D0 */	neg r0, r0
/* 80C64384  C8 5F 00 60 */	lfd f2, 0x60(r31)
/* 80C64388  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C6438C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C64390  3C 00 43 30 */	lis r0, 0x4330
/* 80C64394  90 01 00 08 */	stw r0, 8(r1)
/* 80C64398  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C6439C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C643A0  EC 43 00 32 */	fmuls f2, f3, f0
/* 80C643A4  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80C643A8  EC 42 00 28 */	fsubs f2, f2, f0
/* 80C643AC  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 80C643B0  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80C643B4  C0 BF 00 58 */	lfs f5, 0x58(r31)
/* 80C643B8  C0 DF 00 5C */	lfs f6, 0x5c(r31)
/* 80C643BC  4B 3B 61 8D */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80C643C0  3C 60 80 C6 */	lis r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha /* 0x80C63338@ha */
/* 80C643C4  38 03 33 38 */	addi r0, r3, rideCallBack__FP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l /* 0x80C63338@l */
/* 80C643C8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80C643CC  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80C643D0  38 7E 06 40 */	addi r3, r30, 0x640
/* 80C643D4  38 80 00 FF */	li r4, 0xff
/* 80C643D8  38 A0 00 00 */	li r5, 0
/* 80C643DC  7F C6 F3 78 */	mr r6, r30
/* 80C643E0  4B 41 F4 81 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C643E4  3B 00 00 00 */	li r24, 0
/* 80C643E8  3B A0 00 00 */	li r29, 0
/* 80C643EC  3C 60 80 C6 */	lis r3, cc_sph_src@ha /* 0x80C66994@ha */
/* 80C643F0  3B 43 69 94 */	addi r26, r3, cc_sph_src@l /* 0x80C66994@l */
/* 80C643F4  3B 7E 06 40 */	addi r27, r30, 0x640
/* 80C643F8  7F 5C D3 78 */	mr r28, r26
lbl_80C643FC:
/* 80C643FC  7F 3E EA 14 */	add r25, r30, r29
/* 80C64400  38 79 06 7C */	addi r3, r25, 0x67c
/* 80C64404  7F 44 D3 78 */	mr r4, r26
/* 80C64408  4B 42 06 2D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C6440C  93 79 06 C0 */	stw r27, 0x6c0(r25)
/* 80C64410  38 79 10 3C */	addi r3, r25, 0x103c
/* 80C64414  7F 44 D3 78 */	mr r4, r26
/* 80C64418  4B 42 06 1D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C6441C  93 79 10 80 */	stw r27, 0x1080(r25)
/* 80C64420  38 79 19 FC */	addi r3, r25, 0x19fc
/* 80C64424  7F 84 E3 78 */	mr r4, r28
/* 80C64428  4B 42 06 0D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C6442C  93 79 1A 40 */	stw r27, 0x1a40(r25)
/* 80C64430  3B 18 00 01 */	addi r24, r24, 1
/* 80C64434  2C 18 00 08 */	cmpwi r24, 8
/* 80C64438  3B BD 01 38 */	addi r29, r29, 0x138
/* 80C6443C  41 80 FF C0 */	blt lbl_80C643FC
/* 80C64440  38 60 00 00 */	li r3, 0
/* 80C64444  98 7E 24 88 */	stb r3, 0x2488(r30)
/* 80C64448  38 00 00 01 */	li r0, 1
/* 80C6444C  98 1E 24 89 */	stb r0, 0x2489(r30)
/* 80C64450  98 7E 24 8A */	stb r3, 0x248a(r30)
/* 80C64454  98 7E 24 8B */	stb r3, 0x248b(r30)
/* 80C64458  98 7E 24 8C */	stb r3, 0x248c(r30)
/* 80C6445C  98 7E 24 8D */	stb r3, 0x248d(r30)
/* 80C64460  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C64464  D0 3E 24 90 */	stfs f1, 0x2490(r30)
/* 80C64468  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80C6446C  D0 1E 24 94 */	stfs f0, 0x2494(r30)
/* 80C64470  D0 3E 24 9C */	stfs f1, 0x249c(r30)
/* 80C64474  D0 1E 24 A0 */	stfs f0, 0x24a0(r30)
/* 80C64478  98 7E 24 98 */	stb r3, 0x2498(r30)
/* 80C6447C  98 7E 24 99 */	stb r3, 0x2499(r30)
/* 80C64480  38 60 00 01 */	li r3, 1
/* 80C64484  39 61 00 30 */	addi r11, r1, 0x30
/* 80C64488  4B 6F DD 8D */	bl _restgpr_24
/* 80C6448C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C64490  7C 08 03 A6 */	mtlr r0
/* 80C64494  38 21 00 30 */	addi r1, r1, 0x30
/* 80C64498  4E 80 00 20 */	blr 
