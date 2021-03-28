lbl_800C494C:
/* 800C494C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C4950  7C 08 02 A6 */	mflr r0
/* 800C4954  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C4958  39 61 00 20 */	addi r11, r1, 0x20
/* 800C495C  48 29 D8 7D */	bl _savegpr_28
/* 800C4960  7C 7E 1B 78 */	mr r30, r3
/* 800C4964  3C 80 80 39 */	lis r4, lit_3757@ha
/* 800C4968  3B E4 D6 58 */	addi r31, r4, lit_3757@l
/* 800C496C  48 01 84 85 */	bl checkUpperGuardAnime__9daAlink_cCFv
/* 800C4970  7C 7D 1B 78 */	mr r29, r3
/* 800C4974  A0 7E 2F E8 */	lhz r3, 0x2fe8(r30)
/* 800C4978  28 03 00 0E */	cmplwi r3, 0xe
/* 800C497C  40 82 00 18 */	bne lbl_800C4994
/* 800C4980  80 1E 06 14 */	lwz r0, 0x614(r30)
/* 800C4984  28 00 00 28 */	cmplwi r0, 0x28
/* 800C4988  40 82 00 0C */	bne lbl_800C4994
/* 800C498C  38 60 00 00 */	li r3, 0
/* 800C4990  48 00 01 98 */	b lbl_800C4B28
lbl_800C4994:
/* 800C4994  20 03 00 16 */	subfic r0, r3, 0x16
/* 800C4998  7C 00 00 34 */	cntlzw r0, r0
/* 800C499C  54 1C DE 3E */	rlwinm r28, r0, 0x1b, 0x18, 0x1f
/* 800C49A0  7F C3 F3 78 */	mr r3, r30
/* 800C49A4  38 80 00 0E */	li r4, 0xe
/* 800C49A8  4B FF D5 C5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C49AC  7F C3 F3 78 */	mr r3, r30
/* 800C49B0  38 80 00 23 */	li r4, 0x23
/* 800C49B4  38 BF 01 64 */	addi r5, r31, 0x164
/* 800C49B8  C0 25 00 04 */	lfs f1, 4(r5)
/* 800C49BC  2C 1C 00 00 */	cmpwi r28, 0
/* 800C49C0  41 82 00 0C */	beq lbl_800C49CC
/* 800C49C4  C0 42 93 44 */	lfs f2, lit_7977(r2)
/* 800C49C8  48 00 00 08 */	b lbl_800C49D0
lbl_800C49CC:
/* 800C49CC  C0 45 00 08 */	lfs f2, 8(r5)
lbl_800C49D0:
/* 800C49D0  A8 BF 01 64 */	lha r5, 0x164(r31)
/* 800C49D4  38 DF 01 64 */	addi r6, r31, 0x164
/* 800C49D8  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 800C49DC  4B FE 86 31 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800C49E0  38 7F 01 64 */	addi r3, r31, 0x164
/* 800C49E4  C0 43 00 44 */	lfs f2, 0x44(r3)
/* 800C49E8  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 800C49EC  C0 23 00 48 */	lfs f1, 0x48(r3)
/* 800C49F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 800C49F4  EC 02 00 2A */	fadds f0, f2, f0
/* 800C49F8  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C49FC  38 7F 00 64 */	addi r3, r31, 0x64
/* 800C4A00  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800C4A04  EC 00 00 72 */	fmuls f0, f0, f1
/* 800C4A08  EC 22 00 2A */	fadds f1, f2, f0
/* 800C4A0C  C0 1E 33 98 */	lfs f0, 0x3398(r30)
/* 800C4A10  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800C4A14  40 81 00 08 */	ble lbl_800C4A1C
/* 800C4A18  D0 3E 33 98 */	stfs f1, 0x3398(r30)
lbl_800C4A1C:
/* 800C4A1C  C0 1E 33 98 */	lfs f0, 0x3398(r30)
/* 800C4A20  38 7F 01 64 */	addi r3, r31, 0x164
/* 800C4A24  C0 23 00 4C */	lfs f1, 0x4c(r3)
/* 800C4A28  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800C4A2C  40 80 00 08 */	bge lbl_800C4A34
/* 800C4A30  D0 3E 33 98 */	stfs f1, 0x3398(r30)
lbl_800C4A34:
/* 800C4A34  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800C4A38  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800C4A3C  41 82 00 1C */	beq lbl_800C4A58
/* 800C4A40  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800C4A44  38 7F 11 9C */	addi r3, r31, 0x119c
/* 800C4A48  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800C4A4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C4A50  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800C4A54  48 00 00 2C */	b lbl_800C4A80
lbl_800C4A58:
/* 800C4A58  7F C3 F3 78 */	mr r3, r30
/* 800C4A5C  38 80 00 01 */	li r4, 1
/* 800C4A60  38 A0 00 01 */	li r5, 1
/* 800C4A64  4B FF 6A 55 */	bl checkHeavyStateOn__9daAlink_cFii
/* 800C4A68  2C 03 00 00 */	cmpwi r3, 0
/* 800C4A6C  41 82 00 14 */	beq lbl_800C4A80
/* 800C4A70  C0 3E 33 98 */	lfs f1, 0x3398(r30)
/* 800C4A74  C0 1E 34 34 */	lfs f0, 0x3434(r30)
/* 800C4A78  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C4A7C  D0 1E 33 98 */	stfs f0, 0x3398(r30)
lbl_800C4A80:
/* 800C4A80  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800C4A84  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 800C4A88  7F C3 F3 78 */	mr r3, r30
/* 800C4A8C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010007@ha */
/* 800C4A90  38 84 00 07 */	addi r4, r4, 0x0007 /* 0x00010007@l */
/* 800C4A94  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800C4A98  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800C4A9C  7D 89 03 A6 */	mtctr r12
/* 800C4AA0  4E 80 04 21 */	bctrl 
/* 800C4AA4  38 00 00 00 */	li r0, 0
/* 800C4AA8  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800C4AAC  7F C3 F3 78 */	mr r3, r30
/* 800C4AB0  38 80 00 00 */	li r4, 0
/* 800C4AB4  48 05 C7 0D */	bl setFootEffectProcType__9daAlink_cFi
/* 800C4AB8  2C 1D 00 00 */	cmpwi r29, 0
/* 800C4ABC  41 82 00 10 */	beq lbl_800C4ACC
/* 800C4AC0  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800C4AC4  60 00 00 02 */	ori r0, r0, 2
/* 800C4AC8  90 1E 05 70 */	stw r0, 0x570(r30)
lbl_800C4ACC:
/* 800C4ACC  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800C4AD0  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800C4AD4  41 82 00 50 */	beq lbl_800C4B24
/* 800C4AD8  3C 00 00 20 */	lis r0, 0x20
/* 800C4ADC  90 1E 0F C8 */	stw r0, 0xfc8(r30)
/* 800C4AE0  38 00 00 01 */	li r0, 1
/* 800C4AE4  98 1E 10 2E */	stb r0, 0x102e(r30)
/* 800C4AE8  38 00 00 09 */	li r0, 9
/* 800C4AEC  98 1E 10 2C */	stb r0, 0x102c(r30)
/* 800C4AF0  38 00 00 02 */	li r0, 2
/* 800C4AF4  98 1E 0F CC */	stb r0, 0xfcc(r30)
/* 800C4AF8  38 00 00 00 */	li r0, 0
/* 800C4AFC  98 1E 10 2D */	stb r0, 0x102d(r30)
/* 800C4B00  38 7E 0F B8 */	addi r3, r30, 0xfb8
/* 800C4B04  4B FB F8 15 */	bl ResetAtHit__12dCcD_GObjInfFv
/* 800C4B08  38 7E 10 DC */	addi r3, r30, 0x10dc
/* 800C4B0C  38 9F 01 64 */	addi r4, r31, 0x164
/* 800C4B10  C0 24 00 6C */	lfs f1, 0x6c(r4)
/* 800C4B14  48 1A AB F5 */	bl SetR__8cM3dGSphFf
/* 800C4B18  80 1E 0F B8 */	lwz r0, 0xfb8(r30)
/* 800C4B1C  60 00 00 01 */	ori r0, r0, 1
/* 800C4B20  90 1E 0F B8 */	stw r0, 0xfb8(r30)
lbl_800C4B24:
/* 800C4B24  38 60 00 01 */	li r3, 1
lbl_800C4B28:
/* 800C4B28  39 61 00 20 */	addi r11, r1, 0x20
/* 800C4B2C  48 29 D6 F9 */	bl _restgpr_28
/* 800C4B30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C4B34  7C 08 03 A6 */	mtlr r0
/* 800C4B38  38 21 00 20 */	addi r1, r1, 0x20
/* 800C4B3C  4E 80 00 20 */	blr 
