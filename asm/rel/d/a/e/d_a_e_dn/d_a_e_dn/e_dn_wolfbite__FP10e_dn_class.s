lbl_804E77A8:
/* 804E77A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E77AC  7C 08 02 A6 */	mflr r0
/* 804E77B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E77B4  39 61 00 30 */	addi r11, r1, 0x30
/* 804E77B8  4B E7 AA 24 */	b _savegpr_29
/* 804E77BC  7C 7E 1B 78 */	mr r30, r3
/* 804E77C0  3C 60 80 4F */	lis r3, lit_3789@ha
/* 804E77C4  3B E3 E8 AC */	addi r31, r3, lit_3789@l
/* 804E77C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804E77CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804E77D0  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 804E77D4  38 00 00 0A */	li r0, 0xa
/* 804E77D8  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
/* 804E77DC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804E77E0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 804E77E4  C0 5F 00 C0 */	lfs f2, 0xc0(r31)
/* 804E77E8  4B D8 82 98 */	b cLib_addCalc0__FPfff
/* 804E77EC  A8 1E 05 B4 */	lha r0, 0x5b4(r30)
/* 804E77F0  2C 00 00 02 */	cmpwi r0, 2
/* 804E77F4  41 82 00 D0 */	beq lbl_804E78C4
/* 804E77F8  40 80 00 14 */	bge lbl_804E780C
/* 804E77FC  2C 00 00 00 */	cmpwi r0, 0
/* 804E7800  41 82 00 18 */	beq lbl_804E7818
/* 804E7804  40 80 00 6C */	bge lbl_804E7870
/* 804E7808  48 00 03 14 */	b lbl_804E7B1C
lbl_804E780C:
/* 804E780C  2C 00 00 04 */	cmpwi r0, 4
/* 804E7810  40 80 03 0C */	bge lbl_804E7B1C
/* 804E7814  48 00 02 A0 */	b lbl_804E7AB4
lbl_804E7818:
/* 804E7818  7F C3 F3 78 */	mr r3, r30
/* 804E781C  38 80 00 17 */	li r4, 0x17
/* 804E7820  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804E7824  38 A0 00 00 */	li r5, 0
/* 804E7828  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E782C  4B FF DA A5 */	bl anm_init__FP10e_dn_classifUcf
/* 804E7830  38 00 00 01 */	li r0, 1
/* 804E7834  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7838  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007004A@ha */
/* 804E783C  38 03 00 4A */	addi r0, r3, 0x004A /* 0x0007004A@l */
/* 804E7840  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E7844  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E7848  38 81 00 14 */	addi r4, r1, 0x14
/* 804E784C  38 A0 FF FF */	li r5, -1
/* 804E7850  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E7854  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E7858  7D 89 03 A6 */	mtctr r12
/* 804E785C  4E 80 04 21 */	bctrl 
/* 804E7860  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 804E7864  38 03 FF F6 */	addi r0, r3, -10
/* 804E7868  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 804E786C  48 00 02 B0 */	b lbl_804E7B1C
lbl_804E7870:
/* 804E7870  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E7874  38 80 00 01 */	li r4, 1
/* 804E7878  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E787C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E7880  40 82 00 18 */	bne lbl_804E7898
/* 804E7884  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E7888  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E788C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E7890  41 82 00 08 */	beq lbl_804E7898
/* 804E7894  38 80 00 00 */	li r4, 0
lbl_804E7898:
/* 804E7898  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E789C  41 82 02 80 */	beq lbl_804E7B1C
/* 804E78A0  7F C3 F3 78 */	mr r3, r30
/* 804E78A4  38 80 00 1A */	li r4, 0x1a
/* 804E78A8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804E78AC  38 A0 00 02 */	li r5, 2
/* 804E78B0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E78B4  4B FF DA 1D */	bl anm_init__FP10e_dn_classifUcf
/* 804E78B8  38 00 00 02 */	li r0, 2
/* 804E78BC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E78C0  48 00 02 5C */	b lbl_804E7B1C
lbl_804E78C4:
/* 804E78C4  80 1E 05 E0 */	lwz r0, 0x5e0(r30)
/* 804E78C8  2C 00 00 18 */	cmpwi r0, 0x18
/* 804E78CC  40 82 00 4C */	bne lbl_804E7918
/* 804E78D0  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E78D4  38 80 00 01 */	li r4, 1
/* 804E78D8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E78DC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E78E0  40 82 00 18 */	bne lbl_804E78F8
/* 804E78E4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E78E8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E78EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E78F0  41 82 00 08 */	beq lbl_804E78F8
/* 804E78F4  38 80 00 00 */	li r4, 0
lbl_804E78F8:
/* 804E78F8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E78FC  41 82 00 1C */	beq lbl_804E7918
/* 804E7900  7F C3 F3 78 */	mr r3, r30
/* 804E7904  38 80 00 1A */	li r4, 0x1a
/* 804E7908  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804E790C  38 A0 00 02 */	li r5, 2
/* 804E7910  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E7914  4B FF D9 BD */	bl anm_init__FP10e_dn_classifUcf
lbl_804E7918:
/* 804E7918  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 804E791C  2C 00 00 00 */	cmpwi r0, 0
/* 804E7920  40 81 00 10 */	ble lbl_804E7930
/* 804E7924  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 804E7928  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 804E792C  41 82 01 44 */	beq lbl_804E7A70
lbl_804E7930:
/* 804E7930  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 804E7934  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 804E7938  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 804E793C  7F C3 F3 78 */	mr r3, r30
/* 804E7940  38 80 00 18 */	li r4, 0x18
/* 804E7944  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 804E7948  38 A0 00 00 */	li r5, 0
/* 804E794C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E7950  4B FF D9 81 */	bl anm_init__FP10e_dn_classifUcf
/* 804E7954  A8 7E 05 62 */	lha r3, 0x562(r30)
/* 804E7958  38 03 FF F6 */	addi r0, r3, -10
/* 804E795C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 804E7960  A8 1E 05 62 */	lha r0, 0x562(r30)
/* 804E7964  2C 00 00 00 */	cmpwi r0, 0
/* 804E7968  41 81 00 C0 */	bgt lbl_804E7A28
/* 804E796C  80 1D 05 78 */	lwz r0, 0x578(r29)
/* 804E7970  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 804E7974  90 1D 05 78 */	stw r0, 0x578(r29)
/* 804E7978  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 804E797C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 804E7980  38 03 80 00 */	addi r0, r3, -32768
/* 804E7984  7C 04 00 50 */	subf r0, r4, r0
/* 804E7988  B0 1E 07 50 */	sth r0, 0x750(r30)
/* 804E798C  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 804E7990  D0 1E 07 4C */	stfs f0, 0x74c(r30)
/* 804E7994  38 00 00 15 */	li r0, 0x15
/* 804E7998  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E799C  38 00 00 00 */	li r0, 0
/* 804E79A0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E79A4  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 804E79A8  3C 63 00 01 */	addis r3, r3, 1
/* 804E79AC  38 03 80 00 */	addi r0, r3, -32768
/* 804E79B0  B0 1E 07 26 */	sth r0, 0x726(r30)
/* 804E79B4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E79B8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 804E79BC  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804E79C0  D0 1E 07 04 */	stfs f0, 0x704(r30)
/* 804E79C4  38 00 00 32 */	li r0, 0x32
/* 804E79C8  B0 1E 08 28 */	sth r0, 0x828(r30)
/* 804E79CC  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E79D0  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 804E79D4  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 804E79D8  38 A0 00 20 */	li r5, 0x20
/* 804E79DC  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E79E0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 804E79E4  7D 89 03 A6 */	mtctr r12
/* 804E79E8  4E 80 04 21 */	bctrl 
/* 804E79EC  38 00 00 01 */	li r0, 1
/* 804E79F0  98 1E 07 10 */	stb r0, 0x710(r30)
/* 804E79F4  38 00 03 E8 */	li r0, 0x3e8
/* 804E79F8  B0 1E 06 E8 */	sth r0, 0x6e8(r30)
/* 804E79FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070022@ha */
/* 804E7A00  38 03 00 22 */	addi r0, r3, 0x0022 /* 0x00070022@l */
/* 804E7A04  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E7A08  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E7A0C  38 81 00 10 */	addi r4, r1, 0x10
/* 804E7A10  38 A0 FF FF */	li r5, -1
/* 804E7A14  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E7A18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E7A1C  7D 89 03 A6 */	mtctr r12
/* 804E7A20  4E 80 04 21 */	bctrl 
/* 804E7A24  48 00 00 F8 */	b lbl_804E7B1C
lbl_804E7A28:
/* 804E7A28  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E7A2C  3C 80 00 04 */	lis r4, 0x0004 /* 0x00040003@ha */
/* 804E7A30  38 84 00 03 */	addi r4, r4, 0x0003 /* 0x00040003@l */
/* 804E7A34  38 A0 00 1E */	li r5, 0x1e
/* 804E7A38  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E7A3C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 804E7A40  7D 89 03 A6 */	mtctr r12
/* 804E7A44  4E 80 04 21 */	bctrl 
/* 804E7A48  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070021@ha */
/* 804E7A4C  38 03 00 21 */	addi r0, r3, 0x0021 /* 0x00070021@l */
/* 804E7A50  90 01 00 0C */	stw r0, 0xc(r1)
/* 804E7A54  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E7A58  38 81 00 0C */	addi r4, r1, 0xc
/* 804E7A5C  38 A0 FF FF */	li r5, -1
/* 804E7A60  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E7A64  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E7A68  7D 89 03 A6 */	mtctr r12
/* 804E7A6C  4E 80 04 21 */	bctrl 
lbl_804E7A70:
/* 804E7A70  7F A3 EB 78 */	mr r3, r29
/* 804E7A74  7F C4 F3 78 */	mr r4, r30
/* 804E7A78  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 804E7A7C  81 8C 01 E0 */	lwz r12, 0x1e0(r12)
/* 804E7A80  7D 89 03 A6 */	mtctr r12
/* 804E7A84  4E 80 04 21 */	bctrl 
/* 804E7A88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E7A8C  40 82 00 90 */	bne lbl_804E7B1C
/* 804E7A90  7F C3 F3 78 */	mr r3, r30
/* 804E7A94  38 80 00 19 */	li r4, 0x19
/* 804E7A98  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804E7A9C  38 A0 00 00 */	li r5, 0
/* 804E7AA0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 804E7AA4  4B FF D8 2D */	bl anm_init__FP10e_dn_classifUcf
/* 804E7AA8  38 00 00 03 */	li r0, 3
/* 804E7AAC  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7AB0  48 00 00 6C */	b lbl_804E7B1C
lbl_804E7AB4:
/* 804E7AB4  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 804E7AB8  38 80 00 01 */	li r4, 1
/* 804E7ABC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 804E7AC0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804E7AC4  40 82 00 18 */	bne lbl_804E7ADC
/* 804E7AC8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804E7ACC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 804E7AD0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804E7AD4  41 82 00 08 */	beq lbl_804E7ADC
/* 804E7AD8  38 80 00 00 */	li r4, 0
lbl_804E7ADC:
/* 804E7ADC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 804E7AE0  41 82 00 3C */	beq lbl_804E7B1C
/* 804E7AE4  38 00 00 03 */	li r0, 3
/* 804E7AE8  B0 1E 06 CE */	sth r0, 0x6ce(r30)
/* 804E7AEC  38 00 00 00 */	li r0, 0
/* 804E7AF0  B0 1E 05 B4 */	sth r0, 0x5b4(r30)
/* 804E7AF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007004C@ha */
/* 804E7AF8  38 03 00 4C */	addi r0, r3, 0x004C /* 0x0007004C@l */
/* 804E7AFC  90 01 00 08 */	stw r0, 8(r1)
/* 804E7B00  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 804E7B04  38 81 00 08 */	addi r4, r1, 8
/* 804E7B08  38 A0 FF FF */	li r5, -1
/* 804E7B0C  81 9E 05 E8 */	lwz r12, 0x5e8(r30)
/* 804E7B10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804E7B14  7D 89 03 A6 */	mtctr r12
/* 804E7B18  4E 80 04 21 */	bctrl 
lbl_804E7B1C:
/* 804E7B1C  39 61 00 30 */	addi r11, r1, 0x30
/* 804E7B20  4B E7 A7 08 */	b _restgpr_29
/* 804E7B24  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E7B28  7C 08 03 A6 */	mtlr r0
/* 804E7B2C  38 21 00 30 */	addi r1, r1, 0x30
/* 804E7B30  4E 80 00 20 */	blr 
