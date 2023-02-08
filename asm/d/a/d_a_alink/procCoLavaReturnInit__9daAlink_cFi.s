lbl_800DBED8:
/* 800DBED8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800DBEDC  7C 08 02 A6 */	mflr r0
/* 800DBEE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 800DBEE4  39 61 00 40 */	addi r11, r1, 0x40
/* 800DBEE8  48 28 62 F5 */	bl _savegpr_29
/* 800DBEEC  7C 7E 1B 78 */	mr r30, r3
/* 800DBEF0  7C 9F 23 78 */	mr r31, r4
/* 800DBEF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800DBEF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800DBEFC  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800DBF00  7F C4 F3 78 */	mr r4, r30
/* 800DBF04  38 A0 00 00 */	li r5, 0
/* 800DBF08  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800DBF0C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800DBF10  4B F6 72 5D */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800DBF14  2C 03 00 00 */	cmpwi r3, 0
/* 800DBF18  40 82 00 0C */	bne lbl_800DBF24
/* 800DBF1C  38 60 00 00 */	li r3, 0
/* 800DBF20  48 00 02 DC */	b lbl_800DC1FC
lbl_800DBF24:
/* 800DBF24  38 00 00 05 */	li r0, 5
/* 800DBF28  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 800DBF2C  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800DBF30  54 1D 06 72 */	rlwinm r29, r0, 0, 0x19, 0x19
/* 800DBF34  7F C3 F3 78 */	mr r3, r30
/* 800DBF38  38 80 01 55 */	li r4, 0x155
/* 800DBF3C  4B FE 6E 69 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DBF40  2C 03 00 00 */	cmpwi r3, 0
/* 800DBF44  40 82 00 0C */	bne lbl_800DBF50
/* 800DBF48  38 60 00 01 */	li r3, 1
/* 800DBF4C  48 00 02 B0 */	b lbl_800DC1FC
lbl_800DBF50:
/* 800DBF50  28 1D 00 00 */	cmplwi r29, 0
/* 800DBF54  41 82 00 14 */	beq lbl_800DBF68
/* 800DBF58  C0 1E 38 34 */	lfs f0, 0x3834(r30)
/* 800DBF5C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 800DBF60  C0 1E 38 3C */	lfs f0, 0x383c(r30)
/* 800DBF64  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_800DBF68:
/* 800DBF68  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800DBF6C  60 00 01 00 */	ori r0, r0, 0x100
/* 800DBF70  90 1E 05 70 */	stw r0, 0x570(r30)
/* 800DBF74  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800DBF78  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800DBF7C  41 82 00 64 */	beq lbl_800DBFE0
/* 800DBF80  7F C3 F3 78 */	mr r3, r30
/* 800DBF84  38 80 00 7D */	li r4, 0x7d
/* 800DBF88  48 04 D6 F1 */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 800DBF8C  7F C3 F3 78 */	mr r3, r30
/* 800DBF90  38 80 00 9E */	li r4, 0x9e
/* 800DBF94  4B FD 39 0D */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 800DBF98  2C 1F 00 00 */	cmpwi r31, 0
/* 800DBF9C  41 82 00 24 */	beq lbl_800DBFC0
/* 800DBFA0  7F C3 F3 78 */	mr r3, r30
/* 800DBFA4  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100B4@ha */
/* 800DBFA8  38 84 00 B4 */	addi r4, r4, 0x00B4 /* 0x000100B4@l */
/* 800DBFAC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800DBFB0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DBFB4  7D 89 03 A6 */	mtctr r12
/* 800DBFB8  4E 80 04 21 */	bctrl 
/* 800DBFBC  48 00 00 88 */	b lbl_800DC044
lbl_800DBFC0:
/* 800DBFC0  7F C3 F3 78 */	mr r3, r30
/* 800DBFC4  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100B3@ha */
/* 800DBFC8  38 84 00 B3 */	addi r4, r4, 0x00B3 /* 0x000100B3@l */
/* 800DBFCC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800DBFD0  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DBFD4  7D 89 03 A6 */	mtctr r12
/* 800DBFD8  4E 80 04 21 */	bctrl 
/* 800DBFDC  48 00 00 68 */	b lbl_800DC044
lbl_800DBFE0:
/* 800DBFE0  7F C3 F3 78 */	mr r3, r30
/* 800DBFE4  38 80 01 19 */	li r4, 0x119
/* 800DBFE8  4B FD 0F 99 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800DBFEC  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800DBFF0  28 00 01 03 */	cmplwi r0, 0x103
/* 800DBFF4  40 82 00 0C */	bne lbl_800DC000
/* 800DBFF8  38 00 00 64 */	li r0, 0x64
/* 800DBFFC  98 1E 2F 92 */	stb r0, 0x2f92(r30)
lbl_800DC000:
/* 800DC000  2C 1F 00 00 */	cmpwi r31, 0
/* 800DC004  41 82 00 24 */	beq lbl_800DC028
/* 800DC008  7F C3 F3 78 */	mr r3, r30
/* 800DC00C  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001002A@ha */
/* 800DC010  38 84 00 2A */	addi r4, r4, 0x002A /* 0x0001002A@l */
/* 800DC014  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800DC018  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DC01C  7D 89 03 A6 */	mtctr r12
/* 800DC020  4E 80 04 21 */	bctrl 
/* 800DC024  48 00 00 20 */	b lbl_800DC044
lbl_800DC028:
/* 800DC028  7F C3 F3 78 */	mr r3, r30
/* 800DC02C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010029@ha */
/* 800DC030  38 84 00 29 */	addi r4, r4, 0x0029 /* 0x00010029@l */
/* 800DC034  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800DC038  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800DC03C  7D 89 03 A6 */	mtctr r12
/* 800DC040  4E 80 04 21 */	bctrl 
lbl_800DC044:
/* 800DC044  2C 1F 00 00 */	cmpwi r31, 0
/* 800DC048  41 82 00 78 */	beq lbl_800DC0C0
/* 800DC04C  7F C3 F3 78 */	mr r3, r30
/* 800DC050  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020072@ha */
/* 800DC054  38 84 00 72 */	addi r4, r4, 0x0072 /* 0x00020072@l */
/* 800DC058  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800DC05C  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800DC060  7D 89 03 A6 */	mtctr r12
/* 800DC064  4E 80 04 21 */	bctrl 
/* 800DC068  38 00 00 FF */	li r0, 0xff
/* 800DC06C  98 1E 2F BD */	stb r0, 0x2fbd(r30)
/* 800DC070  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800DC074  54 00 03 98 */	rlwinm r0, r0, 0, 0xe, 0xc
/* 800DC078  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800DC07C  80 7E 20 60 */	lwz r3, 0x2060(r30)
/* 800DC080  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 800DC084  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 800DC088  C0 1E 34 58 */	lfs f0, 0x3458(r30)
/* 800DC08C  EC 01 00 2A */	fadds f0, f1, f0
/* 800DC090  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 800DC094  C0 3E 2B A8 */	lfs f1, 0x2ba8(r30)
/* 800DC098  C0 1E 34 58 */	lfs f0, 0x3458(r30)
/* 800DC09C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800DC0A0  D0 1E 2B A8 */	stfs f0, 0x2ba8(r30)
/* 800DC0A4  38 00 00 00 */	li r0, 0
/* 800DC0A8  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800DC0AC  38 00 00 05 */	li r0, 5
/* 800DC0B0  90 1E 32 CC */	stw r0, 0x32cc(r30)
/* 800DC0B4  38 00 00 04 */	li r0, 4
/* 800DC0B8  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800DC0BC  48 00 00 E0 */	b lbl_800DC19C
lbl_800DC0C0:
/* 800DC0C0  7F C3 F3 78 */	mr r3, r30
/* 800DC0C4  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002006F@ha */
/* 800DC0C8  38 84 00 6F */	addi r4, r4, 0x006F /* 0x0002006F@l */
/* 800DC0CC  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800DC0D0  81 8C 01 18 */	lwz r12, 0x118(r12)
/* 800DC0D4  7D 89 03 A6 */	mtctr r12
/* 800DC0D8  4E 80 04 21 */	bctrl 
/* 800DC0DC  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 800DC0E0  C0 3E 33 B4 */	lfs f1, 0x33b4(r30)
/* 800DC0E4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800DC0E8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800DC0EC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 800DC0F0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 800DC0F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800DC0F8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800DC0FC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 800DC100  38 80 00 00 */	li r4, 0
/* 800DC104  90 81 00 08 */	stw r4, 8(r1)
/* 800DC108  38 00 FF FF */	li r0, -1
/* 800DC10C  90 01 00 0C */	stw r0, 0xc(r1)
/* 800DC110  90 81 00 10 */	stw r4, 0x10(r1)
/* 800DC114  90 81 00 14 */	stw r4, 0x14(r1)
/* 800DC118  90 81 00 18 */	stw r4, 0x18(r1)
/* 800DC11C  38 80 00 00 */	li r4, 0
/* 800DC120  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008757@ha */
/* 800DC124  38 A5 87 57 */	addi r5, r5, 0x8757 /* 0x00008757@l */
/* 800DC128  38 C1 00 20 */	addi r6, r1, 0x20
/* 800DC12C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 800DC130  39 00 00 00 */	li r8, 0
/* 800DC134  39 20 00 00 */	li r9, 0
/* 800DC138  39 40 00 FF */	li r10, 0xff
/* 800DC13C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800DC140  4B F7 09 51 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 800DC144  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 800DC148  38 80 00 00 */	li r4, 0
/* 800DC14C  90 81 00 08 */	stw r4, 8(r1)
/* 800DC150  38 00 FF FF */	li r0, -1
/* 800DC154  90 01 00 0C */	stw r0, 0xc(r1)
/* 800DC158  90 81 00 10 */	stw r4, 0x10(r1)
/* 800DC15C  90 81 00 14 */	stw r4, 0x14(r1)
/* 800DC160  90 81 00 18 */	stw r4, 0x18(r1)
/* 800DC164  38 80 00 00 */	li r4, 0
/* 800DC168  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008758@ha */
/* 800DC16C  38 A5 87 58 */	addi r5, r5, 0x8758 /* 0x00008758@l */
/* 800DC170  38 C1 00 20 */	addi r6, r1, 0x20
/* 800DC174  38 FE 01 0C */	addi r7, r30, 0x10c
/* 800DC178  39 00 00 00 */	li r8, 0
/* 800DC17C  39 20 00 00 */	li r9, 0
/* 800DC180  39 40 00 FF */	li r10, 0xff
/* 800DC184  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800DC188  4B F7 09 09 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 800DC18C  38 00 00 04 */	li r0, 4
/* 800DC190  90 1E 32 CC */	stw r0, 0x32cc(r30)
/* 800DC194  38 00 00 08 */	li r0, 8
/* 800DC198  90 1E 31 98 */	stw r0, 0x3198(r30)
lbl_800DC19C:
/* 800DC19C  38 00 00 00 */	li r0, 0
/* 800DC1A0  B0 1E 30 80 */	sth r0, 0x3080(r30)
/* 800DC1A4  B0 1E 05 6C */	sth r0, 0x56c(r30)
/* 800DC1A8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DC1AC  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800DC1B0  38 00 00 01 */	li r0, 1
/* 800DC1B4  90 1E 31 94 */	stw r0, 0x3194(r30)
/* 800DC1B8  28 1E 00 00 */	cmplwi r30, 0
/* 800DC1BC  41 82 00 0C */	beq lbl_800DC1C8
/* 800DC1C0  83 BE 00 04 */	lwz r29, 4(r30)
/* 800DC1C4  48 00 00 08 */	b lbl_800DC1CC
lbl_800DC1C8:
/* 800DC1C8  3B A0 FF FF */	li r29, -1
lbl_800DC1CC:
/* 800DC1CC  48 0A 54 75 */	bl dCam_getBody__Fv
/* 800DC1D0  38 80 00 09 */	li r4, 9
/* 800DC1D4  7F A5 EB 78 */	mr r5, r29
/* 800DC1D8  3C C0 80 39 */	lis r6, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 800DC1DC  38 C6 20 94 */	addi r6, r6, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 800DC1E0  38 C6 00 43 */	addi r6, r6, 0x43
/* 800DC1E4  38 E0 00 01 */	li r7, 1
/* 800DC1E8  39 1E 31 94 */	addi r8, r30, 0x3194
/* 800DC1EC  39 20 00 00 */	li r9, 0
/* 800DC1F0  4C C6 31 82 */	crclr 6
/* 800DC1F4  4B FA C8 89 */	bl StartEventCamera__9dCamera_cFiie
/* 800DC1F8  38 60 00 01 */	li r3, 1
lbl_800DC1FC:
/* 800DC1FC  39 61 00 40 */	addi r11, r1, 0x40
/* 800DC200  48 28 60 29 */	bl _restgpr_29
/* 800DC204  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800DC208  7C 08 03 A6 */	mtlr r0
/* 800DC20C  38 21 00 40 */	addi r1, r1, 0x40
/* 800DC210  4E 80 00 20 */	blr 
