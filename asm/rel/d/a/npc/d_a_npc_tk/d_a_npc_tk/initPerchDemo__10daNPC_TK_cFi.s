lbl_80B026F8:
/* 80B026F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B026FC  7C 08 02 A6 */	mflr r0
/* 80B02700  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B02704  39 61 00 40 */	addi r11, r1, 0x40
/* 80B02708  4B 85 FA CC */	b _savegpr_27
/* 80B0270C  7C 7E 1B 78 */	mr r30, r3
/* 80B02710  7C 9B 23 78 */	mr r27, r4
/* 80B02714  3C 80 80 B1 */	lis r4, lit_3999@ha
/* 80B02718  3B E4 C1 C4 */	addi r31, r4, lit_3999@l
/* 80B0271C  4B FF F6 69 */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B02720  AB 83 04 E6 */	lha r28, 0x4e6(r3)
/* 80B02724  7F 9D E3 78 */	mr r29, r28
/* 80B02728  2C 1C E0 00 */	cmpwi r28, -8192
/* 80B0272C  40 81 00 20 */	ble lbl_80B0274C
/* 80B02730  2C 1C 70 00 */	cmpwi r28, 0x7000
/* 80B02734  40 80 00 18 */	bge lbl_80B0274C
/* 80B02738  2C 1C 28 00 */	cmpwi r28, 0x2800
/* 80B0273C  40 80 00 0C */	bge lbl_80B02748
/* 80B02740  3B A0 E0 00 */	li r29, -8192
/* 80B02744  48 00 00 08 */	b lbl_80B0274C
lbl_80B02748:
/* 80B02748  3B A0 70 00 */	li r29, 0x7000
lbl_80B0274C:
/* 80B0274C  2C 1B 00 02 */	cmpwi r27, 2
/* 80B02750  41 82 03 0C */	beq lbl_80B02A5C
/* 80B02754  40 80 00 14 */	bge lbl_80B02768
/* 80B02758  2C 1B 00 00 */	cmpwi r27, 0
/* 80B0275C  41 82 00 18 */	beq lbl_80B02774
/* 80B02760  40 80 00 A0 */	bge lbl_80B02800
/* 80B02764  48 00 03 E0 */	b lbl_80B02B44
lbl_80B02768:
/* 80B02768  2C 1B 00 04 */	cmpwi r27, 4
/* 80B0276C  40 80 03 D8 */	bge lbl_80B02B44
/* 80B02770  48 00 03 AC */	b lbl_80B02B1C
lbl_80B02774:
/* 80B02774  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B02778  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B0277C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B02780  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 80B02784  28 00 00 00 */	cmplwi r0, 0
/* 80B02788  40 82 00 44 */	bne lbl_80B027CC
/* 80B0278C  7F C3 F3 78 */	mr r3, r30
/* 80B02790  4B FF F5 F5 */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B02794  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B02798  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B0279C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B027A0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B027A4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B027A8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B027AC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B027B0  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80B027B4  EC 00 08 2A */	fadds f0, f0, f1
/* 80B027B8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B027BC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B027C0  EC 00 08 2A */	fadds f0, f0, f1
/* 80B027C4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B027C8  48 00 03 7C */	b lbl_80B02B44
lbl_80B027CC:
/* 80B027CC  38 00 00 00 */	li r0, 0
/* 80B027D0  98 1E 06 CC */	stb r0, 0x6cc(r30)
/* 80B027D4  80 7E 06 C8 */	lwz r3, 0x6c8(r30)
/* 80B027D8  88 9E 06 CC */	lbz r4, 0x6cc(r30)
/* 80B027DC  7C 84 07 74 */	extsb r4, r4
/* 80B027E0  4B 54 EF D0 */	b dPath_GetPnt__FPC5dPathi
/* 80B027E4  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B027E8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B027EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B027F0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B027F4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B027F8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B027FC  48 00 03 48 */	b lbl_80B02B44
lbl_80B02800:
/* 80B02800  38 00 00 00 */	li r0, 0
/* 80B02804  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80B02808  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0280C  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 80B02810  98 1E 06 C2 */	stb r0, 0x6c2(r30)
/* 80B02814  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80B02818  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80B0281C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B02820  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B02824  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B02828  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B0282C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80B02830  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B02834  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80B02838  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B0283C  7F C3 F3 78 */	mr r3, r30
/* 80B02840  4B FF F5 45 */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B02844  7C 64 1B 78 */	mr r4, r3
/* 80B02848  38 7E 06 04 */	addi r3, r30, 0x604
/* 80B0284C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B02850  7F A5 EB 78 */	mr r5, r29
/* 80B02854  38 C1 00 08 */	addi r6, r1, 8
/* 80B02858  4B 76 E5 68 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B0285C  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 80B02860  28 00 00 00 */	cmplwi r0, 0
/* 80B02864  40 82 00 98 */	bne lbl_80B028FC
/* 80B02868  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B0286C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B02870  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80B02874  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B02878  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80B0287C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B02880  7F C3 F3 78 */	mr r3, r30
/* 80B02884  4B FF F5 01 */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B02888  7C 64 1B 78 */	mr r4, r3
/* 80B0288C  38 7E 06 04 */	addi r3, r30, 0x604
/* 80B02890  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B02894  7F A5 EB 78 */	mr r5, r29
/* 80B02898  38 C1 00 08 */	addi r6, r1, 8
/* 80B0289C  4B 76 E5 24 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B028A0  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80B028A4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B028A8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B028AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B028B0  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80B028B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B028B8  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B028BC  38 9E 06 04 */	addi r4, r30, 0x604
/* 80B028C0  7F A5 EB 78 */	mr r5, r29
/* 80B028C4  38 C1 00 08 */	addi r6, r1, 8
/* 80B028C8  4B 76 E4 F8 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B028CC  38 1D 40 00 */	addi r0, r29, 0x4000
/* 80B028D0  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80B028D4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B028D8  38 00 00 00 */	li r0, 0
/* 80B028DC  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 80B028E0  38 00 00 28 */	li r0, 0x28
/* 80B028E4  90 1E 06 B4 */	stw r0, 0x6b4(r30)
/* 80B028E8  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80B028EC  D0 1E 06 78 */	stfs f0, 0x678(r30)
/* 80B028F0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80B028F4  D0 1E 06 7C */	stfs f0, 0x67c(r30)
/* 80B028F8  48 00 02 4C */	b lbl_80B02B44
lbl_80B028FC:
/* 80B028FC  3C 60 80 B1 */	lis r3, l_HIO@ha
/* 80B02900  38 63 C6 0C */	addi r3, r3, l_HIO@l
/* 80B02904  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 80B02908  28 00 00 00 */	cmplwi r0, 0
/* 80B0290C  41 82 00 64 */	beq lbl_80B02970
/* 80B02910  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B02914  4B 76 50 78 */	b cM_rndFX__Ff
/* 80B02918  FC 00 08 1E */	fctiwz f0, f1
/* 80B0291C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B02920  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B02924  98 1E 06 CC */	stb r0, 0x6cc(r30)
/* 80B02928  88 9E 06 CC */	lbz r4, 0x6cc(r30)
/* 80B0292C  7C 80 07 75 */	extsb. r0, r4
/* 80B02930  40 80 00 14 */	bge lbl_80B02944
/* 80B02934  80 7E 06 C8 */	lwz r3, 0x6c8(r30)
/* 80B02938  A0 03 00 00 */	lhz r0, 0(r3)
/* 80B0293C  7C 04 02 14 */	add r0, r4, r0
/* 80B02940  98 1E 06 CC */	stb r0, 0x6cc(r30)
lbl_80B02944:
/* 80B02944  88 BE 06 CC */	lbz r5, 0x6cc(r30)
/* 80B02948  7C A4 07 74 */	extsb r4, r5
/* 80B0294C  80 7E 06 C8 */	lwz r3, 0x6c8(r30)
/* 80B02950  A0 03 00 00 */	lhz r0, 0(r3)
/* 80B02954  7C 04 00 00 */	cmpw r4, r0
/* 80B02958  40 80 00 0C */	bge lbl_80B02964
/* 80B0295C  7C A0 07 75 */	extsb. r0, r5
/* 80B02960  40 80 00 18 */	bge lbl_80B02978
lbl_80B02964:
/* 80B02964  38 00 00 00 */	li r0, 0
/* 80B02968  98 1E 06 CC */	stb r0, 0x6cc(r30)
/* 80B0296C  48 00 00 0C */	b lbl_80B02978
lbl_80B02970:
/* 80B02970  38 00 00 00 */	li r0, 0
/* 80B02974  98 1E 06 CC */	stb r0, 0x6cc(r30)
lbl_80B02978:
/* 80B02978  80 7E 06 C8 */	lwz r3, 0x6c8(r30)
/* 80B0297C  88 9E 06 CC */	lbz r4, 0x6cc(r30)
/* 80B02980  7C 84 07 74 */	extsb r4, r4
/* 80B02984  4B 54 EE 2C */	b dPath_GetPnt__FPC5dPathi
/* 80B02988  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B0298C  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80B02990  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B02994  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B02998  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B0299C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80B029A0  88 7E 06 CC */	lbz r3, 0x6cc(r30)
/* 80B029A4  38 03 00 01 */	addi r0, r3, 1
/* 80B029A8  98 1E 06 CC */	stb r0, 0x6cc(r30)
/* 80B029AC  88 1E 06 CC */	lbz r0, 0x6cc(r30)
/* 80B029B0  7C 04 07 74 */	extsb r4, r0
/* 80B029B4  80 7E 06 C8 */	lwz r3, 0x6c8(r30)
/* 80B029B8  A0 03 00 00 */	lhz r0, 0(r3)
/* 80B029BC  7C 04 00 00 */	cmpw r4, r0
/* 80B029C0  41 80 00 0C */	blt lbl_80B029CC
/* 80B029C4  38 00 00 00 */	li r0, 0
/* 80B029C8  98 1E 06 CC */	stb r0, 0x6cc(r30)
lbl_80B029CC:
/* 80B029CC  80 7E 06 C8 */	lwz r3, 0x6c8(r30)
/* 80B029D0  88 9E 06 CC */	lbz r4, 0x6cc(r30)
/* 80B029D4  7C 84 07 74 */	extsb r4, r4
/* 80B029D8  4B 54 ED D8 */	b dPath_GetPnt__FPC5dPathi
/* 80B029DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B029E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B029E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 80B029E8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B029EC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B029F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B029F4  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B029F8  38 81 00 08 */	addi r4, r1, 8
/* 80B029FC  4B 76 E2 08 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B02A00  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80B02A04  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 80B02A08  38 00 00 B4 */	li r0, 0xb4
/* 80B02A0C  90 1E 06 B4 */	stw r0, 0x6b4(r30)
/* 80B02A10  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 80B02A14  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 80B02A18  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B02A1C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B02A20  3C 00 43 30 */	lis r0, 0x4330
/* 80B02A24  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B02A28  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80B02A2C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B02A30  3C 60 80 B1 */	lis r3, l_HIO@ha
/* 80B02A34  38 63 C6 0C */	addi r3, r3, l_HIO@l
/* 80B02A38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B02A3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B02A40  FC 00 00 1E */	fctiwz f0, f0
/* 80B02A44  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80B02A48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B02A4C  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80B02A50  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 80B02A54  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B02A58  48 00 00 EC */	b lbl_80B02B44
lbl_80B02A5C:
/* 80B02A5C  38 00 00 00 */	li r0, 0
/* 80B02A60  90 1E 06 98 */	stw r0, 0x698(r30)
/* 80B02A64  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B02A68  7F C3 F3 78 */	mr r3, r30
/* 80B02A6C  38 80 00 08 */	li r4, 8
/* 80B02A70  38 A0 00 02 */	li r5, 2
/* 80B02A74  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80B02A78  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B02A7C  4B FF EA 1D */	bl setBck__10daNPC_TK_cFiUcff
/* 80B02A80  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80B02A84  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80B02A88  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80B02A8C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80B02A90  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 80B02A94  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B02A98  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80B02A9C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B02AA0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B02AA4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B02AA8  7F C3 F3 78 */	mr r3, r30
/* 80B02AAC  4B FF F2 D9 */	bl getMasterPointer__10daNPC_TK_cFv
/* 80B02AB0  7C 64 1B 78 */	mr r4, r3
/* 80B02AB4  38 7E 06 04 */	addi r3, r30, 0x604
/* 80B02AB8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B02ABC  7F 85 E3 78 */	mr r5, r28
/* 80B02AC0  38 C1 00 08 */	addi r6, r1, 8
/* 80B02AC4  4B 76 E2 FC */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B02AC8  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80B02ACC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B02AD0  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80B02AD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B02AD8  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80B02ADC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B02AE0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B02AE4  38 9E 06 04 */	addi r4, r30, 0x604
/* 80B02AE8  7F 85 E3 78 */	mr r5, r28
/* 80B02AEC  38 C1 00 08 */	addi r6, r1, 8
/* 80B02AF0  4B 76 E2 D0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B02AF4  38 00 00 00 */	li r0, 0
/* 80B02AF8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80B02AFC  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80B02B00  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80B02B04  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B02B08  38 9E 06 04 */	addi r4, r30, 0x604
/* 80B02B0C  4B 76 E0 F8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B02B10  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 80B02B14  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 80B02B18  48 00 00 2C */	b lbl_80B02B44
lbl_80B02B1C:
/* 80B02B1C  38 00 00 00 */	li r0, 0
/* 80B02B20  90 1E 06 94 */	stw r0, 0x694(r30)
/* 80B02B24  7F C3 F3 78 */	mr r3, r30
/* 80B02B28  38 80 00 07 */	li r4, 7
/* 80B02B2C  38 A0 00 02 */	li r5, 2
/* 80B02B30  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80B02B34  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80B02B38  4B FF E9 61 */	bl setBck__10daNPC_TK_cFiUcff
/* 80B02B3C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80B02B40  D0 1E 06 7C */	stfs f0, 0x67c(r30)
lbl_80B02B44:
/* 80B02B44  39 61 00 40 */	addi r11, r1, 0x40
/* 80B02B48  4B 85 F6 D8 */	b _restgpr_27
/* 80B02B4C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B02B50  7C 08 03 A6 */	mtlr r0
/* 80B02B54  38 21 00 40 */	addi r1, r1, 0x40
/* 80B02B58  4E 80 00 20 */	blr 
