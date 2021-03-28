lbl_80BAF09C:
/* 80BAF09C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BAF0A0  7C 08 02 A6 */	mflr r0
/* 80BAF0A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BAF0A8  39 61 00 20 */	addi r11, r1, 0x20
/* 80BAF0AC  4B 7B 31 30 */	b _savegpr_29
/* 80BAF0B0  7C 7D 1B 78 */	mr r29, r3
/* 80BAF0B4  7C 9E 23 78 */	mr r30, r4
/* 80BAF0B8  3C 60 80 BB */	lis r3, l_eye_offset@ha
/* 80BAF0BC  3B E3 37 B8 */	addi r31, r3, l_eye_offset@l
/* 80BAF0C0  80 7D 0F F0 */	lwz r3, 0xff0(r29)
/* 80BAF0C4  38 03 00 01 */	addi r0, r3, 1
/* 80BAF0C8  90 1D 0F F0 */	stw r0, 0xff0(r29)
/* 80BAF0CC  A8 7D 0F 96 */	lha r3, 0xf96(r29)
/* 80BAF0D0  A8 1D 0F 98 */	lha r0, 0xf98(r29)
/* 80BAF0D4  7C 03 00 00 */	cmpw r3, r0
/* 80BAF0D8  41 82 00 18 */	beq lbl_80BAF0F0
/* 80BAF0DC  A8 1D 0F AA */	lha r0, 0xfaa(r29)
/* 80BAF0E0  2C 00 00 00 */	cmpwi r0, 0
/* 80BAF0E4  40 82 00 0C */	bne lbl_80BAF0F0
/* 80BAF0E8  38 00 00 FA */	li r0, 0xfa
/* 80BAF0EC  B0 1D 0F AA */	sth r0, 0xfaa(r29)
lbl_80BAF0F0:
/* 80BAF0F0  38 7D 0F 96 */	addi r3, r29, 0xf96
/* 80BAF0F4  A8 9D 0F 98 */	lha r4, 0xf98(r29)
/* 80BAF0F8  A8 BD 0F AA */	lha r5, 0xfaa(r29)
/* 80BAF0FC  4B 6C 1A 94 */	b cLib_chaseAngleS__FPsss
/* 80BAF100  38 7D 0F 9A */	addi r3, r29, 0xf9a
/* 80BAF104  A8 9D 0F 9C */	lha r4, 0xf9c(r29)
/* 80BAF108  A8 BD 0F AE */	lha r5, 0xfae(r29)
/* 80BAF10C  4B 6C 1A 84 */	b cLib_chaseAngleS__FPsss
/* 80BAF110  38 7D 0F 9E */	addi r3, r29, 0xf9e
/* 80BAF114  A8 9D 0F A0 */	lha r4, 0xfa0(r29)
/* 80BAF118  A8 BD 0F AE */	lha r5, 0xfae(r29)
/* 80BAF11C  4B 6C 1A 74 */	b cLib_chaseAngleS__FPsss
/* 80BAF120  38 7D 0F A2 */	addi r3, r29, 0xfa2
/* 80BAF124  A8 9D 0F A4 */	lha r4, 0xfa4(r29)
/* 80BAF128  A8 BD 0F AE */	lha r5, 0xfae(r29)
/* 80BAF12C  4B 6C 1A 64 */	b cLib_chaseAngleS__FPsss
/* 80BAF130  38 7D 0F A6 */	addi r3, r29, 0xfa6
/* 80BAF134  A8 9D 0F A8 */	lha r4, 0xfa8(r29)
/* 80BAF138  A8 BD 0F AE */	lha r5, 0xfae(r29)
/* 80BAF13C  4B 6C 1A 54 */	b cLib_chaseAngleS__FPsss
/* 80BAF140  7F A3 EB 78 */	mr r3, r29
/* 80BAF144  48 00 01 59 */	bl main_proc_call__9daObjBm_cFv
/* 80BAF148  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BAF14C  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80BAF150  38 7F 00 00 */	addi r3, r31, 0
/* 80BAF154  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BAF158  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80BAF15C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BAF160  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80BAF164  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80BAF168  4B 45 DB FC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80BAF16C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAF170  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAF174  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80BAF178  A8 1D 0F 96 */	lha r0, 0xf96(r29)
/* 80BAF17C  7C 04 02 14 */	add r0, r4, r0
/* 80BAF180  7C 04 07 34 */	extsh r4, r0
/* 80BAF184  4B 45 D2 B0 */	b mDoMtx_YrotM__FPA4_fs
/* 80BAF188  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80BAF18C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80BAF190  38 9D 05 38 */	addi r4, r29, 0x538
/* 80BAF194  7C 85 23 78 */	mr r5, r4
/* 80BAF198  4B 79 7B D4 */	b PSMTXMultVec
/* 80BAF19C  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80BAF1A0  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80BAF1A4  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80BAF1A8  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80BAF1AC  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80BAF1B0  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80BAF1B4  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80BAF1B8  90 1E 00 00 */	stw r0, 0(r30)
/* 80BAF1BC  7F A3 EB 78 */	mr r3, r29
/* 80BAF1C0  4B FF F4 CD */	bl setBaseMtx__9daObjBm_cFv
/* 80BAF1C4  38 7D 0F AA */	addi r3, r29, 0xfaa
/* 80BAF1C8  A8 9D 0F AC */	lha r4, 0xfac(r29)
/* 80BAF1CC  38 A0 00 1E */	li r5, 0x1e
/* 80BAF1D0  38 C0 00 14 */	li r6, 0x14
/* 80BAF1D4  38 E0 00 0A */	li r7, 0xa
/* 80BAF1D8  4B 6C 13 68 */	b cLib_addCalcAngleS__FPsssss
/* 80BAF1DC  38 7D 0F AE */	addi r3, r29, 0xfae
/* 80BAF1E0  A8 9D 0F B0 */	lha r4, 0xfb0(r29)
/* 80BAF1E4  38 A0 00 1E */	li r5, 0x1e
/* 80BAF1E8  38 C0 00 14 */	li r6, 0x14
/* 80BAF1EC  38 E0 00 0A */	li r7, 0xa
/* 80BAF1F0  4B 6C 13 50 */	b cLib_addCalcAngleS__FPsssss
/* 80BAF1F4  38 7D 10 00 */	addi r3, r29, 0x1000
/* 80BAF1F8  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80BAF1FC  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 80BAF200  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80BAF204  C0 9F 00 84 */	lfs f4, 0x84(r31)
/* 80BAF208  4B 6C 07 74 */	b cLib_addCalc__FPfffff
/* 80BAF20C  A8 1D 0F 96 */	lha r0, 0xf96(r29)
/* 80BAF210  B0 1D 0F B2 */	sth r0, 0xfb2(r29)
/* 80BAF214  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80BAF218  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80BAF21C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80BAF220  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80BAF224  40 82 00 0C */	bne lbl_80BAF230
/* 80BAF228  7F A3 EB 78 */	mr r3, r29
/* 80BAF22C  48 00 05 E1 */	bl setCrawCO__9daObjBm_cFv
lbl_80BAF230:
/* 80BAF230  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BAF234  7C 03 07 74 */	extsb r3, r0
/* 80BAF238  4B 47 DE 34 */	b dComIfGp_getReverb__Fi
/* 80BAF23C  7C 65 1B 78 */	mr r5, r3
/* 80BAF240  38 7D 10 60 */	addi r3, r29, 0x1060
/* 80BAF244  38 80 00 00 */	li r4, 0
/* 80BAF248  81 9D 10 70 */	lwz r12, 0x1070(r29)
/* 80BAF24C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BAF250  7D 89 03 A6 */	mtctr r12
/* 80BAF254  4E 80 04 21 */	bctrl 
/* 80BAF258  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80BAF25C  7C 03 07 74 */	extsb r3, r0
/* 80BAF260  4B 47 DE 0C */	b dComIfGp_getReverb__Fi
/* 80BAF264  7C 65 1B 78 */	mr r5, r3
/* 80BAF268  38 7D 10 80 */	addi r3, r29, 0x1080
/* 80BAF26C  38 80 00 00 */	li r4, 0
/* 80BAF270  81 9D 10 90 */	lwz r12, 0x1090(r29)
/* 80BAF274  81 8C 00 08 */	lwz r12, 8(r12)
/* 80BAF278  7D 89 03 A6 */	mtctr r12
/* 80BAF27C  4E 80 04 21 */	bctrl 
/* 80BAF280  38 60 00 01 */	li r3, 1
/* 80BAF284  39 61 00 20 */	addi r11, r1, 0x20
/* 80BAF288  4B 7B 2F A0 */	b _restgpr_29
/* 80BAF28C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BAF290  7C 08 03 A6 */	mtlr r0
/* 80BAF294  38 21 00 20 */	addi r1, r1, 0x20
/* 80BAF298  4E 80 00 20 */	blr 
