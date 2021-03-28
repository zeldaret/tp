lbl_80640674:
/* 80640674  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80640678  7C 08 02 A6 */	mflr r0
/* 8064067C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80640680  39 61 00 50 */	addi r11, r1, 0x50
/* 80640684  4B D2 1B 54 */	b _savegpr_28
/* 80640688  7C 7D 1B 78 */	mr r29, r3
/* 8064068C  3C 80 80 65 */	lis r4, lit_3757@ha
/* 80640690  3B E4 EB 1C */	addi r31, r4, lit_3757@l
/* 80640694  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80640698  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8064069C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806406A0  4B 9D A0 70 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806406A4  7C 7E 1B 78 */	mr r30, r3
/* 806406A8  88 1D 06 FB */	lbz r0, 0x6fb(r29)
/* 806406AC  28 00 00 03 */	cmplwi r0, 3
/* 806406B0  40 82 00 70 */	bne lbl_80640720
/* 806406B4  88 1D 07 28 */	lbz r0, 0x728(r29)
/* 806406B8  54 00 10 3A */	slwi r0, r0, 2
/* 806406BC  7C 7D 02 14 */	add r3, r29, r0
/* 806406C0  80 63 07 2C */	lwz r3, 0x72c(r3)
/* 806406C4  38 81 00 28 */	addi r4, r1, 0x28
/* 806406C8  4B 9D 92 F4 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 806406CC  80 61 00 28 */	lwz r3, 0x28(r1)
/* 806406D0  28 03 00 00 */	cmplwi r3, 0
/* 806406D4  41 82 00 4C */	beq lbl_80640720
/* 806406D8  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 806406DC  7C 1E 00 50 */	subf r0, r30, r0
/* 806406E0  7C 1C 07 34 */	extsh r28, r0
/* 806406E4  7F 83 E3 78 */	mr r3, r28
/* 806406E8  4B D2 49 E8 */	b abs
/* 806406EC  2C 03 14 00 */	cmpwi r3, 0x1400
/* 806406F0  40 81 00 30 */	ble lbl_80640720
/* 806406F4  7F 80 07 35 */	extsh. r0, r28
/* 806406F8  40 80 00 18 */	bge lbl_80640710
/* 806406FC  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80640700  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80640704  38 03 10 00 */	addi r0, r3, 0x1000
/* 80640708  7C 1E 07 34 */	extsh r30, r0
/* 8064070C  48 00 00 14 */	b lbl_80640720
lbl_80640710:
/* 80640710  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80640714  A8 63 04 E6 */	lha r3, 0x4e6(r3)
/* 80640718  38 03 F0 00 */	addi r0, r3, -4096
/* 8064071C  7C 1E 07 34 */	extsh r30, r0
lbl_80640720:
/* 80640720  80 1D 06 DC */	lwz r0, 0x6dc(r29)
/* 80640724  2C 00 00 02 */	cmpwi r0, 2
/* 80640728  41 82 00 94 */	beq lbl_806407BC
/* 8064072C  40 80 00 10 */	bge lbl_8064073C
/* 80640730  2C 00 00 00 */	cmpwi r0, 0
/* 80640734  41 82 00 18 */	beq lbl_8064074C
/* 80640738  48 00 04 98 */	b lbl_80640BD0
lbl_8064073C:
/* 8064073C  2C 00 00 04 */	cmpwi r0, 4
/* 80640740  41 82 03 E0 */	beq lbl_80640B20
/* 80640744  40 80 04 8C */	bge lbl_80640BD0
/* 80640748  48 00 01 B4 */	b lbl_806408FC
lbl_8064074C:
/* 8064074C  7F A3 EB 78 */	mr r3, r29
/* 80640750  38 80 00 01 */	li r4, 1
/* 80640754  4B FF F8 19 */	bl setTgHitBit__10daB_ZANT_cFi
/* 80640758  38 00 00 04 */	li r0, 4
/* 8064075C  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80640760  38 00 00 02 */	li r0, 2
/* 80640764  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 80640768  38 00 00 00 */	li r0, 0
/* 8064076C  98 1D 06 FD */	stb r0, 0x6fd(r29)
/* 80640770  88 1D 07 11 */	lbz r0, 0x711(r29)
/* 80640774  28 00 00 00 */	cmplwi r0, 0
/* 80640778  41 82 00 20 */	beq lbl_80640798
/* 8064077C  7F A3 EB 78 */	mr r3, r29
/* 80640780  38 80 00 24 */	li r4, 0x24
/* 80640784  38 A0 00 00 */	li r5, 0
/* 80640788  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8064078C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80640790  4B FF DE 35 */	bl setBck__10daB_ZANT_cFiUcff
/* 80640794  48 00 00 1C */	b lbl_806407B0
lbl_80640798:
/* 80640798  7F A3 EB 78 */	mr r3, r29
/* 8064079C  38 80 00 25 */	li r4, 0x25
/* 806407A0  38 A0 00 00 */	li r5, 0
/* 806407A4  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806407A8  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 806407AC  4B FF DE 19 */	bl setBck__10daB_ZANT_cFiUcff
lbl_806407B0:
/* 806407B0  38 00 00 01 */	li r0, 1
/* 806407B4  98 1D 07 17 */	stb r0, 0x717(r29)
/* 806407B8  48 00 04 18 */	b lbl_80640BD0
lbl_806407BC:
/* 806407BC  88 1D 07 11 */	lbz r0, 0x711(r29)
/* 806407C0  28 00 00 00 */	cmplwi r0, 0
/* 806407C4  41 82 00 48 */	beq lbl_8064080C
/* 806407C8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 806407CC  38 63 00 0C */	addi r3, r3, 0xc
/* 806407D0  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 806407D4  4B CE 7C 58 */	b checkPass__12J3DFrameCtrlFf
/* 806407D8  2C 03 00 00 */	cmpwi r3, 0
/* 806407DC  41 82 00 70 */	beq lbl_8064084C
/* 806407E0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070405@ha */
/* 806407E4  38 03 04 05 */	addi r0, r3, 0x0405 /* 0x00070405@l */
/* 806407E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806407EC  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 806407F0  38 81 00 24 */	addi r4, r1, 0x24
/* 806407F4  38 A0 FF FF */	li r5, -1
/* 806407F8  81 9D 05 F0 */	lwz r12, 0x5f0(r29)
/* 806407FC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80640800  7D 89 03 A6 */	mtctr r12
/* 80640804  4E 80 04 21 */	bctrl 
/* 80640808  48 00 00 44 */	b lbl_8064084C
lbl_8064080C:
/* 8064080C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80640810  38 63 00 0C */	addi r3, r3, 0xc
/* 80640814  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 80640818  4B CE 7C 14 */	b checkPass__12J3DFrameCtrlFf
/* 8064081C  2C 03 00 00 */	cmpwi r3, 0
/* 80640820  41 82 00 2C */	beq lbl_8064084C
/* 80640824  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070405@ha */
/* 80640828  38 03 04 05 */	addi r0, r3, 0x0405 /* 0x00070405@l */
/* 8064082C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80640830  38 7D 05 F0 */	addi r3, r29, 0x5f0
/* 80640834  38 81 00 20 */	addi r4, r1, 0x20
/* 80640838  38 A0 FF FF */	li r5, -1
/* 8064083C  81 9D 05 F0 */	lwz r12, 0x5f0(r29)
/* 80640840  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80640844  7D 89 03 A6 */	mtctr r12
/* 80640848  4E 80 04 21 */	bctrl 
lbl_8064084C:
/* 8064084C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80640850  7F C4 F3 78 */	mr r4, r30
/* 80640854  38 A0 00 08 */	li r5, 8
/* 80640858  38 C0 04 00 */	li r6, 0x400
/* 8064085C  38 E0 00 80 */	li r7, 0x80
/* 80640860  4B C2 FC E0 */	b cLib_addCalcAngleS__FPsssss
/* 80640864  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80640868  38 80 00 01 */	li r4, 1
/* 8064086C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80640870  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80640874  40 82 00 18 */	bne lbl_8064088C
/* 80640878  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8064087C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80640880  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80640884  41 82 00 08 */	beq lbl_8064088C
/* 80640888  38 80 00 00 */	li r4, 0
lbl_8064088C:
/* 8064088C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80640890  41 82 03 40 */	beq lbl_80640BD0
/* 80640894  3C 60 80 65 */	lis r3, l_HIO@ha
/* 80640898  38 63 F6 04 */	addi r3, r3, l_HIO@l
/* 8064089C  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 806408A0  88 1D 06 FB */	lbz r0, 0x6fb(r29)
/* 806408A4  28 00 00 03 */	cmplwi r0, 3
/* 806408A8  40 82 00 08 */	bne lbl_806408B0
/* 806408AC  C0 5F 00 0C */	lfs f2, 0xc(r31)
lbl_806408B0:
/* 806408B0  88 1D 07 11 */	lbz r0, 0x711(r29)
/* 806408B4  28 00 00 00 */	cmplwi r0, 0
/* 806408B8  41 82 00 1C */	beq lbl_806408D4
/* 806408BC  7F A3 EB 78 */	mr r3, r29
/* 806408C0  38 80 00 28 */	li r4, 0x28
/* 806408C4  38 A0 00 02 */	li r5, 2
/* 806408C8  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806408CC  4B FF DC F9 */	bl setBck__10daB_ZANT_cFiUcff
/* 806408D0  48 00 00 18 */	b lbl_806408E8
lbl_806408D4:
/* 806408D4  7F A3 EB 78 */	mr r3, r29
/* 806408D8  38 80 00 26 */	li r4, 0x26
/* 806408DC  38 A0 00 02 */	li r5, 2
/* 806408E0  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 806408E4  4B FF DC E1 */	bl setBck__10daB_ZANT_cFiUcff
lbl_806408E8:
/* 806408E8  38 00 00 03 */	li r0, 3
/* 806408EC  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 806408F0  38 00 00 00 */	li r0, 0
/* 806408F4  98 1D 06 FD */	stb r0, 0x6fd(r29)
/* 806408F8  48 00 02 D8 */	b lbl_80640BD0
lbl_806408FC:
/* 806408FC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80640900  7F C4 F3 78 */	mr r4, r30
/* 80640904  38 A0 00 08 */	li r5, 8
/* 80640908  38 C0 04 00 */	li r6, 0x400
/* 8064090C  38 E0 00 80 */	li r7, 0x80
/* 80640910  4B C2 FC 30 */	b cLib_addCalcAngleS__FPsssss
/* 80640914  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80640918  38 63 00 0C */	addi r3, r3, 0xc
/* 8064091C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80640920  4B CE 7B 0C */	b checkPass__12J3DFrameCtrlFf
/* 80640924  2C 03 00 00 */	cmpwi r3, 0
/* 80640928  40 82 00 1C */	bne lbl_80640944
/* 8064092C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80640930  38 63 00 0C */	addi r3, r3, 0xc
/* 80640934  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80640938  4B CE 7A F4 */	b checkPass__12J3DFrameCtrlFf
/* 8064093C  2C 03 00 00 */	cmpwi r3, 0
/* 80640940  41 82 01 4C */	beq lbl_80640A8C
lbl_80640944:
/* 80640944  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80640948  38 63 00 0C */	addi r3, r3, 0xc
/* 8064094C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80640950  4B CE 7A DC */	b checkPass__12J3DFrameCtrlFf
/* 80640954  2C 03 00 00 */	cmpwi r3, 0
/* 80640958  41 82 00 28 */	beq lbl_80640980
/* 8064095C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80640960  80 63 00 04 */	lwz r3, 4(r3)
/* 80640964  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80640968  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064096C  38 63 03 00 */	addi r3, r3, 0x300
/* 80640970  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80640974  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80640978  4B D0 5B 38 */	b PSMTXCopy
/* 8064097C  48 00 00 24 */	b lbl_806409A0
lbl_80640980:
/* 80640980  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80640984  80 63 00 04 */	lwz r3, 4(r3)
/* 80640988  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064098C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80640990  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 80640994  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80640998  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8064099C  4B D0 5B 14 */	b PSMTXCopy
lbl_806409A0:
/* 806409A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806409A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806409A8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806409AC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806409B0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806409B4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806409B8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806409BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806409C0  88 7D 06 FD */	lbz r3, 0x6fd(r29)
/* 806409C4  38 A3 00 01 */	addi r5, r3, 1
/* 806409C8  88 1D 07 03 */	lbz r0, 0x703(r29)
/* 806409CC  28 00 00 0A */	cmplwi r0, 0xa
/* 806409D0  40 80 00 08 */	bge lbl_806409D8
/* 806409D4  38 A5 00 02 */	addi r5, r5, 2
lbl_806409D8:
/* 806409D8  28 05 00 06 */	cmplwi r5, 6
/* 806409DC  40 81 00 08 */	ble lbl_806409E4
/* 806409E0  38 A0 00 06 */	li r5, 6
lbl_806409E4:
/* 806409E4  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 806409E8  7C 07 07 74 */	extsb r7, r0
/* 806409EC  38 00 00 00 */	li r0, 0
/* 806409F0  90 01 00 08 */	stw r0, 8(r1)
/* 806409F4  38 60 00 FA */	li r3, 0xfa
/* 806409F8  28 1D 00 00 */	cmplwi r29, 0
/* 806409FC  41 82 00 0C */	beq lbl_80640A08
/* 80640A00  80 9D 00 04 */	lwz r4, 4(r29)
/* 80640A04  48 00 00 08 */	b lbl_80640A0C
lbl_80640A08:
/* 80640A08  38 80 FF FF */	li r4, -1
lbl_80640A0C:
/* 80640A0C  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80640A10  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80640A14  39 20 00 00 */	li r9, 0
/* 80640A18  39 40 FF FF */	li r10, -1
/* 80640A1C  4B 9D 94 D4 */	b fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80640A20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80640A24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80640A28  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80640A2C  38 80 00 00 */	li r4, 0
/* 80640A30  90 81 00 08 */	stw r4, 8(r1)
/* 80640A34  38 00 FF FF */	li r0, -1
/* 80640A38  90 01 00 0C */	stw r0, 0xc(r1)
/* 80640A3C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80640A40  90 81 00 14 */	stw r4, 0x14(r1)
/* 80640A44  90 81 00 18 */	stw r4, 0x18(r1)
/* 80640A48  38 80 00 00 */	li r4, 0
/* 80640A4C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000886B@ha */
/* 80640A50  38 A5 88 6B */	addi r5, r5, 0x886B /* 0x0000886B@l */
/* 80640A54  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80640A58  38 E0 00 00 */	li r7, 0
/* 80640A5C  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80640A60  39 20 00 00 */	li r9, 0
/* 80640A64  39 40 00 FF */	li r10, 0xff
/* 80640A68  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80640A6C  4B A0 C0 24 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80640A70  88 7D 06 FD */	lbz r3, 0x6fd(r29)
/* 80640A74  38 03 00 01 */	addi r0, r3, 1
/* 80640A78  98 1D 06 FD */	stb r0, 0x6fd(r29)
/* 80640A7C  88 7D 07 04 */	lbz r3, 0x704(r29)
/* 80640A80  38 03 00 01 */	addi r0, r3, 1
/* 80640A84  98 1D 07 04 */	stb r0, 0x704(r29)
/* 80640A88  48 00 01 48 */	b lbl_80640BD0
lbl_80640A8C:
/* 80640A8C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80640A90  38 63 00 0C */	addi r3, r3, 0xc
/* 80640A94  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80640A98  4B CE 79 94 */	b checkPass__12J3DFrameCtrlFf
/* 80640A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80640AA0  40 82 00 1C */	bne lbl_80640ABC
/* 80640AA4  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80640AA8  38 63 00 0C */	addi r3, r3, 0xc
/* 80640AAC  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80640AB0  4B CE 79 7C */	b checkPass__12J3DFrameCtrlFf
/* 80640AB4  2C 03 00 00 */	cmpwi r3, 0
/* 80640AB8  41 82 01 18 */	beq lbl_80640BD0
lbl_80640ABC:
/* 80640ABC  88 7D 06 FD */	lbz r3, 0x6fd(r29)
/* 80640AC0  88 1D 07 03 */	lbz r0, 0x703(r29)
/* 80640AC4  7C 03 00 40 */	cmplw r3, r0
/* 80640AC8  41 80 01 08 */	blt lbl_80640BD0
/* 80640ACC  38 00 00 04 */	li r0, 4
/* 80640AD0  90 1D 06 DC */	stw r0, 0x6dc(r29)
/* 80640AD4  88 1D 07 11 */	lbz r0, 0x711(r29)
/* 80640AD8  28 00 00 00 */	cmplwi r0, 0
/* 80640ADC  41 82 00 20 */	beq lbl_80640AFC
/* 80640AE0  7F A3 EB 78 */	mr r3, r29
/* 80640AE4  38 80 00 29 */	li r4, 0x29
/* 80640AE8  38 A0 00 00 */	li r5, 0
/* 80640AEC  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80640AF0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80640AF4  4B FF DA D1 */	bl setBck__10daB_ZANT_cFiUcff
/* 80640AF8  48 00 00 1C */	b lbl_80640B14
lbl_80640AFC:
/* 80640AFC  7F A3 EB 78 */	mr r3, r29
/* 80640B00  38 80 00 27 */	li r4, 0x27
/* 80640B04  38 A0 00 00 */	li r5, 0
/* 80640B08  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80640B0C  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80640B10  4B FF DA B5 */	bl setBck__10daB_ZANT_cFiUcff
lbl_80640B14:
/* 80640B14  38 00 00 00 */	li r0, 0
/* 80640B18  98 1D 07 17 */	stb r0, 0x717(r29)
/* 80640B1C  48 00 00 B4 */	b lbl_80640BD0
lbl_80640B20:
/* 80640B20  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80640B24  38 80 00 01 */	li r4, 1
/* 80640B28  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80640B2C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80640B30  40 82 00 18 */	bne lbl_80640B48
/* 80640B34  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 80640B38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80640B3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80640B40  41 82 00 08 */	beq lbl_80640B48
/* 80640B44  38 80 00 00 */	li r4, 0
lbl_80640B48:
/* 80640B48  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80640B4C  41 82 00 84 */	beq lbl_80640BD0
/* 80640B50  38 00 00 04 */	li r0, 4
/* 80640B54  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80640B58  88 1D 06 FB */	lbz r0, 0x6fb(r29)
/* 80640B5C  28 00 00 01 */	cmplwi r0, 1
/* 80640B60  40 82 00 20 */	bne lbl_80640B80
/* 80640B64  38 00 00 01 */	li r0, 1
/* 80640B68  98 1D 07 11 */	stb r0, 0x711(r29)
/* 80640B6C  7F A3 EB 78 */	mr r3, r29
/* 80640B70  38 80 00 01 */	li r4, 1
/* 80640B74  38 A0 00 01 */	li r5, 1
/* 80640B78  4B FF DB 4D */	bl setActionMode__10daB_ZANT_cFii
/* 80640B7C  48 00 00 54 */	b lbl_80640BD0
lbl_80640B80:
/* 80640B80  28 00 00 02 */	cmplwi r0, 2
/* 80640B84  40 82 00 18 */	bne lbl_80640B9C
/* 80640B88  7F A3 EB 78 */	mr r3, r29
/* 80640B8C  38 80 00 0A */	li r4, 0xa
/* 80640B90  38 A0 00 00 */	li r5, 0
/* 80640B94  4B FF DB 31 */	bl setActionMode__10daB_ZANT_cFii
/* 80640B98  48 00 00 38 */	b lbl_80640BD0
lbl_80640B9C:
/* 80640B9C  28 00 00 03 */	cmplwi r0, 3
/* 80640BA0  40 82 00 18 */	bne lbl_80640BB8
/* 80640BA4  7F A3 EB 78 */	mr r3, r29
/* 80640BA8  38 80 00 07 */	li r4, 7
/* 80640BAC  38 A0 00 00 */	li r5, 0
/* 80640BB0  4B FF DB 15 */	bl setActionMode__10daB_ZANT_cFii
/* 80640BB4  48 00 00 1C */	b lbl_80640BD0
lbl_80640BB8:
/* 80640BB8  28 00 00 04 */	cmplwi r0, 4
/* 80640BBC  40 82 00 14 */	bne lbl_80640BD0
/* 80640BC0  7F A3 EB 78 */	mr r3, r29
/* 80640BC4  38 80 00 0F */	li r4, 0xf
/* 80640BC8  38 A0 00 00 */	li r5, 0
/* 80640BCC  4B FF DA F9 */	bl setActionMode__10daB_ZANT_cFii
lbl_80640BD0:
/* 80640BD0  88 1D 06 FB */	lbz r0, 0x6fb(r29)
/* 80640BD4  28 00 00 01 */	cmplwi r0, 1
/* 80640BD8  40 82 00 30 */	bne lbl_80640C08
/* 80640BDC  7F A3 EB 78 */	mr r3, r29
/* 80640BE0  38 80 00 01 */	li r4, 1
/* 80640BE4  4B FF EE D1 */	bl checkAvoidWeapon__10daB_ZANT_cFi
/* 80640BE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80640BEC  41 82 00 1C */	beq lbl_80640C08
/* 80640BF0  38 00 00 01 */	li r0, 1
/* 80640BF4  98 1D 07 11 */	stb r0, 0x711(r29)
/* 80640BF8  7F A3 EB 78 */	mr r3, r29
/* 80640BFC  38 80 00 01 */	li r4, 1
/* 80640C00  38 A0 00 01 */	li r5, 1
/* 80640C04  4B FF DA C1 */	bl setActionMode__10daB_ZANT_cFii
lbl_80640C08:
/* 80640C08  39 61 00 50 */	addi r11, r1, 0x50
/* 80640C0C  4B D2 16 18 */	b _restgpr_28
/* 80640C10  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80640C14  7C 08 03 A6 */	mtlr r0
/* 80640C18  38 21 00 50 */	addi r1, r1, 0x50
/* 80640C1C  4E 80 00 20 */	blr 
