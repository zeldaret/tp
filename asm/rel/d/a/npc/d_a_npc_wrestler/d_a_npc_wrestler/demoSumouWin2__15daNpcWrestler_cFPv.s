lbl_80B3BC84:
/* 80B3BC84  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B3BC88  7C 08 02 A6 */	mflr r0
/* 80B3BC8C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B3BC90  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80B3BC94  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80B3BC98  39 61 00 90 */	addi r11, r1, 0x90
/* 80B3BC9C  4B 82 65 38 */	b _savegpr_27
/* 80B3BCA0  7C 7B 1B 78 */	mr r27, r3
/* 80B3BCA4  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha
/* 80B3BCA8  3B C3 16 DC */	addi r30, r3, m__21daNpcWrestler_Param_c@l
/* 80B3BCAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3BCB0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B3BCB4  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80B3BCB8  4B 64 59 88 */	b dCam_getBody__Fv
/* 80B3BCBC  7C 7C 1B 78 */	mr r28, r3
/* 80B3BCC0  A0 1B 0E 96 */	lhz r0, 0xe96(r27)
/* 80B3BCC4  2C 00 00 02 */	cmpwi r0, 2
/* 80B3BCC8  41 82 00 3C */	beq lbl_80B3BD04
/* 80B3BCCC  40 80 00 10 */	bge lbl_80B3BCDC
/* 80B3BCD0  2C 00 00 00 */	cmpwi r0, 0
/* 80B3BCD4  41 82 00 14 */	beq lbl_80B3BCE8
/* 80B3BCD8  48 00 05 7C */	b lbl_80B3C254
lbl_80B3BCDC:
/* 80B3BCDC  2C 00 00 04 */	cmpwi r0, 4
/* 80B3BCE0  40 80 05 74 */	bge lbl_80B3C254
/* 80B3BCE4  48 00 05 68 */	b lbl_80B3C24C
lbl_80B3BCE8:
/* 80B3BCE8  38 00 00 00 */	li r0, 0
/* 80B3BCEC  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B3BCF0  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B3BCF4  90 1B 0E 74 */	stw r0, 0xe74(r27)
/* 80B3BCF8  38 00 00 02 */	li r0, 2
/* 80B3BCFC  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B3BD00  48 00 05 54 */	b lbl_80B3C254
lbl_80B3BD04:
/* 80B3BD04  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B3BD08  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B3BD0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B3BD10  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B3BD14  38 80 00 04 */	li r4, 4
/* 80B3BD18  4B 77 60 DC */	b changeSubBgmStatus__8Z2SeqMgrFl
/* 80B3BD1C  80 1B 0E 84 */	lwz r0, 0xe84(r27)
/* 80B3BD20  2C 00 00 01 */	cmpwi r0, 1
/* 80B3BD24  41 82 01 C0 */	beq lbl_80B3BEE4
/* 80B3BD28  40 80 00 10 */	bge lbl_80B3BD38
/* 80B3BD2C  2C 00 00 00 */	cmpwi r0, 0
/* 80B3BD30  40 80 00 14 */	bge lbl_80B3BD44
/* 80B3BD34  48 00 04 C0 */	b lbl_80B3C1F4
lbl_80B3BD38:
/* 80B3BD38  2C 00 00 03 */	cmpwi r0, 3
/* 80B3BD3C  40 80 04 B8 */	bge lbl_80B3C1F4
/* 80B3BD40  48 00 03 80 */	b lbl_80B3C0C0
lbl_80B3BD44:
/* 80B3BD44  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B3BD48  28 00 00 02 */	cmplwi r0, 2
/* 80B3BD4C  41 82 00 30 */	beq lbl_80B3BD7C
/* 80B3BD50  7F 63 DB 78 */	mr r3, r27
/* 80B3BD54  38 80 00 01 */	li r4, 1
/* 80B3BD58  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80B3BD5C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80B3BD60  38 C0 00 00 */	li r6, 0
/* 80B3BD64  4B 4D FB A4 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80B3BD68  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80B3BD6C  60 00 00 02 */	ori r0, r0, 2
/* 80B3BD70  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 80B3BD74  38 60 00 00 */	li r3, 0
/* 80B3BD78  48 00 04 E0 */	b lbl_80B3C258
lbl_80B3BD7C:
/* 80B3BD7C  38 61 00 68 */	addi r3, r1, 0x68
/* 80B3BD80  7F 84 E3 78 */	mr r4, r28
/* 80B3BD84  4B 64 61 14 */	b Center__9dCamera_cFv
/* 80B3BD88  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80B3BD8C  D0 1B 0E 08 */	stfs f0, 0xe08(r27)
/* 80B3BD90  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B3BD94  D0 1B 0E 0C */	stfs f0, 0xe0c(r27)
/* 80B3BD98  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B3BD9C  D0 1B 0E 10 */	stfs f0, 0xe10(r27)
/* 80B3BDA0  38 61 00 5C */	addi r3, r1, 0x5c
/* 80B3BDA4  7F 84 E3 78 */	mr r4, r28
/* 80B3BDA8  4B 64 60 BC */	b Eye__9dCamera_cFv
/* 80B3BDAC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80B3BDB0  D0 1B 0E 14 */	stfs f0, 0xe14(r27)
/* 80B3BDB4  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80B3BDB8  D0 1B 0E 18 */	stfs f0, 0xe18(r27)
/* 80B3BDBC  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B3BDC0  D0 1B 0E 1C */	stfs f0, 0xe1c(r27)
/* 80B3BDC4  C0 3C 00 58 */	lfs f1, 0x58(r28)
/* 80B3BDC8  C0 1C 06 F4 */	lfs f0, 0x6f4(r28)
/* 80B3BDCC  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3BDD0  D0 1B 0E 50 */	stfs f0, 0xe50(r27)
/* 80B3BDD4  7F A3 EB 78 */	mr r3, r29
/* 80B3BDD8  38 80 00 00 */	li r4, 0
/* 80B3BDDC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3BDE0  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80B3BDE4  7D 89 03 A6 */	mtctr r12
/* 80B3BDE8  4E 80 04 21 */	bctrl 
/* 80B3BDEC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B3BDF0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B3BDF4  4B 80 A6 BC */	b PSMTXCopy
/* 80B3BDF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3BDFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3BE00  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3BE04  D0 1B 0E 44 */	stfs f0, 0xe44(r27)
/* 80B3BE08  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3BE0C  D0 1B 0E 48 */	stfs f0, 0xe48(r27)
/* 80B3BE10  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3BE14  D0 1B 0E 4C */	stfs f0, 0xe4c(r27)
/* 80B3BE18  38 61 00 50 */	addi r3, r1, 0x50
/* 80B3BE1C  7F 84 E3 78 */	mr r4, r28
/* 80B3BE20  4B 64 60 44 */	b Eye__9dCamera_cFv
/* 80B3BE24  38 61 00 44 */	addi r3, r1, 0x44
/* 80B3BE28  38 81 00 50 */	addi r4, r1, 0x50
/* 80B3BE2C  38 BB 0E 44 */	addi r5, r27, 0xe44
/* 80B3BE30  4B 72 AD 04 */	b __mi__4cXyzCFRC3Vec
/* 80B3BE34  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B3BE38  D0 1B 0E 44 */	stfs f0, 0xe44(r27)
/* 80B3BE3C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B3BE40  D0 1B 0E 48 */	stfs f0, 0xe48(r27)
/* 80B3BE44  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B3BE48  D0 1B 0E 4C */	stfs f0, 0xe4c(r27)
/* 80B3BE4C  C0 3B 0E 48 */	lfs f1, 0xe48(r27)
/* 80B3BE50  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80B3BE54  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B3BE58  D0 1B 0E 48 */	stfs f0, 0xe48(r27)
/* 80B3BE5C  7F 83 E3 78 */	mr r3, r28
/* 80B3BE60  4B 62 56 70 */	b Stop__9dCamera_cFv
/* 80B3BE64  7F 83 E3 78 */	mr r3, r28
/* 80B3BE68  38 80 00 02 */	li r4, 2
/* 80B3BE6C  4B 62 71 A0 */	b SetTrimSize__9dCamera_cFl
/* 80B3BE70  38 00 00 0C */	li r0, 0xc
/* 80B3BE74  98 1D 05 6A */	stb r0, 0x56a(r29)
/* 80B3BE78  7F 63 DB 78 */	mr r3, r27
/* 80B3BE7C  38 80 00 05 */	li r4, 5
/* 80B3BE80  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3BE84  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3BE88  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3BE8C  7D 89 03 A6 */	mtctr r12
/* 80B3BE90  4E 80 04 21 */	bctrl 
/* 80B3BE94  7F 63 DB 78 */	mr r3, r27
/* 80B3BE98  38 80 00 21 */	li r4, 0x21
/* 80B3BE9C  80 BB 0B D8 */	lwz r5, 0xbd8(r27)
/* 80B3BEA0  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B3BEA4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3BEA8  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B3BEAC  7D 89 03 A6 */	mtctr r12
/* 80B3BEB0  4E 80 04 21 */	bctrl 
/* 80B3BEB4  A8 1B 0E 90 */	lha r0, 0xe90(r27)
/* 80B3BEB8  2C 00 00 02 */	cmpwi r0, 2
/* 80B3BEBC  41 82 00 0C */	beq lbl_80B3BEC8
/* 80B3BEC0  38 00 00 02 */	li r0, 2
/* 80B3BEC4  B0 1B 0E 90 */	sth r0, 0xe90(r27)
lbl_80B3BEC8:
/* 80B3BEC8  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80B3BECC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B3BED0  4B 61 47 EC */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B3BED4  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B3BED8  38 03 00 01 */	addi r0, r3, 1
/* 80B3BEDC  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B3BEE0  48 00 03 14 */	b lbl_80B3C1F4
lbl_80B3BEE4:
/* 80B3BEE4  7F A3 EB 78 */	mr r3, r29
/* 80B3BEE8  38 80 00 01 */	li r4, 1
/* 80B3BEEC  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3BEF0  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80B3BEF4  7D 89 03 A6 */	mtctr r12
/* 80B3BEF8  4E 80 04 21 */	bctrl 
/* 80B3BEFC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B3BF00  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B3BF04  4B 80 A5 AC */	b PSMTXCopy
/* 80B3BF08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3BF0C  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l
/* 80B3BF10  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80B3BF14  D0 1B 0E 20 */	stfs f0, 0xe20(r27)
/* 80B3BF18  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B3BF1C  D0 1B 0E 24 */	stfs f0, 0xe24(r27)
/* 80B3BF20  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80B3BF24  D0 1B 0E 28 */	stfs f0, 0xe28(r27)
/* 80B3BF28  C0 3B 0E 24 */	lfs f1, 0xe24(r27)
/* 80B3BF2C  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80B3BF30  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3BF34  D0 1B 0E 24 */	stfs f0, 0xe24(r27)
/* 80B3BF38  38 7B 0E 08 */	addi r3, r27, 0xe08
/* 80B3BF3C  38 9B 0E 20 */	addi r4, r27, 0xe20
/* 80B3BF40  C0 3E 06 3C */	lfs f1, 0x63c(r30)
/* 80B3BF44  C0 5E 05 AC */	lfs f2, 0x5ac(r30)
/* 80B3BF48  C0 7E 06 40 */	lfs f3, 0x640(r30)
/* 80B3BF4C  4B 73 3B 6C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3BF50  FF E0 08 90 */	fmr f31, f1
/* 80B3BF54  7F A3 EB 78 */	mr r3, r29
/* 80B3BF58  38 80 00 00 */	li r4, 0
/* 80B3BF5C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3BF60  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80B3BF64  7D 89 03 A6 */	mtctr r12
/* 80B3BF68  4E 80 04 21 */	bctrl 
/* 80B3BF6C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B3BF70  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B3BF74  4B 80 A5 3C */	b PSMTXCopy
/* 80B3BF78  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80B3BF7C  D0 1B 0E 2C */	stfs f0, 0xe2c(r27)
/* 80B3BF80  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B3BF84  D0 1B 0E 30 */	stfs f0, 0xe30(r27)
/* 80B3BF88  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80B3BF8C  D0 1B 0E 34 */	stfs f0, 0xe34(r27)
/* 80B3BF90  38 7B 0E 2C */	addi r3, r27, 0xe2c
/* 80B3BF94  38 9B 0E 44 */	addi r4, r27, 0xe44
/* 80B3BF98  7C 65 1B 78 */	mr r5, r3
/* 80B3BF9C  4B 80 B0 F4 */	b PSVECAdd
/* 80B3BFA0  C0 1B 0E 2C */	lfs f0, 0xe2c(r27)
/* 80B3BFA4  D0 1B 0E 14 */	stfs f0, 0xe14(r27)
/* 80B3BFA8  C0 1B 0E 30 */	lfs f0, 0xe30(r27)
/* 80B3BFAC  D0 1B 0E 18 */	stfs f0, 0xe18(r27)
/* 80B3BFB0  C0 1B 0E 34 */	lfs f0, 0xe34(r27)
/* 80B3BFB4  D0 1B 0E 1C */	stfs f0, 0xe1c(r27)
/* 80B3BFB8  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3BFBC  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80B3BFC0  40 82 02 34 */	bne lbl_80B3C1F4
/* 80B3BFC4  7F 63 DB 78 */	mr r3, r27
/* 80B3BFC8  38 80 00 16 */	li r4, 0x16
/* 80B3BFCC  38 A0 00 01 */	li r5, 1
/* 80B3BFD0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3BFD4  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B3BFD8  7D 89 03 A6 */	mtctr r12
/* 80B3BFDC  4E 80 04 21 */	bctrl 
/* 80B3BFE0  7F 63 DB 78 */	mr r3, r27
/* 80B3BFE4  38 80 00 19 */	li r4, 0x19
/* 80B3BFE8  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3BFEC  38 A0 00 00 */	li r5, 0
/* 80B3BFF0  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3BFF4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3BFF8  7D 89 03 A6 */	mtctr r12
/* 80B3BFFC  4E 80 04 21 */	bctrl 
/* 80B3C000  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3C004  D0 1B 0E 14 */	stfs f0, 0xe14(r27)
/* 80B3C008  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80B3C00C  D0 1B 0E 18 */	stfs f0, 0xe18(r27)
/* 80B3C010  C0 1E 05 84 */	lfs f0, 0x584(r30)
/* 80B3C014  D0 1B 0E 1C */	stfs f0, 0xe1c(r27)
/* 80B3C018  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B3C01C  4B 4D 0D 48 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3C020  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3C024  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3C028  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B3C02C  4B 4D 04 08 */	b mDoMtx_YrotM__FPA4_fs
/* 80B3C030  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B3C034  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B3C038  38 9B 0E 14 */	addi r4, r27, 0xe14
/* 80B3C03C  7C 85 23 78 */	mr r5, r4
/* 80B3C040  4B 80 AD 2C */	b PSMTXMultVec
/* 80B3C044  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80B3C048  D0 1B 0E 08 */	stfs f0, 0xe08(r27)
/* 80B3C04C  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80B3C050  D0 1B 0E 0C */	stfs f0, 0xe0c(r27)
/* 80B3C054  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80B3C058  D0 1B 0E 10 */	stfs f0, 0xe10(r27)
/* 80B3C05C  C0 3B 0E 0C */	lfs f1, 0xe0c(r27)
/* 80B3C060  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80B3C064  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3C068  D0 1B 0E 0C */	stfs f0, 0xe0c(r27)
/* 80B3C06C  C0 5B 0E 10 */	lfs f2, 0xe10(r27)
/* 80B3C070  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 80B3C074  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B3C078  EC 21 00 2A */	fadds f1, f1, f0
/* 80B3C07C  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B3C080  D0 1B 0E 20 */	stfs f0, 0xe20(r27)
/* 80B3C084  D0 3B 0E 24 */	stfs f1, 0xe24(r27)
/* 80B3C088  D0 5B 0E 28 */	stfs f2, 0xe28(r27)
/* 80B3C08C  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80B3C090  D0 1B 0E 50 */	stfs f0, 0xe50(r27)
/* 80B3C094  7F A3 EB 78 */	mr r3, r29
/* 80B3C098  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3C09C  81 8C 02 34 */	lwz r12, 0x234(r12)
/* 80B3C0A0  7D 89 03 A6 */	mtctr r12
/* 80B3C0A4  4E 80 04 21 */	bctrl 
/* 80B3C0A8  38 00 00 14 */	li r0, 0x14
/* 80B3C0AC  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B3C0B0  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B3C0B4  38 03 00 01 */	addi r0, r3, 1
/* 80B3C0B8  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B3C0BC  48 00 01 38 */	b lbl_80B3C1F4
lbl_80B3C0C0:
/* 80B3C0C0  38 7B 0E 0C */	addi r3, r27, 0xe0c
/* 80B3C0C4  C0 3B 0E 24 */	lfs f1, 0xe24(r27)
/* 80B3C0C8  C0 5E 06 44 */	lfs f2, 0x644(r30)
/* 80B3C0CC  C0 7E 06 48 */	lfs f3, 0x648(r30)
/* 80B3C0D0  C0 9E 05 F8 */	lfs f4, 0x5f8(r30)
/* 80B3C0D4  4B 73 38 A8 */	b cLib_addCalc__FPfffff
/* 80B3C0D8  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3C0DC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3C0E0  40 82 01 14 */	bne lbl_80B3C1F4
/* 80B3C0E4  80 7B 0E 80 */	lwz r3, 0xe80(r27)
/* 80B3C0E8  38 03 FF FF */	addi r0, r3, -1
/* 80B3C0EC  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B3C0F0  2C 03 00 00 */	cmpwi r3, 0
/* 80B3C0F4  41 81 01 00 */	bgt lbl_80B3C1F4
/* 80B3C0F8  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B3C0FC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B3C100  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B3C104  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B3C108  C0 1B 0E 10 */	lfs f0, 0xe10(r27)
/* 80B3C10C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B3C110  C0 1B 0E 14 */	lfs f0, 0xe14(r27)
/* 80B3C114  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B3C118  C0 1B 0E 18 */	lfs f0, 0xe18(r27)
/* 80B3C11C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B3C120  C0 1B 0E 1C */	lfs f0, 0xe1c(r27)
/* 80B3C124  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B3C128  7F 83 E3 78 */	mr r3, r28
/* 80B3C12C  38 81 00 38 */	addi r4, r1, 0x38
/* 80B3C130  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80B3C134  4B 64 4A E4 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80B3C138  7F 83 E3 78 */	mr r3, r28
/* 80B3C13C  4B 62 53 70 */	b Start__9dCamera_cFv
/* 80B3C140  7F 83 E3 78 */	mr r3, r28
/* 80B3C144  38 80 00 00 */	li r4, 0
/* 80B3C148  4B 62 6E C4 */	b SetTrimSize__9dCamera_cFl
/* 80B3C14C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B3C150  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B3C154  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B3C158  4B 50 63 10 */	b reset__14dEvt_control_cFv
/* 80B3C15C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3C160  D0 1B 0E 8C */	stfs f0, 0xe8c(r27)
/* 80B3C164  3C 60 80 B4 */	lis r3, lit_9598@ha
/* 80B3C168  38 83 2C 3C */	addi r4, r3, lit_9598@l
/* 80B3C16C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3C170  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3C174  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B3C178  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B3C17C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3C180  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B3C184  38 00 00 03 */	li r0, 3
/* 80B3C188  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B3C18C  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B3C190  4B 82 5E 88 */	b __ptmf_test
/* 80B3C194  2C 03 00 00 */	cmpwi r3, 0
/* 80B3C198  41 82 00 18 */	beq lbl_80B3C1B0
/* 80B3C19C  7F 63 DB 78 */	mr r3, r27
/* 80B3C1A0  38 80 00 00 */	li r4, 0
/* 80B3C1A4  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B3C1A8  4B 82 5E DC */	b __ptmf_scall
/* 80B3C1AC  60 00 00 00 */	nop 
lbl_80B3C1B0:
/* 80B3C1B0  38 00 00 00 */	li r0, 0
/* 80B3C1B4  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B3C1B8  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B3C1BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B3C1C0  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B3C1C4  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B3C1C8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B3C1CC  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B3C1D0  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B3C1D4  4B 82 5E 44 */	b __ptmf_test
/* 80B3C1D8  2C 03 00 00 */	cmpwi r3, 0
/* 80B3C1DC  41 82 00 18 */	beq lbl_80B3C1F4
/* 80B3C1E0  7F 63 DB 78 */	mr r3, r27
/* 80B3C1E4  38 80 00 00 */	li r4, 0
/* 80B3C1E8  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B3C1EC  4B 82 5E 98 */	b __ptmf_scall
/* 80B3C1F0  60 00 00 00 */	nop 
lbl_80B3C1F4:
/* 80B3C1F4  80 1B 0E 84 */	lwz r0, 0xe84(r27)
/* 80B3C1F8  2C 00 00 00 */	cmpwi r0, 0
/* 80B3C1FC  40 81 00 58 */	ble lbl_80B3C254
/* 80B3C200  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B3C204  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B3C208  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B3C20C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B3C210  C0 1B 0E 10 */	lfs f0, 0xe10(r27)
/* 80B3C214  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B3C218  C0 1B 0E 14 */	lfs f0, 0xe14(r27)
/* 80B3C21C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B3C220  C0 1B 0E 18 */	lfs f0, 0xe18(r27)
/* 80B3C224  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B3C228  C0 1B 0E 1C */	lfs f0, 0xe1c(r27)
/* 80B3C22C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B3C230  7F 83 E3 78 */	mr r3, r28
/* 80B3C234  38 81 00 14 */	addi r4, r1, 0x14
/* 80B3C238  38 A1 00 08 */	addi r5, r1, 8
/* 80B3C23C  C0 3B 0E 50 */	lfs f1, 0xe50(r27)
/* 80B3C240  38 C0 00 00 */	li r6, 0
/* 80B3C244  4B 64 48 9C */	b Set__9dCamera_cF4cXyz4cXyzfs
/* 80B3C248  48 00 00 0C */	b lbl_80B3C254
lbl_80B3C24C:
/* 80B3C24C  38 00 00 01 */	li r0, 1
/* 80B3C250  98 1B 0E 99 */	stb r0, 0xe99(r27)
lbl_80B3C254:
/* 80B3C254  38 60 00 01 */	li r3, 1
lbl_80B3C258:
/* 80B3C258  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80B3C25C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80B3C260  39 61 00 90 */	addi r11, r1, 0x90
/* 80B3C264  4B 82 5F BC */	b _restgpr_27
/* 80B3C268  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B3C26C  7C 08 03 A6 */	mtlr r0
/* 80B3C270  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B3C274  4E 80 00 20 */	blr 
