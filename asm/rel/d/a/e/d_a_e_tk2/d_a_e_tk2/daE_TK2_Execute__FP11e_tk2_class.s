lbl_807BB128:
/* 807BB128  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 807BB12C  7C 08 02 A6 */	mflr r0
/* 807BB130  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 807BB134  39 61 00 E0 */	addi r11, r1, 0xe0
/* 807BB138  4B BA 70 9D */	bl _savegpr_27
/* 807BB13C  7C 7C 1B 78 */	mr r28, r3
/* 807BB140  3C 60 80 7C */	lis r3, lit_3762@ha /* 0x807BBDA8@ha */
/* 807BB144  3B C3 BD A8 */	addi r30, r3, lit_3762@l /* 0x807BBDA8@l */
/* 807BB148  A8 1C 06 90 */	lha r0, 0x690(r28)
/* 807BB14C  2C 00 00 00 */	cmpwi r0, 0
/* 807BB150  40 82 00 68 */	bne lbl_807BB1B8
/* 807BB154  38 61 00 6C */	addi r3, r1, 0x6c
/* 807BB158  4B 8B C6 59 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 807BB15C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807BB160  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807BB164  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 807BB168  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 807BB16C  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 807BB170  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807BB174  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 807BB178  EC 01 00 2A */	fadds f0, f1, f0
/* 807BB17C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807BB180  38 61 00 6C */	addi r3, r1, 0x6c
/* 807BB184  38 81 00 60 */	addi r4, r1, 0x60
/* 807BB188  4B AA CB A1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 807BB18C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BB190  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BB194  38 63 0F 38 */	addi r3, r3, 0xf38
/* 807BB198  38 81 00 6C */	addi r4, r1, 0x6c
/* 807BB19C  4B 8B 93 05 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 807BB1A0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 807BB1A4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807BB1A8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 807BB1AC  38 61 00 6C */	addi r3, r1, 0x6c
/* 807BB1B0  38 80 FF FF */	li r4, -1
/* 807BB1B4  4B 8B C6 95 */	bl __dt__18dBgS_ObjGndChk_SplFv
lbl_807BB1B8:
/* 807BB1B8  A8 7C 06 68 */	lha r3, 0x668(r28)
/* 807BB1BC  38 03 00 01 */	addi r0, r3, 1
/* 807BB1C0  B0 1C 06 68 */	sth r0, 0x668(r28)
/* 807BB1C4  38 80 00 00 */	li r4, 0
/* 807BB1C8  98 9C 06 94 */	stb r4, 0x694(r28)
/* 807BB1CC  38 00 00 04 */	li r0, 4
/* 807BB1D0  7C 09 03 A6 */	mtctr r0
lbl_807BB1D4:
/* 807BB1D4  38 A4 06 8A */	addi r5, r4, 0x68a
/* 807BB1D8  7C 7C 2A AE */	lhax r3, r28, r5
/* 807BB1DC  2C 03 00 00 */	cmpwi r3, 0
/* 807BB1E0  41 82 00 0C */	beq lbl_807BB1EC
/* 807BB1E4  38 03 FF FF */	addi r0, r3, -1
/* 807BB1E8  7C 1C 2B 2E */	sthx r0, r28, r5
lbl_807BB1EC:
/* 807BB1EC  38 84 00 02 */	addi r4, r4, 2
/* 807BB1F0  42 00 FF E4 */	bdnz lbl_807BB1D4
/* 807BB1F4  A8 7C 06 92 */	lha r3, 0x692(r28)
/* 807BB1F8  2C 03 00 00 */	cmpwi r3, 0
/* 807BB1FC  41 82 00 0C */	beq lbl_807BB208
/* 807BB200  38 03 FF FF */	addi r0, r3, -1
/* 807BB204  B0 1C 06 92 */	sth r0, 0x692(r28)
lbl_807BB208:
/* 807BB208  7F 83 E3 78 */	mr r3, r28
/* 807BB20C  4B FF FE 1D */	bl action__FP11e_tk2_class
/* 807BB210  38 7C 06 DC */	addi r3, r28, 0x6dc
/* 807BB214  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BB218  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BB21C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 807BB220  4B 8B B8 8D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 807BB224  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BB228  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BB22C  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 807BB230  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 807BB234  C0 7C 04 D8 */	lfs f3, 0x4d8(r28)
/* 807BB238  4B B8 B6 B1 */	bl PSMTXTrans
/* 807BB23C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BB240  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BB244  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807BB248  4B 85 11 ED */	bl mDoMtx_YrotM__FPA4_fs
/* 807BB24C  3C 60 80 7C */	lis r3, l_HIO@ha /* 0x807BBF50@ha */
/* 807BB250  3B E3 BF 50 */	addi r31, r3, l_HIO@l /* 0x807BBF50@l */
/* 807BB254  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807BB258  FC 40 08 90 */	fmr f2, f1
/* 807BB25C  FC 60 08 90 */	fmr f3, f1
/* 807BB260  4B 85 1B D9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 807BB264  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB268  83 A3 00 04 */	lwz r29, 4(r3)
/* 807BB26C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807BB270  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807BB274  38 9D 00 24 */	addi r4, r29, 0x24
/* 807BB278  4B B8 B2 39 */	bl PSMTXCopy
/* 807BB27C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 807BB280  7C 03 07 74 */	extsb r3, r0
/* 807BB284  4B 87 1D E9 */	bl dComIfGp_getReverb__Fi
/* 807BB288  7C 65 1B 78 */	mr r5, r3
/* 807BB28C  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB290  38 80 00 00 */	li r4, 0
/* 807BB294  4B 85 5E 1D */	bl play__16mDoExt_McaMorfSOFUlSc
/* 807BB298  80 1C 05 BC */	lwz r0, 0x5bc(r28)
/* 807BB29C  2C 00 00 09 */	cmpwi r0, 9
/* 807BB2A0  40 82 00 AC */	bne lbl_807BB34C
/* 807BB2A4  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB2A8  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB2AC  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 807BB2B0  4B B6 D1 7D */	bl checkPass__12J3DFrameCtrlFf
/* 807BB2B4  2C 03 00 00 */	cmpwi r3, 0
/* 807BB2B8  40 82 00 64 */	bne lbl_807BB31C
/* 807BB2BC  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB2C0  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB2C4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 807BB2C8  4B B6 D1 65 */	bl checkPass__12J3DFrameCtrlFf
/* 807BB2CC  2C 03 00 00 */	cmpwi r3, 0
/* 807BB2D0  40 82 00 4C */	bne lbl_807BB31C
/* 807BB2D4  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB2D8  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB2DC  C0 3E 00 54 */	lfs f1, 0x54(r30)
/* 807BB2E0  4B B6 D1 4D */	bl checkPass__12J3DFrameCtrlFf
/* 807BB2E4  2C 03 00 00 */	cmpwi r3, 0
/* 807BB2E8  40 82 00 34 */	bne lbl_807BB31C
/* 807BB2EC  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB2F0  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB2F4  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 807BB2F8  4B B6 D1 35 */	bl checkPass__12J3DFrameCtrlFf
/* 807BB2FC  2C 03 00 00 */	cmpwi r3, 0
/* 807BB300  40 82 00 1C */	bne lbl_807BB31C
/* 807BB304  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB308  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB30C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 807BB310  4B B6 D1 1D */	bl checkPass__12J3DFrameCtrlFf
/* 807BB314  2C 03 00 00 */	cmpwi r3, 0
/* 807BB318  41 82 02 AC */	beq lbl_807BB5C4
lbl_807BB31C:
/* 807BB31C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070261@ha */
/* 807BB320  38 03 02 61 */	addi r0, r3, 0x0261 /* 0x00070261@l */
/* 807BB324  90 01 00 44 */	stw r0, 0x44(r1)
/* 807BB328  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807BB32C  38 81 00 44 */	addi r4, r1, 0x44
/* 807BB330  38 A0 00 00 */	li r5, 0
/* 807BB334  38 C0 FF FF */	li r6, -1
/* 807BB338  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807BB33C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BB340  7D 89 03 A6 */	mtctr r12
/* 807BB344  4E 80 04 21 */	bctrl 
/* 807BB348  48 00 02 7C */	b lbl_807BB5C4
lbl_807BB34C:
/* 807BB34C  2C 00 00 04 */	cmpwi r0, 4
/* 807BB350  40 82 00 94 */	bne lbl_807BB3E4
/* 807BB354  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB358  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB35C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807BB360  4B B6 D0 CD */	bl checkPass__12J3DFrameCtrlFf
/* 807BB364  2C 03 00 00 */	cmpwi r3, 0
/* 807BB368  41 82 00 34 */	beq lbl_807BB39C
/* 807BB36C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070262@ha */
/* 807BB370  38 03 02 62 */	addi r0, r3, 0x0262 /* 0x00070262@l */
/* 807BB374  90 01 00 40 */	stw r0, 0x40(r1)
/* 807BB378  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807BB37C  38 81 00 40 */	addi r4, r1, 0x40
/* 807BB380  38 A0 00 00 */	li r5, 0
/* 807BB384  38 C0 FF FF */	li r6, -1
/* 807BB388  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807BB38C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BB390  7D 89 03 A6 */	mtctr r12
/* 807BB394  4E 80 04 21 */	bctrl 
/* 807BB398  48 00 02 2C */	b lbl_807BB5C4
lbl_807BB39C:
/* 807BB39C  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB3A0  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB3A4  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 807BB3A8  4B B6 D0 85 */	bl checkPass__12J3DFrameCtrlFf
/* 807BB3AC  2C 03 00 00 */	cmpwi r3, 0
/* 807BB3B0  41 82 02 14 */	beq lbl_807BB5C4
/* 807BB3B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070263@ha */
/* 807BB3B8  38 03 02 63 */	addi r0, r3, 0x0263 /* 0x00070263@l */
/* 807BB3BC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 807BB3C0  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807BB3C4  38 81 00 3C */	addi r4, r1, 0x3c
/* 807BB3C8  38 A0 00 00 */	li r5, 0
/* 807BB3CC  38 C0 FF FF */	li r6, -1
/* 807BB3D0  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807BB3D4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BB3D8  7D 89 03 A6 */	mtctr r12
/* 807BB3DC  4E 80 04 21 */	bctrl 
/* 807BB3E0  48 00 01 E4 */	b lbl_807BB5C4
lbl_807BB3E4:
/* 807BB3E4  2C 00 00 07 */	cmpwi r0, 7
/* 807BB3E8  40 82 00 4C */	bne lbl_807BB434
/* 807BB3EC  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB3F0  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB3F4  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 807BB3F8  4B B6 D0 35 */	bl checkPass__12J3DFrameCtrlFf
/* 807BB3FC  2C 03 00 00 */	cmpwi r3, 0
/* 807BB400  41 82 01 C4 */	beq lbl_807BB5C4
/* 807BB404  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070264@ha */
/* 807BB408  38 03 02 64 */	addi r0, r3, 0x0264 /* 0x00070264@l */
/* 807BB40C  90 01 00 38 */	stw r0, 0x38(r1)
/* 807BB410  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807BB414  38 81 00 38 */	addi r4, r1, 0x38
/* 807BB418  38 A0 00 00 */	li r5, 0
/* 807BB41C  38 C0 FF FF */	li r6, -1
/* 807BB420  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807BB424  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BB428  7D 89 03 A6 */	mtctr r12
/* 807BB42C  4E 80 04 21 */	bctrl 
/* 807BB430  48 00 01 94 */	b lbl_807BB5C4
lbl_807BB434:
/* 807BB434  2C 00 00 05 */	cmpwi r0, 5
/* 807BB438  40 82 00 94 */	bne lbl_807BB4CC
/* 807BB43C  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB440  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB444  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807BB448  4B B6 CF E5 */	bl checkPass__12J3DFrameCtrlFf
/* 807BB44C  2C 03 00 00 */	cmpwi r3, 0
/* 807BB450  41 82 00 34 */	beq lbl_807BB484
/* 807BB454  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070265@ha */
/* 807BB458  38 03 02 65 */	addi r0, r3, 0x0265 /* 0x00070265@l */
/* 807BB45C  90 01 00 34 */	stw r0, 0x34(r1)
/* 807BB460  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807BB464  38 81 00 34 */	addi r4, r1, 0x34
/* 807BB468  38 A0 00 00 */	li r5, 0
/* 807BB46C  38 C0 FF FF */	li r6, -1
/* 807BB470  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807BB474  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BB478  7D 89 03 A6 */	mtctr r12
/* 807BB47C  4E 80 04 21 */	bctrl 
/* 807BB480  48 00 01 44 */	b lbl_807BB5C4
lbl_807BB484:
/* 807BB484  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB488  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB48C  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 807BB490  4B B6 CF 9D */	bl checkPass__12J3DFrameCtrlFf
/* 807BB494  2C 03 00 00 */	cmpwi r3, 0
/* 807BB498  41 82 01 2C */	beq lbl_807BB5C4
/* 807BB49C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070266@ha */
/* 807BB4A0  38 03 02 66 */	addi r0, r3, 0x0266 /* 0x00070266@l */
/* 807BB4A4  90 01 00 30 */	stw r0, 0x30(r1)
/* 807BB4A8  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807BB4AC  38 81 00 30 */	addi r4, r1, 0x30
/* 807BB4B0  38 A0 00 00 */	li r5, 0
/* 807BB4B4  38 C0 FF FF */	li r6, -1
/* 807BB4B8  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807BB4BC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807BB4C0  7D 89 03 A6 */	mtctr r12
/* 807BB4C4  4E 80 04 21 */	bctrl 
/* 807BB4C8  48 00 00 FC */	b lbl_807BB5C4
lbl_807BB4CC:
/* 807BB4CC  2C 00 00 06 */	cmpwi r0, 6
/* 807BB4D0  40 82 00 48 */	bne lbl_807BB518
/* 807BB4D4  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB4D8  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB4DC  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807BB4E0  4B B6 CF 4D */	bl checkPass__12J3DFrameCtrlFf
/* 807BB4E4  2C 03 00 00 */	cmpwi r3, 0
/* 807BB4E8  41 82 00 DC */	beq lbl_807BB5C4
/* 807BB4EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070267@ha */
/* 807BB4F0  38 03 02 67 */	addi r0, r3, 0x0267 /* 0x00070267@l */
/* 807BB4F4  90 01 00 2C */	stw r0, 0x2c(r1)
/* 807BB4F8  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807BB4FC  38 81 00 2C */	addi r4, r1, 0x2c
/* 807BB500  38 A0 FF FF */	li r5, -1
/* 807BB504  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807BB508  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BB50C  7D 89 03 A6 */	mtctr r12
/* 807BB510  4E 80 04 21 */	bctrl 
/* 807BB514  48 00 00 B0 */	b lbl_807BB5C4
lbl_807BB518:
/* 807BB518  2C 00 00 0A */	cmpwi r0, 0xa
/* 807BB51C  40 82 00 48 */	bne lbl_807BB564
/* 807BB520  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB524  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB528  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807BB52C  4B B6 CF 01 */	bl checkPass__12J3DFrameCtrlFf
/* 807BB530  2C 03 00 00 */	cmpwi r3, 0
/* 807BB534  41 82 00 90 */	beq lbl_807BB5C4
/* 807BB538  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007026A@ha */
/* 807BB53C  38 03 02 6A */	addi r0, r3, 0x026A /* 0x0007026A@l */
/* 807BB540  90 01 00 28 */	stw r0, 0x28(r1)
/* 807BB544  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807BB548  38 81 00 28 */	addi r4, r1, 0x28
/* 807BB54C  38 A0 FF FF */	li r5, -1
/* 807BB550  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807BB554  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BB558  7D 89 03 A6 */	mtctr r12
/* 807BB55C  4E 80 04 21 */	bctrl 
/* 807BB560  48 00 00 64 */	b lbl_807BB5C4
lbl_807BB564:
/* 807BB564  2C 00 00 08 */	cmpwi r0, 8
/* 807BB568  40 82 00 5C */	bne lbl_807BB5C4
/* 807BB56C  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB570  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB574  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807BB578  4B B6 CE B5 */	bl checkPass__12J3DFrameCtrlFf
/* 807BB57C  2C 03 00 00 */	cmpwi r3, 0
/* 807BB580  40 82 00 1C */	bne lbl_807BB59C
/* 807BB584  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB588  38 63 00 0C */	addi r3, r3, 0xc
/* 807BB58C  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 807BB590  4B B6 CE 9D */	bl checkPass__12J3DFrameCtrlFf
/* 807BB594  2C 03 00 00 */	cmpwi r3, 0
/* 807BB598  41 82 00 2C */	beq lbl_807BB5C4
lbl_807BB59C:
/* 807BB59C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007026B@ha */
/* 807BB5A0  38 03 02 6B */	addi r0, r3, 0x026B /* 0x0007026B@l */
/* 807BB5A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 807BB5A8  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807BB5AC  38 81 00 24 */	addi r4, r1, 0x24
/* 807BB5B0  38 A0 FF FF */	li r5, -1
/* 807BB5B4  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807BB5B8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807BB5BC  7D 89 03 A6 */	mtctr r12
/* 807BB5C0  4E 80 04 21 */	bctrl 
lbl_807BB5C4:
/* 807BB5C4  80 7C 05 B8 */	lwz r3, 0x5b8(r28)
/* 807BB5C8  4B 85 5C 25 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 807BB5CC  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807BB5D0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807BB5D4  38 63 00 90 */	addi r3, r3, 0x90
/* 807BB5D8  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807BB5DC  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807BB5E0  80 84 00 00 */	lwz r4, 0(r4)
/* 807BB5E4  4B B8 AE CD */	bl PSMTXCopy
/* 807BB5E8  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 807BB5EC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807BB5F0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807BB5F4  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807BB5F8  38 61 00 60 */	addi r3, r1, 0x60
/* 807BB5FC  38 9C 05 38 */	addi r4, r28, 0x538
/* 807BB600  4B AB 58 ED */	bl MtxPosition__FP4cXyzP4cXyz
/* 807BB604  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 807BB608  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 807BB60C  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 807BB610  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 807BB614  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 807BB618  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 807BB61C  C0 5C 05 54 */	lfs f2, 0x554(r28)
/* 807BB620  C0 3E 00 68 */	lfs f1, 0x68(r30)
/* 807BB624  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807BB628  EC 01 00 32 */	fmuls f0, f1, f0
/* 807BB62C  EC 02 00 2A */	fadds f0, f2, f0
/* 807BB630  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 807BB634  88 1C 06 95 */	lbz r0, 0x695(r28)
/* 807BB638  7C 00 07 75 */	extsb. r0, r0
/* 807BB63C  41 82 00 F4 */	beq lbl_807BB730
/* 807BB640  80 1C 06 98 */	lwz r0, 0x698(r28)
/* 807BB644  90 01 00 20 */	stw r0, 0x20(r1)
/* 807BB648  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 807BB64C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 807BB650  38 81 00 20 */	addi r4, r1, 0x20
/* 807BB654  4B 85 E1 A5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 807BB658  28 03 00 00 */	cmplwi r3, 0
/* 807BB65C  41 82 00 24 */	beq lbl_807BB680
/* 807BB660  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 807BB664  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 807BB668  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 807BB66C  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 807BB670  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 807BB674  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 807BB678  38 00 00 00 */	li r0, 0
/* 807BB67C  98 03 08 C8 */	stb r0, 0x8c8(r3)
lbl_807BB680:
/* 807BB680  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 807BB684  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807BB688  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807BB68C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 807BB690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BB694  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BB698  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 807BB69C  38 80 00 00 */	li r4, 0
/* 807BB6A0  90 81 00 08 */	stw r4, 8(r1)
/* 807BB6A4  38 00 FF FF */	li r0, -1
/* 807BB6A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 807BB6AC  90 81 00 10 */	stw r4, 0x10(r1)
/* 807BB6B0  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BB6B4  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BB6B8  38 80 00 00 */	li r4, 0
/* 807BB6BC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008198@ha */
/* 807BB6C0  38 A5 81 98 */	addi r5, r5, 0x8198 /* 0x00008198@l */
/* 807BB6C4  38 DC 05 38 */	addi r6, r28, 0x538
/* 807BB6C8  38 E0 00 00 */	li r7, 0
/* 807BB6CC  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 807BB6D0  39 21 00 48 */	addi r9, r1, 0x48
/* 807BB6D4  39 40 00 FF */	li r10, 0xff
/* 807BB6D8  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807BB6DC  4B 89 13 B5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BB6E0  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 807BB6E4  38 80 00 00 */	li r4, 0
/* 807BB6E8  90 81 00 08 */	stw r4, 8(r1)
/* 807BB6EC  38 00 FF FF */	li r0, -1
/* 807BB6F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 807BB6F4  90 81 00 10 */	stw r4, 0x10(r1)
/* 807BB6F8  90 81 00 14 */	stw r4, 0x14(r1)
/* 807BB6FC  90 81 00 18 */	stw r4, 0x18(r1)
/* 807BB700  38 80 00 00 */	li r4, 0
/* 807BB704  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008199@ha */
/* 807BB708  38 A5 81 99 */	addi r5, r5, 0x8199 /* 0x00008199@l */
/* 807BB70C  38 DC 05 38 */	addi r6, r28, 0x538
/* 807BB710  38 E0 00 00 */	li r7, 0
/* 807BB714  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 807BB718  39 21 00 48 */	addi r9, r1, 0x48
/* 807BB71C  39 40 00 FF */	li r10, 0xff
/* 807BB720  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 807BB724  4B 89 13 6D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 807BB728  38 00 00 00 */	li r0, 0
/* 807BB72C  98 1C 06 95 */	stb r0, 0x695(r28)
lbl_807BB730:
/* 807BB730  88 1C 06 94 */	lbz r0, 0x694(r28)
/* 807BB734  7C 00 07 75 */	extsb. r0, r0
/* 807BB738  41 82 00 1C */	beq lbl_807BB754
/* 807BB73C  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 807BB740  54 00 00 3E */	slwi r0, r0, 0
/* 807BB744  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 807BB748  38 00 00 00 */	li r0, 0
/* 807BB74C  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 807BB750  48 00 00 0C */	b lbl_807BB75C
lbl_807BB754:
/* 807BB754  38 00 00 04 */	li r0, 4
/* 807BB758  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_807BB75C:
/* 807BB75C  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807BB760  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807BB764  38 63 00 60 */	addi r3, r3, 0x60
/* 807BB768  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807BB76C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807BB770  80 84 00 00 */	lwz r4, 0(r4)
/* 807BB774  4B B8 AD 3D */	bl PSMTXCopy
/* 807BB778  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 807BB77C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 807BB780  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 807BB784  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 807BB788  38 61 00 60 */	addi r3, r1, 0x60
/* 807BB78C  38 81 00 54 */	addi r4, r1, 0x54
/* 807BB790  4B AB 57 5D */	bl MtxPosition__FP4cXyzP4cXyz
/* 807BB794  38 7C 0A 14 */	addi r3, r28, 0xa14
/* 807BB798  38 81 00 54 */	addi r4, r1, 0x54
/* 807BB79C  4B AB 3E AD */	bl SetC__8cM3dGSphFRC4cXyz
/* 807BB7A0  38 7C 0A 14 */	addi r3, r28, 0xa14
/* 807BB7A4  C0 3E 00 48 */	lfs f1, 0x48(r30)
/* 807BB7A8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 807BB7AC  EC 21 00 32 */	fmuls f1, f1, f0
/* 807BB7B0  4B AB 3F 59 */	bl SetR__8cM3dGSphFf
/* 807BB7B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807BB7B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807BB7BC  38 63 23 3C */	addi r3, r3, 0x233c
/* 807BB7C0  38 9C 08 F0 */	addi r4, r28, 0x8f0
/* 807BB7C4  4B AA 93 E5 */	bl Set__4cCcSFP8cCcD_Obj
/* 807BB7C8  38 60 00 01 */	li r3, 1
/* 807BB7CC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 807BB7D0  4B BA 6A 51 */	bl _restgpr_27
/* 807BB7D4  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 807BB7D8  7C 08 03 A6 */	mtlr r0
/* 807BB7DC  38 21 00 E0 */	addi r1, r1, 0xe0
/* 807BB7E0  4E 80 00 20 */	blr 
