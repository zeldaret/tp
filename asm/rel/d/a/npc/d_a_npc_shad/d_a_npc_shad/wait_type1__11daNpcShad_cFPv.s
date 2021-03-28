lbl_80ADA6A0:
/* 80ADA6A0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80ADA6A4  7C 08 02 A6 */	mflr r0
/* 80ADA6A8  90 01 00 64 */	stw r0, 0x64(r1)
/* 80ADA6AC  39 61 00 60 */	addi r11, r1, 0x60
/* 80ADA6B0  4B 88 7B 24 */	b _savegpr_27
/* 80ADA6B4  7C 7D 1B 78 */	mr r29, r3
/* 80ADA6B8  3C 60 80 AE */	lis r3, cNullVec__6Z2Calc@ha
/* 80ADA6BC  3B C3 26 20 */	addi r30, r3, cNullVec__6Z2Calc@l
/* 80ADA6C0  3C 60 80 AE */	lis r3, m__17daNpcShad_Param_c@ha
/* 80ADA6C4  3B E3 1F DC */	addi r31, r3, m__17daNpcShad_Param_c@l
/* 80ADA6C8  A0 1D 0E 1A */	lhz r0, 0xe1a(r29)
/* 80ADA6CC  2C 00 00 02 */	cmpwi r0, 2
/* 80ADA6D0  41 82 01 14 */	beq lbl_80ADA7E4
/* 80ADA6D4  40 80 0D 38 */	bge lbl_80ADB40C
/* 80ADA6D8  2C 00 00 00 */	cmpwi r0, 0
/* 80ADA6DC  41 82 00 0C */	beq lbl_80ADA6E8
/* 80ADA6E0  48 00 0D 2C */	b lbl_80ADB40C
/* 80ADA6E4  48 00 0D 28 */	b lbl_80ADB40C
lbl_80ADA6E8:
/* 80ADA6E8  38 60 01 2F */	li r3, 0x12f
/* 80ADA6EC  4B 67 AF 48 */	b daNpcF_chkEvtBit__FUl
/* 80ADA6F0  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA6F4  41 82 00 54 */	beq lbl_80ADA748
/* 80ADA6F8  38 60 03 12 */	li r3, 0x312
/* 80ADA6FC  4B 67 AF 38 */	b daNpcF_chkEvtBit__FUl
/* 80ADA700  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA704  40 82 00 44 */	bne lbl_80ADA748
/* 80ADA708  7F A3 EB 78 */	mr r3, r29
/* 80ADA70C  38 80 00 0A */	li r4, 0xa
/* 80ADA710  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADA714  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADA718  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADA71C  7D 89 03 A6 */	mtctr r12
/* 80ADA720  4E 80 04 21 */	bctrl 
/* 80ADA724  7F A3 EB 78 */	mr r3, r29
/* 80ADA728  38 80 00 07 */	li r4, 7
/* 80ADA72C  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADA730  38 A0 00 00 */	li r5, 0
/* 80ADA734  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADA738  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADA73C  7D 89 03 A6 */	mtctr r12
/* 80ADA740  4E 80 04 21 */	bctrl 
/* 80ADA744  48 00 00 40 */	b lbl_80ADA784
lbl_80ADA748:
/* 80ADA748  7F A3 EB 78 */	mr r3, r29
/* 80ADA74C  38 80 00 0C */	li r4, 0xc
/* 80ADA750  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADA754  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADA758  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADA75C  7D 89 03 A6 */	mtctr r12
/* 80ADA760  4E 80 04 21 */	bctrl 
/* 80ADA764  7F A3 EB 78 */	mr r3, r29
/* 80ADA768  38 80 00 00 */	li r4, 0
/* 80ADA76C  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADA770  38 A0 00 00 */	li r5, 0
/* 80ADA774  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADA778  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADA77C  7D 89 03 A6 */	mtctr r12
/* 80ADA780  4E 80 04 21 */	bctrl 
lbl_80ADA784:
/* 80ADA784  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80ADA788  4B 67 5F 58 */	b remove__18daNpcF_ActorMngr_cFv
/* 80ADA78C  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80ADA790  2C 00 00 00 */	cmpwi r0, 0
/* 80ADA794  40 82 00 10 */	bne lbl_80ADA7A4
/* 80ADA798  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80ADA79C  28 00 00 00 */	cmplwi r0, 0
/* 80ADA7A0  41 82 00 10 */	beq lbl_80ADA7B0
lbl_80ADA7A4:
/* 80ADA7A4  38 00 00 00 */	li r0, 0
/* 80ADA7A8  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80ADA7AC  90 1D 0C A8 */	stw r0, 0xca8(r29)
lbl_80ADA7B0:
/* 80ADA7B0  38 00 00 00 */	li r0, 0
/* 80ADA7B4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADA7B8  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80ADA7BC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80ADA7C0  7F A3 EB 78 */	mr r3, r29
/* 80ADA7C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADA7C8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ADA7CC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ADA7D0  4B 53 FF 40 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADA7D4  B0 7D 0E 1C */	sth r3, 0xe1c(r29)
/* 80ADA7D8  38 00 00 02 */	li r0, 2
/* 80ADA7DC  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80ADA7E0  48 00 0C 2C */	b lbl_80ADB40C
lbl_80ADA7E4:
/* 80ADA7E4  38 60 03 12 */	li r3, 0x312
/* 80ADA7E8  4B 67 AE 4C */	b daNpcF_chkEvtBit__FUl
/* 80ADA7EC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA7F0  41 82 02 44 */	beq lbl_80ADAA34
/* 80ADA7F4  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80ADA7F8  2C 00 00 02 */	cmpwi r0, 2
/* 80ADA7FC  40 82 00 10 */	bne lbl_80ADA80C
/* 80ADA800  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80ADA804  28 00 00 00 */	cmplwi r0, 0
/* 80ADA808  41 82 00 14 */	beq lbl_80ADA81C
lbl_80ADA80C:
/* 80ADA80C  38 00 00 02 */	li r0, 2
/* 80ADA810  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80ADA814  38 00 00 00 */	li r0, 0
/* 80ADA818  90 1D 0C A8 */	stw r0, 0xca8(r29)
lbl_80ADA81C:
/* 80ADA81C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADA820  AB 7D 0E 1C */	lha r27, 0xe1c(r29)
/* 80ADA824  7C 00 D8 00 */	cmpw r0, r27
/* 80ADA828  40 82 00 5C */	bne lbl_80ADA884
/* 80ADA82C  C0 5F 04 58 */	lfs f2, 0x458(r31)
/* 80ADA830  38 7F 00 00 */	addi r3, r31, 0
/* 80ADA834  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80ADA838  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80ADA83C  EC 01 00 2A */	fadds f0, f1, f0
/* 80ADA840  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADA844  FC 00 00 1E */	fctiwz f0, f0
/* 80ADA848  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80ADA84C  83 61 00 34 */	lwz r27, 0x34(r1)
/* 80ADA850  7F A3 EB 78 */	mr r3, r29
/* 80ADA854  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADA858  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80ADA85C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ADA860  4B 53 FF 3C */	b fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADA864  7F 60 07 34 */	extsh r0, r27
/* 80ADA868  7C 03 00 00 */	cmpw r3, r0
/* 80ADA86C  40 81 01 9C */	ble lbl_80ADAA08
/* 80ADA870  7F A3 EB 78 */	mr r3, r29
/* 80ADA874  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ADA878  4B 53 FE 98 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADA87C  B0 7D 0E 1C */	sth r3, 0xe1c(r29)
/* 80ADA880  48 00 01 88 */	b lbl_80ADAA08
lbl_80ADA884:
/* 80ADA884  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADA888  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA88C  40 82 00 D0 */	bne lbl_80ADA95C
/* 80ADA890  C0 5F 04 44 */	lfs f2, 0x444(r31)
/* 80ADA894  7C 00 D8 50 */	subf r0, r0, r27
/* 80ADA898  7C 00 07 34 */	extsh r0, r0
/* 80ADA89C  C8 3F 04 50 */	lfd f1, 0x450(r31)
/* 80ADA8A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADA8A4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ADA8A8  3C 00 43 30 */	lis r0, 0x4330
/* 80ADA8AC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ADA8B0  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80ADA8B4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADA8B8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADA8BC  FC 00 02 10 */	fabs f0, f0
/* 80ADA8C0  FC 00 00 18 */	frsp f0, f0
/* 80ADA8C4  FC 00 00 1E */	fctiwz f0, f0
/* 80ADA8C8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80ADA8CC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80ADA8D0  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADA8D4  40 81 00 40 */	ble lbl_80ADA914
/* 80ADA8D8  7F A3 EB 78 */	mr r3, r29
/* 80ADA8DC  38 80 00 0C */	li r4, 0xc
/* 80ADA8E0  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADA8E4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADA8E8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADA8EC  7D 89 03 A6 */	mtctr r12
/* 80ADA8F0  4E 80 04 21 */	bctrl 
/* 80ADA8F4  7F A3 EB 78 */	mr r3, r29
/* 80ADA8F8  38 80 00 16 */	li r4, 0x16
/* 80ADA8FC  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADA900  38 A0 00 00 */	li r5, 0
/* 80ADA904  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADA908  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADA90C  7D 89 03 A6 */	mtctr r12
/* 80ADA910  4E 80 04 21 */	bctrl 
lbl_80ADA914:
/* 80ADA914  B3 7D 09 96 */	sth r27, 0x996(r29)
/* 80ADA918  38 00 00 00 */	li r0, 0
/* 80ADA91C  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80ADA920  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80ADA924  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80ADA928  7C 03 00 00 */	cmpw r3, r0
/* 80ADA92C  40 82 00 10 */	bne lbl_80ADA93C
/* 80ADA930  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADA934  38 03 00 01 */	addi r0, r3, 1
/* 80ADA938  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ADA93C:
/* 80ADA93C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADA940  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80ADA944  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADA948  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADA94C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADA950  38 03 00 01 */	addi r0, r3, 1
/* 80ADA954  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADA958  48 00 00 60 */	b lbl_80ADA9B8
lbl_80ADA95C:
/* 80ADA95C  2C 03 00 01 */	cmpwi r3, 1
/* 80ADA960  40 82 00 58 */	bne lbl_80ADA9B8
/* 80ADA964  7F A3 EB 78 */	mr r3, r29
/* 80ADA968  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80ADA96C  C0 3F 04 5C */	lfs f1, 0x45c(r31)
/* 80ADA970  38 A0 00 00 */	li r5, 0
/* 80ADA974  4B 67 95 80 */	b turn__8daNpcF_cFsfi
/* 80ADA978  2C 03 00 00 */	cmpwi r3, 0
/* 80ADA97C  41 82 00 2C */	beq lbl_80ADA9A8
/* 80ADA980  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADA984  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADA988  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADA98C  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80ADA990  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADA994  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80ADA998  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADA99C  38 03 00 01 */	addi r0, r3, 1
/* 80ADA9A0  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADA9A4  48 00 00 14 */	b lbl_80ADA9B8
lbl_80ADA9A8:
/* 80ADA9A8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADA9AC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADA9B0  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADA9B4  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80ADA9B8:
/* 80ADA9B8  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80ADA9BC  2C 00 00 01 */	cmpwi r0, 1
/* 80ADA9C0  40 81 00 48 */	ble lbl_80ADAA08
/* 80ADA9C4  7F A3 EB 78 */	mr r3, r29
/* 80ADA9C8  38 80 00 0C */	li r4, 0xc
/* 80ADA9CC  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADA9D0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADA9D4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADA9D8  7D 89 03 A6 */	mtctr r12
/* 80ADA9DC  4E 80 04 21 */	bctrl 
/* 80ADA9E0  7F A3 EB 78 */	mr r3, r29
/* 80ADA9E4  38 80 00 00 */	li r4, 0
/* 80ADA9E8  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADA9EC  38 A0 00 00 */	li r5, 0
/* 80ADA9F0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADA9F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADA9F8  7D 89 03 A6 */	mtctr r12
/* 80ADA9FC  4E 80 04 21 */	bctrl 
/* 80ADAA00  38 00 00 00 */	li r0, 0
/* 80ADAA04  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ADAA08:
/* 80ADAA08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADAA0C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ADAA10  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80ADAA14  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 80ADAA18  C0 1F 04 60 */	lfs f0, 0x460(r31)
/* 80ADAA1C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ADAA20  4C 40 13 82 */	cror 2, 0, 2
/* 80ADAA24  40 82 06 64 */	bne lbl_80ADB088
/* 80ADAA28  38 00 00 0A */	li r0, 0xa
/* 80ADAA2C  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80ADAA30  48 00 06 58 */	b lbl_80ADB088
lbl_80ADAA34:
/* 80ADAA34  38 60 01 2F */	li r3, 0x12f
/* 80ADAA38  4B 67 AB FC */	b daNpcF_chkEvtBit__FUl
/* 80ADAA3C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADAA40  41 82 00 7C */	beq lbl_80ADAABC
/* 80ADAA44  38 7D 0C A0 */	addi r3, r29, 0xca0
/* 80ADAA48  4B 67 5C A4 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ADAA4C  7C 7B 1B 79 */	or. r27, r3, r3
/* 80ADAA50  41 82 06 38 */	beq lbl_80ADB088
/* 80ADAA54  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADAA58  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ADAA5C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ADAA60  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80ADAA64  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80ADAA68  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 80ADAA6C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80ADAA70  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80ADAA74  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80ADAA78  38 81 00 20 */	addi r4, r1, 0x20
/* 80ADAA7C  48 00 74 95 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 80ADAA80  2C 03 00 00 */	cmpwi r3, 0
/* 80ADAA84  41 82 06 04 */	beq lbl_80ADB088
/* 80ADAA88  38 00 00 43 */	li r0, 0x43
/* 80ADAA8C  B0 1D 0E 14 */	sth r0, 0xe14(r29)
/* 80ADAA90  38 60 00 0B */	li r3, 0xb
/* 80ADAA94  4B 67 AC A0 */	b daNpcF_offTmpBit__FUl
/* 80ADAA98  38 60 00 0C */	li r3, 0xc
/* 80ADAA9C  4B 67 AC 98 */	b daNpcF_offTmpBit__FUl
/* 80ADAAA0  38 60 00 0D */	li r3, 0xd
/* 80ADAAA4  4B 67 AC 90 */	b daNpcF_offTmpBit__FUl
/* 80ADAAA8  38 00 00 06 */	li r0, 6
/* 80ADAAAC  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80ADAAB0  7F 63 DB 78 */	mr r3, r27
/* 80ADAAB4  4B 53 F1 C8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80ADAAB8  48 00 05 D0 */	b lbl_80ADB088
lbl_80ADAABC:
/* 80ADAABC  88 1D 0E 1F */	lbz r0, 0xe1f(r29)
/* 80ADAAC0  28 00 00 00 */	cmplwi r0, 0
/* 80ADAAC4  41 82 02 44 */	beq lbl_80ADAD08
/* 80ADAAC8  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80ADAACC  2C 00 00 02 */	cmpwi r0, 2
/* 80ADAAD0  40 82 00 10 */	bne lbl_80ADAAE0
/* 80ADAAD4  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80ADAAD8  28 00 00 00 */	cmplwi r0, 0
/* 80ADAADC  41 82 00 14 */	beq lbl_80ADAAF0
lbl_80ADAAE0:
/* 80ADAAE0  38 00 00 02 */	li r0, 2
/* 80ADAAE4  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80ADAAE8  38 00 00 00 */	li r0, 0
/* 80ADAAEC  90 1D 0C A8 */	stw r0, 0xca8(r29)
lbl_80ADAAF0:
/* 80ADAAF0  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADAAF4  AB 7D 0E 1C */	lha r27, 0xe1c(r29)
/* 80ADAAF8  7C 00 D8 00 */	cmpw r0, r27
/* 80ADAAFC  40 82 00 5C */	bne lbl_80ADAB58
/* 80ADAB00  C0 5F 04 58 */	lfs f2, 0x458(r31)
/* 80ADAB04  38 7F 00 00 */	addi r3, r31, 0
/* 80ADAB08  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80ADAB0C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 80ADAB10  EC 01 00 2A */	fadds f0, f1, f0
/* 80ADAB14  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADAB18  FC 00 00 1E */	fctiwz f0, f0
/* 80ADAB1C  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80ADAB20  83 61 00 3C */	lwz r27, 0x3c(r1)
/* 80ADAB24  7F A3 EB 78 */	mr r3, r29
/* 80ADAB28  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADAB2C  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80ADAB30  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ADAB34  4B 53 FC 68 */	b fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADAB38  7F 60 07 34 */	extsh r0, r27
/* 80ADAB3C  7C 03 00 00 */	cmpw r3, r0
/* 80ADAB40  40 81 01 9C */	ble lbl_80ADACDC
/* 80ADAB44  7F A3 EB 78 */	mr r3, r29
/* 80ADAB48  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ADAB4C  4B 53 FB C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADAB50  B0 7D 0E 1C */	sth r3, 0xe1c(r29)
/* 80ADAB54  48 00 01 88 */	b lbl_80ADACDC
lbl_80ADAB58:
/* 80ADAB58  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADAB5C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADAB60  40 82 00 D0 */	bne lbl_80ADAC30
/* 80ADAB64  C0 5F 04 44 */	lfs f2, 0x444(r31)
/* 80ADAB68  7C 00 D8 50 */	subf r0, r0, r27
/* 80ADAB6C  7C 00 07 34 */	extsh r0, r0
/* 80ADAB70  C8 3F 04 50 */	lfd f1, 0x450(r31)
/* 80ADAB74  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADAB78  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80ADAB7C  3C 00 43 30 */	lis r0, 0x4330
/* 80ADAB80  90 01 00 38 */	stw r0, 0x38(r1)
/* 80ADAB84  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80ADAB88  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADAB8C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADAB90  FC 00 02 10 */	fabs f0, f0
/* 80ADAB94  FC 00 00 18 */	frsp f0, f0
/* 80ADAB98  FC 00 00 1E */	fctiwz f0, f0
/* 80ADAB9C  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80ADABA0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ADABA4  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADABA8  40 81 00 40 */	ble lbl_80ADABE8
/* 80ADABAC  7F A3 EB 78 */	mr r3, r29
/* 80ADABB0  38 80 00 0C */	li r4, 0xc
/* 80ADABB4  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADABB8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADABBC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADABC0  7D 89 03 A6 */	mtctr r12
/* 80ADABC4  4E 80 04 21 */	bctrl 
/* 80ADABC8  7F A3 EB 78 */	mr r3, r29
/* 80ADABCC  38 80 00 16 */	li r4, 0x16
/* 80ADABD0  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADABD4  38 A0 00 00 */	li r5, 0
/* 80ADABD8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADABDC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADABE0  7D 89 03 A6 */	mtctr r12
/* 80ADABE4  4E 80 04 21 */	bctrl 
lbl_80ADABE8:
/* 80ADABE8  B3 7D 09 96 */	sth r27, 0x996(r29)
/* 80ADABEC  38 00 00 00 */	li r0, 0
/* 80ADABF0  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80ADABF4  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80ADABF8  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80ADABFC  7C 03 00 00 */	cmpw r3, r0
/* 80ADAC00  40 82 00 10 */	bne lbl_80ADAC10
/* 80ADAC04  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADAC08  38 03 00 01 */	addi r0, r3, 1
/* 80ADAC0C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ADAC10:
/* 80ADAC10  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADAC14  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80ADAC18  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADAC1C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADAC20  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADAC24  38 03 00 01 */	addi r0, r3, 1
/* 80ADAC28  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADAC2C  48 00 00 60 */	b lbl_80ADAC8C
lbl_80ADAC30:
/* 80ADAC30  2C 03 00 01 */	cmpwi r3, 1
/* 80ADAC34  40 82 00 58 */	bne lbl_80ADAC8C
/* 80ADAC38  7F A3 EB 78 */	mr r3, r29
/* 80ADAC3C  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80ADAC40  C0 3F 04 5C */	lfs f1, 0x45c(r31)
/* 80ADAC44  38 A0 00 00 */	li r5, 0
/* 80ADAC48  4B 67 92 AC */	b turn__8daNpcF_cFsfi
/* 80ADAC4C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADAC50  41 82 00 2C */	beq lbl_80ADAC7C
/* 80ADAC54  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADAC58  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADAC5C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADAC60  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80ADAC64  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADAC68  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80ADAC6C  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADAC70  38 03 00 01 */	addi r0, r3, 1
/* 80ADAC74  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADAC78  48 00 00 14 */	b lbl_80ADAC8C
lbl_80ADAC7C:
/* 80ADAC7C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADAC80  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADAC84  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADAC88  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80ADAC8C:
/* 80ADAC8C  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80ADAC90  2C 00 00 01 */	cmpwi r0, 1
/* 80ADAC94  40 81 00 48 */	ble lbl_80ADACDC
/* 80ADAC98  7F A3 EB 78 */	mr r3, r29
/* 80ADAC9C  38 80 00 0C */	li r4, 0xc
/* 80ADACA0  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADACA4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADACA8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADACAC  7D 89 03 A6 */	mtctr r12
/* 80ADACB0  4E 80 04 21 */	bctrl 
/* 80ADACB4  7F A3 EB 78 */	mr r3, r29
/* 80ADACB8  38 80 00 00 */	li r4, 0
/* 80ADACBC  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADACC0  38 A0 00 00 */	li r5, 0
/* 80ADACC4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADACC8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADACCC  7D 89 03 A6 */	mtctr r12
/* 80ADACD0  4E 80 04 21 */	bctrl 
/* 80ADACD4  38 00 00 00 */	li r0, 0
/* 80ADACD8  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ADACDC:
/* 80ADACDC  7F A3 EB 78 */	mr r3, r29
/* 80ADACE0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADACE4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80ADACE8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80ADACEC  4B 53 FC 78 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADACF0  C0 1F 04 64 */	lfs f0, 0x464(r31)
/* 80ADACF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ADACF8  40 81 03 90 */	ble lbl_80ADB088
/* 80ADACFC  38 00 00 00 */	li r0, 0
/* 80ADAD00  98 1D 0E 1F */	stb r0, 0xe1f(r29)
/* 80ADAD04  48 00 03 84 */	b lbl_80ADB088
lbl_80ADAD08:
/* 80ADAD08  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80ADAD0C  4B 67 59 E0 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ADAD10  28 03 00 00 */	cmplwi r3, 0
/* 80ADAD14  41 82 00 C4 */	beq lbl_80ADADD8
/* 80ADAD18  88 1D 0E 20 */	lbz r0, 0xe20(r29)
/* 80ADAD1C  28 00 00 00 */	cmplwi r0, 0
/* 80ADAD20  40 82 00 0C */	bne lbl_80ADAD2C
/* 80ADAD24  C0 3F 04 40 */	lfs f1, 0x440(r31)
/* 80ADAD28  48 00 00 0C */	b lbl_80ADAD34
lbl_80ADAD2C:
/* 80ADAD2C  38 7F 00 00 */	addi r3, r31, 0
/* 80ADAD30  C0 23 00 50 */	lfs f1, 0x50(r3)
lbl_80ADAD34:
/* 80ADAD34  7F A3 EB 78 */	mr r3, r29
/* 80ADAD38  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADAD3C  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80ADAD40  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ADAD44  4B 67 8C AC */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80ADAD48  2C 03 00 00 */	cmpwi r3, 0
/* 80ADAD4C  40 82 00 14 */	bne lbl_80ADAD60
/* 80ADAD50  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80ADAD54  4B 67 59 8C */	b remove__18daNpcF_ActorMngr_cFv
/* 80ADAD58  3B 60 00 00 */	li r27, 0
/* 80ADAD5C  48 00 00 68 */	b lbl_80ADADC4
lbl_80ADAD60:
/* 80ADAD60  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80ADAD64  4B 67 59 88 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ADAD68  28 03 00 00 */	cmplwi r3, 0
/* 80ADAD6C  40 82 00 20 */	bne lbl_80ADAD8C
/* 80ADAD70  7F A3 EB 78 */	mr r3, r29
/* 80ADAD74  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ADAD78  7F A5 EB 78 */	mr r5, r29
/* 80ADAD7C  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80ADAD80  4B 67 8E 5C */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80ADAD84  7C 7B 1B 78 */	mr r27, r3
/* 80ADAD88  48 00 00 1C */	b lbl_80ADADA4
lbl_80ADAD8C:
/* 80ADAD8C  7F A3 EB 78 */	mr r3, r29
/* 80ADAD90  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ADAD94  7F A5 EB 78 */	mr r5, r29
/* 80ADAD98  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80ADAD9C  4B 67 8E 40 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80ADADA0  7C 7B 1B 78 */	mr r27, r3
lbl_80ADADA4:
/* 80ADADA4  2C 1B 00 00 */	cmpwi r27, 0
/* 80ADADA8  41 82 00 14 */	beq lbl_80ADADBC
/* 80ADADAC  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80ADADB0  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ADADB4  4B 67 59 08 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80ADADB8  48 00 00 0C */	b lbl_80ADADC4
lbl_80ADADBC:
/* 80ADADBC  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80ADADC0  4B 67 59 20 */	b remove__18daNpcF_ActorMngr_cFv
lbl_80ADADC4:
/* 80ADADC4  2C 1B 00 00 */	cmpwi r27, 0
/* 80ADADC8  40 82 00 CC */	bne lbl_80ADAE94
/* 80ADADCC  38 00 00 00 */	li r0, 0
/* 80ADADD0  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADADD4  48 00 00 C0 */	b lbl_80ADAE94
lbl_80ADADD8:
/* 80ADADD8  88 1D 0E 20 */	lbz r0, 0xe20(r29)
/* 80ADADDC  28 00 00 00 */	cmplwi r0, 0
/* 80ADADE0  40 82 00 0C */	bne lbl_80ADADEC
/* 80ADADE4  C0 3F 04 40 */	lfs f1, 0x440(r31)
/* 80ADADE8  48 00 00 0C */	b lbl_80ADADF4
lbl_80ADADEC:
/* 80ADADEC  38 7F 00 00 */	addi r3, r31, 0
/* 80ADADF0  C0 23 00 50 */	lfs f1, 0x50(r3)
lbl_80ADADF4:
/* 80ADADF4  7F A3 EB 78 */	mr r3, r29
/* 80ADADF8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADADFC  3B 84 61 C0 */	addi r28, r4, g_dComIfG_gameInfo@l
/* 80ADAE00  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ADAE04  4B 67 8B EC */	b chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80ADAE08  2C 03 00 00 */	cmpwi r3, 0
/* 80ADAE0C  40 82 00 14 */	bne lbl_80ADAE20
/* 80ADAE10  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80ADAE14  4B 67 58 CC */	b remove__18daNpcF_ActorMngr_cFv
/* 80ADAE18  3B 60 00 00 */	li r27, 0
/* 80ADAE1C  48 00 00 68 */	b lbl_80ADAE84
lbl_80ADAE20:
/* 80ADAE20  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80ADAE24  4B 67 58 C8 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ADAE28  28 03 00 00 */	cmplwi r3, 0
/* 80ADAE2C  40 82 00 20 */	bne lbl_80ADAE4C
/* 80ADAE30  7F A3 EB 78 */	mr r3, r29
/* 80ADAE34  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ADAE38  7F A5 EB 78 */	mr r5, r29
/* 80ADAE3C  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80ADAE40  4B 67 8D 9C */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80ADAE44  7C 7B 1B 78 */	mr r27, r3
/* 80ADAE48  48 00 00 1C */	b lbl_80ADAE64
lbl_80ADAE4C:
/* 80ADAE4C  7F A3 EB 78 */	mr r3, r29
/* 80ADAE50  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ADAE54  7F A5 EB 78 */	mr r5, r29
/* 80ADAE58  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80ADAE5C  4B 67 8D 80 */	b chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80ADAE60  7C 7B 1B 78 */	mr r27, r3
lbl_80ADAE64:
/* 80ADAE64  2C 1B 00 00 */	cmpwi r27, 0
/* 80ADAE68  41 82 00 14 */	beq lbl_80ADAE7C
/* 80ADAE6C  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80ADAE70  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 80ADAE74  4B 67 58 48 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80ADAE78  48 00 00 0C */	b lbl_80ADAE84
lbl_80ADAE7C:
/* 80ADAE7C  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80ADAE80  4B 67 58 60 */	b remove__18daNpcF_ActorMngr_cFv
lbl_80ADAE84:
/* 80ADAE84  2C 1B 00 00 */	cmpwi r27, 0
/* 80ADAE88  41 82 00 0C */	beq lbl_80ADAE94
/* 80ADAE8C  38 00 00 00 */	li r0, 0
/* 80ADAE90  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ADAE94:
/* 80ADAE94  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80ADAE98  4B 67 58 54 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80ADAE9C  28 03 00 00 */	cmplwi r3, 0
/* 80ADAEA0  41 82 00 30 */	beq lbl_80ADAED0
/* 80ADAEA4  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80ADAEA8  2C 00 00 02 */	cmpwi r0, 2
/* 80ADAEAC  40 82 00 10 */	bne lbl_80ADAEBC
/* 80ADAEB0  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80ADAEB4  28 00 00 00 */	cmplwi r0, 0
/* 80ADAEB8  41 82 01 D0 */	beq lbl_80ADB088
lbl_80ADAEBC:
/* 80ADAEBC  38 00 00 02 */	li r0, 2
/* 80ADAEC0  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80ADAEC4  38 00 00 00 */	li r0, 0
/* 80ADAEC8  90 1D 0C A8 */	stw r0, 0xca8(r29)
/* 80ADAECC  48 00 01 BC */	b lbl_80ADB088
lbl_80ADAED0:
/* 80ADAED0  A8 1D 0E 18 */	lha r0, 0xe18(r29)
/* 80ADAED4  2C 00 00 00 */	cmpwi r0, 0
/* 80ADAED8  40 82 00 10 */	bne lbl_80ADAEE8
/* 80ADAEDC  80 1D 0C A8 */	lwz r0, 0xca8(r29)
/* 80ADAEE0  28 00 00 00 */	cmplwi r0, 0
/* 80ADAEE4  41 82 00 10 */	beq lbl_80ADAEF4
lbl_80ADAEE8:
/* 80ADAEE8  38 00 00 00 */	li r0, 0
/* 80ADAEEC  B0 1D 0E 18 */	sth r0, 0xe18(r29)
/* 80ADAEF0  90 1D 0C A8 */	stw r0, 0xca8(r29)
lbl_80ADAEF4:
/* 80ADAEF4  AB 7D 04 B6 */	lha r27, 0x4b6(r29)
/* 80ADAEF8  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADAEFC  7C 1B 00 00 */	cmpw r27, r0
/* 80ADAF00  41 82 01 88 */	beq lbl_80ADB088
/* 80ADAF04  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADAF08  2C 03 00 00 */	cmpwi r3, 0
/* 80ADAF0C  40 82 00 D0 */	bne lbl_80ADAFDC
/* 80ADAF10  C0 5F 04 44 */	lfs f2, 0x444(r31)
/* 80ADAF14  7C 00 D8 50 */	subf r0, r0, r27
/* 80ADAF18  7C 00 07 34 */	extsh r0, r0
/* 80ADAF1C  C8 3F 04 50 */	lfd f1, 0x450(r31)
/* 80ADAF20  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADAF24  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80ADAF28  3C 00 43 30 */	lis r0, 0x4330
/* 80ADAF2C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80ADAF30  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80ADAF34  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADAF38  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADAF3C  FC 00 02 10 */	fabs f0, f0
/* 80ADAF40  FC 00 00 18 */	frsp f0, f0
/* 80ADAF44  FC 00 00 1E */	fctiwz f0, f0
/* 80ADAF48  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80ADAF4C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ADAF50  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADAF54  40 81 00 40 */	ble lbl_80ADAF94
/* 80ADAF58  7F A3 EB 78 */	mr r3, r29
/* 80ADAF5C  38 80 00 0C */	li r4, 0xc
/* 80ADAF60  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADAF64  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADAF68  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADAF6C  7D 89 03 A6 */	mtctr r12
/* 80ADAF70  4E 80 04 21 */	bctrl 
/* 80ADAF74  7F A3 EB 78 */	mr r3, r29
/* 80ADAF78  38 80 00 15 */	li r4, 0x15
/* 80ADAF7C  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADAF80  38 A0 00 00 */	li r5, 0
/* 80ADAF84  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADAF88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADAF8C  7D 89 03 A6 */	mtctr r12
/* 80ADAF90  4E 80 04 21 */	bctrl 
lbl_80ADAF94:
/* 80ADAF94  B3 7D 09 96 */	sth r27, 0x996(r29)
/* 80ADAF98  38 00 00 00 */	li r0, 0
/* 80ADAF9C  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80ADAFA0  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80ADAFA4  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80ADAFA8  7C 03 00 00 */	cmpw r3, r0
/* 80ADAFAC  40 82 00 10 */	bne lbl_80ADAFBC
/* 80ADAFB0  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADAFB4  38 03 00 01 */	addi r0, r3, 1
/* 80ADAFB8  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ADAFBC:
/* 80ADAFBC  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80ADAFC0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80ADAFC4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADAFC8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADAFCC  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADAFD0  38 03 00 01 */	addi r0, r3, 1
/* 80ADAFD4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADAFD8  48 00 00 60 */	b lbl_80ADB038
lbl_80ADAFDC:
/* 80ADAFDC  2C 03 00 01 */	cmpwi r3, 1
/* 80ADAFE0  40 82 00 58 */	bne lbl_80ADB038
/* 80ADAFE4  7F A3 EB 78 */	mr r3, r29
/* 80ADAFE8  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80ADAFEC  C0 3F 04 48 */	lfs f1, 0x448(r31)
/* 80ADAFF0  38 A0 00 00 */	li r5, 0
/* 80ADAFF4  4B 67 8F 00 */	b turn__8daNpcF_cFsfi
/* 80ADAFF8  2C 03 00 00 */	cmpwi r3, 0
/* 80ADAFFC  41 82 00 2C */	beq lbl_80ADB028
/* 80ADB000  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADB004  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADB008  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADB00C  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80ADB010  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADB014  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80ADB018  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80ADB01C  38 03 00 01 */	addi r0, r3, 1
/* 80ADB020  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80ADB024  48 00 00 14 */	b lbl_80ADB038
lbl_80ADB028:
/* 80ADB028  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADB02C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80ADB030  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80ADB034  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80ADB038:
/* 80ADB038  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80ADB03C  2C 00 00 01 */	cmpwi r0, 1
/* 80ADB040  40 81 00 48 */	ble lbl_80ADB088
/* 80ADB044  7F A3 EB 78 */	mr r3, r29
/* 80ADB048  38 80 00 0C */	li r4, 0xc
/* 80ADB04C  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADB050  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADB054  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADB058  7D 89 03 A6 */	mtctr r12
/* 80ADB05C  4E 80 04 21 */	bctrl 
/* 80ADB060  7F A3 EB 78 */	mr r3, r29
/* 80ADB064  38 80 00 00 */	li r4, 0
/* 80ADB068  C0 3F 04 3C */	lfs f1, 0x43c(r31)
/* 80ADB06C  38 A0 00 00 */	li r5, 0
/* 80ADB070  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80ADB074  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADB078  7D 89 03 A6 */	mtctr r12
/* 80ADB07C  4E 80 04 21 */	bctrl 
/* 80ADB080  38 00 00 00 */	li r0, 0
/* 80ADB084  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80ADB088:
/* 80ADB088  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADB08C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ADB090  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80ADB094  28 00 00 00 */	cmplwi r0, 0
/* 80ADB098  41 82 02 FC */	beq lbl_80ADB394
/* 80ADB09C  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80ADB0A0  28 00 00 01 */	cmplwi r0, 1
/* 80ADB0A4  40 82 02 48 */	bne lbl_80ADB2EC
/* 80ADB0A8  3B 83 4E C8 */	addi r28, r3, 0x4ec8
/* 80ADB0AC  38 00 00 00 */	li r0, 0
/* 80ADB0B0  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80ADB0B4  28 04 00 01 */	cmplwi r4, 1
/* 80ADB0B8  41 82 00 0C */	beq lbl_80ADB0C4
/* 80ADB0BC  28 04 00 02 */	cmplwi r4, 2
/* 80ADB0C0  40 82 00 08 */	bne lbl_80ADB0C8
lbl_80ADB0C4:
/* 80ADB0C4  38 00 00 01 */	li r0, 1
lbl_80ADB0C8:
/* 80ADB0C8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80ADB0CC  41 82 01 3C */	beq lbl_80ADB208
/* 80ADB0D0  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80ADB0D4  7F 63 DB 78 */	mr r3, r27
/* 80ADB0D8  4B 56 D7 18 */	b ChkPresentEnd__16dEvent_manager_cFv
/* 80ADB0DC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB0E0  40 82 00 0C */	bne lbl_80ADB0EC
/* 80ADB0E4  38 60 00 01 */	li r3, 1
/* 80ADB0E8  48 00 03 28 */	b lbl_80ADB410
lbl_80ADB0EC:
/* 80ADB0EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADB0F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ADB0F4  88 03 4F B6 */	lbz r0, 0x4fb6(r3)
/* 80ADB0F8  28 00 00 E9 */	cmplwi r0, 0xe9
/* 80ADB0FC  40 82 00 64 */	bne lbl_80ADB160
/* 80ADB100  38 00 00 40 */	li r0, 0x40
/* 80ADB104  B0 1D 0E 14 */	sth r0, 0xe14(r29)
/* 80ADB108  38 60 00 0B */	li r3, 0xb
/* 80ADB10C  4B 67 A6 28 */	b daNpcF_offTmpBit__FUl
/* 80ADB110  38 60 00 0C */	li r3, 0xc
/* 80ADB114  4B 67 A6 20 */	b daNpcF_offTmpBit__FUl
/* 80ADB118  38 60 00 0D */	li r3, 0xd
/* 80ADB11C  4B 67 A6 18 */	b daNpcF_offTmpBit__FUl
/* 80ADB120  38 60 00 0E */	li r3, 0xe
/* 80ADB124  4B 67 A6 10 */	b daNpcF_offTmpBit__FUl
/* 80ADB128  38 00 00 03 */	li r0, 3
/* 80ADB12C  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80ADB130  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80ADB134  54 00 10 3A */	slwi r0, r0, 2
/* 80ADB138  7F A3 EB 78 */	mr r3, r29
/* 80ADB13C  38 9E 03 08 */	addi r4, r30, 0x308
/* 80ADB140  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ADB144  38 BE 02 D0 */	addi r5, r30, 0x2d0
/* 80ADB148  7C A5 00 2E */	lwzx r5, r5, r0
/* 80ADB14C  38 C0 00 01 */	li r6, 1
/* 80ADB150  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80ADB154  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80ADB158  4B 67 87 FC */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 80ADB15C  48 00 02 B0 */	b lbl_80ADB40C
lbl_80ADB160:
/* 80ADB160  28 00 00 EB */	cmplwi r0, 0xeb
/* 80ADB164  40 82 00 5C */	bne lbl_80ADB1C0
/* 80ADB168  38 00 00 41 */	li r0, 0x41
/* 80ADB16C  B0 1D 0E 14 */	sth r0, 0xe14(r29)
/* 80ADB170  38 60 00 0B */	li r3, 0xb
/* 80ADB174  4B 67 A5 C0 */	b daNpcF_offTmpBit__FUl
/* 80ADB178  38 60 00 0C */	li r3, 0xc
/* 80ADB17C  4B 67 A5 B8 */	b daNpcF_offTmpBit__FUl
/* 80ADB180  38 60 00 0D */	li r3, 0xd
/* 80ADB184  4B 67 A5 B0 */	b daNpcF_offTmpBit__FUl
/* 80ADB188  38 00 00 04 */	li r0, 4
/* 80ADB18C  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80ADB190  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80ADB194  54 00 10 3A */	slwi r0, r0, 2
/* 80ADB198  7F A3 EB 78 */	mr r3, r29
/* 80ADB19C  38 9E 03 08 */	addi r4, r30, 0x308
/* 80ADB1A0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ADB1A4  38 BE 02 D0 */	addi r5, r30, 0x2d0
/* 80ADB1A8  7C A5 00 2E */	lwzx r5, r5, r0
/* 80ADB1AC  38 C0 00 01 */	li r6, 1
/* 80ADB1B0  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80ADB1B4  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80ADB1B8  4B 67 87 9C */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 80ADB1BC  48 00 02 50 */	b lbl_80ADB40C
lbl_80ADB1C0:
/* 80ADB1C0  7F 63 DB 78 */	mr r3, r27
/* 80ADB1C4  7F A4 EB 78 */	mr r4, r29
/* 80ADB1C8  3C A0 80 AE */	lis r5, struct_80AE24C4+0x0@ha
/* 80ADB1CC  38 A5 24 C4 */	addi r5, r5, struct_80AE24C4+0x0@l
/* 80ADB1D0  38 A5 01 32 */	addi r5, r5, 0x132
/* 80ADB1D4  38 C0 00 FF */	li r6, 0xff
/* 80ADB1D8  4B 56 C5 80 */	b getEventIdx__16dEvent_manager_cFP10fopAc_ac_cPCcUc
/* 80ADB1DC  7C 7B 1B 78 */	mr r27, r3
/* 80ADB1E0  7F 83 E3 78 */	mr r3, r28
/* 80ADB1E4  7F A4 EB 78 */	mr r4, r29
/* 80ADB1E8  4B 56 73 30 */	b reset__14dEvt_control_cFPv
/* 80ADB1EC  7F A3 EB 78 */	mr r3, r29
/* 80ADB1F0  7F 64 DB 78 */	mr r4, r27
/* 80ADB1F4  38 A0 00 01 */	li r5, 1
/* 80ADB1F8  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80ADB1FC  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80ADB200  4B 54 03 E4 */	b fopAcM_orderChangeEventId__FP10fopAc_ac_csUsUs
/* 80ADB204  48 00 02 08 */	b lbl_80ADB40C
lbl_80ADB208:
/* 80ADB208  38 60 03 13 */	li r3, 0x313
/* 80ADB20C  4B 67 A4 28 */	b daNpcF_chkEvtBit__FUl
/* 80ADB210  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB214  41 82 00 4C */	beq lbl_80ADB260
/* 80ADB218  38 00 00 44 */	li r0, 0x44
/* 80ADB21C  B0 1D 0E 14 */	sth r0, 0xe14(r29)
/* 80ADB220  38 60 00 0B */	li r3, 0xb
/* 80ADB224  4B 67 A5 10 */	b daNpcF_offTmpBit__FUl
/* 80ADB228  38 00 00 08 */	li r0, 8
/* 80ADB22C  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80ADB230  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80ADB234  54 00 10 3A */	slwi r0, r0, 2
/* 80ADB238  7F A3 EB 78 */	mr r3, r29
/* 80ADB23C  38 9E 03 08 */	addi r4, r30, 0x308
/* 80ADB240  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ADB244  38 BE 02 D0 */	addi r5, r30, 0x2d0
/* 80ADB248  7C A5 00 2E */	lwzx r5, r5, r0
/* 80ADB24C  38 C0 00 01 */	li r6, 1
/* 80ADB250  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80ADB254  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80ADB258  4B 67 86 FC */	b changeEvent__8daNpcF_cFPcPcUsUs
/* 80ADB25C  48 00 01 B0 */	b lbl_80ADB40C
lbl_80ADB260:
/* 80ADB260  80 7E 04 F8 */	lwz r3, 0x4f8(r30)
/* 80ADB264  80 1E 04 FC */	lwz r0, 0x4fc(r30)
/* 80ADB268  90 61 00 14 */	stw r3, 0x14(r1)
/* 80ADB26C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ADB270  80 1E 05 00 */	lwz r0, 0x500(r30)
/* 80ADB274  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ADB278  38 00 00 03 */	li r0, 3
/* 80ADB27C  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80ADB280  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80ADB284  4B 88 6D 94 */	b __ptmf_test
/* 80ADB288  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB28C  41 82 00 18 */	beq lbl_80ADB2A4
/* 80ADB290  7F A3 EB 78 */	mr r3, r29
/* 80ADB294  38 80 00 00 */	li r4, 0
/* 80ADB298  39 9D 0D EC */	addi r12, r29, 0xdec
/* 80ADB29C  4B 88 6D E8 */	b __ptmf_scall
/* 80ADB2A0  60 00 00 00 */	nop 
lbl_80ADB2A4:
/* 80ADB2A4  38 00 00 00 */	li r0, 0
/* 80ADB2A8  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80ADB2AC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80ADB2B0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80ADB2B4  90 7D 0D EC */	stw r3, 0xdec(r29)
/* 80ADB2B8  90 1D 0D F0 */	stw r0, 0xdf0(r29)
/* 80ADB2BC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80ADB2C0  90 1D 0D F4 */	stw r0, 0xdf4(r29)
/* 80ADB2C4  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80ADB2C8  4B 88 6D 50 */	b __ptmf_test
/* 80ADB2CC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB2D0  41 82 01 3C */	beq lbl_80ADB40C
/* 80ADB2D4  7F A3 EB 78 */	mr r3, r29
/* 80ADB2D8  38 80 00 00 */	li r4, 0
/* 80ADB2DC  39 9D 0D EC */	addi r12, r29, 0xdec
/* 80ADB2E0  4B 88 6D A4 */	b __ptmf_scall
/* 80ADB2E4  60 00 00 00 */	nop 
/* 80ADB2E8  48 00 01 24 */	b lbl_80ADB40C
lbl_80ADB2EC:
/* 80ADB2EC  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80ADB2F0  80 9E 03 40 */	lwz r4, 0x340(r30)
/* 80ADB2F4  38 A0 00 00 */	li r5, 0
/* 80ADB2F8  38 C0 00 00 */	li r6, 0
/* 80ADB2FC  4B 56 C8 20 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80ADB300  2C 03 FF FF */	cmpwi r3, -1
/* 80ADB304  41 82 01 08 */	beq lbl_80ADB40C
/* 80ADB308  80 7E 05 04 */	lwz r3, 0x504(r30)
/* 80ADB30C  80 1E 05 08 */	lwz r0, 0x508(r30)
/* 80ADB310  90 61 00 08 */	stw r3, 8(r1)
/* 80ADB314  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ADB318  80 1E 05 0C */	lwz r0, 0x50c(r30)
/* 80ADB31C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ADB320  38 00 00 03 */	li r0, 3
/* 80ADB324  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80ADB328  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80ADB32C  4B 88 6C EC */	b __ptmf_test
/* 80ADB330  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB334  41 82 00 18 */	beq lbl_80ADB34C
/* 80ADB338  7F A3 EB 78 */	mr r3, r29
/* 80ADB33C  38 80 00 00 */	li r4, 0
/* 80ADB340  39 9D 0D EC */	addi r12, r29, 0xdec
/* 80ADB344  4B 88 6D 40 */	b __ptmf_scall
/* 80ADB348  60 00 00 00 */	nop 
lbl_80ADB34C:
/* 80ADB34C  38 00 00 00 */	li r0, 0
/* 80ADB350  B0 1D 0E 1A */	sth r0, 0xe1a(r29)
/* 80ADB354  80 61 00 08 */	lwz r3, 8(r1)
/* 80ADB358  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80ADB35C  90 7D 0D EC */	stw r3, 0xdec(r29)
/* 80ADB360  90 1D 0D F0 */	stw r0, 0xdf0(r29)
/* 80ADB364  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80ADB368  90 1D 0D F4 */	stw r0, 0xdf4(r29)
/* 80ADB36C  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80ADB370  4B 88 6C A8 */	b __ptmf_test
/* 80ADB374  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB378  41 82 00 94 */	beq lbl_80ADB40C
/* 80ADB37C  7F A3 EB 78 */	mr r3, r29
/* 80ADB380  38 80 00 00 */	li r4, 0
/* 80ADB384  39 9D 0D EC */	addi r12, r29, 0xdec
/* 80ADB388  4B 88 6C FC */	b __ptmf_scall
/* 80ADB38C  60 00 00 00 */	nop 
/* 80ADB390  48 00 00 7C */	b lbl_80ADB40C
lbl_80ADB394:
/* 80ADB394  38 60 01 2F */	li r3, 0x12f
/* 80ADB398  4B 67 A2 9C */	b daNpcF_chkEvtBit__FUl
/* 80ADB39C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADB3A0  40 82 00 10 */	bne lbl_80ADB3B0
/* 80ADB3A4  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80ADB3A8  60 00 00 20 */	ori r0, r0, 0x20
/* 80ADB3AC  B0 1D 00 FA */	sth r0, 0xfa(r29)
lbl_80ADB3B0:
/* 80ADB3B0  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80ADB3B4  28 00 00 00 */	cmplwi r0, 0
/* 80ADB3B8  41 82 00 14 */	beq lbl_80ADB3CC
/* 80ADB3BC  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80ADB3C0  38 7E 03 08 */	addi r3, r30, 0x308
/* 80ADB3C4  7C 03 00 2E */	lwzx r0, r3, r0
/* 80ADB3C8  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80ADB3CC:
/* 80ADB3CC  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80ADB3D0  28 00 00 00 */	cmplwi r0, 0
/* 80ADB3D4  41 82 00 14 */	beq lbl_80ADB3E8
/* 80ADB3D8  54 00 13 BA */	rlwinm r0, r0, 2, 0xe, 0x1d
/* 80ADB3DC  38 7E 02 D0 */	addi r3, r30, 0x2d0
/* 80ADB3E0  7C A3 00 2E */	lwzx r5, r3, r0
/* 80ADB3E4  48 00 00 08 */	b lbl_80ADB3EC
lbl_80ADB3E8:
/* 80ADB3E8  38 A0 00 00 */	li r5, 0
lbl_80ADB3EC:
/* 80ADB3EC  7F A3 EB 78 */	mr r3, r29
/* 80ADB3F0  88 9D 09 E9 */	lbz r4, 0x9e9(r29)
/* 80ADB3F4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80ADB3F8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80ADB3FC  38 E0 00 28 */	li r7, 0x28
/* 80ADB400  39 00 00 FF */	li r8, 0xff
/* 80ADB404  39 20 00 01 */	li r9, 1
/* 80ADB408  4B 67 84 74 */	b orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80ADB40C:
/* 80ADB40C  38 60 00 01 */	li r3, 1
lbl_80ADB410:
/* 80ADB410  39 61 00 60 */	addi r11, r1, 0x60
/* 80ADB414  4B 88 6E 0C */	b _restgpr_27
/* 80ADB418  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80ADB41C  7C 08 03 A6 */	mtlr r0
/* 80ADB420  38 21 00 60 */	addi r1, r1, 0x60
/* 80ADB424  4E 80 00 20 */	blr 
