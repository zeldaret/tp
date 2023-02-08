lbl_806E77C0:
/* 806E77C0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 806E77C4  7C 08 02 A6 */	mflr r0
/* 806E77C8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 806E77CC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806E77D0  4B C7 AA 0D */	bl _savegpr_29
/* 806E77D4  7C 7E 1B 78 */	mr r30, r3
/* 806E77D8  3C 60 80 6F */	lis r3, lit_3905@ha /* 0x806EA1F4@ha */
/* 806E77DC  3B E3 A1 F4 */	addi r31, r3, lit_3905@l /* 0x806EA1F4@l */
/* 806E77E0  38 61 00 44 */	addi r3, r1, 0x44
/* 806E77E4  4B 99 04 85 */	bl __ct__11dBgS_LinChkFv
/* 806E77E8  80 1E 07 14 */	lwz r0, 0x714(r30)
/* 806E77EC  2C 00 00 0A */	cmpwi r0, 0xa
/* 806E77F0  41 82 02 D0 */	beq lbl_806E7AC0
/* 806E77F4  40 80 00 1C */	bge lbl_806E7810
/* 806E77F8  2C 00 00 01 */	cmpwi r0, 1
/* 806E77FC  41 82 01 F0 */	beq lbl_806E79EC
/* 806E7800  40 80 06 50 */	bge lbl_806E7E50
/* 806E7804  2C 00 00 00 */	cmpwi r0, 0
/* 806E7808  40 80 00 14 */	bge lbl_806E781C
/* 806E780C  48 00 06 44 */	b lbl_806E7E50
lbl_806E7810:
/* 806E7810  2C 00 00 0C */	cmpwi r0, 0xc
/* 806E7814  40 80 06 3C */	bge lbl_806E7E50
/* 806E7818  48 00 03 A0 */	b lbl_806E7BB8
lbl_806E781C:
/* 806E781C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E7820  D0 1E 07 A4 */	stfs f0, 0x7a4(r30)
/* 806E7824  38 00 00 00 */	li r0, 0
/* 806E7828  B0 1E 07 A8 */	sth r0, 0x7a8(r30)
/* 806E782C  D0 1E 07 68 */	stfs f0, 0x768(r30)
/* 806E7830  38 00 00 01 */	li r0, 1
/* 806E7834  98 1E 07 89 */	stb r0, 0x789(r30)
/* 806E7838  38 61 00 20 */	addi r3, r1, 0x20
/* 806E783C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806E7840  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806E7844  4B B7 F2 F1 */	bl __mi__4cXyzCFRC3Vec
/* 806E7848  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806E784C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E7850  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806E7854  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806E7858  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806E785C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806E7860  38 61 00 38 */	addi r3, r1, 0x38
/* 806E7864  4B B7 F8 C5 */	bl atan2sX_Z__4cXyzCFv
/* 806E7868  7C 7D 1B 78 */	mr r29, r3
/* 806E786C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806E7870  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806E7874  80 63 00 00 */	lwz r3, 0(r3)
/* 806E7878  3C 9D 00 01 */	addis r4, r29, 1
/* 806E787C  38 04 80 00 */	addi r0, r4, -32768
/* 806E7880  7C 04 07 34 */	extsh r4, r0
/* 806E7884  4B 92 4B 59 */	bl mDoMtx_YrotS__FPA4_fs
/* 806E7888  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E788C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E7890  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806E7894  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806E7898  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 806E789C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806E78A0  38 61 00 38 */	addi r3, r1, 0x38
/* 806E78A4  38 81 00 2C */	addi r4, r1, 0x2c
/* 806E78A8  4B B8 96 45 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806E78AC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806E78B0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E78B4  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806E78B8  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 806E78BC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806E78C0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806E78C4  C0 1E 07 A4 */	lfs f0, 0x7a4(r30)
/* 806E78C8  EC 01 00 2A */	fadds f0, f1, f0
/* 806E78CC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806E78D0  38 61 00 2C */	addi r3, r1, 0x2c
/* 806E78D4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806E78D8  7C 65 1B 78 */	mr r5, r3
/* 806E78DC  4B C5 F7 B5 */	bl PSVECAdd
/* 806E78E0  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 806E78E4  C0 1E 07 A4 */	lfs f0, 0x7a4(r30)
/* 806E78E8  EC 01 00 2A */	fadds f0, f1, f0
/* 806E78EC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806E78F0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806E78F4  D0 1E 07 20 */	stfs f0, 0x720(r30)
/* 806E78F8  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806E78FC  D0 1E 07 24 */	stfs f0, 0x724(r30)
/* 806E7900  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806E7904  D0 1E 07 28 */	stfs f0, 0x728(r30)
/* 806E7908  38 61 00 44 */	addi r3, r1, 0x44
/* 806E790C  38 81 00 38 */	addi r4, r1, 0x38
/* 806E7910  38 A1 00 2C */	addi r5, r1, 0x2c
/* 806E7914  7F C6 F3 78 */	mr r6, r30
/* 806E7918  4B 99 04 4D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806E791C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E7920  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E7924  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806E7928  38 81 00 44 */	addi r4, r1, 0x44
/* 806E792C  4B 98 CA 89 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806E7930  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E7934  41 82 00 10 */	beq lbl_806E7944
/* 806E7938  B3 BE 04 DE */	sth r29, 0x4de(r30)
/* 806E793C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 806E7940  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_806E7944:
/* 806E7944  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E7948  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E794C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806E7950  7F C4 F3 78 */	mr r4, r30
/* 806E7954  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806E7958  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 806E795C  7D 89 03 A6 */	mtctr r12
/* 806E7960  4E 80 04 21 */	bctrl 
/* 806E7964  2C 03 00 00 */	cmpwi r3, 0
/* 806E7968  41 82 00 1C */	beq lbl_806E7984
/* 806E796C  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 806E7970  7F C4 F3 78 */	mr r4, r30
/* 806E7974  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806E7978  81 8C 00 F0 */	lwz r12, 0xf0(r12)
/* 806E797C  7D 89 03 A6 */	mtctr r12
/* 806E7980  4E 80 04 21 */	bctrl 
lbl_806E7984:
/* 806E7984  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 806E7988  60 00 02 00 */	ori r0, r0, 0x200
/* 806E798C  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 806E7990  38 00 00 00 */	li r0, 0
/* 806E7994  98 1E 07 8A */	stb r0, 0x78a(r30)
/* 806E7998  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806E799C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 806E79A0  7F C3 F3 78 */	mr r3, r30
/* 806E79A4  38 80 00 08 */	li r4, 8
/* 806E79A8  38 A0 00 00 */	li r5, 0
/* 806E79AC  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806E79B0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E79B4  4B FF EB 61 */	bl setBck__8daE_HP_cFiUcff
/* 806E79B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007052C@ha */
/* 806E79BC  38 03 05 2C */	addi r0, r3, 0x052C /* 0x0007052C@l */
/* 806E79C0  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E79C4  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806E79C8  38 81 00 10 */	addi r4, r1, 0x10
/* 806E79CC  38 A0 FF FF */	li r5, -1
/* 806E79D0  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806E79D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E79D8  7D 89 03 A6 */	mtctr r12
/* 806E79DC  4E 80 04 21 */	bctrl 
/* 806E79E0  38 00 00 01 */	li r0, 1
/* 806E79E4  90 1E 07 14 */	stw r0, 0x714(r30)
/* 806E79E8  48 00 04 68 */	b lbl_806E7E50
lbl_806E79EC:
/* 806E79EC  80 BE 07 80 */	lwz r5, 0x780(r30)
/* 806E79F0  2C 05 00 09 */	cmpwi r5, 9
/* 806E79F4  40 82 00 78 */	bne lbl_806E7A6C
/* 806E79F8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806E79FC  38 80 00 01 */	li r4, 1
/* 806E7A00  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806E7A04  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E7A08  40 82 00 18 */	bne lbl_806E7A20
/* 806E7A0C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E7A10  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E7A14  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E7A18  41 82 00 08 */	beq lbl_806E7A20
/* 806E7A1C  38 80 00 00 */	li r4, 0
lbl_806E7A20:
/* 806E7A20  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806E7A24  41 82 00 48 */	beq lbl_806E7A6C
/* 806E7A28  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E7A2C  D0 1E 07 A0 */	stfs f0, 0x7a0(r30)
/* 806E7A30  38 00 00 07 */	li r0, 7
/* 806E7A34  98 1E 07 1D */	stb r0, 0x71d(r30)
/* 806E7A38  3C 60 80 6F */	lis r3, l_HIO@ha /* 0x806EA4F8@ha */
/* 806E7A3C  38 63 A4 F8 */	addi r3, r3, l_HIO@l /* 0x806EA4F8@l */
/* 806E7A40  A8 03 00 0E */	lha r0, 0xe(r3)
/* 806E7A44  98 1E 07 1C */	stb r0, 0x71c(r30)
/* 806E7A48  7F C3 F3 78 */	mr r3, r30
/* 806E7A4C  38 80 00 0F */	li r4, 0xf
/* 806E7A50  38 A0 00 02 */	li r5, 2
/* 806E7A54  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806E7A58  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E7A5C  4B FF EA B9 */	bl setBck__8daE_HP_cFiUcff
/* 806E7A60  38 00 00 0A */	li r0, 0xa
/* 806E7A64  90 1E 07 14 */	stw r0, 0x714(r30)
/* 806E7A68  48 00 03 E8 */	b lbl_806E7E50
lbl_806E7A6C:
/* 806E7A6C  2C 05 00 08 */	cmpwi r5, 8
/* 806E7A70  40 82 03 E0 */	bne lbl_806E7E50
/* 806E7A74  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806E7A78  38 80 00 01 */	li r4, 1
/* 806E7A7C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806E7A80  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E7A84  40 82 00 18 */	bne lbl_806E7A9C
/* 806E7A88  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E7A8C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E7A90  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E7A94  41 82 00 08 */	beq lbl_806E7A9C
/* 806E7A98  38 80 00 00 */	li r4, 0
lbl_806E7A9C:
/* 806E7A9C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806E7AA0  41 82 03 B0 */	beq lbl_806E7E50
/* 806E7AA4  7F C3 F3 78 */	mr r3, r30
/* 806E7AA8  38 80 00 09 */	li r4, 9
/* 806E7AAC  38 A0 00 00 */	li r5, 0
/* 806E7AB0  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806E7AB4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E7AB8  4B FF EA 5D */	bl setBck__8daE_HP_cFiUcff
/* 806E7ABC  48 00 03 94 */	b lbl_806E7E50
lbl_806E7AC0:
/* 806E7AC0  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 806E7AC4  60 00 00 01 */	ori r0, r0, 1
/* 806E7AC8  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 806E7ACC  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 806E7AD0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 806E7AD4  41 82 00 70 */	beq lbl_806E7B44
/* 806E7AD8  7F C3 F3 78 */	mr r3, r30
/* 806E7ADC  38 80 00 07 */	li r4, 7
/* 806E7AE0  38 A0 00 00 */	li r5, 0
/* 806E7AE4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806E7AE8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E7AEC  4B FF EA 29 */	bl setBck__8daE_HP_cFiUcff
/* 806E7AF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007052D@ha */
/* 806E7AF4  38 03 05 2D */	addi r0, r3, 0x052D /* 0x0007052D@l */
/* 806E7AF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806E7AFC  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806E7B00  38 81 00 0C */	addi r4, r1, 0xc
/* 806E7B04  38 A0 FF FF */	li r5, -1
/* 806E7B08  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806E7B0C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E7B10  7D 89 03 A6 */	mtctr r12
/* 806E7B14  4E 80 04 21 */	bctrl 
/* 806E7B18  38 00 00 1F */	li r0, 0x1f
/* 806E7B1C  98 1E 07 1C */	stb r0, 0x71c(r30)
/* 806E7B20  A0 7E 05 8E */	lhz r3, 0x58e(r30)
/* 806E7B24  38 00 FF E8 */	li r0, -24
/* 806E7B28  7C 60 00 38 */	and r0, r3, r0
/* 806E7B2C  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 806E7B30  7F C3 F3 78 */	mr r3, r30
/* 806E7B34  38 80 00 06 */	li r4, 6
/* 806E7B38  38 A0 00 00 */	li r5, 0
/* 806E7B3C  4B FF EA 85 */	bl setActionMode__8daE_HP_cFii
/* 806E7B40  48 00 03 10 */	b lbl_806E7E50
lbl_806E7B44:
/* 806E7B44  88 1E 07 1C */	lbz r0, 0x71c(r30)
/* 806E7B48  28 00 00 00 */	cmplwi r0, 0
/* 806E7B4C  40 82 03 04 */	bne lbl_806E7E50
/* 806E7B50  A0 7E 05 8E */	lhz r3, 0x58e(r30)
/* 806E7B54  38 00 FF E8 */	li r0, -24
/* 806E7B58  7C 60 00 38 */	and r0, r3, r0
/* 806E7B5C  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 806E7B60  7F C3 F3 78 */	mr r3, r30
/* 806E7B64  38 80 00 0B */	li r4, 0xb
/* 806E7B68  38 A0 00 00 */	li r5, 0
/* 806E7B6C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 806E7B70  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806E7B74  4B FF E9 A1 */	bl setBck__8daE_HP_cFiUcff
/* 806E7B78  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070530@ha */
/* 806E7B7C  38 03 05 30 */	addi r0, r3, 0x0530 /* 0x00070530@l */
/* 806E7B80  90 01 00 08 */	stw r0, 8(r1)
/* 806E7B84  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 806E7B88  38 81 00 08 */	addi r4, r1, 8
/* 806E7B8C  38 A0 FF FF */	li r5, -1
/* 806E7B90  81 9E 05 C8 */	lwz r12, 0x5c8(r30)
/* 806E7B94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806E7B98  7D 89 03 A6 */	mtctr r12
/* 806E7B9C  4E 80 04 21 */	bctrl 
/* 806E7BA0  38 00 00 64 */	li r0, 0x64
/* 806E7BA4  98 1E 09 D8 */	stb r0, 0x9d8(r30)
/* 806E7BA8  80 7E 07 14 */	lwz r3, 0x714(r30)
/* 806E7BAC  38 03 00 01 */	addi r0, r3, 1
/* 806E7BB0  90 1E 07 14 */	stw r0, 0x714(r30)
/* 806E7BB4  48 00 02 9C */	b lbl_806E7E50
lbl_806E7BB8:
/* 806E7BB8  38 7E 07 72 */	addi r3, r30, 0x772
/* 806E7BBC  38 80 00 00 */	li r4, 0
/* 806E7BC0  38 A0 00 04 */	li r5, 4
/* 806E7BC4  38 C0 01 00 */	li r6, 0x100
/* 806E7BC8  4B B8 8A 41 */	bl cLib_addCalcAngleS2__FPssss
/* 806E7BCC  38 7E 07 76 */	addi r3, r30, 0x776
/* 806E7BD0  38 80 00 00 */	li r4, 0
/* 806E7BD4  38 A0 00 04 */	li r5, 4
/* 806E7BD8  38 C0 01 00 */	li r6, 0x100
/* 806E7BDC  4B B8 8A 2D */	bl cLib_addCalcAngleS2__FPssss
/* 806E7BE0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806E7BE4  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 806E7BE8  FC 00 08 1E */	fctiwz f0, f1
/* 806E7BEC  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 806E7BF0  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 806E7BF4  2C 00 00 10 */	cmpwi r0, 0x10
/* 806E7BF8  41 80 00 50 */	blt lbl_806E7C48
/* 806E7BFC  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 806E7C00  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 806E7C04  2C 00 00 17 */	cmpwi r0, 0x17
/* 806E7C08  41 81 00 40 */	bgt lbl_806E7C48
/* 806E7C0C  C0 3E 07 A4 */	lfs f1, 0x7a4(r30)
/* 806E7C10  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 806E7C14  EC 01 00 2A */	fadds f0, f1, f0
/* 806E7C18  D0 1E 07 A4 */	stfs f0, 0x7a4(r30)
/* 806E7C1C  C0 3E 07 A4 */	lfs f1, 0x7a4(r30)
/* 806E7C20  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 806E7C24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E7C28  40 81 00 08 */	ble lbl_806E7C30
/* 806E7C2C  D0 1E 07 A4 */	stfs f0, 0x7a4(r30)
lbl_806E7C30:
/* 806E7C30  38 7E 07 70 */	addi r3, r30, 0x770
/* 806E7C34  38 80 C0 00 */	li r4, -16384
/* 806E7C38  38 A0 00 01 */	li r5, 1
/* 806E7C3C  38 C0 10 00 */	li r6, 0x1000
/* 806E7C40  4B B8 89 C9 */	bl cLib_addCalcAngleS2__FPssss
/* 806E7C44  48 00 00 38 */	b lbl_806E7C7C
lbl_806E7C48:
/* 806E7C48  FC 00 08 1E */	fctiwz f0, f1
/* 806E7C4C  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 806E7C50  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 806E7C54  2C 00 00 1C */	cmpwi r0, 0x1c
/* 806E7C58  41 80 00 24 */	blt lbl_806E7C7C
/* 806E7C5C  A8 7E 07 A8 */	lha r3, 0x7a8(r30)
/* 806E7C60  38 03 00 01 */	addi r0, r3, 1
/* 806E7C64  B0 1E 07 A8 */	sth r0, 0x7a8(r30)
/* 806E7C68  38 7E 07 70 */	addi r3, r30, 0x770
/* 806E7C6C  38 80 00 00 */	li r4, 0
/* 806E7C70  38 A0 00 04 */	li r5, 4
/* 806E7C74  38 C0 04 00 */	li r6, 0x400
/* 806E7C78  4B B8 89 91 */	bl cLib_addCalcAngleS2__FPssss
lbl_806E7C7C:
/* 806E7C7C  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 806E7C80  A8 1E 07 A8 */	lha r0, 0x7a8(r30)
/* 806E7C84  C8 3F 00 88 */	lfd f1, 0x88(r31)
/* 806E7C88  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E7C8C  90 01 00 BC */	stw r0, 0xbc(r1)
/* 806E7C90  3C 00 43 30 */	lis r0, 0x4330
/* 806E7C94  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 806E7C98  C8 01 00 B8 */	lfd f0, 0xb8(r1)
/* 806E7C9C  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E7CA0  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E7CA4  FC 00 00 1E */	fctiwz f0, f0
/* 806E7CA8  D8 01 00 C0 */	stfd f0, 0xc0(r1)
/* 806E7CAC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806E7CB0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806E7CB4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 806E7CB8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 806E7CBC  7C 43 04 2E */	lfsx f2, r3, r0
/* 806E7CC0  38 7E 07 68 */	addi r3, r30, 0x768
/* 806E7CC4  C0 3E 07 A4 */	lfs f1, 0x7a4(r30)
/* 806E7CC8  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 806E7CCC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806E7CD0  EC 21 00 2A */	fadds f1, f1, f0
/* 806E7CD4  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 806E7CD8  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 806E7CDC  4B B8 7D 61 */	bl cLib_addCalc2__FPffff
/* 806E7CE0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806E7CE4  38 80 00 01 */	li r4, 1
/* 806E7CE8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806E7CEC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806E7CF0  40 82 00 18 */	bne lbl_806E7D08
/* 806E7CF4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806E7CF8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806E7CFC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E7D00  41 82 00 08 */	beq lbl_806E7D08
/* 806E7D04  38 80 00 00 */	li r4, 0
lbl_806E7D08:
/* 806E7D08  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806E7D0C  41 82 01 44 */	beq lbl_806E7E50
/* 806E7D10  38 00 00 28 */	li r0, 0x28
/* 806E7D14  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 806E7D18  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 806E7D1C  54 00 05 EA */	rlwinm r0, r0, 0, 0x17, 0x15
/* 806E7D20  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 806E7D24  38 00 00 00 */	li r0, 0
/* 806E7D28  B0 1E 07 72 */	sth r0, 0x772(r30)
/* 806E7D2C  B0 1E 07 76 */	sth r0, 0x776(r30)
/* 806E7D30  38 61 00 14 */	addi r3, r1, 0x14
/* 806E7D34  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806E7D38  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806E7D3C  4B B7 ED F9 */	bl __mi__4cXyzCFRC3Vec
/* 806E7D40  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806E7D44  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E7D48  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806E7D4C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806E7D50  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806E7D54  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806E7D58  38 61 00 38 */	addi r3, r1, 0x38
/* 806E7D5C  4B B7 F3 CD */	bl atan2sX_Z__4cXyzCFv
/* 806E7D60  7C 64 1B 78 */	mr r4, r3
/* 806E7D64  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 806E7D68  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 806E7D6C  80 63 00 00 */	lwz r3, 0(r3)
/* 806E7D70  4B 92 46 6D */	bl mDoMtx_YrotS__FPA4_fs
/* 806E7D74  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806E7D78  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E7D7C  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806E7D80  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806E7D84  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 806E7D88  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806E7D8C  38 61 00 38 */	addi r3, r1, 0x38
/* 806E7D90  38 81 00 2C */	addi r4, r1, 0x2c
/* 806E7D94  4B B8 91 59 */	bl MtxPosition__FP4cXyzP4cXyz
/* 806E7D98  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806E7D9C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E7DA0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806E7DA4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 806E7DA8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806E7DAC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806E7DB0  C0 1E 07 A4 */	lfs f0, 0x7a4(r30)
/* 806E7DB4  EC 01 00 2A */	fadds f0, f1, f0
/* 806E7DB8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806E7DBC  38 61 00 2C */	addi r3, r1, 0x2c
/* 806E7DC0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806E7DC4  7C 65 1B 78 */	mr r5, r3
/* 806E7DC8  4B C5 F2 C9 */	bl PSVECAdd
/* 806E7DCC  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 806E7DD0  C0 1E 07 A4 */	lfs f0, 0x7a4(r30)
/* 806E7DD4  EC 01 00 2A */	fadds f0, f1, f0
/* 806E7DD8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806E7DDC  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806E7DE0  D0 1E 07 20 */	stfs f0, 0x720(r30)
/* 806E7DE4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806E7DE8  D0 1E 07 24 */	stfs f0, 0x724(r30)
/* 806E7DEC  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 806E7DF0  D0 1E 07 28 */	stfs f0, 0x728(r30)
/* 806E7DF4  38 00 00 01 */	li r0, 1
/* 806E7DF8  98 01 00 98 */	stb r0, 0x98(r1)
/* 806E7DFC  38 61 00 44 */	addi r3, r1, 0x44
/* 806E7E00  38 81 00 38 */	addi r4, r1, 0x38
/* 806E7E04  38 A1 00 2C */	addi r5, r1, 0x2c
/* 806E7E08  7F C6 F3 78 */	mr r6, r30
/* 806E7E0C  4B 98 FF 59 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806E7E10  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806E7E14  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806E7E18  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806E7E1C  38 81 00 44 */	addi r4, r1, 0x44
/* 806E7E20  4B 98 C5 95 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806E7E24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E7E28  41 82 00 18 */	beq lbl_806E7E40
/* 806E7E2C  7F C3 F3 78 */	mr r3, r30
/* 806E7E30  38 80 00 02 */	li r4, 2
/* 806E7E34  38 A0 00 00 */	li r5, 0
/* 806E7E38  4B FF E7 89 */	bl setActionMode__8daE_HP_cFii
/* 806E7E3C  48 00 00 14 */	b lbl_806E7E50
lbl_806E7E40:
/* 806E7E40  7F C3 F3 78 */	mr r3, r30
/* 806E7E44  38 80 00 01 */	li r4, 1
/* 806E7E48  38 A0 00 00 */	li r5, 0
/* 806E7E4C  4B FF E7 75 */	bl setActionMode__8daE_HP_cFii
lbl_806E7E50:
/* 806E7E50  80 1E 07 14 */	lwz r0, 0x714(r30)
/* 806E7E54  2C 00 00 02 */	cmpwi r0, 2
/* 806E7E58  41 81 00 18 */	bgt lbl_806E7E70
/* 806E7E5C  38 7E 07 70 */	addi r3, r30, 0x770
/* 806E7E60  38 80 B5 C8 */	li r4, -19000
/* 806E7E64  38 A0 00 02 */	li r5, 2
/* 806E7E68  38 C0 08 00 */	li r6, 0x800
/* 806E7E6C  4B B8 87 9D */	bl cLib_addCalcAngleS2__FPssss
lbl_806E7E70:
/* 806E7E70  38 61 00 44 */	addi r3, r1, 0x44
/* 806E7E74  38 80 FF FF */	li r4, -1
/* 806E7E78  4B 98 FE 65 */	bl __dt__11dBgS_LinChkFv
/* 806E7E7C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 806E7E80  4B C7 A3 A9 */	bl _restgpr_29
/* 806E7E84  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 806E7E88  7C 08 03 A6 */	mtlr r0
/* 806E7E8C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 806E7E90  4E 80 00 20 */	blr 
