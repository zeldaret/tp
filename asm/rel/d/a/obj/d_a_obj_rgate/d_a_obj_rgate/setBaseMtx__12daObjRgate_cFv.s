lbl_80CB9F4C:
/* 80CB9F4C  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80CB9F50  7C 08 02 A6 */	mflr r0
/* 80CB9F54  90 01 00 84 */	stw r0, 0x84(r1)
/* 80CB9F58  39 61 00 80 */	addi r11, r1, 0x80
/* 80CB9F5C  4B 6A 82 81 */	bl _savegpr_29
/* 80CB9F60  7C 7F 1B 78 */	mr r31, r3
/* 80CB9F64  3C 60 80 CC */	lis r3, l_cull_box@ha /* 0x80CBC368@ha */
/* 80CB9F68  3B C3 C3 68 */	addi r30, r3, l_cull_box@l /* 0x80CBC368@l */
/* 80CB9F6C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CB9F70  4B 35 2D F5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CB9F74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9F78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9F7C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CB9F80  4B 35 24 B5 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CB9F84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9F88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9F8C  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80CB9F90  38 84 00 24 */	addi r4, r4, 0x24
/* 80CB9F94  4B 68 C5 1D */	bl PSMTXCopy
/* 80CB9F98  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80CB9F9C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80CB9FA0  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80CB9FA4  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 80CB9FA8  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80CB9FAC  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 80CB9FB0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80CB9FB4  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80CB9FB8  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80CB9FBC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9FC0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9FC4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CB9FC8  4B 35 24 15 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CB9FCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9FD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9FD4  38 81 00 5C */	addi r4, r1, 0x5c
/* 80CB9FD8  7C 85 23 78 */	mr r5, r4
/* 80CB9FDC  4B 68 CD 91 */	bl PSMTXMultVec
/* 80CB9FE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB9FE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB9FE8  38 81 00 50 */	addi r4, r1, 0x50
/* 80CB9FEC  7C 85 23 78 */	mr r5, r4
/* 80CB9FF0  4B 68 CD 7D */	bl PSMTXMultVec
/* 80CB9FF4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CB9FF8  4B 35 2D 6D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CB9FFC  38 61 00 5C */	addi r3, r1, 0x5c
/* 80CBA000  4B 35 2D D5 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80CBA004  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA008  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA00C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CBA010  4B 35 24 25 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CBA014  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA018  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA01C  A8 9F 0B 76 */	lha r4, 0xb76(r31)
/* 80CBA020  4B 35 24 15 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CBA024  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA028  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA02C  38 9F 0C 30 */	addi r4, r31, 0xc30
/* 80CBA030  4B 68 C4 81 */	bl PSMTXCopy
/* 80CBA034  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA038  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA03C  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80CBA040  4B 68 C4 71 */	bl PSMTXCopy
/* 80CBA044  38 61 00 14 */	addi r3, r1, 0x14
/* 80CBA048  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80CBA04C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80CBA050  4B 5A CA 95 */	bl __pl__4cXyzCFRC3Vec
/* 80CBA054  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80CBA058  D0 1F 0B E8 */	stfs f0, 0xbe8(r31)
/* 80CBA05C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80CBA060  D0 1F 0B EC */	stfs f0, 0xbec(r31)
/* 80CBA064  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80CBA068  D0 1F 0B F0 */	stfs f0, 0xbf0(r31)
/* 80CBA06C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CBA070  4B 35 2C F5 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CBA074  38 61 00 50 */	addi r3, r1, 0x50
/* 80CBA078  4B 35 2D 5D */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80CBA07C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA080  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA084  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CBA088  4B 35 23 AD */	bl mDoMtx_YrotM__FPA4_fs
/* 80CBA08C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA090  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA094  38 80 7F FF */	li r4, 0x7fff
/* 80CBA098  4B 35 23 9D */	bl mDoMtx_YrotM__FPA4_fs
/* 80CBA09C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA0A0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA0A4  A8 9F 0B 74 */	lha r4, 0xb74(r31)
/* 80CBA0A8  4B 35 23 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 80CBA0AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA0B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA0B4  38 9F 0C 00 */	addi r4, r31, 0xc00
/* 80CBA0B8  4B 68 C3 F9 */	bl PSMTXCopy
/* 80CBA0BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA0C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA0C4  38 9F 0A E4 */	addi r4, r31, 0xae4
/* 80CBA0C8  4B 68 C3 E9 */	bl PSMTXCopy
/* 80CBA0CC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80CBA0D0  D0 1F 0B F4 */	stfs f0, 0xbf4(r31)
/* 80CBA0D4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80CBA0D8  D0 1F 0B F8 */	stfs f0, 0xbf8(r31)
/* 80CBA0DC  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80CBA0E0  D0 1F 0B FC */	stfs f0, 0xbfc(r31)
/* 80CBA0E4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CBA0E8  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80CBA0EC  28 00 00 FF */	cmplwi r0, 0xff
/* 80CBA0F0  41 82 03 60 */	beq lbl_80CBA450
/* 80CBA0F4  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80CBA0F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80CBA0FC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80CBA100  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80CBA104  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80CBA108  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80CBA10C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA110  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA114  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CBA118  4B 35 22 C5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80CBA11C  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 80CBA120  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 80CBA124  FC 60 10 90 */	fmr f3, f2
/* 80CBA128  4B 35 2C 75 */	bl transM__14mDoMtx_stack_cFfff
/* 80CBA12C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA130  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA134  A8 9F 0B 76 */	lha r4, 0xb76(r31)
/* 80CBA138  4B 35 22 FD */	bl mDoMtx_YrotM__FPA4_fs
/* 80CBA13C  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 80CBA140  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 80CBA144  FC 60 10 90 */	fmr f3, f2
/* 80CBA148  4B 35 2C 55 */	bl transM__14mDoMtx_stack_cFfff
/* 80CBA14C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA150  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA154  38 81 00 44 */	addi r4, r1, 0x44
/* 80CBA158  7C 85 23 78 */	mr r5, r4
/* 80CBA15C  4B 68 CC 11 */	bl PSMTXMultVec
/* 80CBA160  C0 1F 0B C0 */	lfs f0, 0xbc0(r31)
/* 80CBA164  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CBA168  C0 1F 0B C4 */	lfs f0, 0xbc4(r31)
/* 80CBA16C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80CBA170  C0 1F 0B C8 */	lfs f0, 0xbc8(r31)
/* 80CBA174  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CBA178  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA17C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA180  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CBA184  A8 1F 0B 76 */	lha r0, 0xb76(r31)
/* 80CBA188  7C 04 02 14 */	add r0, r4, r0
/* 80CBA18C  7C 04 07 34 */	extsh r4, r0
/* 80CBA190  4B 35 22 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 80CBA194  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA198  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA19C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80CBA1A0  7C 85 23 78 */	mr r5, r4
/* 80CBA1A4  4B 68 CB C9 */	bl PSMTXMultVec
/* 80CBA1A8  C0 1F 0B B4 */	lfs f0, 0xbb4(r31)
/* 80CBA1AC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80CBA1B0  C0 1F 0B B8 */	lfs f0, 0xbb8(r31)
/* 80CBA1B4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80CBA1B8  C0 1F 0B BC */	lfs f0, 0xbbc(r31)
/* 80CBA1BC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80CBA1C0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80CBA1C4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80CBA1C8  80 1F 0B 98 */	lwz r0, 0xb98(r31)
/* 80CBA1CC  1C 00 0B B8 */	mulli r0, r0, 0xbb8
/* 80CBA1D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80CBA1D4  7C 63 02 14 */	add r3, r3, r0
/* 80CBA1D8  C0 23 00 04 */	lfs f1, 4(r3)
/* 80CBA1DC  C0 1F 0B B0 */	lfs f0, 0xbb0(r31)
/* 80CBA1E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80CBA1E4  FC 00 00 1E */	fctiwz f0, f0
/* 80CBA1E8  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80CBA1EC  83 A1 00 6C */	lwz r29, 0x6c(r1)
/* 80CBA1F0  38 7F 0B B0 */	addi r3, r31, 0xbb0
/* 80CBA1F4  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80CBA1F8  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 80CBA1FC  C0 7E 00 74 */	lfs f3, 0x74(r30)
/* 80CBA200  C0 9E 00 78 */	lfs f4, 0x78(r30)
/* 80CBA204  4B 5B 57 79 */	bl cLib_addCalc__FPfffff
/* 80CBA208  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CBA20C  4B 35 2B 59 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CBA210  38 61 00 2C */	addi r3, r1, 0x2c
/* 80CBA214  4B 35 2B C1 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80CBA218  38 61 00 44 */	addi r3, r1, 0x44
/* 80CBA21C  4B 35 2B B9 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80CBA220  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA224  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA228  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CBA22C  A8 1F 0B 76 */	lha r0, 0xb76(r31)
/* 80CBA230  7C 04 02 14 */	add r0, r4, r0
/* 80CBA234  7C 04 07 34 */	extsh r4, r0
/* 80CBA238  4B 35 21 FD */	bl mDoMtx_YrotM__FPA4_fs
/* 80CBA23C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA240  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA244  38 80 F1 C8 */	li r4, -3640
/* 80CBA248  4B 35 21 55 */	bl mDoMtx_XrotM__FPA4_fs
/* 80CBA24C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA250  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA254  A8 1F 0B AA */	lha r0, 0xbaa(r31)
/* 80CBA258  7C 00 00 D0 */	neg r0, r0
/* 80CBA25C  7C 04 07 34 */	extsh r4, r0
/* 80CBA260  4B 35 21 3D */	bl mDoMtx_XrotM__FPA4_fs
/* 80CBA264  C0 3E 00 7C */	lfs f1, 0x7c(r30)
/* 80CBA268  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 80CBA26C  FC 60 10 90 */	fmr f3, f2
/* 80CBA270  4B 35 2B 2D */	bl transM__14mDoMtx_stack_cFfff
/* 80CBA274  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA278  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA27C  A8 9F 0B AE */	lha r4, 0xbae(r31)
/* 80CBA280  4B 35 22 4D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80CBA284  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA288  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA28C  7F A4 EB 78 */	mr r4, r29
/* 80CBA290  4B 35 22 3D */	bl mDoMtx_ZrotM__FPA4_fs
/* 80CBA294  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 80CBA298  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 80CBA29C  FC 60 10 90 */	fmr f3, f2
/* 80CBA2A0  4B 35 2A FD */	bl transM__14mDoMtx_stack_cFfff
/* 80CBA2A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA2A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA2AC  80 9F 05 B0 */	lwz r4, 0x5b0(r31)
/* 80CBA2B0  38 84 00 24 */	addi r4, r4, 0x24
/* 80CBA2B4  4B 68 C1 FD */	bl PSMTXCopy
/* 80CBA2B8  80 1F 05 AC */	lwz r0, 0x5ac(r31)
/* 80CBA2BC  28 00 00 00 */	cmplwi r0, 0
/* 80CBA2C0  41 82 01 90 */	beq lbl_80CBA450
/* 80CBA2C4  A8 1F 0B AE */	lha r0, 0xbae(r31)
/* 80CBA2C8  2C 00 00 00 */	cmpwi r0, 0
/* 80CBA2CC  40 82 00 70 */	bne lbl_80CBA33C
/* 80CBA2D0  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80CBA2D4  4B 35 2A 91 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CBA2D8  38 61 00 44 */	addi r3, r1, 0x44
/* 80CBA2DC  4B 35 2A F9 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80CBA2E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA2E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA2E8  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80CBA2EC  A8 1F 0B 76 */	lha r0, 0xb76(r31)
/* 80CBA2F0  7C 04 02 14 */	add r0, r4, r0
/* 80CBA2F4  7C 04 07 34 */	extsh r4, r0
/* 80CBA2F8  4B 35 21 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 80CBA2FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA300  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA304  38 80 F1 C8 */	li r4, -3640
/* 80CBA308  4B 35 20 95 */	bl mDoMtx_XrotM__FPA4_fs
/* 80CBA30C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA310  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA314  A8 1F 0B AA */	lha r0, 0xbaa(r31)
/* 80CBA318  7C 00 00 D0 */	neg r0, r0
/* 80CBA31C  7C 04 07 34 */	extsh r4, r0
/* 80CBA320  4B 35 20 7D */	bl mDoMtx_XrotM__FPA4_fs
/* 80CBA324  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA328  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA32C  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80CBA330  38 84 00 24 */	addi r4, r4, 0x24
/* 80CBA334  4B 68 C1 7D */	bl PSMTXCopy
/* 80CBA338  48 00 01 18 */	b lbl_80CBA450
lbl_80CBA33C:
/* 80CBA33C  C0 3F 0B E4 */	lfs f1, 0xbe4(r31)
/* 80CBA340  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 80CBA344  EC 01 00 2A */	fadds f0, f1, f0
/* 80CBA348  D0 1F 0B E4 */	stfs f0, 0xbe4(r31)
/* 80CBA34C  C0 3F 0B E4 */	lfs f1, 0xbe4(r31)
/* 80CBA350  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80CBA354  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBA358  40 80 00 08 */	bge lbl_80CBA360
/* 80CBA35C  D0 1F 0B E4 */	stfs f0, 0xbe4(r31)
lbl_80CBA360:
/* 80CBA360  C0 3F 0B D4 */	lfs f1, 0xbd4(r31)
/* 80CBA364  C0 1F 0B E4 */	lfs f0, 0xbe4(r31)
/* 80CBA368  EC 01 00 2A */	fadds f0, f1, f0
/* 80CBA36C  D0 1F 0B D4 */	stfs f0, 0xbd4(r31)
/* 80CBA370  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 80CBA374  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 80CBA378  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80CBA37C  EC 21 00 2A */	fadds f1, f1, f0
/* 80CBA380  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80CBA384  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CBA388  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CBA38C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80CBA390  38 61 00 20 */	addi r3, r1, 0x20
/* 80CBA394  4B 36 39 29 */	bl gndCheck__11fopAcM_gc_cFPC4cXyz
/* 80CBA398  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CBA39C  41 82 00 78 */	beq lbl_80CBA414
/* 80CBA3A0  3C 60 80 45 */	lis r3, mGroundY__11fopAcM_gc_c@ha /* 0x80450CD0@ha */
/* 80CBA3A4  C0 23 0C D0 */	lfs f1, mGroundY__11fopAcM_gc_c@l(r3)  /* 0x80450CD0@l */
/* 80CBA3A8  C0 1F 0B D4 */	lfs f0, 0xbd4(r31)
/* 80CBA3AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CBA3B0  40 81 00 64 */	ble lbl_80CBA414
/* 80CBA3B4  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80CBA3B8  EC 00 08 2A */	fadds f0, f0, f1
/* 80CBA3BC  D0 1F 0B D4 */	stfs f0, 0xbd4(r31)
/* 80CBA3C0  88 1F 0B A9 */	lbz r0, 0xba9(r31)
/* 80CBA3C4  28 00 00 00 */	cmplwi r0, 0
/* 80CBA3C8  40 82 00 4C */	bne lbl_80CBA414
/* 80CBA3CC  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 80CBA3D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80CBA3D4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80CBA3D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80CBA3DC  38 61 00 08 */	addi r3, r1, 8
/* 80CBA3E0  7C 64 1B 78 */	mr r4, r3
/* 80CBA3E4  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80CBA3E8  4B 68 CC F1 */	bl PSVECScale
/* 80CBA3EC  38 60 03 01 */	li r3, 0x301
/* 80CBA3F0  38 80 00 03 */	li r4, 3
/* 80CBA3F4  38 BF 0B D0 */	addi r5, r31, 0xbd0
/* 80CBA3F8  38 C0 FF FF */	li r6, -1
/* 80CBA3FC  38 E0 00 00 */	li r7, 0
/* 80CBA400  39 01 00 08 */	addi r8, r1, 8
/* 80CBA404  39 20 FF FF */	li r9, -1
/* 80CBA408  4B 35 F9 91 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80CBA40C  38 00 00 01 */	li r0, 1
/* 80CBA410  98 1F 0B A9 */	stb r0, 0xba9(r31)
lbl_80CBA414:
/* 80CBA414  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80CBA418  38 80 C0 00 */	li r4, -16384
/* 80CBA41C  38 A0 00 05 */	li r5, 5
/* 80CBA420  38 C0 0C 00 */	li r6, 0xc00
/* 80CBA424  38 E0 04 00 */	li r7, 0x400
/* 80CBA428  4B 5B 61 19 */	bl cLib_addCalcAngleS__FPsssss
/* 80CBA42C  38 7F 0B D0 */	addi r3, r31, 0xbd0
/* 80CBA430  4B 35 29 35 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80CBA434  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80CBA438  4B 35 2B 0D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80CBA43C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CBA440  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CBA444  80 9F 05 AC */	lwz r4, 0x5ac(r31)
/* 80CBA448  38 84 00 24 */	addi r4, r4, 0x24
/* 80CBA44C  4B 68 C0 65 */	bl PSMTXCopy
lbl_80CBA450:
/* 80CBA450  39 61 00 80 */	addi r11, r1, 0x80
/* 80CBA454  4B 6A 7D D5 */	bl _restgpr_29
/* 80CBA458  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80CBA45C  7C 08 03 A6 */	mtlr r0
/* 80CBA460  38 21 00 80 */	addi r1, r1, 0x80
/* 80CBA464  4E 80 00 20 */	blr 
