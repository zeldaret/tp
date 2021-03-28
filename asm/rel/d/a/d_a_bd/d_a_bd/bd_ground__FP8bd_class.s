lbl_804D78FC:
/* 804D78FC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 804D7900  7C 08 02 A6 */	mflr r0
/* 804D7904  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804D7908  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 804D790C  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 804D7910  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804D7914  4B E8 A8 C8 */	b _savegpr_29
/* 804D7918  7C 7E 1B 78 */	mr r30, r3
/* 804D791C  3C 60 80 4E */	lis r3, lit_3942@ha
/* 804D7920  3B E3 9E 64 */	addi r31, r3, lit_3942@l
/* 804D7924  C3 FF 00 10 */	lfs f31, 0x10(r31)
/* 804D7928  38 61 00 24 */	addi r3, r1, 0x24
/* 804D792C  4B B9 FC 50 */	b __ct__11dBgS_GndChkFv
/* 804D7930  A8 1E 06 1C */	lha r0, 0x61c(r30)
/* 804D7934  2C 00 00 02 */	cmpwi r0, 2
/* 804D7938  41 82 01 6C */	beq lbl_804D7AA4
/* 804D793C  40 80 00 1C */	bge lbl_804D7958
/* 804D7940  2C 00 00 00 */	cmpwi r0, 0
/* 804D7944  41 82 00 D4 */	beq lbl_804D7A18
/* 804D7948  40 80 01 10 */	bge lbl_804D7A58
/* 804D794C  2C 00 FF FF */	cmpwi r0, -1
/* 804D7950  40 80 00 18 */	bge lbl_804D7968
/* 804D7954  48 00 03 24 */	b lbl_804D7C78
lbl_804D7958:
/* 804D7958  2C 00 00 04 */	cmpwi r0, 4
/* 804D795C  41 82 02 A0 */	beq lbl_804D7BFC
/* 804D7960  40 80 03 18 */	bge lbl_804D7C78
/* 804D7964  48 00 02 74 */	b lbl_804D7BD8
lbl_804D7968:
/* 804D7968  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 804D796C  4B D9 00 20 */	b cM_rndFX__Ff
/* 804D7970  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804D7974  EC 00 08 2A */	fadds f0, f0, f1
/* 804D7978  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804D797C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 804D7980  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 804D7984  EC 01 00 2A */	fadds f0, f1, f0
/* 804D7988  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804D798C  4B D9 00 00 */	b cM_rndFX__Ff
/* 804D7990  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 804D7994  EC 00 08 2A */	fadds f0, f0, f1
/* 804D7998  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804D799C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804D79A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804D79A4  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 804D79A8  38 7D 3E C8 */	addi r3, r29, 0x3ec8
/* 804D79AC  3C 80 80 4E */	lis r4, stringBase0@ha
/* 804D79B0  38 84 9F 6C */	addi r4, r4, stringBase0@l
/* 804D79B4  38 84 00 13 */	addi r4, r4, 0x13
/* 804D79B8  4B E9 0F DC */	b strcmp
/* 804D79BC  2C 03 00 00 */	cmpwi r3, 0
/* 804D79C0  41 82 00 38 */	beq lbl_804D79F8
/* 804D79C4  38 61 00 24 */	addi r3, r1, 0x24
/* 804D79C8  38 81 00 0C */	addi r4, r1, 0xc
/* 804D79CC  4B D9 03 40 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 804D79D0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804D79D4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804D79D8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804D79DC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804D79E0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804D79E4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 804D79E8  7F A3 EB 78 */	mr r3, r29
/* 804D79EC  38 81 00 24 */	addi r4, r1, 0x24
/* 804D79F0  4B B9 CA B0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 804D79F4  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
lbl_804D79F8:
/* 804D79F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804D79FC  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 804D7A00  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 804D7A04  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 804D7A08  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804D7A0C  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 804D7A10  38 00 00 00 */	li r0, 0
/* 804D7A14  B0 1E 06 1C */	sth r0, 0x61c(r30)
lbl_804D7A18:
/* 804D7A18  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 804D7A1C  4B D8 FF 38 */	b cM_rndF__Ff
/* 804D7A20  FC 00 08 1E */	fctiwz f0, f1
/* 804D7A24  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 804D7A28  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 804D7A2C  B0 1E 06 18 */	sth r0, 0x618(r30)
/* 804D7A30  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 804D7A34  4B D8 FF 20 */	b cM_rndF__Ff
/* 804D7A38  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 804D7A3C  EC 00 08 2A */	fadds f0, f0, f1
/* 804D7A40  FC 00 00 1E */	fctiwz f0, f0
/* 804D7A44  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804D7A48  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D7A4C  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 804D7A50  38 00 00 01 */	li r0, 1
/* 804D7A54  B0 1E 06 1C */	sth r0, 0x61c(r30)
lbl_804D7A58:
/* 804D7A58  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 804D7A5C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804D7A60  40 82 00 10 */	bne lbl_804D7A70
/* 804D7A64  88 1E 05 C2 */	lbz r0, 0x5c2(r30)
/* 804D7A68  7C 00 07 75 */	extsb. r0, r0
/* 804D7A6C  41 82 02 0C */	beq lbl_804D7C78
lbl_804D7A70:
/* 804D7A70  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 804D7A74  4B D8 FE E0 */	b cM_rndF__Ff
/* 804D7A78  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804D7A7C  EC 00 08 2A */	fadds f0, f0, f1
/* 804D7A80  FC 00 00 1E */	fctiwz f0, f0
/* 804D7A84  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804D7A88  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D7A8C  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 804D7A90  38 00 00 02 */	li r0, 2
/* 804D7A94  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 804D7A98  38 00 00 00 */	li r0, 0
/* 804D7A9C  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 804D7AA0  48 00 01 D8 */	b lbl_804D7C78
lbl_804D7AA4:
/* 804D7AA4  A8 1E 06 4E */	lha r0, 0x64e(r30)
/* 804D7AA8  2C 00 00 00 */	cmpwi r0, 0
/* 804D7AAC  40 82 00 94 */	bne lbl_804D7B40
/* 804D7AB0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D7AB4  4B D8 FE A0 */	b cM_rndF__Ff
/* 804D7AB8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 804D7ABC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D7AC0  40 80 00 28 */	bge lbl_804D7AE8
/* 804D7AC4  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 804D7AC8  4B D8 FE 8C */	b cM_rndF__Ff
/* 804D7ACC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804D7AD0  EC 00 08 2A */	fadds f0, f0, f1
/* 804D7AD4  FC 00 00 1E */	fctiwz f0, f0
/* 804D7AD8  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804D7ADC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D7AE0  B0 1E 06 4E */	sth r0, 0x64e(r30)
/* 804D7AE4  48 00 00 24 */	b lbl_804D7B08
lbl_804D7AE8:
/* 804D7AE8  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804D7AEC  4B D8 FE 68 */	b cM_rndF__Ff
/* 804D7AF0  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 804D7AF4  EC 00 08 2A */	fadds f0, f0, f1
/* 804D7AF8  FC 00 00 1E */	fctiwz f0, f0
/* 804D7AFC  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804D7B00  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D7B04  B0 1E 06 4E */	sth r0, 0x64e(r30)
lbl_804D7B08:
/* 804D7B08  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804D7B0C  4B D8 FE 48 */	b cM_rndF__Ff
/* 804D7B10  FC 00 08 1E */	fctiwz f0, f1
/* 804D7B14  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804D7B18  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D7B1C  54 00 10 3A */	slwi r0, r0, 2
/* 804D7B20  3C 60 80 4E */	lis r3, wait_bck@ha
/* 804D7B24  38 83 A2 08 */	addi r4, r3, wait_bck@l
/* 804D7B28  7F C3 F3 78 */	mr r3, r30
/* 804D7B2C  7C 84 00 2E */	lwzx r4, r4, r0
/* 804D7B30  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804D7B34  38 A0 00 00 */	li r5, 0
/* 804D7B38  C0 5F 00 44 */	lfs f2, 0x44(r31)
/* 804D7B3C  4B FF F1 69 */	bl anm_init__FP8bd_classifUcf
lbl_804D7B40:
/* 804D7B40  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 804D7B44  2C 00 00 00 */	cmpwi r0, 0
/* 804D7B48  40 82 01 30 */	bne lbl_804D7C78
/* 804D7B4C  7F C3 F3 78 */	mr r3, r30
/* 804D7B50  4B FF F2 89 */	bl way_bg_check__FP8bd_class
/* 804D7B54  2C 03 00 00 */	cmpwi r3, 0
/* 804D7B58  41 82 00 10 */	beq lbl_804D7B68
/* 804D7B5C  7F C3 F3 78 */	mr r3, r30
/* 804D7B60  4B FF FD 31 */	bl turn_set__FP8bd_class
/* 804D7B64  48 00 00 48 */	b lbl_804D7BAC
lbl_804D7B68:
/* 804D7B68  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804D7B6C  4B D8 FE 20 */	b cM_rndFX__Ff
/* 804D7B70  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 804D7B74  EC 20 08 2A */	fadds f1, f0, f1
/* 804D7B78  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 804D7B7C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804D7B80  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804D7B84  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 804D7B88  4B D8 FE 04 */	b cM_rndFX__Ff
/* 804D7B8C  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 804D7B90  EC 20 08 2A */	fadds f1, f0, f1
/* 804D7B94  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 804D7B98  EC 41 00 28 */	fsubs f2, f1, f0
/* 804D7B9C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 804D7BA0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 804D7BA4  4B D8 FA D0 */	b cM_atan2s__Fff
/* 804D7BA8  B0 7E 05 D0 */	sth r3, 0x5d0(r30)
lbl_804D7BAC:
/* 804D7BAC  38 00 00 03 */	li r0, 3
/* 804D7BB0  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 804D7BB4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 804D7BB8  4B D8 FD 9C */	b cM_rndF__Ff
/* 804D7BBC  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 804D7BC0  EC 00 08 2A */	fadds f0, f0, f1
/* 804D7BC4  FC 00 00 1E */	fctiwz f0, f0
/* 804D7BC8  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804D7BCC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D7BD0  B0 1E 06 4C */	sth r0, 0x64c(r30)
/* 804D7BD4  48 00 00 A4 */	b lbl_804D7C78
lbl_804D7BD8:
/* 804D7BD8  7F C3 F3 78 */	mr r3, r30
/* 804D7BDC  38 80 00 0B */	li r4, 0xb
/* 804D7BE0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D7BE4  38 A0 00 02 */	li r5, 2
/* 804D7BE8  FC 40 08 90 */	fmr f2, f1
/* 804D7BEC  4B FF F0 B9 */	bl anm_init__FP8bd_classifUcf
/* 804D7BF0  A8 7E 06 1C */	lha r3, 0x61c(r30)
/* 804D7BF4  38 03 00 01 */	addi r0, r3, 1
/* 804D7BF8  B0 1E 06 1C */	sth r0, 0x61c(r30)
lbl_804D7BFC:
/* 804D7BFC  3C 60 80 4E */	lis r3, l_HIO@ha
/* 804D7C00  38 63 A3 6C */	addi r3, r3, l_HIO@l
/* 804D7C04  C3 E3 00 10 */	lfs f31, 0x10(r3)
/* 804D7C08  38 7E 04 DE */	addi r3, r30, 0x4de
/* 804D7C0C  A8 9E 05 D0 */	lha r4, 0x5d0(r30)
/* 804D7C10  38 A0 00 04 */	li r5, 4
/* 804D7C14  38 C0 10 00 */	li r6, 0x1000
/* 804D7C18  4B D9 89 F0 */	b cLib_addCalcAngleS2__FPssss
/* 804D7C1C  A8 1E 06 4C */	lha r0, 0x64c(r30)
/* 804D7C20  2C 00 00 00 */	cmpwi r0, 0
/* 804D7C24  40 82 00 2C */	bne lbl_804D7C50
/* 804D7C28  80 7E 05 E4 */	lwz r3, 0x5e4(r30)
/* 804D7C2C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 804D7C30  FC 00 00 1E */	fctiwz f0, f0
/* 804D7C34  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804D7C38  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D7C3C  2C 00 00 01 */	cmpwi r0, 1
/* 804D7C40  41 81 00 10 */	bgt lbl_804D7C50
/* 804D7C44  38 00 00 01 */	li r0, 1
/* 804D7C48  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 804D7C4C  48 00 00 2C */	b lbl_804D7C78
lbl_804D7C50:
/* 804D7C50  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 804D7C54  2C 00 00 00 */	cmpwi r0, 0
/* 804D7C58  40 82 00 20 */	bne lbl_804D7C78
/* 804D7C5C  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 804D7C60  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804D7C64  41 82 00 14 */	beq lbl_804D7C78
/* 804D7C68  7F C3 F3 78 */	mr r3, r30
/* 804D7C6C  4B FF FC 25 */	bl turn_set__FP8bd_class
/* 804D7C70  38 00 00 14 */	li r0, 0x14
/* 804D7C74  B0 1E 06 50 */	sth r0, 0x650(r30)
lbl_804D7C78:
/* 804D7C78  D3 FE 05 2C */	stfs f31, 0x52c(r30)
/* 804D7C7C  A8 1E 06 18 */	lha r0, 0x618(r30)
/* 804D7C80  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 804D7C84  40 82 00 44 */	bne lbl_804D7CC8
/* 804D7C88  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D7C8C  4B D8 FC C8 */	b cM_rndF__Ff
/* 804D7C90  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804D7C94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D7C98  40 80 00 30 */	bge lbl_804D7CC8
/* 804D7C9C  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060004@ha */
/* 804D7CA0  38 03 00 04 */	addi r0, r3, 0x0004 /* 0x00060004@l */
/* 804D7CA4  90 01 00 08 */	stw r0, 8(r1)
/* 804D7CA8  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 804D7CAC  38 81 00 08 */	addi r4, r1, 8
/* 804D7CB0  38 A0 00 00 */	li r5, 0
/* 804D7CB4  38 C0 FF FF */	li r6, -1
/* 804D7CB8  81 9E 06 08 */	lwz r12, 0x608(r30)
/* 804D7CBC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804D7CC0  7D 89 03 A6 */	mtctr r12
/* 804D7CC4  4E 80 04 21 */	bctrl 
lbl_804D7CC8:
/* 804D7CC8  7F C3 F3 78 */	mr r3, r30
/* 804D7CCC  4B FF FB 91 */	bl drop_check__FP8bd_class
/* 804D7CD0  A8 7E 06 58 */	lha r3, 0x658(r30)
/* 804D7CD4  2C 03 00 00 */	cmpwi r3, 0
/* 804D7CD8  40 82 00 E8 */	bne lbl_804D7DC0
/* 804D7CDC  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 804D7CE0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804D7CE4  41 82 00 68 */	beq lbl_804D7D4C
/* 804D7CE8  A8 1E 06 52 */	lha r0, 0x652(r30)
/* 804D7CEC  2C 00 00 32 */	cmpwi r0, 0x32
/* 804D7CF0  40 81 00 24 */	ble lbl_804D7D14
/* 804D7CF4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 804D7CF8  4B D8 FC 5C */	b cM_rndF__Ff
/* 804D7CFC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 804D7D00  EC 00 08 2A */	fadds f0, f0, f1
/* 804D7D04  FC 00 00 1E */	fctiwz f0, f0
/* 804D7D08  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804D7D0C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D7D10  B0 1E 06 52 */	sth r0, 0x652(r30)
lbl_804D7D14:
/* 804D7D14  3C 60 80 43 */	lis r3, g_env_light@ha
/* 804D7D18  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 804D7D1C  C0 23 12 44 */	lfs f1, 0x1244(r3)
/* 804D7D20  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 804D7D24  EC 01 00 24 */	fdivs f0, f1, f0
/* 804D7D28  FC 00 00 1E */	fctiwz f0, f0
/* 804D7D2C  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804D7D30  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D7D34  2C 00 00 06 */	cmpwi r0, 6
/* 804D7D38  40 81 00 0C */	ble lbl_804D7D44
/* 804D7D3C  2C 00 00 11 */	cmpwi r0, 0x11
/* 804D7D40  41 80 00 0C */	blt lbl_804D7D4C
lbl_804D7D44:
/* 804D7D44  7F C3 F3 78 */	mr r3, r30
/* 804D7D48  4B B4 1F 34 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_804D7D4C:
/* 804D7D4C  A8 1E 06 52 */	lha r0, 0x652(r30)
/* 804D7D50  2C 00 00 00 */	cmpwi r0, 0
/* 804D7D54  40 82 00 74 */	bne lbl_804D7DC8
/* 804D7D58  38 60 00 01 */	li r3, 1
/* 804D7D5C  B0 7E 06 1A */	sth r3, 0x61a(r30)
/* 804D7D60  38 00 00 00 */	li r0, 0
/* 804D7D64  B0 1E 06 1C */	sth r0, 0x61c(r30)
/* 804D7D68  B0 7E 06 1E */	sth r3, 0x61e(r30)
/* 804D7D6C  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 804D7D70  D0 1E 06 24 */	stfs f0, 0x624(r30)
/* 804D7D74  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 804D7D78  4B D8 FB DC */	b cM_rndF__Ff
/* 804D7D7C  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 804D7D80  EC 00 08 2A */	fadds f0, f0, f1
/* 804D7D84  FC 00 00 1E */	fctiwz f0, f0
/* 804D7D88  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 804D7D8C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 804D7D90  B0 1E 06 28 */	sth r0, 0x628(r30)
/* 804D7D94  7F C3 F3 78 */	mr r3, r30
/* 804D7D98  38 80 00 05 */	li r4, 5
/* 804D7D9C  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 804D7DA0  38 A0 00 02 */	li r5, 2
/* 804D7DA4  FC 40 08 90 */	fmr f2, f1
/* 804D7DA8  4B FF EE FD */	bl anm_init__FP8bd_classifUcf
/* 804D7DAC  3C 60 80 4E */	lis r3, l_HIO@ha
/* 804D7DB0  38 63 A3 6C */	addi r3, r3, l_HIO@l
/* 804D7DB4  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 804D7DB8  B0 1E 05 F4 */	sth r0, 0x5f4(r30)
/* 804D7DBC  48 00 00 0C */	b lbl_804D7DC8
lbl_804D7DC0:
/* 804D7DC0  38 03 FF FF */	addi r0, r3, -1
/* 804D7DC4  B0 1E 06 58 */	sth r0, 0x658(r30)
lbl_804D7DC8:
/* 804D7DC8  38 61 00 24 */	addi r3, r1, 0x24
/* 804D7DCC  38 80 FF FF */	li r4, -1
/* 804D7DD0  4B B9 F8 20 */	b __dt__11dBgS_GndChkFv
/* 804D7DD4  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 804D7DD8  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 804D7DDC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804D7DE0  4B E8 A4 48 */	b _restgpr_29
/* 804D7DE4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 804D7DE8  7C 08 03 A6 */	mtlr r0
/* 804D7DEC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 804D7DF0  4E 80 00 20 */	blr 
