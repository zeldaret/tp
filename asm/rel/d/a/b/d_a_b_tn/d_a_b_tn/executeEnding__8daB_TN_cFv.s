lbl_8062A950:
/* 8062A950  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8062A954  7C 08 02 A6 */	mflr r0
/* 8062A958  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8062A95C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8062A960  4B D3 78 78 */	b _savegpr_28
/* 8062A964  7C 7F 1B 78 */	mr r31, r3
/* 8062A968  3C 80 80 63 */	lis r4, lit_3920@ha
/* 8062A96C  3B C4 E6 34 */	addi r30, r4, lit_3920@l
/* 8062A970  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8062A974  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8062A978  83 A4 5D AC */	lwz r29, 0x5dac(r4)
/* 8062A97C  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 8062A980  7C 00 07 74 */	extsb r0, r0
/* 8062A984  1C 00 00 38 */	mulli r0, r0, 0x38
/* 8062A988  7C 84 02 14 */	add r4, r4, r0
/* 8062A98C  83 84 5D 74 */	lwz r28, 0x5d74(r4)
/* 8062A990  80 03 06 F4 */	lwz r0, 0x6f4(r3)
/* 8062A994  2C 00 00 04 */	cmpwi r0, 4
/* 8062A998  41 82 07 34 */	beq lbl_8062B0CC
/* 8062A99C  40 80 00 1C */	bge lbl_8062A9B8
/* 8062A9A0  2C 00 00 00 */	cmpwi r0, 0
/* 8062A9A4  41 82 00 2C */	beq lbl_8062A9D0
/* 8062A9A8  41 80 09 3C */	blt lbl_8062B2E4
/* 8062A9AC  2C 00 00 03 */	cmpwi r0, 3
/* 8062A9B0  40 80 06 08 */	bge lbl_8062AFB8
/* 8062A9B4  48 00 01 FC */	b lbl_8062ABB0
lbl_8062A9B8:
/* 8062A9B8  2C 00 00 64 */	cmpwi r0, 0x64
/* 8062A9BC  41 82 01 F4 */	beq lbl_8062ABB0
/* 8062A9C0  40 80 09 24 */	bge lbl_8062B2E4
/* 8062A9C4  2C 00 00 06 */	cmpwi r0, 6
/* 8062A9C8  40 80 09 1C */	bge lbl_8062B2E4
/* 8062A9CC  48 00 08 14 */	b lbl_8062B1E0
lbl_8062A9D0:
/* 8062A9D0  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8062A9D4  28 00 00 02 */	cmplwi r0, 2
/* 8062A9D8  41 82 00 28 */	beq lbl_8062AA00
/* 8062A9DC  38 80 00 02 */	li r4, 2
/* 8062A9E0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8062A9E4  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8062A9E8  38 C0 00 00 */	li r6, 0
/* 8062A9EC  4B 9F 0F 1C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8062A9F0  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8062A9F4  60 00 00 02 */	ori r0, r0, 2
/* 8062A9F8  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8062A9FC  48 00 09 30 */	b lbl_8062B32C
lbl_8062AA00:
/* 8062AA00  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8062AA04  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8062AA08  80 63 00 00 */	lwz r3, 0(r3)
/* 8062AA0C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8062AA10  4B C8 4E 74 */	b subBgmStop__8Z2SeqMgrFv
/* 8062AA14  88 9F 0A A4 */	lbz r4, 0xaa4(r31)
/* 8062AA18  28 04 00 FF */	cmplwi r4, 0xff
/* 8062AA1C  41 82 00 18 */	beq lbl_8062AA34
/* 8062AA20  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062AA24  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062AA28  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8062AA2C  7C 05 07 74 */	extsb r5, r0
/* 8062AA30  4B A0 A7 D0 */	b onSwitch__10dSv_info_cFii
lbl_8062AA34:
/* 8062AA34  38 7C 02 48 */	addi r3, r28, 0x248
/* 8062AA38  4B B3 6A 98 */	b Stop__9dCamera_cFv
/* 8062AA3C  38 7C 02 48 */	addi r3, r28, 0x248
/* 8062AA40  38 80 00 03 */	li r4, 3
/* 8062AA44  4B B3 85 C8 */	b SetTrimSize__9dCamera_cFl
/* 8062AA48  7F E3 FB 78 */	mr r3, r31
/* 8062AA4C  38 80 00 19 */	li r4, 0x19
/* 8062AA50  38 A0 00 00 */	li r5, 0
/* 8062AA54  C0 3E 01 28 */	lfs f1, 0x128(r30)
/* 8062AA58  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8062AA5C  4B FF 5E 6D */	bl setBck__8daB_TN_cFiUcff
/* 8062AA60  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007039D@ha */
/* 8062AA64  38 03 03 9D */	addi r0, r3, 0x039D /* 0x0007039D@l */
/* 8062AA68  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8062AA6C  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062AA70  38 81 00 2C */	addi r4, r1, 0x2c
/* 8062AA74  38 A0 FF FF */	li r5, -1
/* 8062AA78  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8062AA7C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8062AA80  7D 89 03 A6 */	mtctr r12
/* 8062AA84  4E 80 04 21 */	bctrl 
/* 8062AA88  38 00 00 64 */	li r0, 0x64
/* 8062AA8C  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 8062AA90  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8062AA94  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8062AA98  38 80 00 00 */	li r4, 0
/* 8062AA9C  98 9F 0A 93 */	stb r4, 0xa93(r31)
/* 8062AAA0  38 A0 00 00 */	li r5, 0
/* 8062AAA4  38 60 00 07 */	li r3, 7
/* 8062AAA8  38 00 00 10 */	li r0, 0x10
/* 8062AAAC  7C 09 03 A6 */	mtctr r0
lbl_8062AAB0:
/* 8062AAB0  2C 05 00 0F */	cmpwi r5, 0xf
/* 8062AAB4  41 82 00 0C */	beq lbl_8062AAC0
/* 8062AAB8  38 04 09 FC */	addi r0, r4, 0x9fc
/* 8062AABC  7C 7F 03 2E */	sthx r3, r31, r0
lbl_8062AAC0:
/* 8062AAC0  38 A5 00 01 */	addi r5, r5, 1
/* 8062AAC4  38 84 00 02 */	addi r4, r4, 2
/* 8062AAC8  42 00 FF E8 */	bdnz lbl_8062AAB0
/* 8062AACC  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8062AAD0  D0 1F 07 1C */	stfs f0, 0x71c(r31)
/* 8062AAD4  C0 1E 02 08 */	lfs f0, 0x208(r30)
/* 8062AAD8  D0 1F 07 24 */	stfs f0, 0x724(r31)
/* 8062AADC  38 00 10 00 */	li r0, 0x1000
/* 8062AAE0  B0 1F 07 20 */	sth r0, 0x720(r31)
/* 8062AAE4  C0 1E 02 38 */	lfs f0, 0x238(r30)
/* 8062AAE8  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 8062AAEC  C0 1E 02 3C */	lfs f0, 0x23c(r30)
/* 8062AAF0  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 8062AAF4  C0 1E 02 40 */	lfs f0, 0x240(r30)
/* 8062AAF8  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 8062AAFC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8062AB00  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8062AB04  A8 1F 07 20 */	lha r0, 0x720(r31)
/* 8062AB08  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8062AB0C  7C 64 02 14 */	add r3, r4, r0
/* 8062AB10  C0 03 00 04 */	lfs f0, 4(r3)
/* 8062AB14  C0 5F 07 24 */	lfs f2, 0x724(r31)
/* 8062AB18  EC 22 00 32 */	fmuls f1, f2, f0
/* 8062AB1C  7C 04 04 2E */	lfsx f0, r4, r0
/* 8062AB20  EC 02 00 32 */	fmuls f0, f2, f0
/* 8062AB24  D0 1F 07 04 */	stfs f0, 0x704(r31)
/* 8062AB28  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8062AB2C  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 8062AB30  D0 3F 07 0C */	stfs f1, 0x70c(r31)
/* 8062AB34  38 00 00 03 */	li r0, 3
/* 8062AB38  B0 1D 06 04 */	sth r0, 0x604(r29)
/* 8062AB3C  38 00 00 00 */	li r0, 0
/* 8062AB40  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 8062AB44  C0 1E 01 F0 */	lfs f0, 0x1f0(r30)
/* 8062AB48  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8062AB4C  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 8062AB50  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8062AB54  C0 1E 01 F8 */	lfs f0, 0x1f8(r30)
/* 8062AB58  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8062AB5C  7F A3 EB 78 */	mr r3, r29
/* 8062AB60  38 81 00 84 */	addi r4, r1, 0x84
/* 8062AB64  38 A0 70 00 */	li r5, 0x7000
/* 8062AB68  38 C0 00 00 */	li r6, 0
/* 8062AB6C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8062AB70  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8062AB74  7D 89 03 A6 */	mtctr r12
/* 8062AB78  4E 80 04 21 */	bctrl 
/* 8062AB7C  38 00 00 04 */	li r0, 4
/* 8062AB80  90 1D 06 14 */	stw r0, 0x614(r29)
/* 8062AB84  38 00 00 01 */	li r0, 1
/* 8062AB88  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 8062AB8C  38 00 00 00 */	li r0, 0
/* 8062AB90  90 1D 06 10 */	stw r0, 0x610(r29)
/* 8062AB94  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 8062AB98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062AB9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062ABA0  38 63 09 58 */	addi r3, r3, 0x958
/* 8062ABA4  38 80 00 07 */	li r4, 7
/* 8062ABA8  4B A0 9D 70 */	b onDungeonItem__12dSv_memBit_cFi
/* 8062ABAC  48 00 07 80 */	b lbl_8062B32C
lbl_8062ABB0:
/* 8062ABB0  2C 00 00 64 */	cmpwi r0, 0x64
/* 8062ABB4  40 82 00 30 */	bne lbl_8062ABE4
/* 8062ABB8  38 00 00 00 */	li r0, 0
/* 8062ABBC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8062ABC0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 8062ABC4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8062ABC8  D0 3F 04 D0 */	stfs f1, 0x4d0(r31)
/* 8062ABCC  C0 1E 01 44 */	lfs f0, 0x144(r30)
/* 8062ABD0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 8062ABD4  D0 3F 04 D8 */	stfs f1, 0x4d8(r31)
/* 8062ABD8  38 00 00 01 */	li r0, 1
/* 8062ABDC  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 8062ABE0  48 00 00 44 */	b lbl_8062AC24
lbl_8062ABE4:
/* 8062ABE4  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062ABE8  80 63 00 04 */	lwz r3, 4(r3)
/* 8062ABEC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8062ABF0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062ABF4  38 63 00 60 */	addi r3, r3, 0x60
/* 8062ABF8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062ABFC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062AC00  4B D1 B8 B0 */	b PSMTXCopy
/* 8062AC04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8062AC08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8062AC0C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8062AC10  D0 1F 07 10 */	stfs f0, 0x710(r31)
/* 8062AC14  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8062AC18  D0 1F 07 14 */	stfs f0, 0x714(r31)
/* 8062AC1C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8062AC20  D0 1F 07 18 */	stfs f0, 0x718(r31)
lbl_8062AC24:
/* 8062AC24  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8062AC28  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8062AC2C  A8 1F 07 20 */	lha r0, 0x720(r31)
/* 8062AC30  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8062AC34  7C 64 02 14 */	add r3, r4, r0
/* 8062AC38  C0 03 00 04 */	lfs f0, 4(r3)
/* 8062AC3C  C0 5F 07 24 */	lfs f2, 0x724(r31)
/* 8062AC40  EC 22 00 32 */	fmuls f1, f2, f0
/* 8062AC44  7C 04 04 2E */	lfsx f0, r4, r0
/* 8062AC48  EC 02 00 32 */	fmuls f0, f2, f0
/* 8062AC4C  D0 1F 07 04 */	stfs f0, 0x704(r31)
/* 8062AC50  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8062AC54  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 8062AC58  D0 3F 07 0C */	stfs f1, 0x70c(r31)
/* 8062AC5C  38 7F 07 20 */	addi r3, r31, 0x720
/* 8062AC60  38 80 F0 00 */	li r4, -4096
/* 8062AC64  38 A0 00 08 */	li r5, 8
/* 8062AC68  38 C0 00 18 */	li r6, 0x18
/* 8062AC6C  4B C4 59 9C */	b cLib_addCalcAngleS2__FPssss
/* 8062AC70  80 1F 06 F4 */	lwz r0, 0x6f4(r31)
/* 8062AC74  2C 00 00 01 */	cmpwi r0, 1
/* 8062AC78  40 82 03 20 */	bne lbl_8062AF98
/* 8062AC7C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062AC80  38 63 00 0C */	addi r3, r3, 0xc
/* 8062AC84  C0 3E 02 44 */	lfs f1, 0x244(r30)
/* 8062AC88  4B CF D7 A4 */	b checkPass__12J3DFrameCtrlFf
/* 8062AC8C  2C 03 00 00 */	cmpwi r3, 0
/* 8062AC90  41 82 00 0C */	beq lbl_8062AC9C
/* 8062AC94  38 00 00 02 */	li r0, 2
/* 8062AC98  B0 1F 0A 1A */	sth r0, 0xa1a(r31)
lbl_8062AC9C:
/* 8062AC9C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062ACA0  38 63 00 0C */	addi r3, r3, 0xc
/* 8062ACA4  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 8062ACA8  4B CF D7 84 */	b checkPass__12J3DFrameCtrlFf
/* 8062ACAC  2C 03 00 00 */	cmpwi r3, 0
/* 8062ACB0  41 82 00 30 */	beq lbl_8062ACE0
/* 8062ACB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 8062ACB8  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 8062ACBC  90 01 00 28 */	stw r0, 0x28(r1)
/* 8062ACC0  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062ACC4  38 81 00 28 */	addi r4, r1, 0x28
/* 8062ACC8  38 A0 00 00 */	li r5, 0
/* 8062ACCC  38 C0 FF FF */	li r6, -1
/* 8062ACD0  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8062ACD4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062ACD8  7D 89 03 A6 */	mtctr r12
/* 8062ACDC  4E 80 04 21 */	bctrl 
lbl_8062ACE0:
/* 8062ACE0  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062ACE4  38 63 00 0C */	addi r3, r3, 0xc
/* 8062ACE8  C0 3E 01 AC */	lfs f1, 0x1ac(r30)
/* 8062ACEC  4B CF D7 40 */	b checkPass__12J3DFrameCtrlFf
/* 8062ACF0  2C 03 00 00 */	cmpwi r3, 0
/* 8062ACF4  41 82 00 2C */	beq lbl_8062AD20
/* 8062ACF8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A2@ha */
/* 8062ACFC  38 03 03 A2 */	addi r0, r3, 0x03A2 /* 0x000703A2@l */
/* 8062AD00  90 01 00 24 */	stw r0, 0x24(r1)
/* 8062AD04  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062AD08  38 81 00 24 */	addi r4, r1, 0x24
/* 8062AD0C  38 A0 FF FF */	li r5, -1
/* 8062AD10  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8062AD14  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8062AD18  7D 89 03 A6 */	mtctr r12
/* 8062AD1C  4E 80 04 21 */	bctrl 
lbl_8062AD20:
/* 8062AD20  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062AD24  38 63 00 0C */	addi r3, r3, 0xc
/* 8062AD28  C0 3E 02 48 */	lfs f1, 0x248(r30)
/* 8062AD2C  4B CF D7 00 */	b checkPass__12J3DFrameCtrlFf
/* 8062AD30  2C 03 00 00 */	cmpwi r3, 0
/* 8062AD34  41 82 00 2C */	beq lbl_8062AD60
/* 8062AD38  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A3@ha */
/* 8062AD3C  38 03 03 A3 */	addi r0, r3, 0x03A3 /* 0x000703A3@l */
/* 8062AD40  90 01 00 20 */	stw r0, 0x20(r1)
/* 8062AD44  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062AD48  38 81 00 20 */	addi r4, r1, 0x20
/* 8062AD4C  38 A0 FF FF */	li r5, -1
/* 8062AD50  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8062AD54  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8062AD58  7D 89 03 A6 */	mtctr r12
/* 8062AD5C  4E 80 04 21 */	bctrl 
lbl_8062AD60:
/* 8062AD60  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062AD64  38 63 00 0C */	addi r3, r3, 0xc
/* 8062AD68  C0 3E 02 4C */	lfs f1, 0x24c(r30)
/* 8062AD6C  4B CF D6 C0 */	b checkPass__12J3DFrameCtrlFf
/* 8062AD70  2C 03 00 00 */	cmpwi r3, 0
/* 8062AD74  41 82 00 30 */	beq lbl_8062ADA4
/* 8062AD78  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 8062AD7C  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 8062AD80  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8062AD84  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062AD88  38 81 00 1C */	addi r4, r1, 0x1c
/* 8062AD8C  38 A0 00 00 */	li r5, 0
/* 8062AD90  38 C0 FF FF */	li r6, -1
/* 8062AD94  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8062AD98  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062AD9C  7D 89 03 A6 */	mtctr r12
/* 8062ADA0  4E 80 04 21 */	bctrl 
lbl_8062ADA4:
/* 8062ADA4  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062ADA8  38 63 00 0C */	addi r3, r3, 0xc
/* 8062ADAC  C0 3E 02 50 */	lfs f1, 0x250(r30)
/* 8062ADB0  4B CF D6 7C */	b checkPass__12J3DFrameCtrlFf
/* 8062ADB4  2C 03 00 00 */	cmpwi r3, 0
/* 8062ADB8  41 82 00 30 */	beq lbl_8062ADE8
/* 8062ADBC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A6@ha */
/* 8062ADC0  38 03 03 A6 */	addi r0, r3, 0x03A6 /* 0x000703A6@l */
/* 8062ADC4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8062ADC8  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062ADCC  38 81 00 18 */	addi r4, r1, 0x18
/* 8062ADD0  38 A0 00 00 */	li r5, 0
/* 8062ADD4  38 C0 FF FF */	li r6, -1
/* 8062ADD8  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8062ADDC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062ADE0  7D 89 03 A6 */	mtctr r12
/* 8062ADE4  4E 80 04 21 */	bctrl 
lbl_8062ADE8:
/* 8062ADE8  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062ADEC  38 63 00 0C */	addi r3, r3, 0xc
/* 8062ADF0  C0 3E 02 54 */	lfs f1, 0x254(r30)
/* 8062ADF4  4B CF D6 38 */	b checkPass__12J3DFrameCtrlFf
/* 8062ADF8  2C 03 00 00 */	cmpwi r3, 0
/* 8062ADFC  41 82 00 30 */	beq lbl_8062AE2C
/* 8062AE00  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A7@ha */
/* 8062AE04  38 03 03 A7 */	addi r0, r3, 0x03A7 /* 0x000703A7@l */
/* 8062AE08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062AE0C  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062AE10  38 81 00 14 */	addi r4, r1, 0x14
/* 8062AE14  38 A0 00 00 */	li r5, 0
/* 8062AE18  38 C0 FF FF */	li r6, -1
/* 8062AE1C  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8062AE20  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062AE24  7D 89 03 A6 */	mtctr r12
/* 8062AE28  4E 80 04 21 */	bctrl 
lbl_8062AE2C:
/* 8062AE2C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062AE30  38 63 00 0C */	addi r3, r3, 0xc
/* 8062AE34  C0 3E 02 58 */	lfs f1, 0x258(r30)
/* 8062AE38  4B CF D5 F4 */	b checkPass__12J3DFrameCtrlFf
/* 8062AE3C  2C 03 00 00 */	cmpwi r3, 0
/* 8062AE40  41 82 00 2C */	beq lbl_8062AE6C
/* 8062AE44  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703A4@ha */
/* 8062AE48  38 03 03 A4 */	addi r0, r3, 0x03A4 /* 0x000703A4@l */
/* 8062AE4C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8062AE50  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062AE54  38 81 00 10 */	addi r4, r1, 0x10
/* 8062AE58  38 A0 FF FF */	li r5, -1
/* 8062AE5C  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8062AE60  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8062AE64  7D 89 03 A6 */	mtctr r12
/* 8062AE68  4E 80 04 21 */	bctrl 
lbl_8062AE6C:
/* 8062AE6C  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062AE70  38 63 00 0C */	addi r3, r3, 0xc
/* 8062AE74  C0 3E 02 5C */	lfs f1, 0x25c(r30)
/* 8062AE78  4B CF D5 B4 */	b checkPass__12J3DFrameCtrlFf
/* 8062AE7C  2C 03 00 00 */	cmpwi r3, 0
/* 8062AE80  41 82 00 60 */	beq lbl_8062AEE0
/* 8062AE84  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8062AE88  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8062AE8C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8062AE90  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8062AE94  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8062AE98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062AE9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062AEA0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8062AEA4  38 80 00 02 */	li r4, 2
/* 8062AEA8  38 A0 00 1F */	li r5, 0x1f
/* 8062AEAC  38 C1 00 6C */	addi r6, r1, 0x6c
/* 8062AEB0  4B A4 4B 74 */	b StartShock__12dVibration_cFii4cXyz
/* 8062AEB4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000703AF@ha */
/* 8062AEB8  38 03 03 AF */	addi r0, r3, 0x03AF /* 0x000703AF@l */
/* 8062AEBC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8062AEC0  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062AEC4  38 81 00 0C */	addi r4, r1, 0xc
/* 8062AEC8  38 A0 00 00 */	li r5, 0
/* 8062AECC  38 C0 FF FF */	li r6, -1
/* 8062AED0  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8062AED4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062AED8  7D 89 03 A6 */	mtctr r12
/* 8062AEDC  4E 80 04 21 */	bctrl 
lbl_8062AEE0:
/* 8062AEE0  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062AEE4  38 63 00 0C */	addi r3, r3, 0xc
/* 8062AEE8  C0 3E 02 60 */	lfs f1, 0x260(r30)
/* 8062AEEC  4B CF D5 40 */	b checkPass__12J3DFrameCtrlFf
/* 8062AEF0  2C 03 00 00 */	cmpwi r3, 0
/* 8062AEF4  41 82 00 60 */	beq lbl_8062AF54
/* 8062AEF8  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8062AEFC  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8062AF00  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8062AF04  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8062AF08  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8062AF0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062AF10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062AF14  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8062AF18  38 80 00 04 */	li r4, 4
/* 8062AF1C  38 A0 00 1F */	li r5, 0x1f
/* 8062AF20  38 C1 00 60 */	addi r6, r1, 0x60
/* 8062AF24  4B A4 4B 00 */	b StartShock__12dVibration_cFii4cXyz
/* 8062AF28  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002C@ha */
/* 8062AF2C  38 03 00 2C */	addi r0, r3, 0x002C /* 0x0006002C@l */
/* 8062AF30  90 01 00 08 */	stw r0, 8(r1)
/* 8062AF34  38 7F 06 4C */	addi r3, r31, 0x64c
/* 8062AF38  38 81 00 08 */	addi r4, r1, 8
/* 8062AF3C  38 A0 00 00 */	li r5, 0
/* 8062AF40  38 C0 FF FF */	li r6, -1
/* 8062AF44  81 9F 06 4C */	lwz r12, 0x64c(r31)
/* 8062AF48  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8062AF4C  7D 89 03 A6 */	mtctr r12
/* 8062AF50  4E 80 04 21 */	bctrl 
lbl_8062AF54:
/* 8062AF54  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062AF58  38 80 00 01 */	li r4, 1
/* 8062AF5C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8062AF60  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8062AF64  40 82 00 18 */	bne lbl_8062AF7C
/* 8062AF68  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8062AF6C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8062AF70  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8062AF74  41 82 00 08 */	beq lbl_8062AF7C
/* 8062AF78  38 80 00 00 */	li r4, 0
lbl_8062AF7C:
/* 8062AF7C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8062AF80  41 82 03 64 */	beq lbl_8062B2E4
/* 8062AF84  38 00 00 02 */	li r0, 2
/* 8062AF88  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 8062AF8C  38 00 00 3C */	li r0, 0x3c
/* 8062AF90  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 8062AF94  48 00 03 50 */	b lbl_8062B2E4
lbl_8062AF98:
/* 8062AF98  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 8062AF9C  2C 00 00 00 */	cmpwi r0, 0
/* 8062AFA0  40 82 03 44 */	bne lbl_8062B2E4
/* 8062AFA4  38 00 00 03 */	li r0, 3
/* 8062AFA8  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 8062AFAC  38 00 00 3C */	li r0, 0x3c
/* 8062AFB0  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 8062AFB4  48 00 03 30 */	b lbl_8062B2E4
lbl_8062AFB8:
/* 8062AFB8  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 8062AFBC  2C 00 00 24 */	cmpwi r0, 0x24
/* 8062AFC0  40 80 00 14 */	bge lbl_8062AFD4
/* 8062AFC4  38 7F 07 28 */	addi r3, r31, 0x728
/* 8062AFC8  C0 3E 02 64 */	lfs f1, 0x264(r30)
/* 8062AFCC  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 8062AFD0  4B C4 57 70 */	b cLib_chaseF__FPfff
lbl_8062AFD4:
/* 8062AFD4  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062AFD8  80 63 00 04 */	lwz r3, 4(r3)
/* 8062AFDC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8062AFE0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062AFE4  38 63 00 60 */	addi r3, r3, 0x60
/* 8062AFE8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062AFEC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062AFF0  4B D1 B4 C0 */	b PSMTXCopy
/* 8062AFF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8062AFF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8062AFFC  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8062B000  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8062B004  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8062B008  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8062B00C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8062B010  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8062B014  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8062B018  EC 01 00 2A */	fadds f0, f1, f0
/* 8062B01C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8062B020  38 7F 07 10 */	addi r3, r31, 0x710
/* 8062B024  38 81 00 78 */	addi r4, r1, 0x78
/* 8062B028  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8062B02C  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 8062B030  4B C4 51 48 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8062B034  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8062B038  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8062B03C  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8062B040  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8062B044  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8062B048  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8062B04C  38 7F 07 04 */	addi r3, r31, 0x704
/* 8062B050  38 81 00 78 */	addi r4, r1, 0x78
/* 8062B054  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8062B058  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 8062B05C  4B C4 51 1C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8062B060  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 8062B064  2C 00 00 00 */	cmpwi r0, 0
/* 8062B068  40 82 02 7C */	bne lbl_8062B2E4
/* 8062B06C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062B070  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062B074  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8062B078  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8062B07C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8062B080  40 82 00 20 */	bne lbl_8062B0A0
/* 8062B084  38 00 00 1E */	li r0, 0x1e
/* 8062B088  90 1D 06 14 */	stw r0, 0x614(r29)
/* 8062B08C  38 00 00 00 */	li r0, 0
/* 8062B090  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 8062B094  90 1D 06 10 */	stw r0, 0x610(r29)
/* 8062B098  B0 1D 06 0A */	sth r0, 0x60a(r29)
/* 8062B09C  48 00 00 1C */	b lbl_8062B0B8
lbl_8062B0A0:
/* 8062B0A0  38 00 00 01 */	li r0, 1
/* 8062B0A4  90 1D 06 14 */	stw r0, 0x614(r29)
/* 8062B0A8  38 00 00 00 */	li r0, 0
/* 8062B0AC  90 1D 06 0C */	stw r0, 0x60c(r29)
/* 8062B0B0  90 1D 06 10 */	stw r0, 0x610(r29)
/* 8062B0B4  B0 1D 06 0A */	sth r0, 0x60a(r29)
lbl_8062B0B8:
/* 8062B0B8  38 00 00 36 */	li r0, 0x36
/* 8062B0BC  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 8062B0C0  38 00 00 04 */	li r0, 4
/* 8062B0C4  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 8062B0C8  48 00 02 1C */	b lbl_8062B2E4
lbl_8062B0CC:
/* 8062B0CC  38 7F 07 28 */	addi r3, r31, 0x728
/* 8062B0D0  C0 3E 02 64 */	lfs f1, 0x264(r30)
/* 8062B0D4  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 8062B0D8  4B C4 56 68 */	b cLib_chaseF__FPfff
/* 8062B0DC  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062B0E0  80 63 00 04 */	lwz r3, 4(r3)
/* 8062B0E4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8062B0E8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062B0EC  38 63 00 60 */	addi r3, r3, 0x60
/* 8062B0F0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062B0F4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062B0F8  4B D1 B3 B8 */	b PSMTXCopy
/* 8062B0FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8062B100  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 8062B104  C0 3D 00 0C */	lfs f1, 0xc(r29)
/* 8062B108  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8062B10C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8062B110  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8062B114  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8062B118  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8062B11C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8062B120  EC 01 00 2A */	fadds f0, f1, f0
/* 8062B124  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8062B128  38 7F 07 10 */	addi r3, r31, 0x710
/* 8062B12C  38 81 00 78 */	addi r4, r1, 0x78
/* 8062B130  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8062B134  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 8062B138  4B C4 50 40 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8062B13C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8062B140  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8062B144  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8062B148  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8062B14C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8062B150  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8062B154  38 7F 07 04 */	addi r3, r31, 0x704
/* 8062B158  38 81 00 78 */	addi r4, r1, 0x78
/* 8062B15C  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8062B160  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 8062B164  4B C4 50 14 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8062B168  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 8062B16C  2C 00 00 00 */	cmpwi r0, 0
/* 8062B170  40 82 01 74 */	bne lbl_8062B2E4
/* 8062B174  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062B178  80 63 00 04 */	lwz r3, 4(r3)
/* 8062B17C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8062B180  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062B184  38 63 00 60 */	addi r3, r3, 0x60
/* 8062B188  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062B18C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062B190  4B D1 B3 20 */	b PSMTXCopy
/* 8062B194  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8062B198  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8062B19C  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8062B1A0  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8062B1A4  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8062B1A8  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8062B1AC  7F E3 FB 78 */	mr r3, r31
/* 8062B1B0  38 81 00 78 */	addi r4, r1, 0x78
/* 8062B1B4  38 A0 00 0A */	li r5, 0xa
/* 8062B1B8  38 C0 00 00 */	li r6, 0
/* 8062B1BC  38 E0 00 FF */	li r7, 0xff
/* 8062B1C0  4B 9F 19 18 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8062B1C4  38 00 00 01 */	li r0, 1
/* 8062B1C8  98 1F 0A 9E */	stb r0, 0xa9e(r31)
/* 8062B1CC  38 00 00 05 */	li r0, 5
/* 8062B1D0  90 1F 06 F4 */	stw r0, 0x6f4(r31)
/* 8062B1D4  38 00 00 41 */	li r0, 0x41
/* 8062B1D8  90 1F 0A 6C */	stw r0, 0xa6c(r31)
/* 8062B1DC  48 00 01 08 */	b lbl_8062B2E4
lbl_8062B1E0:
/* 8062B1E0  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062B1E4  80 63 00 04 */	lwz r3, 4(r3)
/* 8062B1E8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8062B1EC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062B1F0  38 63 00 60 */	addi r3, r3, 0x60
/* 8062B1F4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 8062B1F8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 8062B1FC  4B D1 B2 B4 */	b PSMTXCopy
/* 8062B200  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8062B204  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8062B208  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8062B20C  D0 21 00 78 */	stfs f1, 0x78(r1)
/* 8062B210  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8062B214  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8062B218  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8062B21C  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8062B220  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8062B224  EC 01 00 2A */	fadds f0, f1, f0
/* 8062B228  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8062B22C  38 7F 07 10 */	addi r3, r31, 0x710
/* 8062B230  38 81 00 78 */	addi r4, r1, 0x78
/* 8062B234  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8062B238  C0 5E 00 70 */	lfs f2, 0x70(r30)
/* 8062B23C  4B C4 4F 3C */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8062B240  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8062B244  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8062B248  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 8062B24C  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8062B250  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8062B254  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 8062B258  38 7F 07 04 */	addi r3, r31, 0x704
/* 8062B25C  38 81 00 78 */	addi r4, r1, 0x78
/* 8062B260  C0 3E 00 E8 */	lfs f1, 0xe8(r30)
/* 8062B264  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 8062B268  4B C4 4F 10 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 8062B26C  80 1F 0A 6C */	lwz r0, 0xa6c(r31)
/* 8062B270  2C 00 00 00 */	cmpwi r0, 0
/* 8062B274  40 82 00 70 */	bne lbl_8062B2E4
/* 8062B278  C0 1F 07 10 */	lfs f0, 0x710(r31)
/* 8062B27C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8062B280  C0 1F 07 14 */	lfs f0, 0x714(r31)
/* 8062B284  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8062B288  C0 1F 07 18 */	lfs f0, 0x718(r31)
/* 8062B28C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8062B290  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 8062B294  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8062B298  C0 1F 07 08 */	lfs f0, 0x708(r31)
/* 8062B29C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8062B2A0  C0 1F 07 0C */	lfs f0, 0x70c(r31)
/* 8062B2A4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8062B2A8  38 7C 02 48 */	addi r3, r28, 0x248
/* 8062B2AC  38 81 00 54 */	addi r4, r1, 0x54
/* 8062B2B0  38 A1 00 48 */	addi r5, r1, 0x48
/* 8062B2B4  4B B5 59 64 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 8062B2B8  38 7C 02 48 */	addi r3, r28, 0x248
/* 8062B2BC  4B B3 61 F0 */	b Start__9dCamera_cFv
/* 8062B2C0  38 7C 02 48 */	addi r3, r28, 0x248
/* 8062B2C4  38 80 00 00 */	li r4, 0
/* 8062B2C8  4B B3 7D 44 */	b SetTrimSize__9dCamera_cFl
/* 8062B2CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8062B2D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8062B2D4  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8062B2D8  4B A1 71 90 */	b reset__14dEvt_control_cFv
/* 8062B2DC  7F E3 FB 78 */	mr r3, r31
/* 8062B2E0  4B 9E E9 9C */	b fopAcM_delete__FP10fopAc_ac_c
lbl_8062B2E4:
/* 8062B2E4  C0 1F 07 10 */	lfs f0, 0x710(r31)
/* 8062B2E8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8062B2EC  C0 1F 07 14 */	lfs f0, 0x714(r31)
/* 8062B2F0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8062B2F4  C0 1F 07 18 */	lfs f0, 0x718(r31)
/* 8062B2F8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8062B2FC  C0 1F 07 04 */	lfs f0, 0x704(r31)
/* 8062B300  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8062B304  C0 1F 07 08 */	lfs f0, 0x708(r31)
/* 8062B308  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8062B30C  C0 1F 07 0C */	lfs f0, 0x70c(r31)
/* 8062B310  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8062B314  38 7C 02 48 */	addi r3, r28, 0x248
/* 8062B318  38 81 00 3C */	addi r4, r1, 0x3c
/* 8062B31C  38 A1 00 30 */	addi r5, r1, 0x30
/* 8062B320  C0 3F 07 1C */	lfs f1, 0x71c(r31)
/* 8062B324  38 C0 00 00 */	li r6, 0
/* 8062B328  4B B5 57 B8 */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_8062B32C:
/* 8062B32C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8062B330  4B D3 6E F4 */	b _restgpr_28
/* 8062B334  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8062B338  7C 08 03 A6 */	mtlr r0
/* 8062B33C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8062B340  4E 80 00 20 */	blr 
