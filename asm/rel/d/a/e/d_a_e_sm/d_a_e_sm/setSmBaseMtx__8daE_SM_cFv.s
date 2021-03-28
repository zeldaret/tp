lbl_80796FC4:
/* 80796FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80796FC8  7C 08 02 A6 */	mflr r0
/* 80796FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80796FD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80796FD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80796FD8  7C 7E 1B 78 */	mr r30, r3
/* 80796FDC  3C 60 80 7A */	lis r3, lit_3920@ha
/* 80796FE0  3B E3 85 E0 */	addi r31, r3, lit_3920@l
/* 80796FE4  38 7E 09 90 */	addi r3, r30, 0x990
/* 80796FE8  4B 87 5D 7C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80796FEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80796FF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80796FF4  A8 9E 09 B2 */	lha r4, 0x9b2(r30)
/* 80796FF8  4B 87 54 3C */	b mDoMtx_YrotM__FPA4_fs
/* 80796FFC  C0 7F 00 08 */	lfs f3, 8(r31)
/* 80797000  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80797004  C0 9E 06 E4 */	lfs f4, 0x6e4(r30)
/* 80797008  EC 00 01 32 */	fmuls f0, f0, f4
/* 8079700C  EC 23 00 28 */	fsubs f1, f3, f0
/* 80797010  FC 40 08 90 */	fmr f2, f1
/* 80797014  EC 63 20 2A */	fadds f3, f3, f4
/* 80797018  4B 87 5E 20 */	b scaleM__14mDoMtx_stack_cFfff
/* 8079701C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80797020  FC 40 08 90 */	fmr f2, f1
/* 80797024  C0 7E 06 9C */	lfs f3, 0x69c(r30)
/* 80797028  4B 87 5D 74 */	b transM__14mDoMtx_stack_cFfff
/* 8079702C  C0 5E 06 F0 */	lfs f2, 0x6f0(r30)
/* 80797030  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 80797034  EC 22 00 24 */	fdivs f1, f2, f0
/* 80797038  EC 42 00 32 */	fmuls f2, f2, f0
/* 8079703C  FC 60 08 90 */	fmr f3, f1
/* 80797040  4B 87 5D F8 */	b scaleM__14mDoMtx_stack_cFfff
/* 80797044  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80797048  FC 40 08 90 */	fmr f2, f1
/* 8079704C  C0 1E 06 9C */	lfs f0, 0x69c(r30)
/* 80797050  FC 60 00 50 */	fneg f3, f0
/* 80797054  4B 87 5D 48 */	b transM__14mDoMtx_stack_cFfff
/* 80797058  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8079705C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80797060  A8 1E 09 B2 */	lha r0, 0x9b2(r30)
/* 80797064  7C 00 00 D0 */	neg r0, r0
/* 80797068  7C 04 07 34 */	extsh r4, r0
/* 8079706C  4B 87 53 C8 */	b mDoMtx_YrotM__FPA4_fs
/* 80797070  A8 1E 06 BC */	lha r0, 0x6bc(r30)
/* 80797074  B0 1E 09 B4 */	sth r0, 0x9b4(r30)
/* 80797078  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8079707C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80797080  FC 60 08 90 */	fmr f3, f1
/* 80797084  4B 87 5D 18 */	b transM__14mDoMtx_stack_cFfff
/* 80797088  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8079708C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80797090  A8 9E 09 B4 */	lha r4, 0x9b4(r30)
/* 80797094  4B 87 54 38 */	b mDoMtx_ZrotM__FPA4_fs
/* 80797098  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8079709C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807970A0  A8 9E 09 B4 */	lha r4, 0x9b4(r30)
/* 807970A4  4B 87 52 F8 */	b mDoMtx_XrotM__FPA4_fs
/* 807970A8  C0 5E 06 DC */	lfs f2, 0x6dc(r30)
/* 807970AC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807970B0  EC 20 10 28 */	fsubs f1, f0, f2
/* 807970B4  EC 40 10 2A */	fadds f2, f0, f2
/* 807970B8  FC 60 08 90 */	fmr f3, f1
/* 807970BC  4B 87 5D 7C */	b scaleM__14mDoMtx_stack_cFfff
/* 807970C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807970C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807970C8  A8 1E 09 B4 */	lha r0, 0x9b4(r30)
/* 807970CC  7C 00 00 D0 */	neg r0, r0
/* 807970D0  7C 04 07 34 */	extsh r4, r0
/* 807970D4  4B 87 52 C8 */	b mDoMtx_XrotM__FPA4_fs
/* 807970D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807970DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807970E0  A8 1E 09 B4 */	lha r0, 0x9b4(r30)
/* 807970E4  7C 00 00 D0 */	neg r0, r0
/* 807970E8  7C 04 07 34 */	extsh r4, r0
/* 807970EC  4B 87 53 E0 */	b mDoMtx_ZrotM__FPA4_fs
/* 807970F0  C0 3F 01 74 */	lfs f1, 0x174(r31)
/* 807970F4  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 807970F8  FC 60 08 90 */	fmr f3, f1
/* 807970FC  4B 87 5C A0 */	b transM__14mDoMtx_stack_cFfff
/* 80797100  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80797104  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80797108  C0 7F 01 74 */	lfs f3, 0x174(r31)
/* 8079710C  4B 87 5C 90 */	b transM__14mDoMtx_stack_cFfff
/* 80797110  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80797114  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80797118  A8 9E 09 B4 */	lha r4, 0x9b4(r30)
/* 8079711C  4B 87 53 B0 */	b mDoMtx_ZrotM__FPA4_fs
/* 80797120  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80797124  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80797128  A8 9E 09 B4 */	lha r4, 0x9b4(r30)
/* 8079712C  4B 87 53 08 */	b mDoMtx_YrotM__FPA4_fs
/* 80797130  C0 5E 06 DC */	lfs f2, 0x6dc(r30)
/* 80797134  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80797138  EC 20 10 28 */	fsubs f1, f0, f2
/* 8079713C  EC 40 10 2A */	fadds f2, f0, f2
/* 80797140  FC 60 08 90 */	fmr f3, f1
/* 80797144  4B 87 5C F4 */	b scaleM__14mDoMtx_stack_cFfff
/* 80797148  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8079714C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80797150  A8 1E 09 B4 */	lha r0, 0x9b4(r30)
/* 80797154  7C 00 00 D0 */	neg r0, r0
/* 80797158  7C 04 07 34 */	extsh r4, r0
/* 8079715C  4B 87 52 D8 */	b mDoMtx_YrotM__FPA4_fs
/* 80797160  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80797164  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80797168  A8 1E 09 B4 */	lha r0, 0x9b4(r30)
/* 8079716C  7C 00 00 D0 */	neg r0, r0
/* 80797170  7C 04 07 34 */	extsh r4, r0
/* 80797174  4B 87 53 58 */	b mDoMtx_ZrotM__FPA4_fs
/* 80797178  C0 3F 01 74 */	lfs f1, 0x174(r31)
/* 8079717C  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 80797180  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80797184  4B 87 5C 18 */	b transM__14mDoMtx_stack_cFfff
/* 80797188  C0 3F 01 74 */	lfs f1, 0x174(r31)
/* 8079718C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80797190  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 80797194  4B 87 5C 08 */	b transM__14mDoMtx_stack_cFfff
/* 80797198  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8079719C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807971A0  A8 9E 09 B4 */	lha r4, 0x9b4(r30)
/* 807971A4  4B 87 53 28 */	b mDoMtx_ZrotM__FPA4_fs
/* 807971A8  C0 5E 06 DC */	lfs f2, 0x6dc(r30)
/* 807971AC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807971B0  EC 20 10 28 */	fsubs f1, f0, f2
/* 807971B4  EC 40 10 2A */	fadds f2, f0, f2
/* 807971B8  FC 60 08 90 */	fmr f3, f1
/* 807971BC  4B 87 5C 7C */	b scaleM__14mDoMtx_stack_cFfff
/* 807971C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807971C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807971C8  A8 1E 09 B4 */	lha r0, 0x9b4(r30)
/* 807971CC  7C 00 00 D0 */	neg r0, r0
/* 807971D0  7C 04 07 34 */	extsh r4, r0
/* 807971D4  4B 87 52 F8 */	b mDoMtx_ZrotM__FPA4_fs
/* 807971D8  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 807971DC  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 807971E0  C0 7F 01 74 */	lfs f3, 0x174(r31)
/* 807971E4  4B 87 5B B8 */	b transM__14mDoMtx_stack_cFfff
/* 807971E8  C0 3F 01 74 */	lfs f1, 0x174(r31)
/* 807971EC  C0 5F 00 04 */	lfs f2, 4(r31)
/* 807971F0  FC 60 08 90 */	fmr f3, f1
/* 807971F4  4B 87 5B A8 */	b transM__14mDoMtx_stack_cFfff
/* 807971F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807971FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80797200  A8 9E 09 B4 */	lha r4, 0x9b4(r30)
/* 80797204  4B 87 51 98 */	b mDoMtx_XrotM__FPA4_fs
/* 80797208  C0 5E 06 DC */	lfs f2, 0x6dc(r30)
/* 8079720C  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80797210  EC 20 10 28 */	fsubs f1, f0, f2
/* 80797214  EC 40 10 2A */	fadds f2, f0, f2
/* 80797218  FC 60 08 90 */	fmr f3, f1
/* 8079721C  4B 87 5C 1C */	b scaleM__14mDoMtx_stack_cFfff
/* 80797220  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80797224  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80797228  A8 1E 09 B4 */	lha r0, 0x9b4(r30)
/* 8079722C  7C 00 00 D0 */	neg r0, r0
/* 80797230  7C 04 07 34 */	extsh r4, r0
/* 80797234  4B 87 51 68 */	b mDoMtx_XrotM__FPA4_fs
/* 80797238  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 8079723C  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 80797240  FC 60 08 90 */	fmr f3, f1
/* 80797244  4B 87 5B 58 */	b transM__14mDoMtx_stack_cFfff
/* 80797248  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8079724C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80797250  80 9E 05 B8 */	lwz r4, 0x5b8(r30)
/* 80797254  38 84 00 24 */	addi r4, r4, 0x24
/* 80797258  4B BA F2 58 */	b PSMTXCopy
/* 8079725C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80797260  83 C1 00 08 */	lwz r30, 8(r1)
/* 80797264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80797268  7C 08 03 A6 */	mtlr r0
/* 8079726C  38 21 00 10 */	addi r1, r1, 0x10
/* 80797270  4E 80 00 20 */	blr 
