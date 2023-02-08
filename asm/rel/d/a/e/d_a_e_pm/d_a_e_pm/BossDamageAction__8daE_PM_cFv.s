lbl_807476A0:
/* 807476A0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 807476A4  7C 08 02 A6 */	mflr r0
/* 807476A8  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 807476AC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 807476B0  4B C1 AB 29 */	bl _savegpr_28
/* 807476B4  7C 7C 1B 78 */	mr r28, r3
/* 807476B8  3C 80 80 75 */	lis r4, lit_3910@ha /* 0x8074BF3C@ha */
/* 807476BC  3B C4 BF 3C */	addi r30, r4, lit_3910@l /* 0x8074BF3C@l */
/* 807476C0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807476C4  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807476C8  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 807476CC  88 03 06 11 */	lbz r0, 0x611(r3)
/* 807476D0  28 00 00 0B */	cmplwi r0, 0xb
/* 807476D4  41 81 08 4C */	bgt lbl_80747F20
/* 807476D8  3C 80 80 75 */	lis r4, lit_6344@ha /* 0x8074C1E8@ha */
/* 807476DC  38 84 C1 E8 */	addi r4, r4, lit_6344@l /* 0x8074C1E8@l */
/* 807476E0  54 00 10 3A */	slwi r0, r0, 2
/* 807476E4  7C 04 00 2E */	lwzx r0, r4, r0
/* 807476E8  7C 09 03 A6 */	mtctr r0
/* 807476EC  4E 80 04 20 */	bctr 
lbl_807476F0:
/* 807476F0  4B FF B9 D5 */	bl CameraSet__8daE_PM_cFv
/* 807476F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807476F8  41 82 08 28 */	beq lbl_80747F20
/* 807476FC  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80747700  64 00 08 00 */	oris r0, r0, 0x800
/* 80747704  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80747708  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 8074770C  60 00 04 00 */	ori r0, r0, 0x400
/* 80747710  90 1D 05 78 */	stw r0, 0x578(r29)
/* 80747714  88 9C 06 00 */	lbz r4, 0x600(r28)
/* 80747718  3C 60 80 75 */	lis r3, l_HIO@ha /* 0x8074C394@ha */
/* 8074771C  38 63 C3 94 */	addi r3, r3, l_HIO@l /* 0x8074C394@l */
/* 80747720  A8 03 00 26 */	lha r0, 0x26(r3)
/* 80747724  7C 04 02 14 */	add r0, r4, r0
/* 80747728  98 1C 06 00 */	stb r0, 0x600(r28)
/* 8074772C  88 1C 05 F8 */	lbz r0, 0x5f8(r28)
/* 80747730  28 00 00 00 */	cmplwi r0, 0
/* 80747734  40 82 01 80 */	bne lbl_807478B4
/* 80747738  3C 60 80 74 */	lis r3, s_boss_sub__FPvPv@ha /* 0x80747500@ha */
/* 8074773C  38 63 75 00 */	addi r3, r3, s_boss_sub__FPvPv@l /* 0x80747500@l */
/* 80747740  7F 84 E3 78 */	mr r4, r28
/* 80747744  4B 8D 9B F5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80747748  7C 7D 1B 79 */	or. r29, r3, r3
/* 8074774C  41 82 00 A4 */	beq lbl_807477F0
/* 80747750  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80747754  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80747758  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8074775C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80747760  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80747764  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 80747768  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 8074776C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80747770  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80747774  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80747778  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 8074777C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80747780  38 60 00 00 */	li r3, 0
/* 80747784  4B 8E 51 F9 */	bl getLayerNo__14dComIfG_play_cFi
/* 80747788  2C 03 00 02 */	cmpwi r3, 2
/* 8074778C  40 82 00 20 */	bne lbl_807477AC
/* 80747790  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80747794  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80747798  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 8074779C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 807477A0  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 807477A4  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 807477A8  48 00 00 1C */	b lbl_807477C4
lbl_807477AC:
/* 807477AC  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 807477B0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 807477B4  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 807477B8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 807477BC  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 807477C0  D0 01 00 A8 */	stfs f0, 0xa8(r1)
lbl_807477C4:
/* 807477C4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807477C8  38 81 00 A0 */	addi r4, r1, 0xa0
/* 807477CC  A8 BD 04 DE */	lha r5, 0x4de(r29)
/* 807477D0  3C A5 00 01 */	addis r5, r5, 1
/* 807477D4  38 05 80 00 */	addi r0, r5, -32768
/* 807477D8  7C 05 07 34 */	extsh r5, r0
/* 807477DC  38 C0 00 00 */	li r6, 0
/* 807477E0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807477E4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 807477E8  7D 89 03 A6 */	mtctr r12
/* 807477EC  4E 80 04 21 */	bctrl 
lbl_807477F0:
/* 807477F0  38 00 00 05 */	li r0, 5
/* 807477F4  98 1C 06 10 */	stb r0, 0x610(r28)
/* 807477F8  38 00 00 00 */	li r0, 0
/* 807477FC  98 1C 06 11 */	stb r0, 0x611(r28)
/* 80747800  98 1C 06 12 */	stb r0, 0x612(r28)
/* 80747804  7F 83 E3 78 */	mr r3, r28
/* 80747808  38 80 00 0B */	li r4, 0xb
/* 8074780C  38 A0 00 00 */	li r5, 0
/* 80747810  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 80747814  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80747818  4B FF AE 5D */	bl SetAnm__8daE_PM_cFiiff
/* 8074781C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070057@ha */
/* 80747820  38 03 00 57 */	addi r0, r3, 0x0057 /* 0x00070057@l */
/* 80747824  90 01 00 30 */	stw r0, 0x30(r1)
/* 80747828  38 7C 07 20 */	addi r3, r28, 0x720
/* 8074782C  38 81 00 30 */	addi r4, r1, 0x30
/* 80747830  38 A0 FF FF */	li r5, -1
/* 80747834  81 9C 07 20 */	lwz r12, 0x720(r28)
/* 80747838  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8074783C  7D 89 03 A6 */	mtctr r12
/* 80747840  4E 80 04 21 */	bctrl 
/* 80747844  38 00 00 01 */	li r0, 1
/* 80747848  98 1C 06 14 */	stb r0, 0x614(r28)
/* 8074784C  38 00 00 00 */	li r0, 0
/* 80747850  98 1C 06 FE */	stb r0, 0x6fe(r28)
/* 80747854  C0 5C 04 D8 */	lfs f2, 0x4d8(r28)
/* 80747858  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 8074785C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80747860  EC 21 00 2A */	fadds f1, f1, f0
/* 80747864  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80747868  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8074786C  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80747870  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 80747874  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80747878  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8074787C  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80747880  7F 83 E3 78 */	mr r3, r28
/* 80747884  38 81 00 64 */	addi r4, r1, 0x64
/* 80747888  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 8074788C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80747890  A8 BC 04 E6 */	lha r5, 0x4e6(r28)
/* 80747894  4B FF BA 01 */	bl SetStopCam__8daE_PM_cF4cXyzffs
/* 80747898  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8074789C  B0 1C 06 02 */	sth r0, 0x602(r28)
/* 807478A0  C0 3C 06 B4 */	lfs f1, 0x6b4(r28)
/* 807478A4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 807478A8  EC 01 00 2A */	fadds f0, f1, f0
/* 807478AC  D0 1C 06 B4 */	stfs f0, 0x6b4(r28)
/* 807478B0  48 00 06 70 */	b lbl_80747F20
lbl_807478B4:
/* 807478B4  7F 83 E3 78 */	mr r3, r28
/* 807478B8  38 80 00 08 */	li r4, 8
/* 807478BC  38 A0 00 00 */	li r5, 0
/* 807478C0  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 807478C4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807478C8  4B FF AD AD */	bl SetAnm__8daE_PM_cFiiff
/* 807478CC  88 7C 06 11 */	lbz r3, 0x611(r28)
/* 807478D0  38 03 00 01 */	addi r0, r3, 1
/* 807478D4  98 1C 06 11 */	stb r0, 0x611(r28)
/* 807478D8  38 00 00 01 */	li r0, 1
/* 807478DC  98 1C 06 14 */	stb r0, 0x614(r28)
/* 807478E0  C0 7C 04 D8 */	lfs f3, 0x4d8(r28)
/* 807478E4  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 807478E8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 807478EC  EC 22 00 2A */	fadds f1, f2, f0
/* 807478F0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 807478F4  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 807478F8  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 807478FC  D0 61 00 A8 */	stfs f3, 0xa8(r1)
/* 80747900  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80747904  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80747908  D0 61 00 60 */	stfs f3, 0x60(r1)
/* 8074790C  7F 83 E3 78 */	mr r3, r28
/* 80747910  38 81 00 58 */	addi r4, r1, 0x58
/* 80747914  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80747918  3C A0 80 75 */	lis r5, data_8074C3E8@ha /* 0x8074C3E8@ha */
/* 8074791C  38 A5 C3 E8 */	addi r5, r5, data_8074C3E8@l /* 0x8074C3E8@l */
/* 80747920  A8 A5 00 00 */	lha r5, 0(r5)
/* 80747924  4B FF B9 71 */	bl SetStopCam__8daE_PM_cF4cXyzffs
/* 80747928  48 00 05 F8 */	b lbl_80747F20
lbl_8074792C:
/* 8074792C  80 7C 07 04 */	lwz r3, 0x704(r28)
/* 80747930  38 80 00 01 */	li r4, 1
/* 80747934  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80747938  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8074793C  40 82 00 18 */	bne lbl_80747954
/* 80747940  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80747944  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80747948  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8074794C  41 82 00 08 */	beq lbl_80747954
/* 80747950  38 80 00 00 */	li r4, 0
lbl_80747954:
/* 80747954  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80747958  41 82 00 60 */	beq lbl_807479B8
/* 8074795C  7F 83 E3 78 */	mr r3, r28
/* 80747960  38 80 00 11 */	li r4, 0x11
/* 80747964  38 A0 00 00 */	li r5, 0
/* 80747968  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 8074796C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80747970  4B FF AD 05 */	bl SetAnm__8daE_PM_cFiiff
/* 80747974  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070059@ha */
/* 80747978  38 03 00 59 */	addi r0, r3, 0x0059 /* 0x00070059@l */
/* 8074797C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80747980  38 7C 07 20 */	addi r3, r28, 0x720
/* 80747984  38 81 00 2C */	addi r4, r1, 0x2c
/* 80747988  38 A0 FF FF */	li r5, -1
/* 8074798C  81 9C 07 20 */	lwz r12, 0x720(r28)
/* 80747990  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80747994  7D 89 03 A6 */	mtctr r12
/* 80747998  4E 80 04 21 */	bctrl 
/* 8074799C  88 7C 06 11 */	lbz r3, 0x611(r28)
/* 807479A0  38 03 00 01 */	addi r0, r3, 1
/* 807479A4  98 1C 06 11 */	stb r0, 0x611(r28)
/* 807479A8  C0 3C 06 A8 */	lfs f1, 0x6a8(r28)
/* 807479AC  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 807479B0  EC 01 00 2A */	fadds f0, f1, f0
/* 807479B4  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
lbl_807479B8:
/* 807479B8  7F 83 E3 78 */	mr r3, r28
/* 807479BC  4B FF B8 55 */	bl SetStopingCam__8daE_PM_cFv
/* 807479C0  48 00 05 60 */	b lbl_80747F20
lbl_807479C4:
/* 807479C4  80 1C 06 1C */	lwz r0, 0x61c(r28)
/* 807479C8  2C 00 00 11 */	cmpwi r0, 0x11
/* 807479CC  40 82 00 A4 */	bne lbl_80747A70
/* 807479D0  80 7C 07 04 */	lwz r3, 0x704(r28)
/* 807479D4  80 63 00 04 */	lwz r3, 4(r3)
/* 807479D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 807479DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 807479E0  38 63 03 90 */	addi r3, r3, 0x390
/* 807479E4  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 807479E8  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 807479EC  80 84 00 00 */	lwz r4, 0(r4)
/* 807479F0  4B BF EA C1 */	bl PSMTXCopy
/* 807479F4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807479F8  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 807479FC  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 80747A00  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80747A04  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80747A08  38 61 00 7C */	addi r3, r1, 0x7c
/* 80747A0C  7C 64 1B 78 */	mr r4, r3
/* 80747A10  4B B2 94 DD */	bl MtxPosition__FP4cXyzP4cXyz
/* 80747A14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80747A18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80747A1C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80747A20  38 00 00 FF */	li r0, 0xff
/* 80747A24  90 01 00 08 */	stw r0, 8(r1)
/* 80747A28  38 80 00 00 */	li r4, 0
/* 80747A2C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80747A30  38 00 FF FF */	li r0, -1
/* 80747A34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80747A38  90 81 00 14 */	stw r4, 0x14(r1)
/* 80747A3C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80747A40  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80747A44  80 9C 06 28 */	lwz r4, 0x628(r28)
/* 80747A48  38 A0 00 00 */	li r5, 0
/* 80747A4C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000880C@ha */
/* 80747A50  38 C6 88 0C */	addi r6, r6, 0x880C /* 0x0000880C@l */
/* 80747A54  38 E1 00 7C */	addi r7, r1, 0x7c
/* 80747A58  39 1C 01 0C */	addi r8, r28, 0x10c
/* 80747A5C  39 3C 04 DC */	addi r9, r28, 0x4dc
/* 80747A60  39 5C 04 EC */	addi r10, r28, 0x4ec
/* 80747A64  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80747A68  4B 90 5A 65 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80747A6C  90 7C 06 28 */	stw r3, 0x628(r28)
lbl_80747A70:
/* 80747A70  80 7C 07 04 */	lwz r3, 0x704(r28)
/* 80747A74  38 80 00 01 */	li r4, 1
/* 80747A78  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80747A7C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80747A80  40 82 00 18 */	bne lbl_80747A98
/* 80747A84  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80747A88  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80747A8C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80747A90  41 82 00 08 */	beq lbl_80747A98
/* 80747A94  38 80 00 00 */	li r4, 0
lbl_80747A98:
/* 80747A98  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80747A9C  41 82 00 F8 */	beq lbl_80747B94
/* 80747AA0  80 1C 06 1C */	lwz r0, 0x61c(r28)
/* 80747AA4  2C 00 00 11 */	cmpwi r0, 0x11
/* 80747AA8  40 82 00 EC */	bne lbl_80747B94
/* 80747AAC  7F 83 E3 78 */	mr r3, r28
/* 80747AB0  4B FF AE A9 */	bl SearchFarP__8daE_PM_cFv
/* 80747AB4  7F 83 E3 78 */	mr r3, r28
/* 80747AB8  38 80 00 06 */	li r4, 6
/* 80747ABC  38 A0 00 02 */	li r5, 2
/* 80747AC0  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 80747AC4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80747AC8  4B FF AB AD */	bl SetAnm__8daE_PM_cFiiff
/* 80747ACC  C0 5C 05 EC */	lfs f2, 0x5ec(r28)
/* 80747AD0  C0 3E 01 58 */	lfs f1, 0x158(r30)
/* 80747AD4  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 80747AD8  EC 21 00 2A */	fadds f1, f1, f0
/* 80747ADC  C0 1C 05 E4 */	lfs f0, 0x5e4(r28)
/* 80747AE0  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80747AE4  D0 3C 04 D4 */	stfs f1, 0x4d4(r28)
/* 80747AE8  D0 5C 04 D8 */	stfs f2, 0x4d8(r28)
/* 80747AEC  38 00 00 14 */	li r0, 0x14
/* 80747AF0  B0 1C 06 22 */	sth r0, 0x622(r28)
/* 80747AF4  80 7C 07 04 */	lwz r3, 0x704(r28)
/* 80747AF8  80 63 00 04 */	lwz r3, 4(r3)
/* 80747AFC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80747B00  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80747B04  38 63 03 90 */	addi r3, r3, 0x390
/* 80747B08  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 80747B0C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 80747B10  80 84 00 00 */	lwz r4, 0(r4)
/* 80747B14  4B BF E9 9D */	bl PSMTXCopy
/* 80747B18  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80747B1C  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 80747B20  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 80747B24  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80747B28  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 80747B2C  38 61 00 7C */	addi r3, r1, 0x7c
/* 80747B30  7C 64 1B 78 */	mr r4, r3
/* 80747B34  4B B2 93 B9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80747B38  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80747B3C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80747B40  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80747B44  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80747B48  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80747B4C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80747B50  7F 83 E3 78 */	mr r3, r28
/* 80747B54  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000880D@ha */
/* 80747B58  38 84 88 0D */	addi r4, r4, 0x880D /* 0x0000880D@l */
/* 80747B5C  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80747B60  4B FF AA A1 */	bl Particle_Set__8daE_PM_cFUs4cXyz
/* 80747B64  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070058@ha */
/* 80747B68  38 03 00 58 */	addi r0, r3, 0x0058 /* 0x00070058@l */
/* 80747B6C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80747B70  38 7C 07 20 */	addi r3, r28, 0x720
/* 80747B74  38 81 00 28 */	addi r4, r1, 0x28
/* 80747B78  38 A0 00 00 */	li r5, 0
/* 80747B7C  38 C0 FF FF */	li r6, -1
/* 80747B80  81 9C 07 20 */	lwz r12, 0x720(r28)
/* 80747B84  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80747B88  7D 89 03 A6 */	mtctr r12
/* 80747B8C  4E 80 04 21 */	bctrl 
/* 80747B90  48 00 01 10 */	b lbl_80747CA0
lbl_80747B94:
/* 80747B94  80 1C 06 1C */	lwz r0, 0x61c(r28)
/* 80747B98  2C 00 00 06 */	cmpwi r0, 6
/* 80747B9C  40 82 01 04 */	bne lbl_80747CA0
/* 80747BA0  A8 1C 06 22 */	lha r0, 0x622(r28)
/* 80747BA4  2C 00 00 00 */	cmpwi r0, 0
/* 80747BA8  40 82 00 F8 */	bne lbl_80747CA0
/* 80747BAC  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 80747BB0  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80747BB4  90 1D 05 70 */	stw r0, 0x570(r29)
/* 80747BB8  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 80747BBC  54 00 05 A8 */	rlwinm r0, r0, 0, 0x16, 0x14
/* 80747BC0  90 1D 05 78 */	stw r0, 0x578(r29)
/* 80747BC4  88 7C 06 11 */	lbz r3, 0x611(r28)
/* 80747BC8  38 03 00 01 */	addi r0, r3, 1
/* 80747BCC  98 1C 06 11 */	stb r0, 0x611(r28)
/* 80747BD0  C0 5C 05 EC */	lfs f2, 0x5ec(r28)
/* 80747BD4  C0 3E 01 00 */	lfs f1, 0x100(r30)
/* 80747BD8  C0 1C 05 E8 */	lfs f0, 0x5e8(r28)
/* 80747BDC  EC 21 00 2A */	fadds f1, f1, f0
/* 80747BE0  C0 1C 05 E4 */	lfs f0, 0x5e4(r28)
/* 80747BE4  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 80747BE8  D0 3C 04 D4 */	stfs f1, 0x4d4(r28)
/* 80747BEC  D0 5C 04 D8 */	stfs f2, 0x4d8(r28)
/* 80747BF0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80747BF4  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80747BF8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80747BFC  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80747C00  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80747C04  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 80747C08  C0 5C 05 EC */	lfs f2, 0x5ec(r28)
/* 80747C0C  C0 3C 05 E8 */	lfs f1, 0x5e8(r28)
/* 80747C10  C0 1C 05 E4 */	lfs f0, 0x5e4(r28)
/* 80747C14  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 80747C18  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 80747C1C  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 80747C20  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80747C24  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80747C28  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80747C2C  7F 83 E3 78 */	mr r3, r28
/* 80747C30  38 81 00 40 */	addi r4, r1, 0x40
/* 80747C34  C0 3E 01 A4 */	lfs f1, 0x1a4(r30)
/* 80747C38  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80747C3C  3C A0 80 75 */	lis r5, data_8074C3E8@ha /* 0x8074C3E8@ha */
/* 80747C40  38 A5 C3 E8 */	addi r5, r5, data_8074C3E8@l /* 0x8074C3E8@l */
/* 80747C44  A8 A5 00 00 */	lha r5, 0(r5)
/* 80747C48  4B FF B6 4D */	bl SetStopCam__8daE_PM_cF4cXyzffs
/* 80747C4C  C0 3C 06 A8 */	lfs f1, 0x6a8(r28)
/* 80747C50  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 80747C54  EC 01 00 2A */	fadds f0, f1, f0
/* 80747C58  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 80747C5C  C0 1C 06 A8 */	lfs f0, 0x6a8(r28)
/* 80747C60  D0 1C 06 90 */	stfs f0, 0x690(r28)
/* 80747C64  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80747C68  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80747C6C  C0 1E 01 54 */	lfs f0, 0x154(r30)
/* 80747C70  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 80747C74  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80747C78  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80747C7C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80747C80  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80747C84  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80747C88  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80747C8C  7F 83 E3 78 */	mr r3, r28
/* 80747C90  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000880D@ha */
/* 80747C94  38 84 88 0D */	addi r4, r4, 0x880D /* 0x0000880D@l */
/* 80747C98  38 A1 00 34 */	addi r5, r1, 0x34
/* 80747C9C  4B FF A9 65 */	bl Particle_Set__8daE_PM_cFUs4cXyz
lbl_80747CA0:
/* 80747CA0  7F 83 E3 78 */	mr r3, r28
/* 80747CA4  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80747CA8  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 80747CAC  4B FF B8 79 */	bl SetMoveCam__8daE_PM_cFff
/* 80747CB0  48 00 02 70 */	b lbl_80747F20
lbl_80747CB4:
/* 80747CB4  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80747CB8  38 00 00 FF */	li r0, 0xff
/* 80747CBC  90 01 00 08 */	stw r0, 8(r1)
/* 80747CC0  38 80 00 00 */	li r4, 0
/* 80747CC4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80747CC8  38 00 FF FF */	li r0, -1
/* 80747CCC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80747CD0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80747CD4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80747CD8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80747CDC  80 9C 06 28 */	lwz r4, 0x628(r28)
/* 80747CE0  38 A0 00 00 */	li r5, 0
/* 80747CE4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000880C@ha */
/* 80747CE8  38 C6 88 0C */	addi r6, r6, 0x880C /* 0x0000880C@l */
/* 80747CEC  38 E1 00 7C */	addi r7, r1, 0x7c
/* 80747CF0  39 1C 01 0C */	addi r8, r28, 0x10c
/* 80747CF4  39 3C 04 DC */	addi r9, r28, 0x4dc
/* 80747CF8  39 5C 04 EC */	addi r10, r28, 0x4ec
/* 80747CFC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80747D00  4B 90 57 CD */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80747D04  90 7C 06 28 */	stw r3, 0x628(r28)
/* 80747D08  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80747D0C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80747D10  EC 01 00 2A */	fadds f0, f1, f0
/* 80747D14  D0 1C 06 A8 */	stfs f0, 0x6a8(r28)
/* 80747D18  3C 60 80 75 */	lis r3, data_8074C3E8@ha /* 0x8074C3E8@ha */
/* 80747D1C  A8 03 C3 E8 */	lha r0, data_8074C3E8@l(r3)  /* 0x8074C3E8@l */
/* 80747D20  B0 1C 06 02 */	sth r0, 0x602(r28)
/* 80747D24  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80747D28  A8 9C 06 02 */	lha r4, 0x602(r28)
/* 80747D2C  38 A0 00 10 */	li r5, 0x10
/* 80747D30  38 C0 10 00 */	li r6, 0x1000
/* 80747D34  4B B2 88 D5 */	bl cLib_addCalcAngleS2__FPssss
/* 80747D38  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80747D3C  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80747D40  80 1C 08 30 */	lwz r0, 0x830(r28)
/* 80747D44  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80747D48  41 82 00 80 */	beq lbl_80747DC8
/* 80747D4C  7F 83 E3 78 */	mr r3, r28
/* 80747D50  38 80 00 07 */	li r4, 7
/* 80747D54  38 A0 00 00 */	li r5, 0
/* 80747D58  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 80747D5C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80747D60  4B FF A9 15 */	bl SetAnm__8daE_PM_cFiiff
/* 80747D64  88 7C 06 11 */	lbz r3, 0x611(r28)
/* 80747D68  38 03 00 01 */	addi r0, r3, 1
/* 80747D6C  98 1C 06 11 */	stb r0, 0x611(r28)
/* 80747D70  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700DD@ha */
/* 80747D74  38 03 00 DD */	addi r0, r3, 0x00DD /* 0x000700DD@l */
/* 80747D78  90 01 00 24 */	stw r0, 0x24(r1)
/* 80747D7C  38 7C 07 20 */	addi r3, r28, 0x720
/* 80747D80  38 81 00 24 */	addi r4, r1, 0x24
/* 80747D84  38 A0 00 00 */	li r5, 0
/* 80747D88  38 C0 FF FF */	li r6, -1
/* 80747D8C  81 9C 07 20 */	lwz r12, 0x720(r28)
/* 80747D90  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80747D94  7D 89 03 A6 */	mtctr r12
/* 80747D98  4E 80 04 21 */	bctrl 
/* 80747D9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700DE@ha */
/* 80747DA0  38 03 00 DE */	addi r0, r3, 0x00DE /* 0x000700DE@l */
/* 80747DA4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80747DA8  38 7C 07 20 */	addi r3, r28, 0x720
/* 80747DAC  38 81 00 20 */	addi r4, r1, 0x20
/* 80747DB0  38 A0 00 00 */	li r5, 0
/* 80747DB4  38 C0 FF FF */	li r6, -1
/* 80747DB8  81 9C 07 20 */	lwz r12, 0x720(r28)
/* 80747DBC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80747DC0  7D 89 03 A6 */	mtctr r12
/* 80747DC4  4E 80 04 21 */	bctrl 
lbl_80747DC8:
/* 80747DC8  7F 83 E3 78 */	mr r3, r28
/* 80747DCC  C0 3E 01 CC */	lfs f1, 0x1cc(r30)
/* 80747DD0  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 80747DD4  4B FF B7 51 */	bl SetMoveCam__8daE_PM_cFff
/* 80747DD8  48 00 01 48 */	b lbl_80747F20
lbl_80747DDC:
/* 80747DDC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80747DE0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80747DE4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80747DE8  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 80747DEC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80747DF0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80747DF4  38 61 00 88 */	addi r3, r1, 0x88
/* 80747DF8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80747DFC  3C A0 80 75 */	lis r5, data_8074C3E8@ha /* 0x8074C3E8@ha */
/* 80747E00  38 A5 C3 E8 */	addi r5, r5, data_8074C3E8@l /* 0x8074C3E8@l */
/* 80747E04  A8 A5 00 00 */	lha r5, 0(r5)
/* 80747E08  38 C1 00 94 */	addi r6, r1, 0x94
/* 80747E0C  4B B2 8F B5 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80747E10  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80747E14  D0 1C 06 B0 */	stfs f0, 0x6b0(r28)
/* 80747E18  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80747E1C  D0 1C 06 B4 */	stfs f0, 0x6b4(r28)
/* 80747E20  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80747E24  D0 1C 06 B8 */	stfs f0, 0x6b8(r28)
/* 80747E28  7F 83 E3 78 */	mr r3, r28
/* 80747E2C  C0 3E 00 FC */	lfs f1, 0xfc(r30)
/* 80747E30  C0 5E 00 F0 */	lfs f2, 0xf0(r30)
/* 80747E34  4B FF B6 F1 */	bl SetMoveCam__8daE_PM_cFff
/* 80747E38  80 7C 07 04 */	lwz r3, 0x704(r28)
/* 80747E3C  38 80 00 01 */	li r4, 1
/* 80747E40  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80747E44  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80747E48  40 82 00 18 */	bne lbl_80747E60
/* 80747E4C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80747E50  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80747E54  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80747E58  41 82 00 08 */	beq lbl_80747E60
/* 80747E5C  38 80 00 00 */	li r4, 0
lbl_80747E60:
/* 80747E60  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80747E64  41 82 00 BC */	beq lbl_80747F20
/* 80747E68  38 A0 00 00 */	li r5, 0
/* 80747E6C  38 60 00 00 */	li r3, 0
/* 80747E70  38 80 FF FF */	li r4, -1
/* 80747E74  48 00 00 14 */	b lbl_80747E88
lbl_80747E78:
/* 80747E78  38 03 05 AC */	addi r0, r3, 0x5ac
/* 80747E7C  7C 9C 01 2E */	stwx r4, r28, r0
/* 80747E80  38 A5 00 01 */	addi r5, r5, 1
/* 80747E84  38 63 00 04 */	addi r3, r3, 4
lbl_80747E88:
/* 80747E88  88 1C 06 00 */	lbz r0, 0x600(r28)
/* 80747E8C  7C 05 00 00 */	cmpw r5, r0
/* 80747E90  41 80 FF E8 */	blt lbl_80747E78
/* 80747E94  38 60 00 00 */	li r3, 0
/* 80747E98  98 7C 06 14 */	stb r3, 0x614(r28)
/* 80747E9C  38 00 00 03 */	li r0, 3
/* 80747EA0  98 1C 06 10 */	stb r0, 0x610(r28)
/* 80747EA4  98 7C 06 11 */	stb r3, 0x611(r28)
/* 80747EA8  98 7C 06 12 */	stb r3, 0x612(r28)
/* 80747EAC  38 00 00 01 */	li r0, 1
/* 80747EB0  98 1C 06 13 */	stb r0, 0x613(r28)
/* 80747EB4  48 00 00 6C */	b lbl_80747F20
lbl_80747EB8:
/* 80747EB8  38 80 00 08 */	li r4, 8
/* 80747EBC  38 A0 00 00 */	li r5, 0
/* 80747EC0  C0 3E 00 E4 */	lfs f1, 0xe4(r30)
/* 80747EC4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80747EC8  4B FF A7 AD */	bl SetAnm__8daE_PM_cFiiff
/* 80747ECC  88 7C 06 11 */	lbz r3, 0x611(r28)
/* 80747ED0  38 03 00 01 */	addi r0, r3, 1
/* 80747ED4  98 1C 06 11 */	stb r0, 0x611(r28)
/* 80747ED8  48 00 00 48 */	b lbl_80747F20
lbl_80747EDC:
/* 80747EDC  80 7C 07 04 */	lwz r3, 0x704(r28)
/* 80747EE0  38 80 00 01 */	li r4, 1
/* 80747EE4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80747EE8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80747EEC  40 82 00 18 */	bne lbl_80747F04
/* 80747EF0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80747EF4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80747EF8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80747EFC  41 82 00 08 */	beq lbl_80747F04
/* 80747F00  38 80 00 00 */	li r4, 0
lbl_80747F04:
/* 80747F04  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80747F08  41 82 00 18 */	beq lbl_80747F20
/* 80747F0C  38 00 00 01 */	li r0, 1
/* 80747F10  98 1C 06 10 */	stb r0, 0x610(r28)
/* 80747F14  38 00 00 00 */	li r0, 0
/* 80747F18  98 1C 06 11 */	stb r0, 0x611(r28)
/* 80747F1C  98 1C 06 12 */	stb r0, 0x612(r28)
lbl_80747F20:
/* 80747F20  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80747F24  4B C1 A3 01 */	bl _restgpr_28
/* 80747F28  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80747F2C  7C 08 03 A6 */	mtlr r0
/* 80747F30  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80747F34  4E 80 00 20 */	blr 
