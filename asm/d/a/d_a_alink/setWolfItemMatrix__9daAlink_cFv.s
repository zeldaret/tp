lbl_800A9F4C:
/* 800A9F4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800A9F50  7C 08 02 A6 */	mflr r0
/* 800A9F54  90 01 00 44 */	stw r0, 0x44(r1)
/* 800A9F58  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800A9F5C  7C 7F 1B 78 */	mr r31, r3
/* 800A9F60  80 63 06 50 */	lwz r3, 0x650(r3)
/* 800A9F64  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9F68  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9F6C  38 63 00 60 */	addi r3, r3, 0x60
/* 800A9F70  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9F74  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9F78  48 29 C5 39 */	bl PSMTXCopy
/* 800A9F7C  C0 22 95 58 */	lfs f1, lit_24323(r2)
/* 800A9F80  C0 42 97 1C */	lfs f2, lit_42622(r2)
/* 800A9F84  C0 62 93 C8 */	lfs f3, lit_10286(r2)
/* 800A9F88  4B F6 2E 15 */	bl transM__14mDoMtx_stack_cFfff
/* 800A9F8C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9F90  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9F94  38 80 00 00 */	li r4, 0
/* 800A9F98  38 A0 16 C1 */	li r5, 0x16c1
/* 800A9F9C  38 C0 6F A4 */	li r6, 0x6fa4
/* 800A9FA0  4B F6 21 C5 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 800A9FA4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9FA8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9FAC  80 9F 06 B8 */	lwz r4, 0x6b8(r31)
/* 800A9FB0  38 84 00 24 */	addi r4, r4, 0x24
/* 800A9FB4  48 29 C4 FD */	bl PSMTXCopy
/* 800A9FB8  7F E3 FB 78 */	mr r3, r31
/* 800A9FBC  80 9F 06 B8 */	lwz r4, 0x6b8(r31)
/* 800A9FC0  48 02 22 9D */	bl modelCalc__9daAlink_cFP8J3DModel
/* 800A9FC4  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800A9FC8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800A9FCC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800A9FD0  38 63 00 60 */	addi r3, r3, 0x60
/* 800A9FD4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9FD8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9FDC  48 29 C4 D5 */	bl PSMTXCopy
/* 800A9FE0  C0 22 93 84 */	lfs f1, lit_8781(r2)
/* 800A9FE4  C0 42 98 70 */	lfs f2, lit_61141(r2)
/* 800A9FE8  C0 62 93 74 */	lfs f3, lit_8502(r2)
/* 800A9FEC  4B F6 2D B1 */	bl transM__14mDoMtx_stack_cFfff
/* 800A9FF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800A9FF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800A9FF8  38 80 00 00 */	li r4, 0
/* 800A9FFC  38 A0 FF 6F */	li r5, -145
/* 800AA000  38 C0 6F A4 */	li r6, 0x6fa4
/* 800AA004  4B F6 21 61 */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 800AA008  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AA00C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AA010  80 9F 06 BC */	lwz r4, 0x6bc(r31)
/* 800AA014  38 84 00 24 */	addi r4, r4, 0x24
/* 800AA018  48 29 C4 99 */	bl PSMTXCopy
/* 800AA01C  7F E3 FB 78 */	mr r3, r31
/* 800AA020  80 9F 06 BC */	lwz r4, 0x6bc(r31)
/* 800AA024  48 02 22 39 */	bl modelCalc__9daAlink_cFP8J3DModel
/* 800AA028  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800AA02C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800AA030  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800AA034  38 63 00 60 */	addi r3, r3, 0x60
/* 800AA038  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AA03C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AA040  48 29 C4 71 */	bl PSMTXCopy
/* 800AA044  C0 22 94 B4 */	lfs f1, lit_17382(r2)
/* 800AA048  C0 42 94 38 */	lfs f2, lit_14625(r2)
/* 800AA04C  C0 62 98 74 */	lfs f3, lit_61142(r2)
/* 800AA050  4B F6 2D 4D */	bl transM__14mDoMtx_stack_cFfff
/* 800AA054  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AA058  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AA05C  38 80 40 00 */	li r4, 0x4000
/* 800AA060  38 A0 29 3E */	li r5, 0x293e
/* 800AA064  38 C0 EE EF */	li r6, -4369
/* 800AA068  4B F6 20 FD */	bl mDoMtx_XYZrotM__FPA4_fsss
/* 800AA06C  88 1F 2F D1 */	lbz r0, 0x2fd1(r31)
/* 800AA070  28 00 00 00 */	cmplwi r0, 0
/* 800AA074  40 82 00 24 */	bne lbl_800AA098
/* 800AA078  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AA07C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AA080  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 800AA084  38 84 00 24 */	addi r4, r4, 0x24
/* 800AA088  48 29 C4 29 */	bl PSMTXCopy
/* 800AA08C  7F E3 FB 78 */	mr r3, r31
/* 800AA090  80 9F 06 78 */	lwz r4, 0x678(r31)
/* 800AA094  48 02 21 C9 */	bl modelCalc__9daAlink_cFP8J3DModel
lbl_800AA098:
/* 800AA098  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800AA09C  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 800AA0A0  40 82 02 08 */	bne lbl_800AA2A8
/* 800AA0A4  7F E3 FB 78 */	mr r3, r31
/* 800AA0A8  4B FF F2 49 */	bl setSwordPos__9daAlink_cFv
/* 800AA0AC  80 BF 07 08 */	lwz r5, 0x708(r31)
/* 800AA0B0  28 05 00 00 */	cmplwi r5, 0
/* 800AA0B4  41 82 01 EC */	beq lbl_800AA2A0
/* 800AA0B8  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800AA0BC  28 00 01 09 */	cmplwi r0, 0x109
/* 800AA0C0  40 82 00 80 */	bne lbl_800AA140
/* 800AA0C4  C0 22 93 88 */	lfs f1, lit_8782(r2)
/* 800AA0C8  C0 1F 34 90 */	lfs f0, 0x3490(r31)
/* 800AA0CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 800AA0D0  3C 60 80 39 */	lis r3, lit_61047@ha /* 0x8039201C@ha */
/* 800AA0D4  38 83 20 1C */	addi r4, r3, lit_61047@l /* 0x8039201C@l */
/* 800AA0D8  80 64 00 00 */	lwz r3, 0(r4)
/* 800AA0DC  80 04 00 04 */	lwz r0, 4(r4)
/* 800AA0E0  90 61 00 24 */	stw r3, 0x24(r1)
/* 800AA0E4  90 01 00 28 */	stw r0, 0x28(r1)
/* 800AA0E8  80 04 00 08 */	lwz r0, 8(r4)
/* 800AA0EC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 800AA0F0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800AA0F4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800AA0F8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800AA0FC  38 65 00 24 */	addi r3, r5, 0x24
/* 800AA100  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 800AA104  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 800AA108  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 800AA10C  48 29 C7 DD */	bl PSMTXTrans
/* 800AA110  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 800AA114  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800AA118  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 800AA11C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800AA120  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 800AA124  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800AA128  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 800AA12C  80 7F 07 18 */	lwz r3, 0x718(r31)
/* 800AA130  28 03 00 00 */	cmplwi r3, 0
/* 800AA134  41 82 01 58 */	beq lbl_800AA28C
/* 800AA138  4B FF F1 11 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800AA13C  48 00 01 50 */	b lbl_800AA28C
lbl_800AA140:
/* 800AA140  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800AA144  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800AA148  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800AA14C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 800AA150  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AA154  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AA158  48 29 C3 59 */	bl PSMTXCopy
/* 800AA15C  C0 22 93 90 */	lfs f1, lit_8784(r2)
/* 800AA160  C0 42 93 48 */	lfs f2, lit_8130(r2)
/* 800AA164  C0 62 92 C0 */	lfs f3, lit_6108(r2)
/* 800AA168  4B F6 2C 35 */	bl transM__14mDoMtx_stack_cFfff
/* 800AA16C  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 800AA170  38 83 00 24 */	addi r4, r3, 0x24
/* 800AA174  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AA178  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AA17C  48 29 C3 35 */	bl PSMTXCopy
/* 800AA180  C0 1F 37 EC */	lfs f0, 0x37ec(r31)
/* 800AA184  D0 1F 37 F8 */	stfs f0, 0x37f8(r31)
/* 800AA188  C0 1F 37 F0 */	lfs f0, 0x37f0(r31)
/* 800AA18C  D0 1F 37 FC */	stfs f0, 0x37fc(r31)
/* 800AA190  C0 1F 37 F4 */	lfs f0, 0x37f4(r31)
/* 800AA194  D0 1F 38 00 */	stfs f0, 0x3800(r31)
/* 800AA198  C0 1F 37 E0 */	lfs f0, 0x37e0(r31)
/* 800AA19C  D0 1F 37 EC */	stfs f0, 0x37ec(r31)
/* 800AA1A0  C0 1F 37 E4 */	lfs f0, 0x37e4(r31)
/* 800AA1A4  D0 1F 37 F0 */	stfs f0, 0x37f0(r31)
/* 800AA1A8  C0 1F 37 E8 */	lfs f0, 0x37e8(r31)
/* 800AA1AC  D0 1F 37 F4 */	stfs f0, 0x37f4(r31)
/* 800AA1B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800AA1B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800AA1B8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 800AA1BC  D0 1F 37 E0 */	stfs f0, 0x37e0(r31)
/* 800AA1C0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800AA1C4  D0 1F 37 E4 */	stfs f0, 0x37e4(r31)
/* 800AA1C8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 800AA1CC  D0 1F 37 E8 */	stfs f0, 0x37e8(r31)
/* 800AA1D0  80 7F 07 18 */	lwz r3, 0x718(r31)
/* 800AA1D4  4B FF F0 75 */	bl simpleAnmPlay__9daAlink_cFP10J3DAnmBase
/* 800AA1D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070524@ha */
/* 800AA1DC  38 03 05 24 */	addi r0, r3, 0x0524 /* 0x00070524@l */
/* 800AA1E0  90 01 00 20 */	stw r0, 0x20(r1)
/* 800AA1E4  80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 800AA1E8  38 81 00 20 */	addi r4, r1, 0x20
/* 800AA1EC  38 A0 00 00 */	li r5, 0
/* 800AA1F0  38 C0 FF FF */	li r6, -1
/* 800AA1F4  81 83 00 10 */	lwz r12, 0x10(r3)
/* 800AA1F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 800AA1FC  7D 89 03 A6 */	mtctr r12
/* 800AA200  4E 80 04 21 */	bctrl 
/* 800AA204  80 7F 07 6C */	lwz r3, 0x76c(r31)
/* 800AA208  38 80 00 00 */	li r4, 0
/* 800AA20C  88 BF 2F 9A */	lbz r5, 0x2f9a(r31)
/* 800AA210  81 83 00 10 */	lwz r12, 0x10(r3)
/* 800AA214  81 8C 00 08 */	lwz r12, 8(r12)
/* 800AA218  7D 89 03 A6 */	mtctr r12
/* 800AA21C  4E 80 04 21 */	bctrl 
/* 800AA220  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800AA224  28 00 01 23 */	cmplwi r0, 0x123
/* 800AA228  41 82 00 64 */	beq lbl_800AA28C
/* 800AA22C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800AA230  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800AA234  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 800AA238  38 00 00 FF */	li r0, 0xff
/* 800AA23C  90 01 00 08 */	stw r0, 8(r1)
/* 800AA240  38 1F 2F 38 */	addi r0, r31, 0x2f38
/* 800AA244  90 01 00 0C */	stw r0, 0xc(r1)
/* 800AA248  38 00 FF FF */	li r0, -1
/* 800AA24C  90 01 00 10 */	stw r0, 0x10(r1)
/* 800AA250  38 00 00 00 */	li r0, 0
/* 800AA254  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AA258  90 01 00 18 */	stw r0, 0x18(r1)
/* 800AA25C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 800AA260  80 9F 32 D4 */	lwz r4, 0x32d4(r31)
/* 800AA264  38 A0 00 00 */	li r5, 0
/* 800AA268  3C C0 00 01 */	lis r6, 0x0001 /* 0x000086CD@ha */
/* 800AA26C  38 C6 86 CD */	addi r6, r6, 0x86CD /* 0x000086CD@l */
/* 800AA270  38 FF 37 E0 */	addi r7, r31, 0x37e0
/* 800AA274  39 1F 01 0C */	addi r8, r31, 0x10c
/* 800AA278  39 20 00 00 */	li r9, 0
/* 800AA27C  39 40 00 00 */	li r10, 0
/* 800AA280  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800AA284  4B FA 32 49 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 800AA288  90 7F 32 D4 */	stw r3, 0x32d4(r31)
lbl_800AA28C:
/* 800AA28C  80 7F 07 08 */	lwz r3, 0x708(r31)
/* 800AA290  81 83 00 00 */	lwz r12, 0(r3)
/* 800AA294  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800AA298  7D 89 03 A6 */	mtctr r12
/* 800AA29C  4E 80 04 21 */	bctrl 
lbl_800AA2A0:
/* 800AA2A0  7F E3 FB 78 */	mr r3, r31
/* 800AA2A4  48 08 20 69 */	bl setWolfChainPos__9daAlink_cFv
lbl_800AA2A8:
/* 800AA2A8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800AA2AC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800AA2B0  7C 08 03 A6 */	mtlr r0
/* 800AA2B4  38 21 00 40 */	addi r1, r1, 0x40
/* 800AA2B8  4E 80 00 20 */	blr 
