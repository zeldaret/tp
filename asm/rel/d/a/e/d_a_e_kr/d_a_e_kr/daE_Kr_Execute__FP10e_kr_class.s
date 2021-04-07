lbl_80704208:
/* 80704208  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8070420C  7C 08 02 A6 */	mflr r0
/* 80704210  90 01 00 94 */	stw r0, 0x94(r1)
/* 80704214  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80704218  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8070421C  39 61 00 80 */	addi r11, r1, 0x80
/* 80704220  4B C5 DF B9 */	bl _savegpr_28
/* 80704224  7C 7C 1B 78 */	mr r28, r3
/* 80704228  3C 60 80 70 */	lis r3, lit_3903@ha /* 0x80705AF8@ha */
/* 8070422C  3B E3 5A F8 */	addi r31, r3, lit_3903@l /* 0x80705AF8@l */
/* 80704230  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80704234  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80704238  83 C3 5D AC */	lwz r30, 0x5dac(r3)
/* 8070423C  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 80704240  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80704244  EC 21 00 28 */	fsubs f1, f1, f0
/* 80704248  C0 5E 05 3C */	lfs f2, 0x53c(r30)
/* 8070424C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80704250  EF E2 00 28 */	fsubs f31, f2, f0
/* 80704254  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80704258  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8070425C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80704260  EC 61 00 72 */	fmuls f3, f1, f1
/* 80704264  EC 02 00 B2 */	fmuls f0, f2, f2
/* 80704268  EC 63 00 2A */	fadds f3, f3, f0
/* 8070426C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80704270  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80704274  40 81 00 0C */	ble lbl_80704280
/* 80704278  FC 00 18 34 */	frsqrte f0, f3
/* 8070427C  EC 60 00 F2 */	fmuls f3, f0, f3
lbl_80704280:
/* 80704280  D0 7C 06 C4 */	stfs f3, 0x6c4(r28)
/* 80704284  4B B6 33 F1 */	bl cM_atan2s__Fff
/* 80704288  B0 7C 06 C0 */	sth r3, 0x6c0(r28)
/* 8070428C  FC 20 F8 90 */	fmr f1, f31
/* 80704290  C0 5C 06 C4 */	lfs f2, 0x6c4(r28)
/* 80704294  4B B6 33 E1 */	bl cM_atan2s__Fff
/* 80704298  7C 03 00 D0 */	neg r0, r3
/* 8070429C  B0 1C 06 C2 */	sth r0, 0x6c2(r28)
/* 807042A0  A8 7C 06 D6 */	lha r3, 0x6d6(r28)
/* 807042A4  38 03 00 01 */	addi r0, r3, 1
/* 807042A8  B0 1C 06 D6 */	sth r0, 0x6d6(r28)
/* 807042AC  38 60 00 00 */	li r3, 0
/* 807042B0  38 00 00 06 */	li r0, 6
/* 807042B4  7C 09 03 A6 */	mtctr r0
lbl_807042B8:
/* 807042B8  38 A3 06 9C */	addi r5, r3, 0x69c
/* 807042BC  7C 9C 2A AE */	lhax r4, r28, r5
/* 807042C0  2C 04 00 00 */	cmpwi r4, 0
/* 807042C4  41 82 00 0C */	beq lbl_807042D0
/* 807042C8  38 04 FF FF */	addi r0, r4, -1
/* 807042CC  7C 1C 2B 2E */	sthx r0, r28, r5
lbl_807042D0:
/* 807042D0  38 63 00 02 */	addi r3, r3, 2
/* 807042D4  42 00 FF E4 */	bdnz lbl_807042B8
/* 807042D8  A8 7C 06 AA */	lha r3, 0x6aa(r28)
/* 807042DC  2C 03 00 00 */	cmpwi r3, 0
/* 807042E0  41 82 00 0C */	beq lbl_807042EC
/* 807042E4  38 03 FF FF */	addi r0, r3, -1
/* 807042E8  B0 1C 06 AA */	sth r0, 0x6aa(r28)
lbl_807042EC:
/* 807042EC  A8 7C 06 C8 */	lha r3, 0x6c8(r28)
/* 807042F0  2C 03 00 00 */	cmpwi r3, 0
/* 807042F4  41 82 00 0C */	beq lbl_80704300
/* 807042F8  38 03 FF FF */	addi r0, r3, -1
/* 807042FC  B0 1C 06 C8 */	sth r0, 0x6c8(r28)
lbl_80704300:
/* 80704300  7F 83 E3 78 */	mr r3, r28
/* 80704304  4B FF FD AD */	bl action__FP10e_kr_class
/* 80704308  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8070430C  7C 03 07 74 */	extsb r3, r0
/* 80704310  4B 92 8D 5D */	bl dComIfGp_getReverb__Fi
/* 80704314  7C 65 1B 78 */	mr r5, r3
/* 80704318  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8070431C  38 80 00 00 */	li r4, 0
/* 80704320  4B 90 CD 91 */	bl play__16mDoExt_McaMorfSOFUlSc
/* 80704324  80 1C 05 B8 */	lwz r0, 0x5b8(r28)
/* 80704328  2C 00 00 0D */	cmpwi r0, 0xd
/* 8070432C  40 82 00 34 */	bne lbl_80704360
/* 80704330  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007002F@ha */
/* 80704334  38 03 00 2F */	addi r0, r3, 0x002F /* 0x0007002F@l */
/* 80704338  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8070433C  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 80704340  38 81 00 1C */	addi r4, r1, 0x1c
/* 80704344  38 A0 00 00 */	li r5, 0
/* 80704348  38 C0 FF FF */	li r6, -1
/* 8070434C  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 80704350  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80704354  7D 89 03 A6 */	mtctr r12
/* 80704358  4E 80 04 21 */	bctrl 
/* 8070435C  48 00 00 FC */	b lbl_80704458
lbl_80704360:
/* 80704360  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80704364  38 63 00 0C */	addi r3, r3, 0xc
/* 80704368  C0 3F 01 20 */	lfs f1, 0x120(r31)
/* 8070436C  4B C2 40 C1 */	bl checkPass__12J3DFrameCtrlFf
/* 80704370  2C 03 00 00 */	cmpwi r3, 0
/* 80704374  41 82 00 40 */	beq lbl_807043B4
/* 80704378  80 1C 05 B8 */	lwz r0, 0x5b8(r28)
/* 8070437C  2C 00 00 08 */	cmpwi r0, 8
/* 80704380  40 82 00 34 */	bne lbl_807043B4
/* 80704384  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070027@ha */
/* 80704388  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00070027@l */
/* 8070438C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80704390  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 80704394  38 81 00 18 */	addi r4, r1, 0x18
/* 80704398  38 A0 00 00 */	li r5, 0
/* 8070439C  38 C0 FF FF */	li r6, -1
/* 807043A0  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807043A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807043A8  7D 89 03 A6 */	mtctr r12
/* 807043AC  4E 80 04 21 */	bctrl 
/* 807043B0  48 00 00 A8 */	b lbl_80704458
lbl_807043B4:
/* 807043B4  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 807043B8  38 63 00 0C */	addi r3, r3, 0xc
/* 807043BC  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 807043C0  4B C2 40 6D */	bl checkPass__12J3DFrameCtrlFf
/* 807043C4  2C 03 00 00 */	cmpwi r3, 0
/* 807043C8  41 82 00 40 */	beq lbl_80704408
/* 807043CC  80 1C 05 B8 */	lwz r0, 0x5b8(r28)
/* 807043D0  2C 00 00 0F */	cmpwi r0, 0xf
/* 807043D4  40 82 00 34 */	bne lbl_80704408
/* 807043D8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070027@ha */
/* 807043DC  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00070027@l */
/* 807043E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 807043E4  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 807043E8  38 81 00 14 */	addi r4, r1, 0x14
/* 807043EC  38 A0 00 00 */	li r5, 0
/* 807043F0  38 C0 FF FF */	li r6, -1
/* 807043F4  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807043F8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807043FC  7D 89 03 A6 */	mtctr r12
/* 80704400  4E 80 04 21 */	bctrl 
/* 80704404  48 00 00 54 */	b lbl_80704458
lbl_80704408:
/* 80704408  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8070440C  38 63 00 0C */	addi r3, r3, 0xc
/* 80704410  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80704414  4B C2 40 19 */	bl checkPass__12J3DFrameCtrlFf
/* 80704418  2C 03 00 00 */	cmpwi r3, 0
/* 8070441C  41 82 00 3C */	beq lbl_80704458
/* 80704420  80 1C 05 B8 */	lwz r0, 0x5b8(r28)
/* 80704424  2C 00 00 11 */	cmpwi r0, 0x11
/* 80704428  40 82 00 30 */	bne lbl_80704458
/* 8070442C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070027@ha */
/* 80704430  38 03 00 27 */	addi r0, r3, 0x0027 /* 0x00070027@l */
/* 80704434  90 01 00 10 */	stw r0, 0x10(r1)
/* 80704438  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 8070443C  38 81 00 10 */	addi r4, r1, 0x10
/* 80704440  38 A0 00 00 */	li r5, 0
/* 80704444  38 C0 FF FF */	li r6, -1
/* 80704448  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 8070444C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80704450  7D 89 03 A6 */	mtctr r12
/* 80704454  4E 80 04 21 */	bctrl 
lbl_80704458:
/* 80704458  38 61 00 20 */	addi r3, r1, 0x20
/* 8070445C  38 9C 04 DC */	addi r4, r28, 0x4dc
/* 80704460  38 BC 06 EA */	addi r5, r28, 0x6ea
/* 80704464  4B B6 2F A1 */	bl __pl__5csXyzFR5csXyz
/* 80704468  A8 01 00 20 */	lha r0, 0x20(r1)
/* 8070446C  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80704470  A8 01 00 22 */	lha r0, 0x22(r1)
/* 80704474  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80704478  A8 01 00 24 */	lha r0, 0x24(r1)
/* 8070447C  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 80704480  7F 83 E3 78 */	mr r3, r28
/* 80704484  4B FF F8 F1 */	bl ground_angle_set__FP10e_kr_class
/* 80704488  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 8070448C  C0 5C 04 D4 */	lfs f2, 0x4d4(r28)
/* 80704490  C0 7C 04 D8 */	lfs f3, 0x4d8(r28)
/* 80704494  38 60 00 00 */	li r3, 0
/* 80704498  4B B6 C9 C5 */	bl MtxTrans__FfffUc
/* 8070449C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807044A0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807044A4  80 63 00 00 */	lwz r3, 0(r3)
/* 807044A8  A8 9C 06 F0 */	lha r4, 0x6f0(r28)
/* 807044AC  4B 90 7E F1 */	bl mDoMtx_XrotM__FPA4_fs
/* 807044B0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807044B4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807044B8  80 63 00 00 */	lwz r3, 0(r3)
/* 807044BC  A8 9C 06 F4 */	lha r4, 0x6f4(r28)
/* 807044C0  4B 90 80 0D */	bl mDoMtx_ZrotM__FPA4_fs
/* 807044C4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807044C8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807044CC  80 63 00 00 */	lwz r3, 0(r3)
/* 807044D0  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 807044D4  4B 90 7F 61 */	bl mDoMtx_YrotM__FPA4_fs
/* 807044D8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807044DC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807044E0  80 63 00 00 */	lwz r3, 0(r3)
/* 807044E4  A8 9C 04 E4 */	lha r4, 0x4e4(r28)
/* 807044E8  4B 90 7E B5 */	bl mDoMtx_XrotM__FPA4_fs
/* 807044EC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807044F0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807044F4  80 63 00 00 */	lwz r3, 0(r3)
/* 807044F8  A8 9C 04 E8 */	lha r4, 0x4e8(r28)
/* 807044FC  4B 90 7F D1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80704500  3C 60 80 70 */	lis r3, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 80704504  38 63 5F F4 */	addi r3, r3, l_e_krHIO@l /* 0x80705FF4@l */
/* 80704508  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 8070450C  FC 40 08 90 */	fmr f2, f1
/* 80704510  FC 60 08 90 */	fmr f3, f1
/* 80704514  38 60 00 01 */	li r3, 1
/* 80704518  4B B6 C9 8D */	bl MtxScale__FfffUc
/* 8070451C  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80704520  83 A3 00 04 */	lwz r29, 4(r3)
/* 80704524  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 80704528  D0 1D 00 18 */	stfs f0, 0x18(r29)
/* 8070452C  C0 1C 04 F0 */	lfs f0, 0x4f0(r28)
/* 80704530  D0 1D 00 1C */	stfs f0, 0x1c(r29)
/* 80704534  C0 1C 04 F4 */	lfs f0, 0x4f4(r28)
/* 80704538  D0 1D 00 20 */	stfs f0, 0x20(r29)
/* 8070453C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80704540  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80704544  80 63 00 00 */	lwz r3, 0(r3)
/* 80704548  38 9D 00 24 */	addi r4, r29, 0x24
/* 8070454C  4B C4 1F 65 */	bl PSMTXCopy
/* 80704550  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 80704554  4B 90 CC 99 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80704558  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 8070455C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80704560  38 63 01 20 */	addi r3, r3, 0x120
/* 80704564  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80704568  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 8070456C  80 84 00 00 */	lwz r4, 0(r4)
/* 80704570  4B C4 1F 41 */	bl PSMTXCopy
/* 80704574  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80704578  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8070457C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80704580  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80704584  38 61 00 58 */	addi r3, r1, 0x58
/* 80704588  38 9C 05 38 */	addi r4, r28, 0x538
/* 8070458C  4B B6 C9 61 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80704590  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 80704594  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 80704598  C0 1C 05 3C */	lfs f0, 0x53c(r28)
/* 8070459C  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 807045A0  C0 1C 05 40 */	lfs f0, 0x540(r28)
/* 807045A4  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 807045A8  C0 3C 05 54 */	lfs f1, 0x554(r28)
/* 807045AC  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 807045B0  EC 01 00 2A */	fadds f0, f1, f0
/* 807045B4  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 807045B8  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807045BC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807045C0  38 63 04 20 */	addi r3, r3, 0x420
/* 807045C4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807045C8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807045CC  80 84 00 00 */	lwz r4, 0(r4)
/* 807045D0  4B C4 1E E1 */	bl PSMTXCopy
/* 807045D4  38 61 00 58 */	addi r3, r1, 0x58
/* 807045D8  38 9C 0E 64 */	addi r4, r28, 0xe64
/* 807045DC  4B B6 C9 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807045E0  80 7D 00 84 */	lwz r3, 0x84(r29)
/* 807045E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807045E8  38 63 05 10 */	addi r3, r3, 0x510
/* 807045EC  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807045F0  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807045F4  80 84 00 00 */	lwz r4, 0(r4)
/* 807045F8  4B C4 1E B9 */	bl PSMTXCopy
/* 807045FC  38 61 00 58 */	addi r3, r1, 0x58
/* 80704600  38 9C 0E 70 */	addi r4, r28, 0xe70
/* 80704604  4B B6 C8 E9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80704608  88 1C 06 6B */	lbz r0, 0x66b(r28)
/* 8070460C  28 00 00 00 */	cmplwi r0, 0
/* 80704610  41 82 00 B0 */	beq lbl_807046C0
/* 80704614  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 80704618  90 01 00 08 */	stw r0, 8(r1)
/* 8070461C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 80704620  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 80704624  38 81 00 08 */	addi r4, r1, 8
/* 80704628  4B 91 51 D1 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8070462C  7C 7D 1B 79 */	or. r29, r3, r3
/* 80704630  41 82 00 90 */	beq lbl_807046C0
/* 80704634  88 1C 06 6B */	lbz r0, 0x66b(r28)
/* 80704638  28 00 00 00 */	cmplwi r0, 0
/* 8070463C  41 82 00 84 */	beq lbl_807046C0
/* 80704640  38 61 00 40 */	addi r3, r1, 0x40
/* 80704644  38 9C 0E 70 */	addi r4, r28, 0xe70
/* 80704648  38 BC 0E 64 */	addi r5, r28, 0xe64
/* 8070464C  4B B6 24 E9 */	bl __mi__4cXyzCFRC3Vec
/* 80704650  38 61 00 34 */	addi r3, r1, 0x34
/* 80704654  38 81 00 40 */	addi r4, r1, 0x40
/* 80704658  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8070465C  4B B6 25 BD */	bl __dv__4cXyzCFf
/* 80704660  38 61 00 28 */	addi r3, r1, 0x28
/* 80704664  38 9C 0E 64 */	addi r4, r28, 0xe64
/* 80704668  38 A1 00 34 */	addi r5, r1, 0x34
/* 8070466C  4B B6 24 79 */	bl __pl__4cXyzCFRC3Vec
/* 80704670  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80704674  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80704678  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8070467C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80704680  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80704684  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80704688  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8070468C  3C 60 80 70 */	lis r3, l_e_krHIO@ha /* 0x80705FF4@ha */
/* 80704690  38 63 5F F4 */	addi r3, r3, l_e_krHIO@l /* 0x80705FF4@l */
/* 80704694  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 80704698  EC 01 00 2A */	fadds f0, f1, f0
/* 8070469C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 807046A0  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 807046A4  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 807046A8  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 807046AC  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 807046B0  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 807046B4  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 807046B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807046BC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_807046C0:
/* 807046C0  A8 1C 06 C8 */	lha r0, 0x6c8(r28)
/* 807046C4  2C 00 00 00 */	cmpwi r0, 0
/* 807046C8  41 82 00 48 */	beq lbl_80704710
/* 807046CC  C0 1C 05 38 */	lfs f0, 0x538(r28)
/* 807046D0  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 807046D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 807046D8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807046DC  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 807046E0  C0 1F 01 2C */	lfs f0, 0x12c(r31)
/* 807046E4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 807046E8  38 7C 0B BC */	addi r3, r28, 0xbbc
/* 807046EC  38 81 00 4C */	addi r4, r1, 0x4c
/* 807046F0  4B B6 AF 59 */	bl SetC__8cM3dGSphFRC4cXyz
/* 807046F4  38 7C 0C F4 */	addi r3, r28, 0xcf4
/* 807046F8  38 81 00 4C */	addi r4, r1, 0x4c
/* 807046FC  4B B6 AF 4D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80704700  38 7C 0E 2C */	addi r3, r28, 0xe2c
/* 80704704  38 81 00 4C */	addi r4, r1, 0x4c
/* 80704708  4B B6 AF 41 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8070470C  48 00 00 28 */	b lbl_80704734
lbl_80704710:
/* 80704710  38 7C 0B BC */	addi r3, r28, 0xbbc
/* 80704714  38 9C 05 38 */	addi r4, r28, 0x538
/* 80704718  4B B6 AF 31 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8070471C  38 7C 0C F4 */	addi r3, r28, 0xcf4
/* 80704720  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80704724  4B B6 AF 25 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80704728  38 7C 0E 2C */	addi r3, r28, 0xe2c
/* 8070472C  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80704730  4B B6 AF 19 */	bl SetC__8cM3dGSphFRC4cXyz
lbl_80704734:
/* 80704734  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80704738  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8070473C  3B A3 23 3C */	addi r29, r3, 0x233c
/* 80704740  7F A3 EB 78 */	mr r3, r29
/* 80704744  38 9C 0A 98 */	addi r4, r28, 0xa98
/* 80704748  4B B6 04 61 */	bl Set__4cCcSFP8cCcD_Obj
/* 8070474C  7F A3 EB 78 */	mr r3, r29
/* 80704750  38 9C 0B D0 */	addi r4, r28, 0xbd0
/* 80704754  4B B6 04 55 */	bl Set__4cCcSFP8cCcD_Obj
/* 80704758  7F A3 EB 78 */	mr r3, r29
/* 8070475C  38 9C 0D 08 */	addi r4, r28, 0xd08
/* 80704760  4B B6 04 49 */	bl Set__4cCcSFP8cCcD_Obj
/* 80704764  34 7C 09 24 */	addic. r3, r28, 0x924
/* 80704768  41 82 00 44 */	beq lbl_807047AC
/* 8070476C  C0 3C 04 D0 */	lfs f1, 0x4d0(r28)
/* 80704770  C0 03 00 00 */	lfs f0, 0(r3)
/* 80704774  C0 5F 01 30 */	lfs f2, 0x130(r31)
/* 80704778  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8070477C  EC 01 00 2A */	fadds f0, f1, f0
/* 80704780  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80704784  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80704788  C0 03 00 04 */	lfs f0, 4(r3)
/* 8070478C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80704790  EC 01 00 2A */	fadds f0, f1, f0
/* 80704794  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80704798  C0 3C 04 D8 */	lfs f1, 0x4d8(r28)
/* 8070479C  C0 03 00 08 */	lfs f0, 8(r3)
/* 807047A0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 807047A4  EC 01 00 2A */	fadds f0, f1, f0
/* 807047A8  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_807047AC:
/* 807047AC  88 1C 09 1C */	lbz r0, 0x91c(r28)
/* 807047B0  28 00 00 00 */	cmplwi r0, 0
/* 807047B4  40 82 00 7C */	bne lbl_80704830
/* 807047B8  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 807047BC  A8 1C 06 68 */	lha r0, 0x668(r28)
/* 807047C0  2C 00 00 09 */	cmpwi r0, 9
/* 807047C4  40 82 00 08 */	bne lbl_807047CC
/* 807047C8  C0 3F 00 4C */	lfs f1, 0x4c(r31)
lbl_807047CC:
/* 807047CC  38 7C 09 20 */	addi r3, r28, 0x920
/* 807047D0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807047D4  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 807047D8  4B B6 B2 65 */	bl cLib_addCalc2__FPffff
/* 807047DC  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 807047E0  C0 1C 09 20 */	lfs f0, 0x920(r28)
/* 807047E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807047E8  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 807047EC  C0 3C 04 C0 */	lfs f1, 0x4c0(r28)
/* 807047F0  C0 1C 09 20 */	lfs f0, 0x920(r28)
/* 807047F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807047F8  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 807047FC  38 7C 07 44 */	addi r3, r28, 0x744
/* 80704800  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80704804  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80704808  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8070480C  4B 97 22 A1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80704810  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80704814  C0 1C 09 20 */	lfs f0, 0x920(r28)
/* 80704818  EC 01 00 2A */	fadds f0, f1, f0
/* 8070481C  D0 1C 04 D4 */	stfs f0, 0x4d4(r28)
/* 80704820  C0 3C 04 C0 */	lfs f1, 0x4c0(r28)
/* 80704824  C0 1C 09 20 */	lfs f0, 0x920(r28)
/* 80704828  EC 01 00 2A */	fadds f0, f1, f0
/* 8070482C  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
lbl_80704830:
/* 80704830  38 00 00 00 */	li r0, 0
/* 80704834  98 1C 09 1C */	stb r0, 0x91c(r28)
/* 80704838  7F 83 E3 78 */	mr r3, r28
/* 8070483C  4B FF F1 55 */	bl damage_check__FP10e_kr_class
/* 80704840  3B A0 08 00 */	li r29, 0x800
/* 80704844  88 1C 0E 8C */	lbz r0, 0xe8c(r28)
/* 80704848  28 00 00 00 */	cmplwi r0, 0
/* 8070484C  41 82 00 E4 */	beq lbl_80704930
/* 80704850  28 00 00 01 */	cmplwi r0, 1
/* 80704854  40 82 00 58 */	bne lbl_807048AC
/* 80704858  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8070485C  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80704860  EC 21 00 28 */	fsubs f1, f1, f0
/* 80704864  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 80704868  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8070486C  EC 42 00 28 */	fsubs f2, f2, f0
/* 80704870  4B B6 2E 05 */	bl cM_atan2s__Fff
/* 80704874  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80704878  7C 03 00 50 */	subf r0, r3, r0
/* 8070487C  B0 1C 0E 7E */	sth r0, 0xe7e(r28)
/* 80704880  A8 1C 0E 7E */	lha r0, 0xe7e(r28)
/* 80704884  2C 00 27 10 */	cmpwi r0, 0x2710
/* 80704888  40 81 00 10 */	ble lbl_80704898
/* 8070488C  38 00 27 10 */	li r0, 0x2710
/* 80704890  B0 1C 0E 7E */	sth r0, 0xe7e(r28)
/* 80704894  48 00 00 90 */	b lbl_80704924
lbl_80704898:
/* 80704898  2C 00 D8 F0 */	cmpwi r0, -10000
/* 8070489C  40 80 00 88 */	bge lbl_80704924
/* 807048A0  38 00 D8 F0 */	li r0, -10000
/* 807048A4  B0 1C 0E 7E */	sth r0, 0xe7e(r28)
/* 807048A8  48 00 00 7C */	b lbl_80704924
lbl_807048AC:
/* 807048AC  28 00 00 02 */	cmplwi r0, 2
/* 807048B0  40 82 00 74 */	bne lbl_80704924
/* 807048B4  3B A0 02 00 */	li r29, 0x200
/* 807048B8  A8 1C 06 D6 */	lha r0, 0x6d6(r28)
/* 807048BC  54 00 06 FF */	clrlwi. r0, r0, 0x1b
/* 807048C0  40 82 00 30 */	bne lbl_807048F0
/* 807048C4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 807048C8  4B B6 30 8D */	bl cM_rndF__Ff
/* 807048CC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 807048D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807048D4  40 80 00 1C */	bge lbl_807048F0
/* 807048D8  C0 3F 01 28 */	lfs f1, 0x128(r31)
/* 807048DC  4B B6 30 B1 */	bl cM_rndFX__Ff
/* 807048E0  FC 00 08 1E */	fctiwz f0, f1
/* 807048E4  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 807048E8  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 807048EC  B0 1C 0E 7E */	sth r0, 0xe7e(r28)
lbl_807048F0:
/* 807048F0  A8 1C 06 D6 */	lha r0, 0x6d6(r28)
/* 807048F4  54 00 06 BF */	clrlwi. r0, r0, 0x1a
/* 807048F8  40 82 00 2C */	bne lbl_80704924
/* 807048FC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80704900  4B B6 30 55 */	bl cM_rndF__Ff
/* 80704904  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80704908  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8070490C  40 80 00 18 */	bge lbl_80704924
/* 80704910  7F 83 E3 78 */	mr r3, r28
/* 80704914  38 80 00 19 */	li r4, 0x19
/* 80704918  3C A0 00 07 */	lis r5, 0x0007 /* 0x0007002B@ha */
/* 8070491C  38 A5 00 2B */	addi r5, r5, 0x002B /* 0x0007002B@l */
/* 80704920  4B FF B4 65 */	bl kuti_open__FP10e_kr_classsUl
lbl_80704924:
/* 80704924  38 00 00 00 */	li r0, 0
/* 80704928  98 1C 0E 8C */	stb r0, 0xe8c(r28)
/* 8070492C  48 00 00 0C */	b lbl_80704938
lbl_80704930:
/* 80704930  38 00 00 00 */	li r0, 0
/* 80704934  B0 1C 0E 7E */	sth r0, 0xe7e(r28)
lbl_80704938:
/* 80704938  38 7C 0E 7C */	addi r3, r28, 0xe7c
/* 8070493C  A8 1C 0E 7E */	lha r0, 0xe7e(r28)
/* 80704940  7C 00 0E 70 */	srawi r0, r0, 1
/* 80704944  7C 00 01 94 */	addze r0, r0
/* 80704948  7C 00 00 D0 */	neg r0, r0
/* 8070494C  7C 04 07 34 */	extsh r4, r0
/* 80704950  38 A0 00 02 */	li r5, 2
/* 80704954  7F A6 EB 78 */	mr r6, r29
/* 80704958  4B B6 BC B1 */	bl cLib_addCalcAngleS2__FPssss
/* 8070495C  3B A0 00 00 */	li r29, 0
/* 80704960  A8 7C 0E 82 */	lha r3, 0xe82(r28)
/* 80704964  2C 03 00 00 */	cmpwi r3, 0
/* 80704968  41 82 00 4C */	beq lbl_807049B4
/* 8070496C  38 03 FF FF */	addi r0, r3, -1
/* 80704970  B0 1C 0E 82 */	sth r0, 0xe82(r28)
/* 80704974  3B A0 27 10 */	li r29, 0x2710
/* 80704978  A8 7C 0E 82 */	lha r3, 0xe82(r28)
/* 8070497C  A8 1C 0E 84 */	lha r0, 0xe84(r28)
/* 80704980  7C 03 00 00 */	cmpw r3, r0
/* 80704984  40 82 00 30 */	bne lbl_807049B4
/* 80704988  80 1C 0E 88 */	lwz r0, 0xe88(r28)
/* 8070498C  28 00 00 00 */	cmplwi r0, 0
/* 80704990  41 82 00 24 */	beq lbl_807049B4
/* 80704994  90 01 00 0C */	stw r0, 0xc(r1)
/* 80704998  38 7C 05 C0 */	addi r3, r28, 0x5c0
/* 8070499C  38 81 00 0C */	addi r4, r1, 0xc
/* 807049A0  38 A0 FF FF */	li r5, -1
/* 807049A4  81 9C 05 C0 */	lwz r12, 0x5c0(r28)
/* 807049A8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 807049AC  7D 89 03 A6 */	mtctr r12
/* 807049B0  4E 80 04 21 */	bctrl 
lbl_807049B4:
/* 807049B4  38 7C 0E 80 */	addi r3, r28, 0xe80
/* 807049B8  7F A4 EB 78 */	mr r4, r29
/* 807049BC  38 A0 00 02 */	li r5, 2
/* 807049C0  38 C0 07 D0 */	li r6, 0x7d0
/* 807049C4  4B B6 BC 45 */	bl cLib_addCalcAngleS2__FPssss
/* 807049C8  38 60 00 00 */	li r3, 0
/* 807049CC  38 80 00 00 */	li r4, 0
/* 807049D0  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807049D4  38 C5 9A 20 */	addi r6, r5, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807049D8  38 00 00 09 */	li r0, 9
/* 807049DC  7C 09 03 A6 */	mtctr r0
lbl_807049E0:
/* 807049E0  A8 1C 06 D6 */	lha r0, 0x6d6(r28)
/* 807049E4  1C 00 1B 58 */	mulli r0, r0, 0x1b58
/* 807049E8  7C 00 22 14 */	add r0, r0, r4
/* 807049EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807049F0  7C 26 04 2E */	lfsx f1, r6, r0
/* 807049F4  C0 1C 0E A8 */	lfs f0, 0xea8(r28)
/* 807049F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 807049FC  FC 00 00 1E */	fctiwz f0, f0
/* 80704A00  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80704A04  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 80704A08  38 03 0E 8E */	addi r0, r3, 0xe8e
/* 80704A0C  7C BC 03 2E */	sthx r5, r28, r0
/* 80704A10  38 63 00 02 */	addi r3, r3, 2
/* 80704A14  38 84 2A F8 */	addi r4, r4, 0x2af8
/* 80704A18  42 00 FF C8 */	bdnz lbl_807049E0
/* 80704A1C  38 7C 0E A8 */	addi r3, r28, 0xea8
/* 80704A20  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80704A24  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80704A28  4B B6 B0 59 */	bl cLib_addCalc0__FPfff
/* 80704A2C  C0 3C 06 D0 */	lfs f1, 0x6d0(r28)
/* 80704A30  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80704A34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80704A38  40 81 00 74 */	ble lbl_80704AAC
/* 80704A3C  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80704A40  A8 1C 06 CA */	lha r0, 0x6ca(r28)
/* 80704A44  7C 03 00 50 */	subf r0, r3, r0
/* 80704A48  7C 03 07 34 */	extsh r3, r0
/* 80704A4C  A8 1C 06 EA */	lha r0, 0x6ea(r28)
/* 80704A50  2C 00 F0 00 */	cmpwi r0, -4096
/* 80704A54  41 81 00 08 */	bgt lbl_80704A5C
/* 80704A58  38 60 00 00 */	li r3, 0
lbl_80704A5C:
/* 80704A5C  7C 63 07 34 */	extsh r3, r3
/* 80704A60  20 03 40 00 */	subfic r0, r3, 0x4000
/* 80704A64  7C 04 07 34 */	extsh r4, r0
/* 80704A68  2C 04 3A 98 */	cmpwi r4, 0x3a98
/* 80704A6C  40 81 00 0C */	ble lbl_80704A78
/* 80704A70  38 80 3A 98 */	li r4, 0x3a98
/* 80704A74  48 00 00 10 */	b lbl_80704A84
lbl_80704A78:
/* 80704A78  2C 04 C5 68 */	cmpwi r4, -15000
/* 80704A7C  40 80 00 08 */	bge lbl_80704A84
/* 80704A80  38 80 C5 68 */	li r4, -15000
lbl_80704A84:
/* 80704A84  38 03 40 00 */	addi r0, r3, 0x4000
/* 80704A88  7C 1D 07 34 */	extsh r29, r0
/* 80704A8C  2C 1D 3A 98 */	cmpwi r29, 0x3a98
/* 80704A90  40 81 00 0C */	ble lbl_80704A9C
/* 80704A94  3B A0 3A 98 */	li r29, 0x3a98
/* 80704A98  48 00 00 1C */	b lbl_80704AB4
lbl_80704A9C:
/* 80704A9C  2C 1D C5 68 */	cmpwi r29, -15000
/* 80704AA0  40 80 00 14 */	bge lbl_80704AB4
/* 80704AA4  3B A0 C5 68 */	li r29, -15000
/* 80704AA8  48 00 00 0C */	b lbl_80704AB4
lbl_80704AAC:
/* 80704AAC  3B A0 00 00 */	li r29, 0
/* 80704AB0  38 80 00 00 */	li r4, 0
lbl_80704AB4:
/* 80704AB4  38 7C 0E A0 */	addi r3, r28, 0xea0
/* 80704AB8  38 A0 00 04 */	li r5, 4
/* 80704ABC  38 C0 08 00 */	li r6, 0x800
/* 80704AC0  4B B6 BB 49 */	bl cLib_addCalcAngleS2__FPssss
/* 80704AC4  38 7C 0E A2 */	addi r3, r28, 0xea2
/* 80704AC8  7F A4 EB 78 */	mr r4, r29
/* 80704ACC  38 A0 00 04 */	li r5, 4
/* 80704AD0  38 C0 08 00 */	li r6, 0x800
/* 80704AD4  4B B6 BB 35 */	bl cLib_addCalcAngleS2__FPssss
/* 80704AD8  A8 1C 06 D6 */	lha r0, 0x6d6(r28)
/* 80704ADC  1C 00 1B 58 */	mulli r0, r0, 0x1b58
/* 80704AE0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80704AE4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80704AE8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80704AEC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80704AF0  C0 1C 0E B8 */	lfs f0, 0xeb8(r28)
/* 80704AF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80704AF8  FC 00 00 1E */	fctiwz f0, f0
/* 80704AFC  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80704B00  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80704B04  B0 1C 0E AC */	sth r0, 0xeac(r28)
/* 80704B08  38 7C 0E B8 */	addi r3, r28, 0xeb8
/* 80704B0C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80704B10  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 80704B14  4B B6 AF 6D */	bl cLib_addCalc0__FPfff
/* 80704B18  88 1C 0E FC */	lbz r0, 0xefc(r28)
/* 80704B1C  7C 00 07 75 */	extsb. r0, r0
/* 80704B20  41 82 00 18 */	beq lbl_80704B38
/* 80704B24  38 7C 0E F8 */	addi r3, r28, 0xef8
/* 80704B28  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 80704B2C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80704B30  C0 7F 00 E4 */	lfs f3, 0xe4(r31)
/* 80704B34  4B B6 AF 09 */	bl cLib_addCalc2__FPffff
lbl_80704B38:
/* 80704B38  38 60 00 01 */	li r3, 1
/* 80704B3C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80704B40  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80704B44  39 61 00 80 */	addi r11, r1, 0x80
/* 80704B48  4B C5 D6 DD */	bl _restgpr_28
/* 80704B4C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80704B50  7C 08 03 A6 */	mtlr r0
/* 80704B54  38 21 00 90 */	addi r1, r1, 0x90
/* 80704B58  4E 80 00 20 */	blr 
