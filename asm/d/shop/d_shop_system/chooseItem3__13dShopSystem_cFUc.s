lbl_80197808:
/* 80197808  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8019780C  7C 08 02 A6 */	mflr r0
/* 80197810  90 01 00 44 */	stw r0, 0x44(r1)
/* 80197814  39 61 00 40 */	addi r11, r1, 0x40
/* 80197818  48 1C A9 C5 */	bl _savegpr_29
/* 8019781C  7C 7D 1B 78 */	mr r29, r3
/* 80197820  7C 9E 23 78 */	mr r30, r4
/* 80197824  8B E3 0F 6F */	lbz r31, 0xf6f(r3)
/* 80197828  80 83 0E 40 */	lwz r4, 0xe40(r3)
/* 8019782C  48 00 33 35 */	bl checkLeftTrigger__13dShopSystem_cFP9STControl
/* 80197830  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80197834  41 82 02 1C */	beq lbl_80197A50
/* 80197838  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 8019783C  28 03 00 02 */	cmplwi r3, 2
/* 80197840  41 82 02 10 */	beq lbl_80197A50
/* 80197844  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197848  28 00 00 07 */	cmplwi r0, 7
/* 8019784C  40 82 00 BC */	bne lbl_80197908
/* 80197850  88 1D 0F 6F */	lbz r0, 0xf6f(r29)
/* 80197854  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197858  38 00 00 07 */	li r0, 7
/* 8019785C  98 1D 0F 6F */	stb r0, 0xf6f(r29)
/* 80197860  88 9D 0F 6E */	lbz r4, 0xf6e(r29)
/* 80197864  28 04 00 00 */	cmplwi r4, 0
/* 80197868  41 82 00 28 */	beq lbl_80197890
/* 8019786C  7F A3 EB 78 */	mr r3, r29
/* 80197870  38 84 FF FF */	addi r4, r4, -1
/* 80197874  4B FF FD 85 */	bl isFlag__13dShopSystem_cFi
/* 80197878  2C 03 00 00 */	cmpwi r3, 0
/* 8019787C  41 82 00 14 */	beq lbl_80197890
/* 80197880  88 1D 0F 6F */	lbz r0, 0xf6f(r29)
/* 80197884  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197888  9B FD 0F 6F */	stb r31, 0xf6f(r29)
/* 8019788C  48 00 01 C4 */	b lbl_80197A50
lbl_80197890:
/* 80197890  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80197894  28 00 00 01 */	cmplwi r0, 1
/* 80197898  41 82 00 68 */	beq lbl_80197900
/* 8019789C  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 801978A0  28 00 00 00 */	cmplwi r0, 0
/* 801978A4  41 82 00 38 */	beq lbl_801978DC
/* 801978A8  38 00 00 5F */	li r0, 0x5f
/* 801978AC  90 01 00 20 */	stw r0, 0x20(r1)
/* 801978B0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801978B4  38 81 00 20 */	addi r4, r1, 0x20
/* 801978B8  38 A0 00 00 */	li r5, 0
/* 801978BC  38 C0 00 00 */	li r6, 0
/* 801978C0  38 E0 00 00 */	li r7, 0
/* 801978C4  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 801978C8  FC 40 08 90 */	fmr f2, f1
/* 801978CC  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 801978D0  FC 80 18 90 */	fmr f4, f3
/* 801978D4  39 00 00 00 */	li r8, 0
/* 801978D8  48 11 40 AD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_801978DC:
/* 801978DC  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 801978E0  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 801978E4  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 801978E8  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 801978EC  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 801978F0  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 801978F4  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 801978F8  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 801978FC  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
lbl_80197900:
/* 80197900  38 60 00 03 */	li r3, 3
/* 80197904  48 00 04 B4 */	b lbl_80197DB8
lbl_80197908:
/* 80197908  28 00 00 04 */	cmplwi r0, 4
/* 8019790C  40 82 00 84 */	bne lbl_80197990
/* 80197910  98 1D 0F 6F */	stb r0, 0xf6f(r29)
/* 80197914  38 00 00 00 */	li r0, 0
/* 80197918  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 8019791C  28 03 00 01 */	cmplwi r3, 1
/* 80197920  41 82 00 68 */	beq lbl_80197988
/* 80197924  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197928  28 00 00 00 */	cmplwi r0, 0
/* 8019792C  41 82 00 38 */	beq lbl_80197964
/* 80197930  38 00 00 5F */	li r0, 0x5f
/* 80197934  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80197938  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8019793C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80197940  38 A0 00 00 */	li r5, 0
/* 80197944  38 C0 00 00 */	li r6, 0
/* 80197948  38 E0 00 00 */	li r7, 0
/* 8019794C  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80197950  FC 40 08 90 */	fmr f2, f1
/* 80197954  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 80197958  FC 80 18 90 */	fmr f4, f3
/* 8019795C  39 00 00 00 */	li r8, 0
/* 80197960  48 11 40 25 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80197964:
/* 80197964  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197968  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 8019796C  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80197970  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 80197974  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80197978  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 8019797C  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 80197980  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80197984  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
lbl_80197988:
/* 80197988  38 60 00 03 */	li r3, 3
/* 8019798C  48 00 04 2C */	b lbl_80197DB8
lbl_80197990:
/* 80197990  28 00 00 00 */	cmplwi r0, 0
/* 80197994  41 82 00 BC */	beq lbl_80197A50
/* 80197998  98 1D 0F 6F */	stb r0, 0xf6f(r29)
/* 8019799C  88 7D 0F 6E */	lbz r3, 0xf6e(r29)
/* 801979A0  38 03 FF FF */	addi r0, r3, -1
/* 801979A4  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 801979A8  88 9D 0F 6E */	lbz r4, 0xf6e(r29)
/* 801979AC  28 04 00 00 */	cmplwi r4, 0
/* 801979B0  41 82 00 28 */	beq lbl_801979D8
/* 801979B4  7F A3 EB 78 */	mr r3, r29
/* 801979B8  38 84 FF FF */	addi r4, r4, -1
/* 801979BC  4B FF FC 3D */	bl isFlag__13dShopSystem_cFi
/* 801979C0  2C 03 00 00 */	cmpwi r3, 0
/* 801979C4  41 82 00 14 */	beq lbl_801979D8
/* 801979C8  88 1D 0F 6F */	lbz r0, 0xf6f(r29)
/* 801979CC  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 801979D0  9B FD 0F 6F */	stb r31, 0xf6f(r29)
/* 801979D4  48 00 00 7C */	b lbl_80197A50
lbl_801979D8:
/* 801979D8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 801979DC  28 00 00 01 */	cmplwi r0, 1
/* 801979E0  41 82 00 68 */	beq lbl_80197A48
/* 801979E4  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 801979E8  28 00 00 00 */	cmplwi r0, 0
/* 801979EC  41 82 00 38 */	beq lbl_80197A24
/* 801979F0  38 00 00 5F */	li r0, 0x5f
/* 801979F4  90 01 00 18 */	stw r0, 0x18(r1)
/* 801979F8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801979FC  38 81 00 18 */	addi r4, r1, 0x18
/* 80197A00  38 A0 00 00 */	li r5, 0
/* 80197A04  38 C0 00 00 */	li r6, 0
/* 80197A08  38 E0 00 00 */	li r7, 0
/* 80197A0C  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80197A10  FC 40 08 90 */	fmr f2, f1
/* 80197A14  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 80197A18  FC 80 18 90 */	fmr f4, f3
/* 80197A1C  39 00 00 00 */	li r8, 0
/* 80197A20  48 11 3F 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80197A24:
/* 80197A24  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197A28  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 80197A2C  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80197A30  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 80197A34  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80197A38  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80197A3C  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 80197A40  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80197A44  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
lbl_80197A48:
/* 80197A48  38 60 00 03 */	li r3, 3
/* 80197A4C  48 00 03 6C */	b lbl_80197DB8
lbl_80197A50:
/* 80197A50  7F A3 EB 78 */	mr r3, r29
/* 80197A54  80 9D 0E 40 */	lwz r4, 0xe40(r29)
/* 80197A58  48 00 31 2D */	bl checkRightTrigger__13dShopSystem_cFP9STControl
/* 80197A5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80197A60  41 82 01 8C */	beq lbl_80197BEC
/* 80197A64  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80197A68  28 00 00 02 */	cmplwi r0, 2
/* 80197A6C  41 82 01 80 */	beq lbl_80197BEC
/* 80197A70  88 7D 0F 6E */	lbz r3, 0xf6e(r29)
/* 80197A74  28 03 00 07 */	cmplwi r3, 7
/* 80197A78  41 82 01 74 */	beq lbl_80197BEC
/* 80197A7C  28 03 00 03 */	cmplwi r3, 3
/* 80197A80  41 82 00 B8 */	beq lbl_80197B38
/* 80197A84  28 03 00 06 */	cmplwi r3, 6
/* 80197A88  41 82 00 B0 */	beq lbl_80197B38
/* 80197A8C  98 7D 0F 6F */	stb r3, 0xf6f(r29)
/* 80197A90  88 7D 0F 6E */	lbz r3, 0xf6e(r29)
/* 80197A94  38 03 00 01 */	addi r0, r3, 1
/* 80197A98  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197A9C  88 9D 0F 6E */	lbz r4, 0xf6e(r29)
/* 80197AA0  28 04 00 00 */	cmplwi r4, 0
/* 80197AA4  41 82 00 28 */	beq lbl_80197ACC
/* 80197AA8  7F A3 EB 78 */	mr r3, r29
/* 80197AAC  38 84 FF FF */	addi r4, r4, -1
/* 80197AB0  4B FF FB 49 */	bl isFlag__13dShopSystem_cFi
/* 80197AB4  2C 03 00 00 */	cmpwi r3, 0
/* 80197AB8  41 82 00 14 */	beq lbl_80197ACC
/* 80197ABC  88 1D 0F 6F */	lbz r0, 0xf6f(r29)
/* 80197AC0  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197AC4  9B FD 0F 6F */	stb r31, 0xf6f(r29)
/* 80197AC8  48 00 01 24 */	b lbl_80197BEC
lbl_80197ACC:
/* 80197ACC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80197AD0  28 00 00 01 */	cmplwi r0, 1
/* 80197AD4  41 82 00 5C */	beq lbl_80197B30
/* 80197AD8  38 00 00 5F */	li r0, 0x5f
/* 80197ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80197AE0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80197AE4  38 81 00 14 */	addi r4, r1, 0x14
/* 80197AE8  38 A0 00 00 */	li r5, 0
/* 80197AEC  38 C0 00 00 */	li r6, 0
/* 80197AF0  38 E0 00 00 */	li r7, 0
/* 80197AF4  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80197AF8  FC 40 08 90 */	fmr f2, f1
/* 80197AFC  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 80197B00  FC 80 18 90 */	fmr f4, f3
/* 80197B04  39 00 00 00 */	li r8, 0
/* 80197B08  48 11 3E 7D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80197B0C  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197B10  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 80197B14  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80197B18  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 80197B1C  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80197B20  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80197B24  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 80197B28  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80197B2C  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
lbl_80197B30:
/* 80197B30  38 60 00 04 */	li r3, 4
/* 80197B34  48 00 02 84 */	b lbl_80197DB8
lbl_80197B38:
/* 80197B38  88 0D 8A D8 */	lbz r0, data_80451058(r13)
/* 80197B3C  28 00 00 07 */	cmplwi r0, 7
/* 80197B40  40 82 00 AC */	bne lbl_80197BEC
/* 80197B44  98 7D 0F 6F */	stb r3, 0xf6f(r29)
/* 80197B48  38 00 00 07 */	li r0, 7
/* 80197B4C  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197B50  88 9D 0F 6E */	lbz r4, 0xf6e(r29)
/* 80197B54  28 04 00 00 */	cmplwi r4, 0
/* 80197B58  41 82 00 28 */	beq lbl_80197B80
/* 80197B5C  7F A3 EB 78 */	mr r3, r29
/* 80197B60  38 84 FF FF */	addi r4, r4, -1
/* 80197B64  4B FF FA 95 */	bl isFlag__13dShopSystem_cFi
/* 80197B68  2C 03 00 00 */	cmpwi r3, 0
/* 80197B6C  41 82 00 14 */	beq lbl_80197B80
/* 80197B70  88 1D 0F 6F */	lbz r0, 0xf6f(r29)
/* 80197B74  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197B78  9B FD 0F 6F */	stb r31, 0xf6f(r29)
/* 80197B7C  48 00 00 70 */	b lbl_80197BEC
lbl_80197B80:
/* 80197B80  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80197B84  28 00 00 01 */	cmplwi r0, 1
/* 80197B88  41 82 00 5C */	beq lbl_80197BE4
/* 80197B8C  38 00 00 5F */	li r0, 0x5f
/* 80197B90  90 01 00 10 */	stw r0, 0x10(r1)
/* 80197B94  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80197B98  38 81 00 10 */	addi r4, r1, 0x10
/* 80197B9C  38 A0 00 00 */	li r5, 0
/* 80197BA0  38 C0 00 00 */	li r6, 0
/* 80197BA4  38 E0 00 00 */	li r7, 0
/* 80197BA8  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80197BAC  FC 40 08 90 */	fmr f2, f1
/* 80197BB0  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 80197BB4  FC 80 18 90 */	fmr f4, f3
/* 80197BB8  39 00 00 00 */	li r8, 0
/* 80197BBC  48 11 3D C9 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80197BC0  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197BC4  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 80197BC8  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80197BCC  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 80197BD0  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80197BD4  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80197BD8  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 80197BDC  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80197BE0  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
lbl_80197BE4:
/* 80197BE4  38 60 00 04 */	li r3, 4
/* 80197BE8  48 00 01 D0 */	b lbl_80197DB8
lbl_80197BEC:
/* 80197BEC  88 0D 8A D8 */	lbz r0, data_80451058(r13)
/* 80197BF0  28 00 00 06 */	cmplwi r0, 6
/* 80197BF4  41 80 01 C0 */	blt lbl_80197DB4
/* 80197BF8  80 7D 0E 40 */	lwz r3, 0xe40(r29)
/* 80197BFC  4B E9 A9 29 */	bl checkUpTrigger__9STControlFv
/* 80197C00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80197C04  41 82 00 D4 */	beq lbl_80197CD8
/* 80197C08  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80197C0C  28 00 00 02 */	cmplwi r0, 2
/* 80197C10  41 82 00 C8 */	beq lbl_80197CD8
/* 80197C14  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197C18  28 00 00 03 */	cmplwi r0, 3
/* 80197C1C  41 81 00 BC */	bgt lbl_80197CD8
/* 80197C20  98 1D 0F 6F */	stb r0, 0xf6f(r29)
/* 80197C24  88 7D 0F 6E */	lbz r3, 0xf6e(r29)
/* 80197C28  38 03 00 03 */	addi r0, r3, 3
/* 80197C2C  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197C30  88 9D 0F 6E */	lbz r4, 0xf6e(r29)
/* 80197C34  28 04 00 00 */	cmplwi r4, 0
/* 80197C38  41 82 00 28 */	beq lbl_80197C60
/* 80197C3C  7F A3 EB 78 */	mr r3, r29
/* 80197C40  38 84 FF FF */	addi r4, r4, -1
/* 80197C44  4B FF F9 B5 */	bl isFlag__13dShopSystem_cFi
/* 80197C48  2C 03 00 00 */	cmpwi r3, 0
/* 80197C4C  41 82 00 14 */	beq lbl_80197C60
/* 80197C50  88 1D 0F 6F */	lbz r0, 0xf6f(r29)
/* 80197C54  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197C58  9B FD 0F 6F */	stb r31, 0xf6f(r29)
/* 80197C5C  48 00 00 7C */	b lbl_80197CD8
lbl_80197C60:
/* 80197C60  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80197C64  28 00 00 01 */	cmplwi r0, 1
/* 80197C68  41 82 00 68 */	beq lbl_80197CD0
/* 80197C6C  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197C70  28 00 00 00 */	cmplwi r0, 0
/* 80197C74  41 82 00 38 */	beq lbl_80197CAC
/* 80197C78  38 00 00 5F */	li r0, 0x5f
/* 80197C7C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80197C80  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80197C84  38 81 00 0C */	addi r4, r1, 0xc
/* 80197C88  38 A0 00 00 */	li r5, 0
/* 80197C8C  38 C0 00 00 */	li r6, 0
/* 80197C90  38 E0 00 00 */	li r7, 0
/* 80197C94  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80197C98  FC 40 08 90 */	fmr f2, f1
/* 80197C9C  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 80197CA0  FC 80 18 90 */	fmr f4, f3
/* 80197CA4  39 00 00 00 */	li r8, 0
/* 80197CA8  48 11 3C DD */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80197CAC:
/* 80197CAC  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197CB0  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 80197CB4  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80197CB8  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 80197CBC  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80197CC0  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80197CC4  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 80197CC8  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80197CCC  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
lbl_80197CD0:
/* 80197CD0  38 60 00 05 */	li r3, 5
/* 80197CD4  48 00 00 E4 */	b lbl_80197DB8
lbl_80197CD8:
/* 80197CD8  80 7D 0E 40 */	lwz r3, 0xe40(r29)
/* 80197CDC  4B E9 A8 C5 */	bl checkDownTrigger__9STControlFv
/* 80197CE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80197CE4  41 82 00 D0 */	beq lbl_80197DB4
/* 80197CE8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80197CEC  28 00 00 02 */	cmplwi r0, 2
/* 80197CF0  41 82 00 C4 */	beq lbl_80197DB4
/* 80197CF4  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197CF8  28 00 00 03 */	cmplwi r0, 3
/* 80197CFC  40 81 00 B8 */	ble lbl_80197DB4
/* 80197D00  28 00 00 06 */	cmplwi r0, 6
/* 80197D04  41 81 00 B0 */	bgt lbl_80197DB4
/* 80197D08  98 1D 0F 6F */	stb r0, 0xf6f(r29)
/* 80197D0C  88 7D 0F 6E */	lbz r3, 0xf6e(r29)
/* 80197D10  38 03 FF FD */	addi r0, r3, -3
/* 80197D14  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197D18  88 9D 0F 6E */	lbz r4, 0xf6e(r29)
/* 80197D1C  28 04 00 00 */	cmplwi r4, 0
/* 80197D20  41 82 00 28 */	beq lbl_80197D48
/* 80197D24  7F A3 EB 78 */	mr r3, r29
/* 80197D28  38 84 FF FF */	addi r4, r4, -1
/* 80197D2C  4B FF F8 CD */	bl isFlag__13dShopSystem_cFi
/* 80197D30  2C 03 00 00 */	cmpwi r3, 0
/* 80197D34  41 82 00 14 */	beq lbl_80197D48
/* 80197D38  88 1D 0F 6F */	lbz r0, 0xf6f(r29)
/* 80197D3C  98 1D 0F 6E */	stb r0, 0xf6e(r29)
/* 80197D40  9B FD 0F 6F */	stb r31, 0xf6f(r29)
/* 80197D44  48 00 00 70 */	b lbl_80197DB4
lbl_80197D48:
/* 80197D48  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80197D4C  28 00 00 01 */	cmplwi r0, 1
/* 80197D50  41 82 00 5C */	beq lbl_80197DAC
/* 80197D54  38 00 00 5F */	li r0, 0x5f
/* 80197D58  90 01 00 08 */	stw r0, 8(r1)
/* 80197D5C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80197D60  38 81 00 08 */	addi r4, r1, 8
/* 80197D64  38 A0 00 00 */	li r5, 0
/* 80197D68  38 C0 00 00 */	li r6, 0
/* 80197D6C  38 E0 00 00 */	li r7, 0
/* 80197D70  C0 22 A1 08 */	lfs f1, lit_4099(r2)
/* 80197D74  FC 40 08 90 */	fmr f2, f1
/* 80197D78  C0 62 A1 14 */	lfs f3, lit_4493(r2)
/* 80197D7C  FC 80 18 90 */	fmr f4, f3
/* 80197D80  39 00 00 00 */	li r8, 0
/* 80197D84  48 11 3C 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80197D88  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 80197D8C  B0 1D 0F 4C */	sth r0, 0xf4c(r29)
/* 80197D90  C0 22 A1 18 */	lfs f1, lit_4494(r2)
/* 80197D94  D0 3D 0F 38 */	stfs f1, 0xf38(r29)
/* 80197D98  C0 02 A1 1C */	lfs f0, lit_4495(r2)
/* 80197D9C  D0 1D 0F 3C */	stfs f0, 0xf3c(r29)
/* 80197DA0  D0 3D 0F 40 */	stfs f1, 0xf40(r29)
/* 80197DA4  C0 02 A1 20 */	lfs f0, lit_4496(r2)
/* 80197DA8  D0 1D 0F 44 */	stfs f0, 0xf44(r29)
lbl_80197DAC:
/* 80197DAC  38 60 00 06 */	li r3, 6
/* 80197DB0  48 00 00 08 */	b lbl_80197DB8
lbl_80197DB4:
/* 80197DB4  38 60 00 00 */	li r3, 0
lbl_80197DB8:
/* 80197DB8  39 61 00 40 */	addi r11, r1, 0x40
/* 80197DBC  48 1C A4 6D */	bl _restgpr_29
/* 80197DC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80197DC4  7C 08 03 A6 */	mtlr r0
/* 80197DC8  38 21 00 40 */	addi r1, r1, 0x40
/* 80197DCC  4E 80 00 20 */	blr 
