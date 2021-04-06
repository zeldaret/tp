lbl_80168744:
/* 80168744  94 21 F8 C0 */	stwu r1, -0x740(r1)
/* 80168748  7C 08 02 A6 */	mflr r0
/* 8016874C  90 01 07 44 */	stw r0, 0x744(r1)
/* 80168750  DB E1 07 30 */	stfd f31, 0x730(r1)
/* 80168754  F3 E1 07 38 */	psq_st f31, 1848(r1), 0, 0 /* qr0 */
/* 80168758  DB C1 07 20 */	stfd f30, 0x720(r1)
/* 8016875C  F3 C1 07 28 */	psq_st f30, 1832(r1), 0, 0 /* qr0 */
/* 80168760  DB A1 07 10 */	stfd f29, 0x710(r1)
/* 80168764  F3 A1 07 18 */	psq_st f29, 1816(r1), 0, 0 /* qr0 */
/* 80168768  DB 81 07 00 */	stfd f28, 0x700(r1)
/* 8016876C  F3 81 07 08 */	psq_st f28, 1800(r1), 0, 0 /* qr0 */
/* 80168770  DB 61 06 F0 */	stfd f27, 0x6f0(r1)
/* 80168774  F3 61 06 F8 */	psq_st f27, 1784(r1), 0, 0 /* qr0 */
/* 80168778  DB 41 06 E0 */	stfd f26, 0x6e0(r1)
/* 8016877C  F3 41 06 E8 */	psq_st f26, 1768(r1), 0, 0 /* qr0 */
/* 80168780  DB 21 06 D0 */	stfd f25, 0x6d0(r1)
/* 80168784  F3 21 06 D8 */	psq_st f25, 1752(r1), 0, 0 /* qr0 */
/* 80168788  DB 01 06 C0 */	stfd f24, 0x6c0(r1)
/* 8016878C  F3 01 06 C8 */	psq_st f24, 1736(r1), 0, 0 /* qr0 */
/* 80168790  DA E1 06 B0 */	stfd f23, 0x6b0(r1)
/* 80168794  F2 E1 06 B8 */	psq_st f23, 1720(r1), 0, 0 /* qr0 */
/* 80168798  DA C1 06 A0 */	stfd f22, 0x6a0(r1)
/* 8016879C  F2 C1 06 A8 */	psq_st f22, 1704(r1), 0, 0 /* qr0 */
/* 801687A0  DA A1 06 90 */	stfd f21, 0x690(r1)
/* 801687A4  F2 A1 06 98 */	psq_st f21, 1688(r1), 0, 0 /* qr0 */
/* 801687A8  DA 81 06 80 */	stfd f20, 0x680(r1)
/* 801687AC  F2 81 06 88 */	psq_st f20, 1672(r1), 0, 0 /* qr0 */
/* 801687B0  DA 61 06 70 */	stfd f19, 0x670(r1)
/* 801687B4  F2 61 06 78 */	psq_st f19, 1656(r1), 0, 0 /* qr0 */
/* 801687B8  DA 41 06 60 */	stfd f18, 0x660(r1)
/* 801687BC  F2 41 06 68 */	psq_st f18, 1640(r1), 0, 0 /* qr0 */
/* 801687C0  DA 21 06 50 */	stfd f17, 0x650(r1)
/* 801687C4  F2 21 06 58 */	psq_st f17, 1624(r1), 0, 0 /* qr0 */
/* 801687C8  DA 01 06 40 */	stfd f16, 0x640(r1)
/* 801687CC  F2 01 06 48 */	psq_st f16, 1608(r1), 0, 0 /* qr0 */
/* 801687D0  D9 E1 06 30 */	stfd f15, 0x630(r1)
/* 801687D4  F1 E1 06 38 */	psq_st f15, 1592(r1), 0, 0 /* qr0 */
/* 801687D8  D9 C1 06 20 */	stfd f14, 0x620(r1)
/* 801687DC  F1 C1 06 28 */	psq_st f14, 1576(r1), 0, 0 /* qr0 */
/* 801687E0  39 61 06 20 */	addi r11, r1, 0x620
/* 801687E4  48 1F 99 C5 */	bl _savegpr_16
/* 801687E8  7C 7F 1B 78 */	mr r31, r3
/* 801687EC  7C 9E 23 78 */	mr r30, r4
/* 801687F0  88 0D 8A B8 */	lbz r0, struct_80451038+0x0(r13)
/* 801687F4  7C 00 07 75 */	extsb. r0, r0
/* 801687F8  40 82 00 14 */	bne lbl_8016880C
/* 801687FC  C0 02 9D 6C */	lfs f0, lit_10550(r2)
/* 80168800  D0 0D 8A B4 */	stfs f0, JumpCushion(r13)
/* 80168804  38 00 00 01 */	li r0, 1
/* 80168808  98 0D 8A B8 */	stb r0, struct_80451038+0x0(r13)
lbl_8016880C:
/* 8016880C  38 7F 09 70 */	addi r3, r31, 0x970
/* 80168810  48 01 A4 ED */	bl ChargeLatitude__11dCamSetup_cFv
/* 80168814  D8 21 05 D0 */	stfd f1, 0x5d0(r1)
/* 80168818  38 7F 09 70 */	addi r3, r31, 0x970
/* 8016881C  48 01 A4 D9 */	bl ChargeTimer__11dCamSetup_cFv
/* 80168820  38 7F 09 70 */	addi r3, r31, 0x970
/* 80168824  48 01 A4 C9 */	bl ChargeBRatio__11dCamSetup_cFv
/* 80168828  D0 21 05 CC */	stfs f1, 0x5cc(r1)
/* 8016882C  88 0D 8A B9 */	lbz r0, struct_80451038+0x1(r13)
/* 80168830  7C 00 07 75 */	extsb. r0, r0
/* 80168834  40 82 00 2C */	bne lbl_80168860
/* 80168838  38 6D 8A BC */	la r3, struct_8045103C+0x0(r13) /* 8045103C-_SDA_BASE_ */
/* 8016883C  C0 22 9D 54 */	lfs f1, lit_9406(r2)
/* 80168840  48 10 87 89 */	bl __ct__7cSAngleFf
/* 80168844  3C 80 80 03 */	lis r4, __dt__7cSAngleFv@ha /* 0x80030510@ha */
/* 80168848  38 84 05 10 */	addi r4, r4, __dt__7cSAngleFv@l /* 0x80030510@l */
/* 8016884C  3C A0 80 43 */	lis r5, lit_9808@ha /* 0x8042C9A0@ha */
/* 80168850  38 A5 C9 A0 */	addi r5, r5, lit_9808@l /* 0x8042C9A0@l */
/* 80168854  48 1F 93 D1 */	bl __register_global_object
/* 80168858  38 00 00 01 */	li r0, 1
/* 8016885C  98 0D 8A B9 */	stb r0, struct_80451038+0x1(r13)
lbl_80168860:
/* 80168860  83 BF 01 80 */	lwz r29, 0x180(r31)
/* 80168864  48 01 A2 59 */	bl getMidnaActor__9daPy_py_cFv
/* 80168868  48 01 A1 35 */	bl dComIfGp_getAttention__Fv
/* 8016886C  48 01 A1 29 */	bl GetCheckObjectCount__12dAttention_cFv
/* 80168870  2C 03 00 00 */	cmpwi r3, 0
/* 80168874  41 82 00 20 */	beq lbl_80168894
/* 80168878  48 01 A1 25 */	bl dComIfGp_getAttention__Fv
/* 8016887C  38 80 00 00 */	li r4, 0
/* 80168880  4B F0 AF 0D */	bl CheckObjectTarget__12dAttention_cFl
/* 80168884  90 7F 01 88 */	stw r3, 0x188(r31)
/* 80168888  7F E3 FB 78 */	mr r3, r31
/* 8016888C  38 80 00 02 */	li r4, 2
/* 80168890  4B F2 EE E9 */	bl setFlag__9dCamera_cFUl
lbl_80168894:
/* 80168894  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168898  7F C4 F3 78 */	mr r4, r30
/* 8016889C  38 A0 00 00 */	li r5, 0
/* 801688A0  48 01 A4 31 */	bl Val__11dCamParam_cFli
/* 801688A4  D0 21 05 C8 */	stfs f1, 0x5c8(r1)
/* 801688A8  38 7F 0A EC */	addi r3, r31, 0xaec
/* 801688AC  7F C4 F3 78 */	mr r4, r30
/* 801688B0  38 A0 00 02 */	li r5, 2
/* 801688B4  48 01 A4 1D */	bl Val__11dCamParam_cFli
/* 801688B8  FF 40 08 90 */	fmr f26, f1
/* 801688BC  38 7F 0A EC */	addi r3, r31, 0xaec
/* 801688C0  7F C4 F3 78 */	mr r4, r30
/* 801688C4  38 A0 00 01 */	li r5, 1
/* 801688C8  48 01 A4 09 */	bl Val__11dCamParam_cFli
/* 801688CC  FF 20 08 90 */	fmr f25, f1
/* 801688D0  38 7F 0A EC */	addi r3, r31, 0xaec
/* 801688D4  7F C4 F3 78 */	mr r4, r30
/* 801688D8  38 A0 00 03 */	li r5, 3
/* 801688DC  48 01 A3 F5 */	bl Val__11dCamParam_cFli
/* 801688E0  FF 00 08 90 */	fmr f24, f1
/* 801688E4  38 7F 0A EC */	addi r3, r31, 0xaec
/* 801688E8  7F C4 F3 78 */	mr r4, r30
/* 801688EC  38 A0 00 04 */	li r5, 4
/* 801688F0  48 01 A3 E1 */	bl Val__11dCamParam_cFli
/* 801688F4  D0 21 05 C4 */	stfs f1, 0x5c4(r1)
/* 801688F8  38 7F 0A EC */	addi r3, r31, 0xaec
/* 801688FC  7F C4 F3 78 */	mr r4, r30
/* 80168900  38 A0 00 05 */	li r5, 5
/* 80168904  48 01 A3 CD */	bl Val__11dCamParam_cFli
/* 80168908  FE E0 08 90 */	fmr f23, f1
/* 8016890C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168910  7F C4 F3 78 */	mr r4, r30
/* 80168914  38 A0 00 06 */	li r5, 6
/* 80168918  48 01 A3 B9 */	bl Val__11dCamParam_cFli
/* 8016891C  D0 21 05 C0 */	stfs f1, 0x5c0(r1)
/* 80168920  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168924  7F C4 F3 78 */	mr r4, r30
/* 80168928  38 A0 00 07 */	li r5, 7
/* 8016892C  48 01 A3 A5 */	bl Val__11dCamParam_cFli
/* 80168930  FE C0 08 90 */	fmr f22, f1
/* 80168934  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168938  7F C4 F3 78 */	mr r4, r30
/* 8016893C  38 A0 00 08 */	li r5, 8
/* 80168940  48 01 A3 91 */	bl Val__11dCamParam_cFli
/* 80168944  FE A0 08 90 */	fmr f21, f1
/* 80168948  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016894C  7F C4 F3 78 */	mr r4, r30
/* 80168950  38 A0 00 09 */	li r5, 9
/* 80168954  48 01 A3 7D */	bl Val__11dCamParam_cFli
/* 80168958  FF 60 08 90 */	fmr f27, f1
/* 8016895C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168960  7F C4 F3 78 */	mr r4, r30
/* 80168964  38 A0 00 0A */	li r5, 0xa
/* 80168968  48 01 A3 69 */	bl Val__11dCamParam_cFli
/* 8016896C  FE 80 08 90 */	fmr f20, f1
/* 80168970  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168974  7F C4 F3 78 */	mr r4, r30
/* 80168978  38 A0 00 0B */	li r5, 0xb
/* 8016897C  48 01 A3 55 */	bl Val__11dCamParam_cFli
/* 80168980  D0 21 05 BC */	stfs f1, 0x5bc(r1)
/* 80168984  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168988  7F C4 F3 78 */	mr r4, r30
/* 8016898C  38 A0 00 0C */	li r5, 0xc
/* 80168990  48 01 A3 41 */	bl Val__11dCamParam_cFli
/* 80168994  FE 60 08 90 */	fmr f19, f1
/* 80168998  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016899C  7F C4 F3 78 */	mr r4, r30
/* 801689A0  38 A0 00 0D */	li r5, 0xd
/* 801689A4  48 01 A3 2D */	bl Val__11dCamParam_cFli
/* 801689A8  FE 40 08 90 */	fmr f18, f1
/* 801689AC  38 7F 0A EC */	addi r3, r31, 0xaec
/* 801689B0  7F C4 F3 78 */	mr r4, r30
/* 801689B4  38 A0 00 0E */	li r5, 0xe
/* 801689B8  48 01 A3 19 */	bl Val__11dCamParam_cFli
/* 801689BC  FE 20 08 90 */	fmr f17, f1
/* 801689C0  38 7F 0A EC */	addi r3, r31, 0xaec
/* 801689C4  7F C4 F3 78 */	mr r4, r30
/* 801689C8  38 A0 00 10 */	li r5, 0x10
/* 801689CC  48 01 A3 05 */	bl Val__11dCamParam_cFli
/* 801689D0  FE 00 08 90 */	fmr f16, f1
/* 801689D4  38 7F 0A EC */	addi r3, r31, 0xaec
/* 801689D8  7F C4 F3 78 */	mr r4, r30
/* 801689DC  38 A0 00 0F */	li r5, 0xf
/* 801689E0  48 01 A2 F1 */	bl Val__11dCamParam_cFli
/* 801689E4  D0 21 05 B8 */	stfs f1, 0x5b8(r1)
/* 801689E8  38 7F 0A EC */	addi r3, r31, 0xaec
/* 801689EC  7F C4 F3 78 */	mr r4, r30
/* 801689F0  38 A0 00 11 */	li r5, 0x11
/* 801689F4  48 01 A2 DD */	bl Val__11dCamParam_cFli
/* 801689F8  FD E0 08 90 */	fmr f15, f1
/* 801689FC  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168A00  7F C4 F3 78 */	mr r4, r30
/* 80168A04  38 A0 00 13 */	li r5, 0x13
/* 80168A08  48 01 A2 C9 */	bl Val__11dCamParam_cFli
/* 80168A0C  FD C0 08 90 */	fmr f14, f1
/* 80168A10  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168A14  7F C4 F3 78 */	mr r4, r30
/* 80168A18  38 A0 00 12 */	li r5, 0x12
/* 80168A1C  48 01 A2 B5 */	bl Val__11dCamParam_cFli
/* 80168A20  FF E0 08 90 */	fmr f31, f1
/* 80168A24  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168A28  7F C4 F3 78 */	mr r4, r30
/* 80168A2C  38 A0 00 15 */	li r5, 0x15
/* 80168A30  48 01 A2 A1 */	bl Val__11dCamParam_cFli
/* 80168A34  D0 21 05 B4 */	stfs f1, 0x5b4(r1)
/* 80168A38  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168A3C  7F C4 F3 78 */	mr r4, r30
/* 80168A40  38 A0 00 16 */	li r5, 0x16
/* 80168A44  48 01 A2 8D */	bl Val__11dCamParam_cFli
/* 80168A48  FF C0 08 90 */	fmr f30, f1
/* 80168A4C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168A50  7F C4 F3 78 */	mr r4, r30
/* 80168A54  38 A0 00 17 */	li r5, 0x17
/* 80168A58  48 01 A2 79 */	bl Val__11dCamParam_cFli
/* 80168A5C  D0 21 05 B0 */	stfs f1, 0x5b0(r1)
/* 80168A60  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168A64  7F C4 F3 78 */	mr r4, r30
/* 80168A68  38 A0 00 18 */	li r5, 0x18
/* 80168A6C  48 01 A2 65 */	bl Val__11dCamParam_cFli
/* 80168A70  FF 80 08 90 */	fmr f28, f1
/* 80168A74  38 61 00 DC */	addi r3, r1, 0xdc
/* 80168A78  C0 22 9D 70 */	lfs f1, lit_10551(r2)
/* 80168A7C  48 10 85 4D */	bl __ct__7cSAngleFf
/* 80168A80  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80168A84  C0 22 9D 74 */	lfs f1, lit_10552(r2)
/* 80168A88  48 10 85 41 */	bl __ct__7cSAngleFf
/* 80168A8C  C3 A2 9C EC */	lfs f29, lit_6766(r2)
/* 80168A90  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168A94  38 80 00 01 */	li r4, 1
/* 80168A98  48 01 A2 1D */	bl CheckFlag__11dCamParam_cFUs
/* 80168A9C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80168AA0  41 82 00 10 */	beq lbl_80168AB0
/* 80168AA4  7F E3 FB 78 */	mr r3, r31
/* 80168AA8  3C 80 00 02 */	lis r4, 2
/* 80168AAC  4B F2 EC CD */	bl setFlag__9dCamera_cFUl
lbl_80168AB0:
/* 80168AB0  7F A3 EB 78 */	mr r3, r29
/* 80168AB4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80168AB8  81 8C 01 F0 */	lwz r12, 0x1f0(r12)
/* 80168ABC  7D 89 03 A6 */	mtctr r12
/* 80168AC0  4E 80 04 21 */	bctrl 
/* 80168AC4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80168AC8  40 82 00 1C */	bne lbl_80168AE4
/* 80168ACC  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 80168AD0  3C 60 80 43 */	lis r3, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80168AD4  38 63 C8 F8 */	addi r3, r3, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80168AD8  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 80168ADC  7C 04 00 00 */	cmpw r4, r0
/* 80168AE0  40 82 00 14 */	bne lbl_80168AF4
lbl_80168AE4:
/* 80168AE4  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80168AE8  D0 1F 01 BC */	stfs f0, 0x1bc(r31)
/* 80168AEC  D0 1F 01 C0 */	stfs f0, 0x1c0(r31)
/* 80168AF0  D0 1F 01 C4 */	stfs f0, 0x1c4(r31)
lbl_80168AF4:
/* 80168AF4  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80168AF8  28 00 00 00 */	cmplwi r0, 0
/* 80168AFC  40 82 01 D4 */	bne lbl_80168CD0
/* 80168B00  38 61 03 90 */	addi r3, r1, 0x390
/* 80168B04  7F E4 FB 78 */	mr r4, r31
/* 80168B08  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80168B0C  4B F2 EC 11 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80168B10  38 61 03 84 */	addi r3, r1, 0x384
/* 80168B14  7F E4 FB 78 */	mr r4, r31
/* 80168B18  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80168B1C  4B F2 EC 41 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 80168B20  38 61 03 78 */	addi r3, r1, 0x378
/* 80168B24  38 81 03 90 */	addi r4, r1, 0x390
/* 80168B28  38 A1 03 84 */	addi r5, r1, 0x384
/* 80168B2C  48 0F E0 09 */	bl __mi__4cXyzCFRC3Vec
/* 80168B30  38 61 04 68 */	addi r3, r1, 0x468
/* 80168B34  38 81 03 78 */	addi r4, r1, 0x378
/* 80168B38  4B F2 EC BD */	bl __ct__4cXyzFRC4cXyz
/* 80168B3C  38 61 03 78 */	addi r3, r1, 0x378
/* 80168B40  38 80 FF FF */	li r4, -1
/* 80168B44  4B EA 06 41 */	bl __dt__4cXyzFv
/* 80168B48  38 61 03 84 */	addi r3, r1, 0x384
/* 80168B4C  38 80 FF FF */	li r4, -1
/* 80168B50  4B EA 06 35 */	bl __dt__4cXyzFv
/* 80168B54  38 61 03 90 */	addi r3, r1, 0x390
/* 80168B58  38 80 FF FF */	li r4, -1
/* 80168B5C  4B EA 06 29 */	bl __dt__4cXyzFv
/* 80168B60  7F E3 FB 78 */	mr r3, r31
/* 80168B64  38 80 02 00 */	li r4, 0x200
/* 80168B68  48 01 9E 19 */	bl chkFlag__9dCamera_cFUl
/* 80168B6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80168B70  41 82 00 3C */	beq lbl_80168BAC
/* 80168B74  A8 1F 01 36 */	lha r0, 0x136(r31)
/* 80168B78  2C 00 00 00 */	cmpwi r0, 0
/* 80168B7C  41 81 00 30 */	bgt lbl_80168BAC
/* 80168B80  38 7F 00 64 */	addi r3, r31, 0x64
/* 80168B84  38 9F 00 30 */	addi r4, r31, 0x30
/* 80168B88  4B F2 EC 51 */	bl __as__4cXyzFRC4cXyz
/* 80168B8C  38 7F 00 70 */	addi r3, r31, 0x70
/* 80168B90  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80168B94  4B F2 EC 45 */	bl __as__4cXyzFRC4cXyz
/* 80168B98  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80168B9C  38 9F 00 28 */	addi r4, r31, 0x28
/* 80168BA0  4B F2 5B D5 */	bl __as__7cSGlobeFRC7cSGlobe
/* 80168BA4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80168BA8  D0 1F 00 80 */	stfs f0, 0x80(r31)
lbl_80168BAC:
/* 80168BAC  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80168BB0  D0 1F 04 28 */	stfs f0, 0x428(r31)
/* 80168BB4  38 00 00 00 */	li r0, 0
/* 80168BB8  98 1F 04 59 */	stb r0, 0x459(r31)
/* 80168BBC  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80168BC0  7F E4 FB 78 */	mr r4, r31
/* 80168BC4  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80168BC8  4B F2 EB 71 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80168BCC  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80168BD0  48 10 85 19 */	bl Inv__7cSAngleCFv
/* 80168BD4  7C 64 1B 78 */	mr r4, r3
/* 80168BD8  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80168BDC  48 10 83 BD */	bl __ct__7cSAngleFs
/* 80168BE0  38 7F 04 7E */	addi r3, r31, 0x47e
/* 80168BE4  38 81 00 B0 */	addi r4, r1, 0xb0
/* 80168BE8  48 01 A0 C1 */	bl __as__7cSAngleFRC7cSAngle
/* 80168BEC  38 61 00 B0 */	addi r3, r1, 0xb0
/* 80168BF0  38 80 FF FF */	li r4, -1
/* 80168BF4  4B EC 79 1D */	bl __dt__7cSAngleFv
/* 80168BF8  38 61 00 B4 */	addi r3, r1, 0xb4
/* 80168BFC  38 80 FF FF */	li r4, -1
/* 80168C00  4B EC 79 11 */	bl __dt__7cSAngleFv
/* 80168C04  38 60 00 00 */	li r3, 0
/* 80168C08  98 7F 04 7B */	stb r3, 0x47b(r31)
/* 80168C0C  98 7F 04 5B */	stb r3, 0x45b(r31)
/* 80168C10  38 00 00 FE */	li r0, 0xfe
/* 80168C14  90 1F 04 84 */	stw r0, 0x484(r31)
/* 80168C18  B0 7F 04 00 */	sth r3, 0x400(r31)
/* 80168C1C  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 80168C20  90 1F 04 88 */	stw r0, 0x488(r31)
/* 80168C24  98 7F 04 7C */	stb r3, 0x47c(r31)
/* 80168C28  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80168C2C  D0 1F 04 8C */	stfs f0, 0x48c(r31)
/* 80168C30  D0 1F 04 0C */	stfs f0, 0x40c(r31)
/* 80168C34  38 61 00 AC */	addi r3, r1, 0xac
/* 80168C38  7F E4 FB 78 */	mr r4, r31
/* 80168C3C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80168C40  4B F2 EA F9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80168C44  38 7F 04 80 */	addi r3, r31, 0x480
/* 80168C48  38 81 00 AC */	addi r4, r1, 0xac
/* 80168C4C  48 01 A0 5D */	bl __as__7cSAngleFRC7cSAngle
/* 80168C50  38 61 00 AC */	addi r3, r1, 0xac
/* 80168C54  38 80 FF FF */	li r4, -1
/* 80168C58  4B EC 78 B9 */	bl __dt__7cSAngleFv
/* 80168C5C  7F E3 FB 78 */	mr r3, r31
/* 80168C60  3C 80 00 10 */	lis r4, 0x10
/* 80168C64  48 01 9D 1D */	bl chkFlag__9dCamera_cFUl
/* 80168C68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80168C6C  41 82 00 0C */	beq lbl_80168C78
/* 80168C70  7F E3 FB 78 */	mr r3, r31
/* 80168C74  4B FF C4 91 */	bl setUSOAngle__9dCamera_cFv
lbl_80168C78:
/* 80168C78  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168C7C  7F C4 F3 78 */	mr r4, r30
/* 80168C80  38 A0 02 00 */	li r5, 0x200
/* 80168C84  48 01 A0 09 */	bl Flag__11dCamParam_cFlUs
/* 80168C88  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80168C8C  41 82 00 38 */	beq lbl_80168CC4
/* 80168C90  88 1F 07 E6 */	lbz r0, 0x7e6(r31)
/* 80168C94  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 80168C98  2C 00 00 02 */	cmpwi r0, 2
/* 80168C9C  41 82 00 20 */	beq lbl_80168CBC
/* 80168CA0  40 80 00 24 */	bge lbl_80168CC4
/* 80168CA4  2C 00 00 01 */	cmpwi r0, 1
/* 80168CA8  40 80 00 08 */	bge lbl_80168CB0
/* 80168CAC  48 00 00 18 */	b lbl_80168CC4
lbl_80168CB0:
/* 80168CB0  38 00 00 00 */	li r0, 0
/* 80168CB4  90 1F 09 40 */	stw r0, 0x940(r31)
/* 80168CB8  48 00 00 0C */	b lbl_80168CC4
lbl_80168CBC:
/* 80168CBC  38 00 00 01 */	li r0, 1
/* 80168CC0  90 1F 09 40 */	stw r0, 0x940(r31)
lbl_80168CC4:
/* 80168CC4  38 61 04 68 */	addi r3, r1, 0x468
/* 80168CC8  38 80 FF FF */	li r4, -1
/* 80168CCC  4B EA 04 B9 */	bl __dt__4cXyzFv
lbl_80168CD0:
/* 80168CD0  3B 80 00 00 */	li r28, 0
/* 80168CD4  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80168CD8  3C 80 00 10 */	lis r4, 0x10
/* 80168CDC  48 00 36 8D */	bl func_8016C368
/* 80168CE0  28 03 00 00 */	cmplwi r3, 0
/* 80168CE4  41 82 00 14 */	beq lbl_80168CF8
/* 80168CE8  88 1F 03 D0 */	lbz r0, 0x3d0(r31)
/* 80168CEC  28 00 00 00 */	cmplwi r0, 0
/* 80168CF0  40 82 00 08 */	bne lbl_80168CF8
/* 80168CF4  3B 80 00 01 */	li r28, 1
lbl_80168CF8:
/* 80168CF8  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80168CFC  7F E4 FB 78 */	mr r4, r31
/* 80168D00  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80168D04  4B F2 EA 35 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80168D08  38 61 00 D4 */	addi r3, r1, 0xd4
/* 80168D0C  38 81 00 A8 */	addi r4, r1, 0xa8
/* 80168D10  48 10 82 59 */	bl __ct__7cSAngleFRC7cSAngle
/* 80168D14  38 61 00 A8 */	addi r3, r1, 0xa8
/* 80168D18  38 80 FF FF */	li r4, -1
/* 80168D1C  4B EC 77 F5 */	bl __dt__7cSAngleFv
/* 80168D20  3A 20 00 00 */	li r17, 0
/* 80168D24  3B 00 00 00 */	li r24, 0
/* 80168D28  3A 40 00 00 */	li r18, 0
/* 80168D2C  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80168D30  38 80 03 00 */	li r4, 0x300
/* 80168D34  48 00 36 35 */	bl func_8016C368
/* 80168D38  28 03 00 00 */	cmplwi r3, 0
/* 80168D3C  41 82 00 08 */	beq lbl_80168D44
/* 80168D40  3A 20 00 01 */	li r17, 1
lbl_80168D44:
/* 80168D44  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80168D48  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000008@ha */
/* 80168D4C  38 84 00 08 */	addi r4, r4, 0x0008 /* 0x02000008@l */
/* 80168D50  48 00 36 19 */	bl func_8016C368
/* 80168D54  28 03 00 00 */	cmplwi r3, 0
/* 80168D58  41 82 00 08 */	beq lbl_80168D60
/* 80168D5C  3B 00 00 01 */	li r24, 1
lbl_80168D60:
/* 80168D60  7F A3 EB 78 */	mr r3, r29
/* 80168D64  4B FD 87 69 */	bl checkMagneBootsOn__9daPy_py_cCFv
/* 80168D68  28 03 00 00 */	cmplwi r3, 0
/* 80168D6C  41 82 00 30 */	beq lbl_80168D9C
/* 80168D70  3A 40 00 01 */	li r18, 1
/* 80168D74  7F A3 EB 78 */	mr r3, r29
/* 80168D78  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80168D7C  81 8C 01 C4 */	lwz r12, 0x1c4(r12)
/* 80168D80  7D 89 03 A6 */	mtctr r12
/* 80168D84  4E 80 04 21 */	bctrl 
/* 80168D88  C0 23 00 04 */	lfs f1, 4(r3)
/* 80168D8C  48 0F F4 85 */	bl cBgW_CheckBWall__Ff
/* 80168D90  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80168D94  41 82 00 08 */	beq lbl_80168D9C
/* 80168D98  3B 00 00 01 */	li r24, 1
lbl_80168D9C:
/* 80168D9C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80168DA0  48 01 9E E5 */	bl U__7cSGlobeCFv
/* 80168DA4  7C 65 1B 78 */	mr r5, r3
/* 80168DA8  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80168DAC  38 81 00 D4 */	addi r4, r1, 0xd4
/* 80168DB0  48 10 83 F5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80168DB4  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80168DB8  38 81 00 A4 */	addi r4, r1, 0xa4
/* 80168DBC  48 10 81 AD */	bl __ct__7cSAngleFRC7cSAngle
/* 80168DC0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 80168DC4  38 80 FF FF */	li r4, -1
/* 80168DC8  4B EC 77 49 */	bl __dt__7cSAngleFv
/* 80168DCC  38 00 00 01 */	li r0, 1
/* 80168DD0  98 1F 09 44 */	stb r0, 0x944(r31)
/* 80168DD4  80 1F 07 DC */	lwz r0, 0x7dc(r31)
/* 80168DD8  2C 00 00 FF */	cmpwi r0, 0xff
/* 80168DDC  41 82 01 A8 */	beq lbl_80168F84
/* 80168DE0  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168DE4  7F C4 F3 78 */	mr r4, r30
/* 80168DE8  38 A0 02 00 */	li r5, 0x200
/* 80168DEC  48 01 9E A1 */	bl Flag__11dCamParam_cFlUs
/* 80168DF0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80168DF4  41 82 01 90 */	beq lbl_80168F84
/* 80168DF8  80 7F 07 DC */	lwz r3, 0x7dc(r31)
/* 80168DFC  80 1F 04 84 */	lwz r0, 0x484(r31)
/* 80168E00  7C 03 00 00 */	cmpw r3, r0
/* 80168E04  41 82 00 80 */	beq lbl_80168E84
/* 80168E08  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168E0C  88 9F 07 BD */	lbz r4, 0x7bd(r31)
/* 80168E10  48 01 9E 6D */	bl Fovy__11dCamParam_cFUc
/* 80168E14  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168E18  88 9F 07 BE */	lbz r4, 0x7be(r31)
/* 80168E1C  48 01 9E 59 */	bl Arg0__11dCamParam_cFUc
/* 80168E20  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168E24  88 9F 07 BF */	lbz r4, 0x7bf(r31)
/* 80168E28  48 01 9E 45 */	bl Arg1__11dCamParam_cFUc
/* 80168E2C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168E30  A0 1F 07 C0 */	lhz r0, 0x7c0(r31)
/* 80168E34  7C 04 07 34 */	extsh r4, r0
/* 80168E38  48 01 9E 29 */	bl Arg2__11dCamParam_cFs
/* 80168E3C  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 80168E40  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 80168E44  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80168E48  7C 63 02 14 */	add r3, r3, r0
/* 80168E4C  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80168E50  1C 00 00 16 */	mulli r0, r0, 0x16
/* 80168E54  7C 63 02 14 */	add r3, r3, r0
/* 80168E58  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 80168E5C  54 00 08 3C */	slwi r0, r0, 1
/* 80168E60  7C 63 02 14 */	add r3, r3, r0
/* 80168E64  A8 03 00 18 */	lha r0, 0x18(r3)
/* 80168E68  7C 1E 00 00 */	cmpw r30, r0
/* 80168E6C  40 82 00 10 */	bne lbl_80168E7C
/* 80168E70  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168E74  7F C4 F3 78 */	mr r4, r30
/* 80168E78  4B F1 F7 5D */	bl Change__11dCamParam_cFl
lbl_80168E7C:
/* 80168E7C  80 1F 07 DC */	lwz r0, 0x7dc(r31)
/* 80168E80  90 1F 04 84 */	stw r0, 0x484(r31)
lbl_80168E84:
/* 80168E84  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168E88  48 01 9D D1 */	bl Fovy__11dCamParam_cFv
/* 80168E8C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80168E90  28 00 00 FF */	cmplwi r0, 0xff
/* 80168E94  41 82 00 2C */	beq lbl_80168EC0
/* 80168E98  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168E9C  48 01 9D BD */	bl Fovy__11dCamParam_cFv
/* 80168EA0  7C 60 07 74 */	extsb r0, r3
/* 80168EA4  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 80168EA8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80168EAC  90 01 05 9C */	stw r0, 0x59c(r1)
/* 80168EB0  3C 00 43 30 */	lis r0, 0x4330
/* 80168EB4  90 01 05 98 */	stw r0, 0x598(r1)
/* 80168EB8  C8 01 05 98 */	lfd f0, 0x598(r1)
/* 80168EBC  ED C0 08 28 */	fsubs f14, f0, f1
lbl_80168EC0:
/* 80168EC0  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168EC4  48 01 9D 8D */	bl Arg0__11dCamParam_cFv
/* 80168EC8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80168ECC  28 00 00 FF */	cmplwi r0, 0xff
/* 80168ED0  41 82 00 34 */	beq lbl_80168F04
/* 80168ED4  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168ED8  48 01 9D 79 */	bl Arg0__11dCamParam_cFv
/* 80168EDC  7C 60 07 74 */	extsb r0, r3
/* 80168EE0  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 80168EE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80168EE8  90 01 05 A4 */	stw r0, 0x5a4(r1)
/* 80168EEC  3C 00 43 30 */	lis r0, 0x4330
/* 80168EF0  90 01 05 A0 */	stw r0, 0x5a0(r1)
/* 80168EF4  C8 01 05 A0 */	lfd f0, 0x5a0(r1)
/* 80168EF8  EC 20 08 28 */	fsubs f1, f0, f1
/* 80168EFC  C0 02 9D 38 */	lfs f0, lit_9399(r2)
/* 80168F00  EF 60 00 72 */	fmuls f27, f0, f1
lbl_80168F04:
/* 80168F04  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168F08  48 01 9D 41 */	bl Arg1__11dCamParam_cFv
/* 80168F0C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80168F10  28 00 00 FF */	cmplwi r0, 0xff
/* 80168F14  41 82 00 2C */	beq lbl_80168F40
/* 80168F18  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168F1C  48 01 9D 2D */	bl Arg1__11dCamParam_cFv
/* 80168F20  7C 60 07 74 */	extsb r0, r3
/* 80168F24  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 80168F28  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80168F2C  90 01 05 AC */	stw r0, 0x5ac(r1)
/* 80168F30  3C 00 43 30 */	lis r0, 0x4330
/* 80168F34  90 01 05 A8 */	stw r0, 0x5a8(r1)
/* 80168F38  C8 01 05 A8 */	lfd f0, 0x5a8(r1)
/* 80168F3C  EE 20 08 28 */	fsubs f17, f0, f1
lbl_80168F40:
/* 80168F40  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168F44  48 01 9C F9 */	bl Arg2__11dCamParam_cFv
/* 80168F48  7C 60 07 34 */	extsh r0, r3
/* 80168F4C  2C 00 FF FF */	cmpwi r0, -1
/* 80168F50  41 82 00 C4 */	beq lbl_80169014
/* 80168F54  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168F58  48 01 9C E5 */	bl Arg2__11dCamParam_cFv
/* 80168F5C  7C 60 07 34 */	extsh r0, r3
/* 80168F60  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 80168F64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80168F68  90 01 05 AC */	stw r0, 0x5ac(r1)
/* 80168F6C  3C 00 43 30 */	lis r0, 0x4330
/* 80168F70  90 01 05 A8 */	stw r0, 0x5a8(r1)
/* 80168F74  C8 01 05 A8 */	lfd f0, 0x5a8(r1)
/* 80168F78  EC 00 08 28 */	fsubs f0, f0, f1
/* 80168F7C  D0 01 05 C4 */	stfs f0, 0x5c4(r1)
/* 80168F80  48 00 00 94 */	b lbl_80169014
lbl_80168F84:
/* 80168F84  80 1F 07 DC */	lwz r0, 0x7dc(r31)
/* 80168F88  2C 00 00 FF */	cmpwi r0, 0xff
/* 80168F8C  40 82 00 88 */	bne lbl_80169014
/* 80168F90  80 1F 04 84 */	lwz r0, 0x484(r31)
/* 80168F94  2C 00 00 FF */	cmpwi r0, 0xff
/* 80168F98  41 82 00 7C */	beq lbl_80169014
/* 80168F9C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168FA0  38 80 00 FF */	li r4, 0xff
/* 80168FA4  48 01 9C D9 */	bl Fovy__11dCamParam_cFUc
/* 80168FA8  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168FAC  38 80 00 FF */	li r4, 0xff
/* 80168FB0  48 01 9C C5 */	bl Arg0__11dCamParam_cFUc
/* 80168FB4  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168FB8  38 80 00 FF */	li r4, 0xff
/* 80168FBC  48 01 9C B1 */	bl Arg1__11dCamParam_cFUc
/* 80168FC0  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80168FC4  38 80 FF FF */	li r4, -1
/* 80168FC8  48 01 9C 99 */	bl Arg2__11dCamParam_cFs
/* 80168FCC  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 80168FD0  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 80168FD4  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80168FD8  7C 63 02 14 */	add r3, r3, r0
/* 80168FDC  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80168FE0  1C 00 00 16 */	mulli r0, r0, 0x16
/* 80168FE4  7C 63 02 14 */	add r3, r3, r0
/* 80168FE8  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 80168FEC  54 00 08 3C */	slwi r0, r0, 1
/* 80168FF0  7C 63 02 14 */	add r3, r3, r0
/* 80168FF4  A8 03 00 18 */	lha r0, 0x18(r3)
/* 80168FF8  7C 1E 00 00 */	cmpw r30, r0
/* 80168FFC  40 82 00 10 */	bne lbl_8016900C
/* 80169000  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80169004  7F C4 F3 78 */	mr r4, r30
/* 80169008  4B F1 F5 CD */	bl Change__11dCamParam_cFl
lbl_8016900C:
/* 8016900C  38 00 00 FF */	li r0, 0xff
/* 80169010  90 1F 04 84 */	stw r0, 0x484(r31)
lbl_80169014:
/* 80169014  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 80169018  2C 00 00 01 */	cmpwi r0, 1
/* 8016901C  40 82 00 2C */	bne lbl_80169048
/* 80169020  FE C0 D8 90 */	fmr f22, f27
/* 80169024  C0 02 9D 14 */	lfs f0, lit_8023(r2)
/* 80169028  EC 00 06 F2 */	fmuls f0, f0, f27
/* 8016902C  EE BB 00 28 */	fsubs f21, f27, f0
/* 80169030  C3 01 05 C4 */	lfs f24, 0x5c4(r1)
/* 80169034  FF 40 C0 90 */	fmr f26, f24
/* 80169038  FE 40 88 90 */	fmr f18, f17
/* 8016903C  FE 60 88 90 */	fmr f19, f17
/* 80169040  FF E0 70 90 */	fmr f31, f14
/* 80169044  FD E0 70 90 */	fmr f15, f14
lbl_80169048:
/* 80169048  3A 60 00 00 */	li r19, 0
/* 8016904C  3B 40 00 00 */	li r26, 0
/* 80169050  3A E0 00 00 */	li r23, 0
/* 80169054  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80169058  2C 00 00 00 */	cmpwi r0, 0
/* 8016905C  40 82 02 6C */	bne lbl_801692C8
/* 80169060  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80169064  48 00 32 E9 */	bl func_8016C34C
/* 80169068  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016906C  41 82 00 08 */	beq lbl_80169074
/* 80169070  3A E0 00 01 */	li r23, 1
lbl_80169074:
/* 80169074  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80169078  3C 80 08 00 */	lis r4, 0x800
/* 8016907C  48 00 32 ED */	bl func_8016C368
/* 80169080  28 03 00 00 */	cmplwi r3, 0
/* 80169084  41 82 00 08 */	beq lbl_8016908C
/* 80169088  3B 40 00 01 */	li r26, 1
lbl_8016908C:
/* 8016908C  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80169090  3C 80 02 00 */	lis r4, 0x200
/* 80169094  48 00 32 9D */	bl func_8016C330
/* 80169098  28 03 00 00 */	cmplwi r3, 0
/* 8016909C  41 82 00 44 */	beq lbl_801690E0
/* 801690A0  7F E3 FB 78 */	mr r3, r31
/* 801690A4  38 80 00 80 */	li r4, 0x80
/* 801690A8  48 01 98 C5 */	bl clrFlag__9dCamera_cFUl
/* 801690AC  7F A3 EB 78 */	mr r3, r29
/* 801690B0  48 01 9A 05 */	bl getLeftFootPosP__9daPy_py_cFv
/* 801690B4  7C 70 1B 78 */	mr r16, r3
/* 801690B8  7F A3 EB 78 */	mr r3, r29
/* 801690BC  48 01 99 F1 */	bl getRightFootPosP__9daPy_py_cFv
/* 801690C0  C0 30 00 04 */	lfs f1, 4(r16)
/* 801690C4  C0 03 00 04 */	lfs f0, 4(r3)
/* 801690C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801690CC  40 80 01 84 */	bge lbl_80169250
/* 801690D0  C0 01 05 C8 */	lfs f0, 0x5c8(r1)
/* 801690D4  FC 00 00 50 */	fneg f0, f0
/* 801690D8  D0 01 05 C8 */	stfs f0, 0x5c8(r1)
/* 801690DC  48 00 01 74 */	b lbl_80169250
lbl_801690E0:
/* 801690E0  80 1F 09 48 */	lwz r0, 0x948(r31)
/* 801690E4  2C 00 00 00 */	cmpwi r0, 0
/* 801690E8  41 82 00 70 */	beq lbl_80169158
/* 801690EC  7F E3 FB 78 */	mr r3, r31
/* 801690F0  3C 80 00 10 */	lis r4, 0x10
/* 801690F4  48 01 98 8D */	bl chkFlag__9dCamera_cFUl
/* 801690F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801690FC  40 82 00 5C */	bne lbl_80169158
/* 80169100  38 7F 09 70 */	addi r3, r31, 0x970
/* 80169104  48 01 9B 31 */	bl ThrowCtrAdjust__11dCamSetup_cFv
/* 80169108  EF 5A 08 2A */	fadds f26, f26, f1
/* 8016910C  EF 18 08 2A */	fadds f24, f24, f1
/* 80169110  38 7F 09 70 */	addi r3, r31, 0x970
/* 80169114  48 01 9B 19 */	bl ThrowVAngle__11dCamSetup_cFv
/* 80169118  FC 13 08 40 */	fcmpo cr0, f19, f1
/* 8016911C  40 80 00 08 */	bge lbl_80169124
/* 80169120  FE 60 08 90 */	fmr f19, f1
lbl_80169124:
/* 80169124  FC 12 08 40 */	fcmpo cr0, f18, f1
/* 80169128  40 80 00 08 */	bge lbl_80169130
/* 8016912C  FE 40 08 90 */	fmr f18, f1
lbl_80169130:
/* 80169130  38 7F 09 70 */	addi r3, r31, 0x970
/* 80169134  48 01 9A F1 */	bl ThrowCushion__11dCamSetup_cFv
/* 80169138  FE 00 08 90 */	fmr f16, f1
/* 8016913C  FE E0 08 90 */	fmr f23, f1
/* 80169140  38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 80169144  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 80169148  48 01 9B 61 */	bl __as__7cSAngleFRC7cSAngle
/* 8016914C  38 00 00 01 */	li r0, 1
/* 80169150  98 1F 04 7C */	stb r0, 0x47c(r31)
/* 80169154  48 00 00 FC */	b lbl_80169250
lbl_80169158:
/* 80169158  7F A3 EB 78 */	mr r3, r29
/* 8016915C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80169160  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80169164  7D 89 03 A6 */	mtctr r12
/* 80169168  4E 80 04 21 */	bctrl 
/* 8016916C  3C 03 00 01 */	addis r0, r3, 1
/* 80169170  28 00 FF FF */	cmplwi r0, 0xffff
/* 80169174  40 82 00 10 */	bne lbl_80169184
/* 80169178  80 1F 09 48 */	lwz r0, 0x948(r31)
/* 8016917C  2C 00 00 00 */	cmpwi r0, 0
/* 80169180  41 82 00 80 */	beq lbl_80169200
lbl_80169184:
/* 80169184  7F E3 FB 78 */	mr r3, r31
/* 80169188  3C 80 00 10 */	lis r4, 0x10
/* 8016918C  48 01 97 F5 */	bl chkFlag__9dCamera_cFUl
/* 80169190  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80169194  41 82 00 6C */	beq lbl_80169200
/* 80169198  38 7F 09 70 */	addi r3, r31, 0x970
/* 8016919C  48 01 9A 99 */	bl ThrowCtrAdjust__11dCamSetup_cFv
/* 801691A0  FF 60 08 90 */	fmr f27, f1
/* 801691A4  80 1F 09 48 */	lwz r0, 0x948(r31)
/* 801691A8  2C 00 00 00 */	cmpwi r0, 0
/* 801691AC  41 82 00 48 */	beq lbl_801691F4
/* 801691B0  38 7F 09 70 */	addi r3, r31, 0x970
/* 801691B4  48 01 9A 69 */	bl ThrowTimer__11dCamSetup_cFv
/* 801691B8  C8 42 9C 98 */	lfd f2, lit_4448(r2)
/* 801691BC  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 801691C0  90 01 05 AC */	stw r0, 0x5ac(r1)
/* 801691C4  3C 60 43 30 */	lis r3, 0x4330
/* 801691C8  90 61 05 A8 */	stw r3, 0x5a8(r1)
/* 801691CC  C8 01 05 A8 */	lfd f0, 0x5a8(r1)
/* 801691D0  EC 20 10 28 */	fsubs f1, f0, f2
/* 801691D4  80 1F 09 48 */	lwz r0, 0x948(r31)
/* 801691D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801691DC  90 01 05 A4 */	stw r0, 0x5a4(r1)
/* 801691E0  90 61 05 A0 */	stw r3, 0x5a0(r1)
/* 801691E4  C8 01 05 A0 */	lfd f0, 0x5a0(r1)
/* 801691E8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801691EC  EC 00 08 24 */	fdivs f0, f0, f1
/* 801691F0  EF 7B 00 32 */	fmuls f27, f27, f0
lbl_801691F4:
/* 801691F4  EF 5A D8 2A */	fadds f26, f26, f27
/* 801691F8  EF 18 D8 2A */	fadds f24, f24, f27
/* 801691FC  48 00 00 54 */	b lbl_80169250
lbl_80169200:
/* 80169200  7F A3 EB 78 */	mr r3, r29
/* 80169204  4B F8 AA F5 */	bl checkCanoeRideTandem__9daAlink_cFv
/* 80169208  2C 03 00 00 */	cmpwi r3, 0
/* 8016920C  41 82 00 10 */	beq lbl_8016921C
/* 80169210  C0 02 9D 38 */	lfs f0, lit_9399(r2)
/* 80169214  EF 39 00 28 */	fsubs f25, f25, f0
/* 80169218  48 00 00 38 */	b lbl_80169250
lbl_8016921C:
/* 8016921C  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80169220  3C 80 00 10 */	lis r4, 0x10
/* 80169224  48 00 31 45 */	bl func_8016C368
/* 80169228  28 03 00 00 */	cmplwi r3, 0
/* 8016922C  41 82 00 24 */	beq lbl_80169250
/* 80169230  C0 3F 02 B0 */	lfs f1, 0x2b0(r31)
/* 80169234  C0 02 9D 78 */	lfs f0, lit_10553(r2)
/* 80169238  EC 21 00 24 */	fdivs f1, f1, f0
/* 8016923C  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80169240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80169244  40 81 00 08 */	ble lbl_8016924C
/* 80169248  FC 20 00 90 */	fmr f1, f0
lbl_8016924C:
/* 8016924C  EF 39 00 72 */	fmuls f25, f25, f1
lbl_80169250:
/* 80169250  88 1F 04 7C */	lbz r0, 0x47c(r31)
/* 80169254  28 00 00 00 */	cmplwi r0, 0
/* 80169258  41 82 00 30 */	beq lbl_80169288
/* 8016925C  7F E3 FB 78 */	mr r3, r31
/* 80169260  48 01 97 05 */	bl push_any_key__9dCamera_cFv
/* 80169264  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80169268  41 82 00 0C */	beq lbl_80169274
/* 8016926C  38 00 00 00 */	li r0, 0
/* 80169270  98 1F 04 7C */	stb r0, 0x47c(r31)
lbl_80169274:
/* 80169274  80 1F 09 48 */	lwz r0, 0x948(r31)
/* 80169278  2C 00 00 00 */	cmpwi r0, 0
/* 8016927C  40 82 01 E0 */	bne lbl_8016945C
/* 80169280  3A 60 00 01 */	li r19, 1
/* 80169284  48 00 01 D8 */	b lbl_8016945C
lbl_80169288:
/* 80169288  88 1F 04 7A */	lbz r0, 0x47a(r31)
/* 8016928C  28 00 00 00 */	cmplwi r0, 0
/* 80169290  41 82 01 CC */	beq lbl_8016945C
/* 80169294  A8 1F 04 02 */	lha r0, 0x402(r31)
/* 80169298  2C 00 00 0E */	cmpwi r0, 0xe
/* 8016929C  40 81 01 C0 */	ble lbl_8016945C
/* 801692A0  C0 22 9D 7C */	lfs f1, lit_10554(r2)
/* 801692A4  FC 15 08 40 */	fcmpo cr0, f21, f1
/* 801692A8  40 80 00 08 */	bge lbl_801692B0
/* 801692AC  FE A0 08 90 */	fmr f21, f1
lbl_801692B0:
/* 801692B0  C0 02 9C F0 */	lfs f0, lit_7609(r2)
/* 801692B4  EC 21 00 32 */	fmuls f1, f1, f0
/* 801692B8  FC 16 08 40 */	fcmpo cr0, f22, f1
/* 801692BC  40 80 01 A0 */	bge lbl_8016945C
/* 801692C0  FE C0 08 90 */	fmr f22, f1
/* 801692C4  48 00 01 98 */	b lbl_8016945C
lbl_801692C8:
/* 801692C8  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801692CC  48 00 30 81 */	bl func_8016C34C
/* 801692D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801692D4  41 82 00 08 */	beq lbl_801692DC
/* 801692D8  3A E0 00 01 */	li r23, 1
lbl_801692DC:
/* 801692DC  88 1F 01 94 */	lbz r0, 0x194(r31)
/* 801692E0  28 00 00 00 */	cmplwi r0, 0
/* 801692E4  41 82 00 10 */	beq lbl_801692F4
/* 801692E8  C0 02 9D 68 */	lfs f0, lit_9788(r2)
/* 801692EC  EF 5A 00 2A */	fadds f26, f26, f0
/* 801692F0  EF 18 00 2A */	fadds f24, f24, f0
lbl_801692F4:
/* 801692F4  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801692F8  3C 80 01 00 */	lis r4, 0x100
/* 801692FC  48 00 30 35 */	bl func_8016C330
/* 80169300  28 03 00 00 */	cmplwi r3, 0
/* 80169304  41 82 00 18 */	beq lbl_8016931C
/* 80169308  38 00 00 01 */	li r0, 1
/* 8016930C  98 1F 04 5B */	stb r0, 0x45b(r31)
/* 80169310  38 00 00 14 */	li r0, 0x14
/* 80169314  B0 1F 04 00 */	sth r0, 0x400(r31)
/* 80169318  48 00 00 30 */	b lbl_80169348
lbl_8016931C:
/* 8016931C  A8 1F 04 00 */	lha r0, 0x400(r31)
/* 80169320  2C 00 00 00 */	cmpwi r0, 0
/* 80169324  41 82 00 1C */	beq lbl_80169340
/* 80169328  38 00 00 01 */	li r0, 1
/* 8016932C  98 1F 04 5B */	stb r0, 0x45b(r31)
/* 80169330  A8 7F 04 00 */	lha r3, 0x400(r31)
/* 80169334  38 03 FF FF */	addi r0, r3, -1
/* 80169338  B0 1F 04 00 */	sth r0, 0x400(r31)
/* 8016933C  48 00 00 0C */	b lbl_80169348
lbl_80169340:
/* 80169340  38 00 00 00 */	li r0, 0
/* 80169344  98 1F 04 5B */	stb r0, 0x45b(r31)
lbl_80169348:
/* 80169348  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016934C  3C 80 00 80 */	lis r4, 0x80
/* 80169350  48 00 2F E1 */	bl func_8016C330
/* 80169354  28 03 00 00 */	cmplwi r3, 0
/* 80169358  40 82 00 10 */	bne lbl_80169368
/* 8016935C  88 1F 04 5B */	lbz r0, 0x45b(r31)
/* 80169360  28 00 00 00 */	cmplwi r0, 0
/* 80169364  41 82 00 B8 */	beq lbl_8016941C
lbl_80169368:
/* 80169368  7F E3 FB 78 */	mr r3, r31
/* 8016936C  3C 80 00 10 */	lis r4, 0x10
/* 80169370  48 01 96 11 */	bl chkFlag__9dCamera_cFUl
/* 80169374  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80169378  40 82 00 A4 */	bne lbl_8016941C
/* 8016937C  C3 22 9D 80 */	lfs f25, lit_10555(r2)
/* 80169380  FF 00 C8 90 */	fmr f24, f25
/* 80169384  FF 40 C8 90 */	fmr f26, f25
/* 80169388  3A E0 00 01 */	li r23, 1
/* 8016938C  7F A3 EB 78 */	mr r3, r29
/* 80169390  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80169394  81 8C 01 A8 */	lwz r12, 0x1a8(r12)
/* 80169398  7D 89 03 A6 */	mtctr r12
/* 8016939C  4E 80 04 21 */	bctrl 
/* 801693A0  C0 02 9D 4C */	lfs f0, lit_9404(r2)
/* 801693A4  EC 21 00 32 */	fmuls f1, f1, f0
/* 801693A8  FC 15 08 40 */	fcmpo cr0, f21, f1
/* 801693AC  40 80 00 08 */	bge lbl_801693B4
/* 801693B0  FE A0 08 90 */	fmr f21, f1
lbl_801693B4:
/* 801693B4  C0 02 9C F0 */	lfs f0, lit_7609(r2)
/* 801693B8  EC 21 00 32 */	fmuls f1, f1, f0
/* 801693BC  FC 16 08 40 */	fcmpo cr0, f22, f1
/* 801693C0  40 80 00 08 */	bge lbl_801693C8
/* 801693C4  FE C0 08 90 */	fmr f22, f1
lbl_801693C8:
/* 801693C8  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801693CC  3C 80 00 80 */	lis r4, 0x80
/* 801693D0  48 00 2F 61 */	bl func_8016C330
/* 801693D4  28 03 00 00 */	cmplwi r3, 0
/* 801693D8  41 82 00 20 */	beq lbl_801693F8
/* 801693DC  88 1F 04 5B */	lbz r0, 0x45b(r31)
/* 801693E0  28 00 00 00 */	cmplwi r0, 0
/* 801693E4  40 82 00 14 */	bne lbl_801693F8
/* 801693E8  C2 82 9C A8 */	lfs f20, lit_5658(r2)
/* 801693EC  C2 42 9D 34 */	lfs f18, lit_9398(r2)
/* 801693F0  FE 60 90 90 */	fmr f19, f18
/* 801693F4  48 00 00 18 */	b lbl_8016940C
lbl_801693F8:
/* 801693F8  C0 02 9D 24 */	lfs f0, lit_8530(r2)
/* 801693FC  EE A0 05 B2 */	fmuls f21, f0, f22
/* 80169400  C2 62 9D 18 */	lfs f19, lit_8127(r2)
/* 80169404  C2 42 9C A8 */	lfs f18, lit_5658(r2)
/* 80169408  FE 00 90 90 */	fmr f16, f18
lbl_8016940C:
/* 8016940C  C0 22 9D 84 */	lfs f1, lit_10556(r2)
/* 80169410  C0 1F 09 2C */	lfs f0, 0x92c(r31)
/* 80169414  EF E1 00 24 */	fdivs f31, f1, f0
/* 80169418  FD E0 F8 90 */	fmr f15, f31
lbl_8016941C:
/* 8016941C  88 1F 04 5B */	lbz r0, 0x45b(r31)
/* 80169420  28 00 00 00 */	cmplwi r0, 0
/* 80169424  41 82 00 14 */	beq lbl_80169438
/* 80169428  C3 C2 9D 2C */	lfs f30, lit_9396(r2)
/* 8016942C  FE 00 F0 90 */	fmr f16, f30
/* 80169430  FE 80 F0 90 */	fmr f20, f30
/* 80169434  D3 C1 05 B4 */	stfs f30, 0x5b4(r1)
lbl_80169438:
/* 80169438  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 8016943C  2C 00 00 01 */	cmpwi r0, 1
/* 80169440  40 82 00 1C */	bne lbl_8016945C
/* 80169444  C0 02 9C B4 */	lfs f0, lit_5661(r2)
/* 80169448  FC 15 00 40 */	fcmpo cr0, f21, f0
/* 8016944C  40 80 00 10 */	bge lbl_8016945C
/* 80169450  FC 16 00 40 */	fcmpo cr0, f22, f0
/* 80169454  40 81 00 08 */	ble lbl_8016945C
/* 80169458  FE A0 00 90 */	fmr f21, f0
lbl_8016945C:
/* 8016945C  48 01 95 41 */	bl dComIfGp_getAttention__Fv
/* 80169460  7C 74 1B 78 */	mr r20, r3
/* 80169464  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 80169468  2C 00 00 01 */	cmpwi r0, 1
/* 8016946C  40 82 00 28 */	bne lbl_80169494
/* 80169470  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80169474  7F C4 F3 78 */	mr r4, r30
/* 80169478  38 A0 00 20 */	li r5, 0x20
/* 8016947C  48 01 98 11 */	bl Flag__11dCamParam_cFlUs
/* 80169480  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80169484  40 82 00 10 */	bne lbl_80169494
/* 80169488  38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 8016948C  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 80169490  48 01 98 19 */	bl __as__7cSAngleFRC7cSAngle
lbl_80169494:
/* 80169494  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 80169498  2C 00 00 01 */	cmpwi r0, 1
/* 8016949C  40 82 00 08 */	bne lbl_801694A4
/* 801694A0  C2 02 9C EC */	lfs f16, lit_6766(r2)
lbl_801694A4:
/* 801694A4  3A A0 00 00 */	li r21, 0
/* 801694A8  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801694AC  3C 80 00 01 */	lis r4, 1
/* 801694B0  48 00 2E 81 */	bl func_8016C330
/* 801694B4  28 03 00 00 */	cmplwi r3, 0
/* 801694B8  41 82 00 68 */	beq lbl_80169520
/* 801694BC  48 01 93 BD */	bl daAlink_getAlinkActorClass__Fv
/* 801694C0  48 01 93 B1 */	bl getHsSubChainTopPos__9daAlink_cCFv
/* 801694C4  7C 64 1B 78 */	mr r4, r3
/* 801694C8  38 61 04 5C */	addi r3, r1, 0x45c
/* 801694CC  4B F2 E3 29 */	bl __ct__4cXyzFRC4cXyz
/* 801694D0  38 61 03 6C */	addi r3, r1, 0x36c
/* 801694D4  7F E4 FB 78 */	mr r4, r31
/* 801694D8  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 801694DC  4B F2 E2 41 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801694E0  C0 21 04 60 */	lfs f1, 0x460(r1)
/* 801694E4  C0 01 03 70 */	lfs f0, 0x370(r1)
/* 801694E8  EC 21 00 28 */	fsubs f1, f1, f0
/* 801694EC  C0 02 9D 38 */	lfs f0, lit_9399(r2)
/* 801694F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801694F4  7C 00 00 26 */	mfcr r0
/* 801694F8  54 10 17 FE */	rlwinm r16, r0, 2, 0x1f, 0x1f
/* 801694FC  38 61 03 6C */	addi r3, r1, 0x36c
/* 80169500  38 80 FF FF */	li r4, -1
/* 80169504  4B E9 FC 81 */	bl __dt__4cXyzFv
/* 80169508  28 10 00 00 */	cmplwi r16, 0
/* 8016950C  41 82 00 08 */	beq lbl_80169514
/* 80169510  3A A0 00 01 */	li r21, 1
lbl_80169514:
/* 80169514  38 61 04 5C */	addi r3, r1, 0x45c
/* 80169518  38 80 FF FF */	li r4, -1
/* 8016951C  4B E9 FC 69 */	bl __dt__4cXyzFv
lbl_80169520:
/* 80169520  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80169524  38 80 01 00 */	li r4, 0x100
/* 80169528  48 00 2E 41 */	bl func_8016C368
/* 8016952C  28 03 00 00 */	cmplwi r3, 0
/* 80169530  41 82 00 AC */	beq lbl_801695DC
/* 80169534  C0 02 9D 88 */	lfs f0, lit_10557(r2)
/* 80169538  EE D6 00 28 */	fsubs f22, f22, f0
/* 8016953C  EE B5 00 28 */	fsubs f21, f21, f0
/* 80169540  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80169544  2C 00 00 01 */	cmpwi r0, 1
/* 80169548  40 82 00 0C */	bne lbl_80169554
/* 8016954C  C3 22 9C A8 */	lfs f25, lit_5658(r2)
/* 80169550  48 00 00 08 */	b lbl_80169558
lbl_80169554:
/* 80169554  C3 22 9D 8C */	lfs f25, lit_10558(r2)
lbl_80169558:
/* 80169558  38 61 00 DC */	addi r3, r1, 0xdc
/* 8016955C  C0 22 9D 90 */	lfs f1, lit_10559(r2)
/* 80169560  48 10 7A AD */	bl Val__7cSAngleFf
/* 80169564  38 61 00 D8 */	addi r3, r1, 0xd8
/* 80169568  C0 22 9D 54 */	lfs f1, lit_9406(r2)
/* 8016956C  48 10 7A A1 */	bl Val__7cSAngleFf
/* 80169570  C3 42 9D 34 */	lfs f26, lit_9398(r2)
/* 80169574  C3 02 9D 18 */	lfs f24, lit_8127(r2)
/* 80169578  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8016957C  38 8D 8C 18 */	la r4, _270__7cSAngle(r13) /* 80451198-_SDA_BASE_ */
/* 80169580  48 01 95 0D */	bl __gt__7cSAngleCFRC7cSAngle
/* 80169584  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80169588  41 82 00 24 */	beq lbl_801695AC
/* 8016958C  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80169590  38 8D 8C 10 */	la r4, _90__7cSAngle(r13) /* 80451190-_SDA_BASE_ */
/* 80169594  48 01 94 D9 */	bl __lt__7cSAngleCFRC7cSAngle
/* 80169598  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016959C  41 82 00 10 */	beq lbl_801695AC
/* 801695A0  C2 62 9D 18 */	lfs f19, lit_8127(r2)
/* 801695A4  FE 40 98 90 */	fmr f18, f19
/* 801695A8  48 00 00 24 */	b lbl_801695CC
lbl_801695AC:
/* 801695AC  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 801695B0  FC 13 00 40 */	fcmpo cr0, f19, f0
/* 801695B4  40 80 00 08 */	bge lbl_801695BC
/* 801695B8  FE 60 00 90 */	fmr f19, f0
lbl_801695BC:
/* 801695BC  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 801695C0  FC 12 00 40 */	fcmpo cr0, f18, f0
/* 801695C4  40 80 00 08 */	bge lbl_801695CC
/* 801695C8  FE 40 00 90 */	fmr f18, f0
lbl_801695CC:
/* 801695CC  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 801695D0  D0 01 05 C0 */	stfs f0, 0x5c0(r1)
/* 801695D4  C2 02 9D 94 */	lfs f16, lit_10560(r2)
/* 801695D8  48 00 00 9C */	b lbl_80169674
lbl_801695DC:
/* 801695DC  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 801695E0  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000208@ha */
/* 801695E4  38 84 02 08 */	addi r4, r4, 0x0208 /* 0x02000208@l */
/* 801695E8  48 00 2D 81 */	bl func_8016C368
/* 801695EC  28 03 00 00 */	cmplwi r3, 0
/* 801695F0  41 82 00 68 */	beq lbl_80169658
/* 801695F4  C0 22 9D 88 */	lfs f1, lit_10557(r2)
/* 801695F8  EF 39 08 28 */	fsubs f25, f25, f1
/* 801695FC  C0 02 9C EC */	lfs f0, lit_6766(r2)
/* 80169600  D0 01 05 C0 */	stfs f0, 0x5c0(r1)
/* 80169604  EE D6 08 28 */	fsubs f22, f22, f1
/* 80169608  EE B5 08 28 */	fsubs f21, f21, f1
/* 8016960C  38 61 00 DC */	addi r3, r1, 0xdc
/* 80169610  C0 22 9D 98 */	lfs f1, lit_10561(r2)
/* 80169614  48 10 79 F9 */	bl Val__7cSAngleFf
/* 80169618  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8016961C  C0 22 9C B8 */	lfs f1, lit_5662(r2)
/* 80169620  48 10 79 ED */	bl Val__7cSAngleFf
/* 80169624  C0 02 9D 18 */	lfs f0, lit_8127(r2)
/* 80169628  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 8016962C  40 81 00 08 */	ble lbl_80169634
/* 80169630  FF 40 00 90 */	fmr f26, f0
lbl_80169634:
/* 80169634  C0 02 9D 18 */	lfs f0, lit_8127(r2)
/* 80169638  FC 18 00 40 */	fcmpo cr0, f24, f0
/* 8016963C  40 81 00 08 */	ble lbl_80169644
/* 80169640  FF 00 00 90 */	fmr f24, f0
lbl_80169644:
/* 80169644  38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 80169648  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 8016964C  48 01 96 5D */	bl __as__7cSAngleFRC7cSAngle
/* 80169650  C2 02 9D 94 */	lfs f16, lit_10560(r2)
/* 80169654  48 00 00 20 */	b lbl_80169674
lbl_80169658:
/* 80169658  56 A0 06 3F */	clrlwi. r0, r21, 0x18
/* 8016965C  41 82 00 18 */	beq lbl_80169674
/* 80169660  38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 80169664  38 8D 8C 08 */	la r4, _0__7cSAngle(r13) /* 80451188-_SDA_BASE_ */
/* 80169668  48 01 96 41 */	bl __as__7cSAngleFRC7cSAngle
/* 8016966C  38 00 00 00 */	li r0, 0
/* 80169670  98 1F 03 D0 */	stb r0, 0x3d0(r31)
lbl_80169674:
/* 80169674  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 80169678  2C 00 00 01 */	cmpwi r0, 1
/* 8016967C  41 82 00 18 */	beq lbl_80169694
/* 80169680  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80169684  3C 80 08 00 */	lis r4, 0x800
/* 80169688  48 00 2C E1 */	bl func_8016C368
/* 8016968C  28 03 00 00 */	cmplwi r3, 0
/* 80169690  41 82 00 24 */	beq lbl_801696B4
lbl_80169694:
/* 80169694  C0 02 9D 8C */	lfs f0, lit_10558(r2)
/* 80169698  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 8016969C  40 80 00 08 */	bge lbl_801696A4
/* 801696A0  FF 40 00 90 */	fmr f26, f0
lbl_801696A4:
/* 801696A4  C0 02 9D 8C */	lfs f0, lit_10558(r2)
/* 801696A8  FC 18 00 40 */	fcmpo cr0, f24, f0
/* 801696AC  40 80 00 08 */	bge lbl_801696B4
/* 801696B0  FF 00 00 90 */	fmr f24, f0
lbl_801696B4:
/* 801696B4  38 61 03 60 */	addi r3, r1, 0x360
/* 801696B8  7F E4 FB 78 */	mr r4, r31
/* 801696BC  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 801696C0  4B F2 E0 5D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801696C4  38 61 04 50 */	addi r3, r1, 0x450
/* 801696C8  38 81 03 60 */	addi r4, r1, 0x360
/* 801696CC  4B F2 E1 29 */	bl __ct__4cXyzFRC4cXyz
/* 801696D0  38 61 03 60 */	addi r3, r1, 0x360
/* 801696D4  38 80 FF FF */	li r4, -1
/* 801696D8  4B E9 FA AD */	bl __dt__4cXyzFv
/* 801696DC  7F E3 FB 78 */	mr r3, r31
/* 801696E0  38 81 04 50 */	addi r4, r1, 0x450
/* 801696E4  38 BF 00 70 */	addi r5, r31, 0x70
/* 801696E8  38 C0 40 B7 */	li r6, 0x40b7
/* 801696EC  4B FF C4 05 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 801696F0  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 801696F4  28 00 00 00 */	cmplwi r0, 0
/* 801696F8  40 82 00 10 */	bne lbl_80169708
/* 801696FC  C0 01 05 C8 */	lfs f0, 0x5c8(r1)
/* 80169700  D0 1F 04 20 */	stfs f0, 0x420(r31)
/* 80169704  48 00 00 C8 */	b lbl_801697CC
lbl_80169708:
/* 80169708  7F E3 FB 78 */	mr r3, r31
/* 8016970C  3C 80 00 10 */	lis r4, 0x10
/* 80169710  48 01 92 71 */	bl chkFlag__9dCamera_cFUl
/* 80169714  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80169718  41 82 00 98 */	beq lbl_801697B0
/* 8016971C  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80169720  3C 80 02 00 */	lis r4, 0x200
/* 80169724  48 00 2C 0D */	bl func_8016C330
/* 80169728  28 03 00 00 */	cmplwi r3, 0
/* 8016972C  40 82 00 84 */	bne lbl_801697B0
/* 80169730  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80169734  3C 80 00 0A */	lis r4, 0x000A /* 0x000A50C0@ha */
/* 80169738  38 84 50 C0 */	addi r4, r4, 0x50C0 /* 0x000A50C0@l */
/* 8016973C  48 00 2C 2D */	bl func_8016C368
/* 80169740  28 03 00 00 */	cmplwi r3, 0
/* 80169744  41 82 00 6C */	beq lbl_801697B0
/* 80169748  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 8016974C  C0 02 9D 9C */	lfs f0, lit_10562(r2)
/* 80169750  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80169754  40 80 00 0C */	bge lbl_80169760
/* 80169758  38 00 00 01 */	li r0, 1
/* 8016975C  98 1F 04 59 */	stb r0, 0x459(r31)
lbl_80169760:
/* 80169760  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 80169764  C0 02 9D 14 */	lfs f0, lit_8023(r2)
/* 80169768  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016976C  40 81 00 0C */	ble lbl_80169778
/* 80169770  38 00 00 00 */	li r0, 0
/* 80169774  98 1F 04 59 */	stb r0, 0x459(r31)
lbl_80169778:
/* 80169778  C0 7F 04 20 */	lfs f3, 0x420(r31)
/* 8016977C  C0 42 9D A0 */	lfs f2, lit_10563(r2)
/* 80169780  88 1F 04 59 */	lbz r0, 0x459(r31)
/* 80169784  28 00 00 00 */	cmplwi r0, 0
/* 80169788  41 82 00 0C */	beq lbl_80169794
/* 8016978C  C0 22 9D A4 */	lfs f1, lit_10564(r2)
/* 80169790  48 00 00 08 */	b lbl_80169798
lbl_80169794:
/* 80169794  C0 22 9D A8 */	lfs f1, lit_10565(r2)
lbl_80169798:
/* 80169798  C0 1F 04 20 */	lfs f0, 0x420(r31)
/* 8016979C  EC 01 00 28 */	fsubs f0, f1, f0
/* 801697A0  EC 02 00 32 */	fmuls f0, f2, f0
/* 801697A4  EC 03 00 2A */	fadds f0, f3, f0
/* 801697A8  D0 1F 04 20 */	stfs f0, 0x420(r31)
/* 801697AC  48 00 00 20 */	b lbl_801697CC
lbl_801697B0:
/* 801697B0  C0 5F 04 20 */	lfs f2, 0x420(r31)
/* 801697B4  C0 22 9D AC */	lfs f1, lit_10566(r2)
/* 801697B8  C0 01 05 C8 */	lfs f0, 0x5c8(r1)
/* 801697BC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801697C0  EC 01 00 32 */	fmuls f0, f1, f0
/* 801697C4  EC 02 00 2A */	fadds f0, f2, f0
/* 801697C8  D0 1F 04 20 */	stfs f0, 0x420(r31)
lbl_801697CC:
/* 801697CC  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 801697D0  2C 00 00 01 */	cmpwi r0, 1
/* 801697D4  41 82 00 10 */	beq lbl_801697E4
/* 801697D8  FC 16 A8 40 */	fcmpo cr0, f22, f21
/* 801697DC  4C 40 13 82 */	cror 2, 0, 2
/* 801697E0  40 82 00 10 */	bne lbl_801697F0
lbl_801697E4:
/* 801697E4  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 801697E8  D0 1F 04 8C */	stfs f0, 0x48c(r31)
/* 801697EC  48 00 00 78 */	b lbl_80169864
lbl_801697F0:
/* 801697F0  38 7F 0A EC */	addi r3, r31, 0xaec
/* 801697F4  7F C4 F3 78 */	mr r4, r30
/* 801697F8  38 A0 04 00 */	li r5, 0x400
/* 801697FC  48 01 94 91 */	bl Flag__11dCamParam_cFlUs
/* 80169800  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 80169804  40 82 00 60 */	bne lbl_80169864
/* 80169808  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016980C  48 01 92 59 */	bl R__7cSGlobeCFv
/* 80169810  FC 01 A8 40 */	fcmpo cr0, f1, f21
/* 80169814  40 80 00 0C */	bge lbl_80169820
/* 80169818  FC 20 A8 90 */	fmr f1, f21
/* 8016981C  48 00 00 10 */	b lbl_8016982C
lbl_80169820:
/* 80169820  FC 01 B0 40 */	fcmpo cr0, f1, f22
/* 80169824  40 81 00 08 */	ble lbl_8016982C
/* 80169828  FC 20 B0 90 */	fmr f1, f22
lbl_8016982C:
/* 8016982C  EC 36 08 28 */	fsubs f1, f22, f1
/* 80169830  EC 16 A8 28 */	fsubs f0, f22, f21
/* 80169834  EC 01 00 24 */	fdivs f0, f1, f0
/* 80169838  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8016983C  28 00 00 00 */	cmplwi r0, 0
/* 80169840  40 82 00 0C */	bne lbl_8016984C
/* 80169844  D0 1F 04 8C */	stfs f0, 0x48c(r31)
/* 80169848  48 00 00 1C */	b lbl_80169864
lbl_8016984C:
/* 8016984C  C0 5F 04 8C */	lfs f2, 0x48c(r31)
/* 80169850  C0 22 9D 24 */	lfs f1, lit_8530(r2)
/* 80169854  EC 00 10 28 */	fsubs f0, f0, f2
/* 80169858  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016985C  EC 02 00 2A */	fadds f0, f2, f0
/* 80169860  D0 1F 04 8C */	stfs f0, 0x48c(r31)
lbl_80169864:
/* 80169864  C0 3F 04 8C */	lfs f1, 0x48c(r31)
/* 80169868  EC 18 D0 28 */	fsubs f0, f24, f26
/* 8016986C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80169870  EC 1A 00 2A */	fadds f0, f26, f0
/* 80169874  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 80169878  28 00 00 00 */	cmplwi r0, 0
/* 8016987C  40 82 00 0C */	bne lbl_80169888
/* 80169880  D0 1F 04 24 */	stfs f0, 0x424(r31)
/* 80169884  48 00 00 1C */	b lbl_801698A0
lbl_80169888:
/* 80169888  C0 5F 04 24 */	lfs f2, 0x424(r31)
/* 8016988C  C0 22 9D 40 */	lfs f1, lit_9401(r2)
/* 80169890  EC 00 10 28 */	fsubs f0, f0, f2
/* 80169894  EC 01 00 32 */	fmuls f0, f1, f0
/* 80169898  EC 02 00 2A */	fadds f0, f2, f0
/* 8016989C  D0 1F 04 24 */	stfs f0, 0x424(r31)
lbl_801698A0:
/* 801698A0  38 61 04 44 */	addi r3, r1, 0x444
/* 801698A4  C0 3F 04 20 */	lfs f1, 0x420(r31)
/* 801698A8  C0 5F 04 24 */	lfs f2, 0x424(r31)
/* 801698AC  FC 60 C8 90 */	fmr f3, f25
/* 801698B0  4B FD 80 AD */	bl __ct__4cXyzFfff
/* 801698B4  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 801698B8  28 00 00 00 */	cmplwi r0, 0
/* 801698BC  40 82 09 00 */	bne lbl_8016A1BC
/* 801698C0  38 61 03 54 */	addi r3, r1, 0x354
/* 801698C4  38 9F 00 70 */	addi r4, r31, 0x70
/* 801698C8  38 BF 00 64 */	addi r5, r31, 0x64
/* 801698CC  48 0F D2 69 */	bl __mi__4cXyzCFRC3Vec
/* 801698D0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 801698D4  38 81 03 54 */	addi r4, r1, 0x354
/* 801698D8  48 10 81 99 */	bl Val__7cSGlobeFRC4cXyz
/* 801698DC  38 61 03 54 */	addi r3, r1, 0x354
/* 801698E0  38 80 FF FF */	li r4, -1
/* 801698E4  4B E9 F8 A1 */	bl __dt__4cXyzFv
/* 801698E8  3C 60 43 48 */	lis r3, 0x4348 /* 0x43484153@ha */
/* 801698EC  38 03 41 53 */	addi r0, r3, 0x4153 /* 0x43484153@l */
/* 801698F0  90 1F 03 E8 */	stw r0, 0x3e8(r31)
/* 801698F4  88 1F 03 D0 */	lbz r0, 0x3d0(r31)
/* 801698F8  28 00 00 00 */	cmplwi r0, 0
/* 801698FC  41 82 00 24 */	beq lbl_80169920
/* 80169900  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 80169904  38 80 02 00 */	li r4, 0x200
/* 80169908  48 00 2A 61 */	bl func_8016C368
/* 8016990C  28 03 00 00 */	cmplwi r3, 0
/* 80169910  40 82 00 10 */	bne lbl_80169920
/* 80169914  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80169918  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 8016991C  48 00 00 0C */	b lbl_80169928
lbl_80169920:
/* 80169920  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80169924  D0 1F 04 08 */	stfs f0, 0x408(r31)
lbl_80169928:
/* 80169928  38 00 00 1E */	li r0, 0x1e
/* 8016992C  90 1F 03 F8 */	stw r0, 0x3f8(r31)
/* 80169930  D2 BF 04 10 */	stfs f21, 0x410(r31)
/* 80169934  D2 DF 04 14 */	stfs f22, 0x414(r31)
/* 80169938  38 60 00 00 */	li r3, 0
/* 8016993C  B0 7F 04 00 */	sth r3, 0x400(r31)
/* 80169940  B0 7F 04 02 */	sth r3, 0x402(r31)
/* 80169944  90 7F 03 FC */	stw r3, 0x3fc(r31)
/* 80169948  C0 02 9C E0 */	lfs f0, lit_6180(r2)
/* 8016994C  D0 1F 04 3C */	stfs f0, 0x43c(r31)
/* 80169950  D0 1F 04 64 */	stfs f0, 0x464(r31)
/* 80169954  D0 1F 04 60 */	stfs f0, 0x460(r31)
/* 80169958  D0 1F 04 68 */	stfs f0, 0x468(r31)
/* 8016995C  D0 1F 04 5C */	stfs f0, 0x45c(r31)
/* 80169960  C0 01 05 C0 */	lfs f0, 0x5c0(r1)
/* 80169964  D0 1F 04 6C */	stfs f0, 0x46c(r31)
/* 80169968  D2 FF 04 70 */	stfs f23, 0x470(r31)
/* 8016996C  90 7F 04 2C */	stw r3, 0x42c(r31)
/* 80169970  38 00 00 01 */	li r0, 1
/* 80169974  98 1F 04 58 */	stb r0, 0x458(r31)
/* 80169978  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8016997C  D0 1F 04 1C */	stfs f0, 0x41c(r31)
/* 80169980  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80169984  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 80169988  98 7F 04 5A */	stb r3, 0x45a(r31)
/* 8016998C  98 7F 04 79 */	stb r3, 0x479(r31)
/* 80169990  98 7F 04 7A */	stb r3, 0x47a(r31)
/* 80169994  38 61 03 48 */	addi r3, r1, 0x348
/* 80169998  7F E4 FB 78 */	mr r4, r31
/* 8016999C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 801699A0  4B F2 DD BD */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 801699A4  C0 01 03 4C */	lfs f0, 0x34c(r1)
/* 801699A8  D0 1F 04 18 */	stfs f0, 0x418(r31)
/* 801699AC  38 61 03 48 */	addi r3, r1, 0x348
/* 801699B0  38 80 FF FF */	li r4, -1
/* 801699B4  4B E9 F7 D1 */	bl __dt__4cXyzFv
/* 801699B8  38 00 00 00 */	li r0, 0
/* 801699BC  98 1F 04 7D */	stb r0, 0x47d(r31)
/* 801699C0  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 801699C4  D0 1F 04 34 */	stfs f0, 0x434(r31)
/* 801699C8  90 1F 04 90 */	stw r0, 0x490(r31)
/* 801699CC  48 01 90 89 */	bl dComIfGp_evmng_cameraPlay__Fv
/* 801699D0  2C 03 00 00 */	cmpwi r3, 0
/* 801699D4  41 82 00 44 */	beq lbl_80169A18
/* 801699D8  7F E3 FB 78 */	mr r3, r31
/* 801699DC  38 81 00 E4 */	addi r4, r1, 0xe4
/* 801699E0  3C A0 80 39 */	lis r5, d_d_camera__stringBase0@ha /* 0x80393F68@ha */
/* 801699E4  38 A5 3F 68 */	addi r5, r5, d_d_camera__stringBase0@l /* 0x80393F68@l */
/* 801699E8  38 A5 01 A0 */	addi r5, r5, 0x1a0
/* 801699EC  38 C0 00 14 */	li r6, 0x14
/* 801699F0  4B F1 F6 9D */	bl getEvIntData__9dCamera_cFPiPci
/* 801699F4  80 61 00 E4 */	lwz r3, 0xe4(r1)
/* 801699F8  2C 03 00 00 */	cmpwi r3, 0
/* 801699FC  38 00 00 01 */	li r0, 1
/* 80169A00  41 82 00 08 */	beq lbl_80169A08
/* 80169A04  7C 60 1B 78 */	mr r0, r3
lbl_80169A08:
/* 80169A08  90 1F 03 EC */	stw r0, 0x3ec(r31)
/* 80169A0C  38 00 00 01 */	li r0, 1
/* 80169A10  98 1F 04 7D */	stb r0, 0x47d(r31)
/* 80169A14  48 00 04 14 */	b lbl_80169E28
lbl_80169A18:
/* 80169A18  38 61 03 3C */	addi r3, r1, 0x33c
/* 80169A1C  7F E4 FB 78 */	mr r4, r31
/* 80169A20  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80169A24  38 C1 04 44 */	addi r6, r1, 0x444
/* 80169A28  4B FF B3 45 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80169A2C  38 61 04 38 */	addi r3, r1, 0x438
/* 80169A30  38 81 03 3C */	addi r4, r1, 0x33c
/* 80169A34  4B F2 DD C1 */	bl __ct__4cXyzFRC4cXyz
/* 80169A38  38 61 03 3C */	addi r3, r1, 0x33c
/* 80169A3C  38 80 FF FF */	li r4, -1
/* 80169A40  4B E9 F7 45 */	bl __dt__4cXyzFv
/* 80169A44  38 7F 00 28 */	addi r3, r31, 0x28
/* 80169A48  48 10 81 35 */	bl Invert__7cSGlobeFv
/* 80169A4C  7C 64 1B 78 */	mr r4, r3
/* 80169A50  38 61 01 18 */	addi r3, r1, 0x118
/* 80169A54  48 10 7D 9D */	bl __ct__7cSGlobeFRC7cSGlobe
/* 80169A58  38 61 01 18 */	addi r3, r1, 0x118
/* 80169A5C  C0 22 9D B0 */	lfs f1, lit_10567(r2)
/* 80169A60  48 01 8F ED */	bl R__7cSGlobeFf
/* 80169A64  38 61 03 30 */	addi r3, r1, 0x330
/* 80169A68  38 81 01 18 */	addi r4, r1, 0x118
/* 80169A6C  48 10 80 49 */	bl Xyz__7cSGlobeCFv
/* 80169A70  38 61 03 24 */	addi r3, r1, 0x324
/* 80169A74  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80169A78  38 A1 03 30 */	addi r5, r1, 0x330
/* 80169A7C  48 0F D0 69 */	bl __pl__4cXyzCFRC3Vec
/* 80169A80  38 61 04 2C */	addi r3, r1, 0x42c
/* 80169A84  38 81 03 24 */	addi r4, r1, 0x324
/* 80169A88  4B F2 DD 6D */	bl __ct__4cXyzFRC4cXyz
/* 80169A8C  38 61 03 24 */	addi r3, r1, 0x324
/* 80169A90  38 80 FF FF */	li r4, -1
/* 80169A94  4B E9 F6 F1 */	bl __dt__4cXyzFv
/* 80169A98  38 61 03 30 */	addi r3, r1, 0x330
/* 80169A9C  38 80 FF FF */	li r4, -1
/* 80169AA0  4B E9 F6 E5 */	bl __dt__4cXyzFv
/* 80169AA4  38 61 04 9C */	addi r3, r1, 0x49c
/* 80169AA8  38 81 04 2C */	addi r4, r1, 0x42c
/* 80169AAC  38 BF 00 3C */	addi r5, r31, 0x3c
/* 80169AB0  48 10 57 F9 */	bl __ct__8cM3dGLinFRC4cXyzRC4cXyz
/* 80169AB4  38 61 04 9C */	addi r3, r1, 0x49c
/* 80169AB8  38 81 04 38 */	addi r4, r1, 0x438
/* 80169ABC  38 A1 04 2C */	addi r5, r1, 0x42c
/* 80169AC0  38 C1 00 E0 */	addi r6, r1, 0xe0
/* 80169AC4  48 0F EC 4D */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80169AC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80169ACC  41 82 00 78 */	beq lbl_80169B44
/* 80169AD0  A8 1F 01 36 */	lha r0, 0x136(r31)
/* 80169AD4  2C 00 00 00 */	cmpwi r0, 0
/* 80169AD8  41 81 00 38 */	bgt lbl_80169B10
/* 80169ADC  38 7F 00 30 */	addi r3, r31, 0x30
/* 80169AE0  38 81 04 2C */	addi r4, r1, 0x42c
/* 80169AE4  4B F2 DC F5 */	bl __as__4cXyzFRC4cXyz
/* 80169AE8  38 61 03 18 */	addi r3, r1, 0x318
/* 80169AEC  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80169AF0  38 BF 00 30 */	addi r5, r31, 0x30
/* 80169AF4  48 0F D0 41 */	bl __mi__4cXyzCFRC3Vec
/* 80169AF8  38 7F 00 28 */	addi r3, r31, 0x28
/* 80169AFC  38 81 03 18 */	addi r4, r1, 0x318
/* 80169B00  48 10 7F 71 */	bl Val__7cSGlobeFRC4cXyz
/* 80169B04  38 61 03 18 */	addi r3, r1, 0x318
/* 80169B08  38 80 FF FF */	li r4, -1
/* 80169B0C  4B E9 F6 79 */	bl __dt__4cXyzFv
lbl_80169B10:
/* 80169B10  38 7F 00 64 */	addi r3, r31, 0x64
/* 80169B14  38 81 04 2C */	addi r4, r1, 0x42c
/* 80169B18  4B F2 DC C1 */	bl __as__4cXyzFRC4cXyz
/* 80169B1C  38 61 03 0C */	addi r3, r1, 0x30c
/* 80169B20  38 9F 00 70 */	addi r4, r31, 0x70
/* 80169B24  38 BF 00 64 */	addi r5, r31, 0x64
/* 80169B28  48 0F D0 0D */	bl __mi__4cXyzCFRC3Vec
/* 80169B2C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80169B30  38 81 03 0C */	addi r4, r1, 0x30c
/* 80169B34  48 10 7F 3D */	bl Val__7cSGlobeFRC4cXyz
/* 80169B38  38 61 03 0C */	addi r3, r1, 0x30c
/* 80169B3C  38 80 FF FF */	li r4, -1
/* 80169B40  4B E9 F6 45 */	bl __dt__4cXyzFv
lbl_80169B44:
/* 80169B44  38 61 00 CC */	addi r3, r1, 0xcc
/* 80169B48  48 01 8F 01 */	bl __ct__7cSAngleFv
/* 80169B4C  7F E3 FB 78 */	mr r3, r31
/* 80169B50  3C 80 00 10 */	lis r4, 0x10
/* 80169B54  48 01 8E 2D */	bl chkFlag__9dCamera_cFUl
/* 80169B58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80169B5C  40 82 00 14 */	bne lbl_80169B70
/* 80169B60  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80169B64  40 82 00 0C */	bne lbl_80169B70
/* 80169B68  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80169B6C  41 82 00 4C */	beq lbl_80169BB8
lbl_80169B70:
/* 80169B70  C0 3F 01 D8 */	lfs f1, 0x1d8(r31)
/* 80169B74  48 01 8E C9 */	bl fabsf__3stdFf
/* 80169B78  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 80169B7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80169B80  40 80 00 38 */	bge lbl_80169BB8
/* 80169B84  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80169B88  7F E4 FB 78 */	mr r4, r31
/* 80169B8C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 80169B90  4B F2 DB A9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 80169B94  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80169B98  48 10 75 51 */	bl Inv__7cSAngleCFv
/* 80169B9C  7C 64 1B 78 */	mr r4, r3
/* 80169BA0  38 61 00 CC */	addi r3, r1, 0xcc
/* 80169BA4  48 10 74 61 */	bl Val__7cSAngleFs
/* 80169BA8  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80169BAC  38 80 FF FF */	li r4, -1
/* 80169BB0  4B EC 69 61 */	bl __dt__7cSAngleFv
/* 80169BB4  48 00 00 18 */	b lbl_80169BCC
lbl_80169BB8:
/* 80169BB8  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80169BBC  48 01 90 C9 */	bl U__7cSGlobeCFv
/* 80169BC0  7C 64 1B 78 */	mr r4, r3
/* 80169BC4  38 61 00 CC */	addi r3, r1, 0xcc
/* 80169BC8  48 10 74 31 */	bl Val__7cSAngleFRC7cSAngle
lbl_80169BCC:
/* 80169BCC  38 61 00 9C */	addi r3, r1, 0x9c
/* 80169BD0  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 80169BD4  EC 13 90 2A */	fadds f0, f19, f18
/* 80169BD8  EC 21 00 32 */	fmuls f1, f1, f0
/* 80169BDC  48 10 73 ED */	bl __ct__7cSAngleFf
/* 80169BE0  38 61 01 10 */	addi r3, r1, 0x110
/* 80169BE4  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 80169BE8  EC 15 B0 2A */	fadds f0, f21, f22
/* 80169BEC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80169BF0  38 81 00 9C */	addi r4, r1, 0x9c
/* 80169BF4  38 A1 00 CC */	addi r5, r1, 0xcc
/* 80169BF8  48 10 7C 59 */	bl __ct__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 80169BFC  38 61 00 9C */	addi r3, r1, 0x9c
/* 80169C00  38 80 FF FF */	li r4, -1
/* 80169C04  4B EC 69 0D */	bl __dt__7cSAngleFv
/* 80169C08  38 61 03 00 */	addi r3, r1, 0x300
/* 80169C0C  38 81 01 10 */	addi r4, r1, 0x110
/* 80169C10  48 10 7E A5 */	bl Xyz__7cSGlobeCFv
/* 80169C14  38 61 02 F4 */	addi r3, r1, 0x2f4
/* 80169C18  38 81 04 38 */	addi r4, r1, 0x438
/* 80169C1C  38 A1 03 00 */	addi r5, r1, 0x300
/* 80169C20  48 0F CE C5 */	bl __pl__4cXyzCFRC3Vec
/* 80169C24  38 61 04 20 */	addi r3, r1, 0x420
/* 80169C28  38 81 02 F4 */	addi r4, r1, 0x2f4
/* 80169C2C  4B F2 DB C9 */	bl __ct__4cXyzFRC4cXyz
/* 80169C30  38 61 02 F4 */	addi r3, r1, 0x2f4
/* 80169C34  38 80 FF FF */	li r4, -1
/* 80169C38  4B E9 F5 4D */	bl __dt__4cXyzFv
/* 80169C3C  38 61 03 00 */	addi r3, r1, 0x300
/* 80169C40  38 80 FF FF */	li r4, -1
/* 80169C44  4B E9 F5 41 */	bl __dt__4cXyzFv
/* 80169C48  38 61 02 E8 */	addi r3, r1, 0x2e8
/* 80169C4C  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80169C50  38 A1 04 20 */	addi r5, r1, 0x420
/* 80169C54  48 0F CE E1 */	bl __mi__4cXyzCFRC3Vec
/* 80169C58  38 61 02 DC */	addi r3, r1, 0x2dc
/* 80169C5C  38 81 02 E8 */	addi r4, r1, 0x2e8
/* 80169C60  4B F2 DB 95 */	bl __ct__4cXyzFRC4cXyz
/* 80169C64  38 61 02 DC */	addi r3, r1, 0x2dc
/* 80169C68  4B F2 4B 29 */	bl abs__4cXyzCFv
/* 80169C6C  C0 02 9D B4 */	lfs f0, lit_10568(r2)
/* 80169C70  ED C0 00 72 */	fmuls f14, f0, f1
/* 80169C74  38 61 02 DC */	addi r3, r1, 0x2dc
/* 80169C78  38 80 FF FF */	li r4, -1
/* 80169C7C  4B E9 F5 09 */	bl __dt__4cXyzFv
/* 80169C80  38 61 02 E8 */	addi r3, r1, 0x2e8
/* 80169C84  38 80 FF FF */	li r4, -1
/* 80169C88  4B E9 F4 FD */	bl __dt__4cXyzFv
/* 80169C8C  C0 3F 04 8C */	lfs f1, 0x48c(r31)
/* 80169C90  EC 1A C0 28 */	fsubs f0, f26, f24
/* 80169C94  EC 01 00 32 */	fmuls f0, f1, f0
/* 80169C98  EC 18 00 2A */	fadds f0, f24, f0
/* 80169C9C  D0 01 00 E0 */	stfs f0, 0xe0(r1)
/* 80169CA0  38 61 04 20 */	addi r3, r1, 0x420
/* 80169CA4  38 81 04 38 */	addi r4, r1, 0x438
/* 80169CA8  4B F2 DB 31 */	bl __as__4cXyzFRC4cXyz
/* 80169CAC  C0 21 04 3C */	lfs f1, 0x43c(r1)
/* 80169CB0  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 80169CB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80169CB8  D0 01 04 3C */	stfs f0, 0x43c(r1)
/* 80169CBC  38 61 02 D0 */	addi r3, r1, 0x2d0
/* 80169CC0  38 9F 00 30 */	addi r4, r31, 0x30
/* 80169CC4  38 A1 04 20 */	addi r5, r1, 0x420
/* 80169CC8  48 0F CE 6D */	bl __mi__4cXyzCFRC3Vec
/* 80169CCC  38 61 02 C4 */	addi r3, r1, 0x2c4
/* 80169CD0  38 81 02 D0 */	addi r4, r1, 0x2d0
/* 80169CD4  4B F2 DB 21 */	bl __ct__4cXyzFRC4cXyz
/* 80169CD8  38 61 02 C4 */	addi r3, r1, 0x2c4
/* 80169CDC  4B F2 4A B5 */	bl abs__4cXyzCFv
/* 80169CE0  C0 02 9D B8 */	lfs f0, lit_10569(r2)
/* 80169CE4  EE 20 00 72 */	fmuls f17, f0, f1
/* 80169CE8  38 61 02 C4 */	addi r3, r1, 0x2c4
/* 80169CEC  38 80 FF FF */	li r4, -1
/* 80169CF0  4B E9 F4 95 */	bl __dt__4cXyzFv
/* 80169CF4  38 61 02 D0 */	addi r3, r1, 0x2d0
/* 80169CF8  38 80 FF FF */	li r4, -1
/* 80169CFC  4B E9 F4 89 */	bl __dt__4cXyzFv
/* 80169D00  FC 0E 88 40 */	fcmpo cr0, f14, f17
/* 80169D04  40 81 00 0C */	ble lbl_80169D10
/* 80169D08  FC 20 70 90 */	fmr f1, f14
/* 80169D0C  48 00 00 08 */	b lbl_80169D14
lbl_80169D10:
/* 80169D10  FC 20 88 90 */	fmr f1, f17
lbl_80169D14:
/* 80169D14  48 01 8D 29 */	bl fabsf__3stdFf
/* 80169D18  FD C0 08 90 */	fmr f14, f1
/* 80169D1C  C0 3F 04 8C */	lfs f1, 0x48c(r31)
/* 80169D20  EC 0F F8 28 */	fsubs f0, f15, f31
/* 80169D24  EC 01 00 32 */	fmuls f0, f1, f0
/* 80169D28  EE 3F 00 2A */	fadds f17, f31, f0
/* 80169D2C  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80169D30  EC 20 88 28 */	fsubs f1, f0, f17
/* 80169D34  48 01 8D 09 */	bl fabsf__3stdFf
/* 80169D38  FF 00 08 90 */	fmr f24, f1
/* 80169D3C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80169D40  FC 01 88 40 */	fcmpo cr0, f1, f17
/* 80169D44  40 81 00 08 */	ble lbl_80169D4C
/* 80169D48  48 00 00 08 */	b lbl_80169D50
lbl_80169D4C:
/* 80169D4C  FC 20 88 90 */	fmr f1, f17
lbl_80169D50:
/* 80169D50  38 61 00 98 */	addi r3, r1, 0x98
/* 80169D54  48 10 72 75 */	bl __ct__7cSAngleFf
/* 80169D58  38 61 00 98 */	addi r3, r1, 0x98
/* 80169D5C  48 10 73 9D */	bl Sin__7cSAngleCFv
/* 80169D60  FE 20 08 90 */	fmr f17, f1
/* 80169D64  38 61 00 98 */	addi r3, r1, 0x98
/* 80169D68  38 80 FF FF */	li r4, -1
/* 80169D6C  4B EC 67 A5 */	bl __dt__7cSAngleFv
/* 80169D70  C0 22 9D 38 */	lfs f1, lit_9399(r2)
/* 80169D74  EC 11 04 72 */	fmuls f0, f17, f17
/* 80169D78  EC 01 00 32 */	fmuls f0, f1, f0
/* 80169D7C  EC 38 00 32 */	fmuls f1, f24, f0
/* 80169D80  FC 0E 08 40 */	fcmpo cr0, f14, f1
/* 80169D84  40 81 00 08 */	ble lbl_80169D8C
/* 80169D88  FC 20 70 90 */	fmr f1, f14
lbl_80169D8C:
/* 80169D8C  48 01 8C B1 */	bl fabsf__3stdFf
/* 80169D90  C0 02 9D BC */	lfs f0, lit_10570(r2)
/* 80169D94  EC 21 00 32 */	fmuls f1, f1, f0
/* 80169D98  C0 02 9D C0 */	lfs f0, lit_10571(r2)
/* 80169D9C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80169DA0  48 01 8C 85 */	bl JMAFastSqrt__Ff
/* 80169DA4  C0 02 9D C4 */	lfs f0, lit_10572(r2)
/* 80169DA8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80169DAC  FC 00 00 1E */	fctiwz f0, f0
/* 80169DB0  D8 01 05 A8 */	stfd f0, 0x5a8(r1)
/* 80169DB4  80 61 05 AC */	lwz r3, 0x5ac(r1)
/* 80169DB8  38 03 00 01 */	addi r0, r3, 1
/* 80169DBC  90 1F 03 EC */	stw r0, 0x3ec(r31)
/* 80169DC0  80 1F 03 EC */	lwz r0, 0x3ec(r31)
/* 80169DC4  2C 00 00 05 */	cmpwi r0, 5
/* 80169DC8  40 80 00 0C */	bge lbl_80169DD4
/* 80169DCC  38 00 00 05 */	li r0, 5
/* 80169DD0  90 1F 03 EC */	stw r0, 0x3ec(r31)
lbl_80169DD4:
/* 80169DD4  38 61 04 20 */	addi r3, r1, 0x420
/* 80169DD8  38 80 FF FF */	li r4, -1
/* 80169DDC  4B E9 F3 A9 */	bl __dt__4cXyzFv
/* 80169DE0  38 61 01 10 */	addi r3, r1, 0x110
/* 80169DE4  38 80 FF FF */	li r4, -1
/* 80169DE8  4B F0 78 95 */	bl __dt__7cSGlobeFv
/* 80169DEC  38 61 00 CC */	addi r3, r1, 0xcc
/* 80169DF0  38 80 FF FF */	li r4, -1
/* 80169DF4  4B EC 67 1D */	bl __dt__7cSAngleFv
/* 80169DF8  38 61 04 9C */	addi r3, r1, 0x49c
/* 80169DFC  38 80 FF FF */	li r4, -1
/* 80169E00  4B EC CC 5D */	bl __dt__8cM3dGLinFv
/* 80169E04  38 61 04 2C */	addi r3, r1, 0x42c
/* 80169E08  38 80 FF FF */	li r4, -1
/* 80169E0C  4B E9 F3 79 */	bl __dt__4cXyzFv
/* 80169E10  38 61 01 18 */	addi r3, r1, 0x118
/* 80169E14  38 80 FF FF */	li r4, -1
/* 80169E18  4B F0 78 65 */	bl __dt__7cSGlobeFv
/* 80169E1C  38 61 04 38 */	addi r3, r1, 0x438
/* 80169E20  38 80 FF FF */	li r4, -1
/* 80169E24  4B E9 F3 61 */	bl __dt__4cXyzFv
lbl_80169E28:
/* 80169E28  7F A3 EB 78 */	mr r3, r29
/* 80169E2C  48 01 8B E5 */	bl checkGoronSideMove__9daPy_py_cCFv
/* 80169E30  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80169E34  41 82 00 10 */	beq lbl_80169E44
/* 80169E38  38 00 00 14 */	li r0, 0x14
/* 80169E3C  90 1F 03 EC */	stw r0, 0x3ec(r31)
/* 80169E40  48 00 02 E0 */	b lbl_8016A120
lbl_80169E44:
/* 80169E44  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 80169E48  3C 60 80 43 */	lis r3, data_8042C8F8@ha /* 0x8042C8F8@ha */
/* 80169E4C  38 63 C8 F8 */	addi r3, r3, data_8042C8F8@l /* 0x8042C8F8@l */
/* 80169E50  80 03 00 94 */	lwz r0, 0x94(r3)
/* 80169E54  7C 04 00 00 */	cmpw r4, r0
/* 80169E58  40 82 00 10 */	bne lbl_80169E68
/* 80169E5C  38 00 00 2D */	li r0, 0x2d
/* 80169E60  90 1F 03 EC */	stw r0, 0x3ec(r31)
/* 80169E64  48 00 02 BC */	b lbl_8016A120
lbl_80169E68:
/* 80169E68  7F E3 FB 78 */	mr r3, r31
/* 80169E6C  38 80 00 20 */	li r4, 0x20
/* 80169E70  48 01 8B 11 */	bl chkFlag__9dCamera_cFUl
/* 80169E74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80169E78  41 82 00 3C */	beq lbl_80169EB4
/* 80169E7C  80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 80169E80  38 00 00 06 */	li r0, 6
/* 80169E84  7C 83 03 D6 */	divw r4, r3, r0
/* 80169E88  2C 04 00 0F */	cmpwi r4, 0xf
/* 80169E8C  40 81 00 0C */	ble lbl_80169E98
/* 80169E90  38 00 00 0F */	li r0, 0xf
/* 80169E94  48 00 00 14 */	b lbl_80169EA8
lbl_80169E98:
/* 80169E98  2C 04 00 05 */	cmpwi r4, 5
/* 80169E9C  38 00 00 05 */	li r0, 5
/* 80169EA0  41 80 00 08 */	blt lbl_80169EA8
/* 80169EA4  7C 80 23 78 */	mr r0, r4
lbl_80169EA8:
/* 80169EA8  7C 03 02 14 */	add r0, r3, r0
/* 80169EAC  90 1F 03 EC */	stw r0, 0x3ec(r31)
/* 80169EB0  48 00 02 70 */	b lbl_8016A120
lbl_80169EB4:
/* 80169EB4  7F A3 EB 78 */	mr r3, r29
/* 80169EB8  4B FD 76 15 */	bl checkMagneBootsOn__9daPy_py_cCFv
/* 80169EBC  28 03 00 00 */	cmplwi r3, 0
/* 80169EC0  41 82 01 28 */	beq lbl_80169FE8
/* 80169EC4  7F A3 EB 78 */	mr r3, r29
/* 80169EC8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80169ECC  81 8C 01 C4 */	lwz r12, 0x1c4(r12)
/* 80169ED0  7D 89 03 A6 */	mtctr r12
/* 80169ED4  4E 80 04 21 */	bctrl 
/* 80169ED8  7C 70 1B 78 */	mr r16, r3
/* 80169EDC  38 61 02 B8 */	addi r3, r1, 0x2b8
/* 80169EE0  38 9F 00 28 */	addi r4, r31, 0x28
/* 80169EE4  48 10 7B D1 */	bl Xyz__7cSGlobeCFv
/* 80169EE8  38 61 02 AC */	addi r3, r1, 0x2ac
/* 80169EEC  38 81 02 B8 */	addi r4, r1, 0x2b8
/* 80169EF0  48 0F CD F5 */	bl norm__4cXyzCFv
/* 80169EF4  38 61 04 14 */	addi r3, r1, 0x414
/* 80169EF8  38 81 02 AC */	addi r4, r1, 0x2ac
/* 80169EFC  4B F2 D8 F9 */	bl __ct__4cXyzFRC4cXyz
/* 80169F00  38 61 02 AC */	addi r3, r1, 0x2ac
/* 80169F04  38 80 FF FF */	li r4, -1
/* 80169F08  4B E9 F2 7D */	bl __dt__4cXyzFv
/* 80169F0C  38 61 02 B8 */	addi r3, r1, 0x2b8
/* 80169F10  38 80 FF FF */	li r4, -1
/* 80169F14  4B E9 F2 71 */	bl __dt__4cXyzFv
/* 80169F18  7E 03 83 78 */	mr r3, r16
/* 80169F1C  38 81 04 14 */	addi r4, r1, 0x414
/* 80169F20  48 1D D2 75 */	bl PSVECDotProduct
/* 80169F24  C0 02 9D C8 */	lfs f0, lit_10573(r2)
/* 80169F28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80169F2C  40 80 00 AC */	bge lbl_80169FD8
/* 80169F30  38 61 02 A0 */	addi r3, r1, 0x2a0
/* 80169F34  38 81 04 14 */	addi r4, r1, 0x414
/* 80169F38  7E 05 83 78 */	mr r5, r16
/* 80169F3C  48 0F CB A9 */	bl __pl__4cXyzCFRC3Vec
/* 80169F40  38 61 02 94 */	addi r3, r1, 0x294
/* 80169F44  38 81 02 A0 */	addi r4, r1, 0x2a0
/* 80169F48  C0 22 9C 90 */	lfs f1, lit_4445(r2)
/* 80169F4C  48 0F CC 39 */	bl __ml__4cXyzCFf
/* 80169F50  38 61 04 14 */	addi r3, r1, 0x414
/* 80169F54  38 81 02 94 */	addi r4, r1, 0x294
/* 80169F58  4B F2 D8 81 */	bl __as__4cXyzFRC4cXyz
/* 80169F5C  38 61 02 94 */	addi r3, r1, 0x294
/* 80169F60  38 80 FF FF */	li r4, -1
/* 80169F64  4B E9 F2 21 */	bl __dt__4cXyzFv
/* 80169F68  38 61 02 A0 */	addi r3, r1, 0x2a0
/* 80169F6C  38 80 FF FF */	li r4, -1
/* 80169F70  4B E9 F2 15 */	bl __dt__4cXyzFv
/* 80169F74  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80169F78  38 81 04 14 */	addi r4, r1, 0x414
/* 80169F7C  48 10 7A F5 */	bl Val__7cSGlobeFRC4cXyz
/* 80169F80  38 7F 00 5C */	addi r3, r31, 0x5c
/* 80169F84  FC 20 A8 90 */	fmr f1, f21
/* 80169F88  48 01 8A C5 */	bl R__7cSGlobeFf
/* 80169F8C  38 61 02 88 */	addi r3, r1, 0x288
/* 80169F90  38 9F 00 5C */	addi r4, r31, 0x5c
/* 80169F94  48 10 7B 21 */	bl Xyz__7cSGlobeCFv
/* 80169F98  38 61 02 7C */	addi r3, r1, 0x27c
/* 80169F9C  38 9F 00 64 */	addi r4, r31, 0x64
/* 80169FA0  38 A1 02 88 */	addi r5, r1, 0x288
/* 80169FA4  48 0F CB 41 */	bl __pl__4cXyzCFRC3Vec
/* 80169FA8  38 7F 00 70 */	addi r3, r31, 0x70
/* 80169FAC  38 81 02 7C */	addi r4, r1, 0x27c
/* 80169FB0  4B F2 D8 29 */	bl __as__4cXyzFRC4cXyz
/* 80169FB4  38 61 02 7C */	addi r3, r1, 0x27c
/* 80169FB8  38 80 FF FF */	li r4, -1
/* 80169FBC  4B E9 F1 C9 */	bl __dt__4cXyzFv
/* 80169FC0  38 61 02 88 */	addi r3, r1, 0x288
/* 80169FC4  38 80 FF FF */	li r4, -1
/* 80169FC8  4B E9 F1 BD */	bl __dt__4cXyzFv
/* 80169FCC  38 00 00 01 */	li r0, 1
/* 80169FD0  90 1F 03 EC */	stw r0, 0x3ec(r31)
/* 80169FD4  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_80169FD8:
/* 80169FD8  38 61 04 14 */	addi r3, r1, 0x414
/* 80169FDC  38 80 FF FF */	li r4, -1
/* 80169FE0  4B E9 F1 A5 */	bl __dt__4cXyzFv
/* 80169FE4  48 00 01 3C */	b lbl_8016A120
lbl_80169FE8:
/* 80169FE8  80 0D 8A A0 */	lwz r0, data_80451020(r13)
/* 80169FEC  2C 00 00 6A */	cmpwi r0, 0x6a
/* 80169FF0  40 82 00 C8 */	bne lbl_8016A0B8
/* 80169FF4  7F A3 EB 78 */	mr r3, r29
/* 80169FF8  48 01 88 45 */	bl checkCameraLargeDamage__9daAlink_cCFv
/* 80169FFC  2C 03 00 00 */	cmpwi r3, 0
/* 8016A000  41 82 00 B8 */	beq lbl_8016A0B8
/* 8016A004  38 61 02 70 */	addi r3, r1, 0x270
/* 8016A008  7F E4 FB 78 */	mr r4, r31
/* 8016A00C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8016A010  38 C1 04 44 */	addi r6, r1, 0x444
/* 8016A014  4B FF AD 59 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8016A018  38 7F 00 64 */	addi r3, r31, 0x64
/* 8016A01C  38 81 02 70 */	addi r4, r1, 0x270
/* 8016A020  4B F2 D7 B9 */	bl __as__4cXyzFRC4cXyz
/* 8016A024  38 61 02 70 */	addi r3, r1, 0x270
/* 8016A028  38 80 FF FF */	li r4, -1
/* 8016A02C  4B E9 F1 59 */	bl __dt__4cXyzFv
/* 8016A030  38 61 00 94 */	addi r3, r1, 0x94
/* 8016A034  FC 20 90 90 */	fmr f1, f18
/* 8016A038  48 10 6F 91 */	bl __ct__7cSAngleFf
/* 8016A03C  38 7F 00 28 */	addi r3, r31, 0x28
/* 8016A040  48 01 8C 45 */	bl U__7cSGlobeCFv
/* 8016A044  7C 65 1B 78 */	mr r5, r3
/* 8016A048  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A04C  FC 20 A8 90 */	fmr f1, f21
/* 8016A050  38 81 00 94 */	addi r4, r1, 0x94
/* 8016A054  48 10 79 B5 */	bl Val__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8016A058  38 61 00 94 */	addi r3, r1, 0x94
/* 8016A05C  38 80 FF FF */	li r4, -1
/* 8016A060  4B EC 64 B1 */	bl __dt__7cSAngleFv
/* 8016A064  38 61 02 64 */	addi r3, r1, 0x264
/* 8016A068  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8016A06C  48 10 7A 49 */	bl Xyz__7cSGlobeCFv
/* 8016A070  38 61 02 58 */	addi r3, r1, 0x258
/* 8016A074  38 9F 00 64 */	addi r4, r31, 0x64
/* 8016A078  38 A1 02 64 */	addi r5, r1, 0x264
/* 8016A07C  48 0F CA 69 */	bl __pl__4cXyzCFRC3Vec
/* 8016A080  38 7F 00 70 */	addi r3, r31, 0x70
/* 8016A084  38 81 02 58 */	addi r4, r1, 0x258
/* 8016A088  4B F2 D7 51 */	bl __as__4cXyzFRC4cXyz
/* 8016A08C  38 61 02 58 */	addi r3, r1, 0x258
/* 8016A090  38 80 FF FF */	li r4, -1
/* 8016A094  4B E9 F0 F1 */	bl __dt__4cXyzFv
/* 8016A098  38 61 02 64 */	addi r3, r1, 0x264
/* 8016A09C  38 80 FF FF */	li r4, -1
/* 8016A0A0  4B E9 F0 E5 */	bl __dt__4cXyzFv
/* 8016A0A4  D3 FF 00 80 */	stfs f31, 0x80(r31)
/* 8016A0A8  38 00 00 01 */	li r0, 1
/* 8016A0AC  98 1F 01 58 */	stb r0, 0x158(r31)
/* 8016A0B0  90 1F 03 EC */	stw r0, 0x3ec(r31)
/* 8016A0B4  48 00 00 6C */	b lbl_8016A120
lbl_8016A0B8:
/* 8016A0B8  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 8016A0BC  2C 00 00 00 */	cmpwi r0, 0
/* 8016A0C0  40 82 00 60 */	bne lbl_8016A120
/* 8016A0C4  88 1F 04 7D */	lbz r0, 0x47d(r31)
/* 8016A0C8  28 00 00 00 */	cmplwi r0, 0
/* 8016A0CC  40 82 00 54 */	bne lbl_8016A120
/* 8016A0D0  80 1F 03 EC */	lwz r0, 0x3ec(r31)
/* 8016A0D4  2C 00 00 0A */	cmpwi r0, 0xa
/* 8016A0D8  40 80 00 48 */	bge lbl_8016A120
/* 8016A0DC  7F E3 FB 78 */	mr r3, r31
/* 8016A0E0  3C 80 00 05 */	lis r4, 5
/* 8016A0E4  48 01 88 9D */	bl chkFlag__9dCamera_cFUl
/* 8016A0E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A0EC  40 82 00 34 */	bne lbl_8016A120
/* 8016A0F0  7F E3 FB 78 */	mr r3, r31
/* 8016A0F4  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 8016A0F8  38 84 80 00 */	addi r4, r4, 0x8000 /* 0x00008000@l */
/* 8016A0FC  48 01 88 85 */	bl chkFlag__9dCamera_cFUl
/* 8016A100  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A104  40 82 00 10 */	bne lbl_8016A114
/* 8016A108  88 1F 01 68 */	lbz r0, 0x168(r31)
/* 8016A10C  28 00 00 00 */	cmplwi r0, 0
/* 8016A110  40 82 00 10 */	bne lbl_8016A120
lbl_8016A114:
/* 8016A114  38 00 00 01 */	li r0, 1
/* 8016A118  98 1F 01 58 */	stb r0, 0x158(r31)
/* 8016A11C  90 1F 03 EC */	stw r0, 0x3ec(r31)
lbl_8016A120:
/* 8016A120  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A124  48 01 88 E5 */	bl V__7cSGlobeCFv
/* 8016A128  48 10 6F 09 */	bl Degree__7cSAngleCFv
/* 8016A12C  D0 3F 04 38 */	stfs f1, 0x438(r31)
/* 8016A130  38 7F 04 40 */	addi r3, r31, 0x440
/* 8016A134  38 9F 00 64 */	addi r4, r31, 0x64
/* 8016A138  4B F2 D6 A1 */	bl __as__4cXyzFRC4cXyz
/* 8016A13C  38 7F 04 4C */	addi r3, r31, 0x44c
/* 8016A140  38 9F 00 70 */	addi r4, r31, 0x70
/* 8016A144  4B F2 D6 95 */	bl __as__4cXyzFRC4cXyz
/* 8016A148  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 8016A14C  D0 1F 04 1C */	stfs f0, 0x41c(r31)
/* 8016A150  7F E3 FB 78 */	mr r3, r31
/* 8016A154  38 80 02 00 */	li r4, 0x200
/* 8016A158  48 01 88 29 */	bl chkFlag__9dCamera_cFUl
/* 8016A15C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A160  41 82 00 14 */	beq lbl_8016A174
/* 8016A164  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A168  48 01 88 FD */	bl R__7cSGlobeCFv
/* 8016A16C  D0 3F 04 14 */	stfs f1, 0x414(r31)
/* 8016A170  D0 3F 04 10 */	stfs f1, 0x410(r31)
lbl_8016A174:
/* 8016A174  80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 8016A178  38 03 00 01 */	addi r0, r3, 1
/* 8016A17C  7C 03 01 D6 */	mullw r0, r3, r0
/* 8016A180  7C 00 0E 70 */	srawi r0, r0, 1
/* 8016A184  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016A188  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016A18C  90 01 05 AC */	stw r0, 0x5ac(r1)
/* 8016A190  3C 00 43 30 */	lis r0, 0x4330
/* 8016A194  90 01 05 A8 */	stw r0, 0x5a8(r1)
/* 8016A198  C8 01 05 A8 */	lfd f0, 0x5a8(r1)
/* 8016A19C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8016A1A0  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8016A1A4  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016A1A8  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 8016A1AC  38 00 00 00 */	li r0, 0
/* 8016A1B0  B0 1F 04 04 */	sth r0, 0x404(r31)
/* 8016A1B4  90 1F 04 74 */	stw r0, 0x474(r31)
/* 8016A1B8  98 1F 04 78 */	stb r0, 0x478(r31)
lbl_8016A1BC:
/* 8016A1BC  38 61 02 4C */	addi r3, r1, 0x24c
/* 8016A1C0  7F E4 FB 78 */	mr r4, r31
/* 8016A1C4  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8016A1C8  38 C1 04 44 */	addi r6, r1, 0x444
/* 8016A1CC  4B FF AB A1 */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 8016A1D0  38 61 04 08 */	addi r3, r1, 0x408
/* 8016A1D4  38 81 02 4C */	addi r4, r1, 0x24c
/* 8016A1D8  4B F2 D6 1D */	bl __ct__4cXyzFRC4cXyz
/* 8016A1DC  38 61 02 4C */	addi r3, r1, 0x24c
/* 8016A1E0  38 80 FF FF */	li r4, -1
/* 8016A1E4  4B E9 EF A1 */	bl __dt__4cXyzFv
/* 8016A1E8  7F A3 EB 78 */	mr r3, r29
/* 8016A1EC  4B F7 71 A5 */	bl getCopyRodCameraActor__9daAlink_cFv
/* 8016A1F0  7C 70 1B 79 */	or. r16, r3, r3
/* 8016A1F4  41 82 00 64 */	beq lbl_8016A258
/* 8016A1F8  38 61 02 40 */	addi r3, r1, 0x240
/* 8016A1FC  7F E4 FB 78 */	mr r4, r31
/* 8016A200  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8016A204  4B F2 D5 19 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016A208  38 61 03 FC */	addi r3, r1, 0x3fc
/* 8016A20C  38 81 02 40 */	addi r4, r1, 0x240
/* 8016A210  4B F2 D5 E5 */	bl __ct__4cXyzFRC4cXyz
/* 8016A214  38 61 02 40 */	addi r3, r1, 0x240
/* 8016A218  38 80 FF FF */	li r4, -1
/* 8016A21C  4B E9 EF 69 */	bl __dt__4cXyzFv
/* 8016A220  7F E3 FB 78 */	mr r3, r31
/* 8016A224  38 81 03 FC */	addi r4, r1, 0x3fc
/* 8016A228  38 BF 00 70 */	addi r5, r31, 0x70
/* 8016A22C  38 C0 40 B7 */	li r6, 0x40b7
/* 8016A230  4B FF B8 C1 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzUl
/* 8016A234  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A238  40 82 00 14 */	bne lbl_8016A24C
/* 8016A23C  92 1F 01 88 */	stw r16, 0x188(r31)
/* 8016A240  7F E3 FB 78 */	mr r3, r31
/* 8016A244  38 80 20 00 */	li r4, 0x2000
/* 8016A248  4B F2 D5 31 */	bl setFlag__9dCamera_cFUl
lbl_8016A24C:
/* 8016A24C  38 61 03 FC */	addi r3, r1, 0x3fc
/* 8016A250  38 80 FF FF */	li r4, -1
/* 8016A254  4B E9 EF 31 */	bl __dt__4cXyzFv
lbl_8016A258:
/* 8016A258  7F A3 EB 78 */	mr r3, r29
/* 8016A25C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8016A260  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8016A264  7D 89 03 A6 */	mtctr r12
/* 8016A268  4E 80 04 21 */	bctrl 
/* 8016A26C  28 03 00 00 */	cmplwi r3, 0
/* 8016A270  41 82 00 14 */	beq lbl_8016A284
/* 8016A274  C0 21 04 0C */	lfs f1, 0x40c(r1)
/* 8016A278  C0 02 9D 38 */	lfs f0, lit_9399(r2)
/* 8016A27C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016A280  D0 01 04 0C */	stfs f0, 0x40c(r1)
lbl_8016A284:
/* 8016A284  7F E3 FB 78 */	mr r3, r31
/* 8016A288  38 81 04 08 */	addi r4, r1, 0x408
/* 8016A28C  C0 22 9D 50 */	lfs f1, lit_9405(r2)
/* 8016A290  4B FF DA 49 */	bl jutOutCheck__9dCamera_cFP4cXyzf
/* 8016A294  38 61 03 F0 */	addi r3, r1, 0x3f0
/* 8016A298  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 8016A29C  FC 40 08 90 */	fmr f2, f1
/* 8016A2A0  C0 62 9C E4 */	lfs f3, lit_6629(r2)
/* 8016A2A4  C0 1F 02 AC */	lfs f0, 0x2ac(r31)
/* 8016A2A8  EC 63 00 32 */	fmuls f3, f3, f0
/* 8016A2AC  4B FD 76 B1 */	bl __ct__4cXyzFfff
/* 8016A2B0  38 61 02 34 */	addi r3, r1, 0x234
/* 8016A2B4  7F E4 FB 78 */	mr r4, r31
/* 8016A2B8  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8016A2BC  4B F2 D4 61 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016A2C0  38 61 00 90 */	addi r3, r1, 0x90
/* 8016A2C4  38 81 00 D4 */	addi r4, r1, 0xd4
/* 8016A2C8  48 10 6C A1 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016A2CC  38 61 02 28 */	addi r3, r1, 0x228
/* 8016A2D0  38 81 03 F0 */	addi r4, r1, 0x3f0
/* 8016A2D4  38 A1 00 90 */	addi r5, r1, 0x90
/* 8016A2D8  4B F1 E0 AD */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8016A2DC  38 61 02 1C */	addi r3, r1, 0x21c
/* 8016A2E0  38 81 02 34 */	addi r4, r1, 0x234
/* 8016A2E4  38 A1 02 28 */	addi r5, r1, 0x228
/* 8016A2E8  48 0F C7 FD */	bl __pl__4cXyzCFRC3Vec
/* 8016A2EC  38 61 03 E4 */	addi r3, r1, 0x3e4
/* 8016A2F0  38 81 02 1C */	addi r4, r1, 0x21c
/* 8016A2F4  4B F2 D5 01 */	bl __ct__4cXyzFRC4cXyz
/* 8016A2F8  38 61 02 1C */	addi r3, r1, 0x21c
/* 8016A2FC  38 80 FF FF */	li r4, -1
/* 8016A300  4B E9 EE 85 */	bl __dt__4cXyzFv
/* 8016A304  38 61 02 28 */	addi r3, r1, 0x228
/* 8016A308  38 80 FF FF */	li r4, -1
/* 8016A30C  4B E9 EE 79 */	bl __dt__4cXyzFv
/* 8016A310  38 61 00 90 */	addi r3, r1, 0x90
/* 8016A314  38 80 FF FF */	li r4, -1
/* 8016A318  4B EC 61 F9 */	bl __dt__7cSAngleFv
/* 8016A31C  38 61 02 34 */	addi r3, r1, 0x234
/* 8016A320  38 80 FF FF */	li r4, -1
/* 8016A324  4B E9 EE 61 */	bl __dt__4cXyzFv
/* 8016A328  38 61 05 28 */	addi r3, r1, 0x528
/* 8016A32C  4B F0 DA 79 */	bl __ct__14dBgS_CamLinChkFv
/* 8016A330  7F E3 FB 78 */	mr r3, r31
/* 8016A334  38 9F 00 70 */	addi r4, r31, 0x70
/* 8016A338  38 A1 03 E4 */	addi r5, r1, 0x3e4
/* 8016A33C  38 C1 05 28 */	addi r6, r1, 0x528
/* 8016A340  38 E0 40 B7 */	li r7, 0x40b7
/* 8016A344  4B FF B5 7D */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 8016A348  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A34C  41 82 00 58 */	beq lbl_8016A3A4
/* 8016A350  38 61 04 88 */	addi r3, r1, 0x488
/* 8016A354  4B FD 6E 9D */	bl __ct__8cM3dGPlaFv
/* 8016A358  48 01 86 A1 */	bl dComIfG_Bgsp__Fv
/* 8016A35C  38 81 05 3C */	addi r4, r1, 0x53c
/* 8016A360  38 A1 04 88 */	addi r5, r1, 0x488
/* 8016A364  4B F0 A3 E1 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8016A368  38 61 05 28 */	addi r3, r1, 0x528
/* 8016A36C  48 01 86 85 */	bl GetCross__11cBgS_LinChkFv
/* 8016A370  7C 64 1B 78 */	mr r4, r3
/* 8016A374  38 61 03 E4 */	addi r3, r1, 0x3e4
/* 8016A378  4B F2 D4 61 */	bl __as__4cXyzFRC4cXyz
/* 8016A37C  38 61 04 88 */	addi r3, r1, 0x488
/* 8016A380  48 01 86 6D */	bl GetNP__8cM3dGPlaFv
/* 8016A384  7C 64 1B 78 */	mr r4, r3
/* 8016A388  38 61 03 E4 */	addi r3, r1, 0x3e4
/* 8016A38C  4B F2 45 79 */	bl __apl__4cXyzFRC3Vec
/* 8016A390  C0 02 9D 58 */	lfs f0, lit_9407(r2)
/* 8016A394  EF DE 00 32 */	fmuls f30, f30, f0
/* 8016A398  38 61 04 88 */	addi r3, r1, 0x488
/* 8016A39C  38 80 FF FF */	li r4, -1
/* 8016A3A0  4B EB 37 F1 */	bl __dt__8cM3dGPlaFv
lbl_8016A3A4:
/* 8016A3A4  88 1F 01 58 */	lbz r0, 0x158(r31)
/* 8016A3A8  28 00 00 00 */	cmplwi r0, 0
/* 8016A3AC  40 82 05 3C */	bne lbl_8016A8E8
/* 8016A3B0  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8016A3B4  48 10 6D 35 */	bl Inv__7cSAngleCFv
/* 8016A3B8  7C 64 1B 78 */	mr r4, r3
/* 8016A3BC  38 61 00 8C */	addi r3, r1, 0x8c
/* 8016A3C0  48 10 6B D9 */	bl __ct__7cSAngleFs
/* 8016A3C4  38 7F 04 7E */	addi r3, r31, 0x47e
/* 8016A3C8  38 81 00 8C */	addi r4, r1, 0x8c
/* 8016A3CC  48 01 88 DD */	bl __as__7cSAngleFRC7cSAngle
/* 8016A3D0  38 61 00 8C */	addi r3, r1, 0x8c
/* 8016A3D4  38 80 FF FF */	li r4, -1
/* 8016A3D8  4B EC 61 39 */	bl __dt__7cSAngleFv
/* 8016A3DC  88 1F 03 8D */	lbz r0, 0x38d(r31)
/* 8016A3E0  28 00 00 00 */	cmplwi r0, 0
/* 8016A3E4  41 82 00 20 */	beq lbl_8016A404
/* 8016A3E8  48 01 86 11 */	bl dComIfG_Bgsp__Fv
/* 8016A3EC  38 9F 03 40 */	addi r4, r31, 0x340
/* 8016A3F0  38 A0 00 01 */	li r5, 1
/* 8016A3F4  38 DF 04 40 */	addi r6, r31, 0x440
/* 8016A3F8  38 E0 00 00 */	li r7, 0
/* 8016A3FC  39 00 00 00 */	li r8, 0
/* 8016A400  4B F0 B5 5D */	bl MoveBgMatrixCrrPos__4dBgSFRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz
lbl_8016A404:
/* 8016A404  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 8016A408  80 1F 03 EC */	lwz r0, 0x3ec(r31)
/* 8016A40C  7C 03 00 50 */	subf r0, r3, r0
/* 8016A410  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016A414  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016A418  90 01 05 AC */	stw r0, 0x5ac(r1)
/* 8016A41C  3C 00 43 30 */	lis r0, 0x4330
/* 8016A420  90 01 05 A8 */	stw r0, 0x5a8(r1)
/* 8016A424  C8 01 05 A8 */	lfd f0, 0x5a8(r1)
/* 8016A428  EC 00 08 28 */	fsubs f0, f0, f1
/* 8016A42C  D0 1F 03 F4 */	stfs f0, 0x3f4(r31)
/* 8016A430  C0 3F 03 F4 */	lfs f1, 0x3f4(r31)
/* 8016A434  C0 1F 03 F0 */	lfs f0, 0x3f0(r31)
/* 8016A438  ED C1 00 24 */	fdivs f14, f1, f0
/* 8016A43C  38 7F 04 40 */	addi r3, r31, 0x440
/* 8016A440  38 81 04 08 */	addi r4, r1, 0x408
/* 8016A444  4B F2 D3 95 */	bl __as__4cXyzFRC4cXyz
/* 8016A448  88 1F 04 7D */	lbz r0, 0x47d(r31)
/* 8016A44C  28 00 00 00 */	cmplwi r0, 0
/* 8016A450  41 82 00 3C */	beq lbl_8016A48C
/* 8016A454  C1 C2 9D 24 */	lfs f14, lit_8530(r2)
/* 8016A458  7F E3 FB 78 */	mr r3, r31
/* 8016A45C  48 01 85 09 */	bl push_any_key__9dCamera_cFv
/* 8016A460  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A464  41 82 00 28 */	beq lbl_8016A48C
/* 8016A468  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 8016A46C  C0 02 9D 0C */	lfs f0, lit_8021(r2)
/* 8016A470  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016A474  40 80 00 18 */	bge lbl_8016A48C
/* 8016A478  80 1F 01 74 */	lwz r0, 0x174(r31)
/* 8016A47C  28 00 00 14 */	cmplwi r0, 0x14
/* 8016A480  40 81 00 0C */	ble lbl_8016A48C
/* 8016A484  38 00 00 01 */	li r0, 1
/* 8016A488  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_8016A48C:
/* 8016A48C  38 61 02 10 */	addi r3, r1, 0x210
/* 8016A490  38 81 04 08 */	addi r4, r1, 0x408
/* 8016A494  38 BF 00 64 */	addi r5, r31, 0x64
/* 8016A498  48 0F C6 9D */	bl __mi__4cXyzCFRC3Vec
/* 8016A49C  38 61 02 04 */	addi r3, r1, 0x204
/* 8016A4A0  38 81 02 10 */	addi r4, r1, 0x210
/* 8016A4A4  FC 20 70 90 */	fmr f1, f14
/* 8016A4A8  48 0F C6 DD */	bl __ml__4cXyzCFf
/* 8016A4AC  38 7F 00 64 */	addi r3, r31, 0x64
/* 8016A4B0  38 81 02 04 */	addi r4, r1, 0x204
/* 8016A4B4  4B F2 44 51 */	bl __apl__4cXyzFRC3Vec
/* 8016A4B8  38 61 02 04 */	addi r3, r1, 0x204
/* 8016A4BC  38 80 FF FF */	li r4, -1
/* 8016A4C0  4B E9 EC C5 */	bl __dt__4cXyzFv
/* 8016A4C4  38 61 02 10 */	addi r3, r1, 0x210
/* 8016A4C8  38 80 FF FF */	li r4, -1
/* 8016A4CC  4B E9 EC B9 */	bl __dt__4cXyzFv
/* 8016A4D0  38 61 04 08 */	addi r3, r1, 0x408
/* 8016A4D4  38 9F 04 40 */	addi r4, r31, 0x440
/* 8016A4D8  4B F1 DF 15 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 8016A4DC  FE 00 08 90 */	fmr f16, f1
/* 8016A4E0  C0 21 04 44 */	lfs f1, 0x444(r1)
/* 8016A4E4  C0 01 04 4C */	lfs f0, 0x44c(r1)
/* 8016A4E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016A4EC  40 81 00 08 */	ble lbl_8016A4F4
/* 8016A4F0  48 00 00 08 */	b lbl_8016A4F8
lbl_8016A4F4:
/* 8016A4F4  FC 20 00 90 */	fmr f1, f0
lbl_8016A4F8:
/* 8016A4F8  48 01 85 45 */	bl fabsf__3stdFf
/* 8016A4FC  C0 02 9D 68 */	lfs f0, lit_9788(r2)
/* 8016A500  EC 00 08 2A */	fadds f0, f0, f1
/* 8016A504  FC 10 00 40 */	fcmpo cr0, f16, f0
/* 8016A508  40 80 00 C8 */	bge lbl_8016A5D0
/* 8016A50C  38 61 01 F8 */	addi r3, r1, 0x1f8
/* 8016A510  7F E4 FB 78 */	mr r4, r31
/* 8016A514  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8016A518  4B F2 D2 05 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016A51C  38 61 03 D8 */	addi r3, r1, 0x3d8
/* 8016A520  38 81 01 F8 */	addi r4, r1, 0x1f8
/* 8016A524  4B F2 D2 D1 */	bl __ct__4cXyzFRC4cXyz
/* 8016A528  38 61 01 F8 */	addi r3, r1, 0x1f8
/* 8016A52C  38 80 FF FF */	li r4, -1
/* 8016A530  4B E9 EC 55 */	bl __dt__4cXyzFv
/* 8016A534  C0 21 03 DC */	lfs f1, 0x3dc(r1)
/* 8016A538  C0 02 9D CC */	lfs f0, lit_10574(r2)
/* 8016A53C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016A540  D0 01 03 DC */	stfs f0, 0x3dc(r1)
/* 8016A544  38 61 04 B8 */	addi r3, r1, 0x4b8
/* 8016A548  4B F0 D8 5D */	bl __ct__14dBgS_CamLinChkFv
/* 8016A54C  7F E3 FB 78 */	mr r3, r31
/* 8016A550  38 81 03 D8 */	addi r4, r1, 0x3d8
/* 8016A554  38 BF 00 64 */	addi r5, r31, 0x64
/* 8016A558  38 C1 04 B8 */	addi r6, r1, 0x4b8
/* 8016A55C  38 E0 40 B7 */	li r7, 0x40b7
/* 8016A560  4B FF B3 61 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 8016A564  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A568  41 82 00 50 */	beq lbl_8016A5B8
/* 8016A56C  38 61 04 74 */	addi r3, r1, 0x474
/* 8016A570  4B FD 6C 81 */	bl __ct__8cM3dGPlaFv
/* 8016A574  48 01 84 85 */	bl dComIfG_Bgsp__Fv
/* 8016A578  38 81 04 CC */	addi r4, r1, 0x4cc
/* 8016A57C  38 A1 04 74 */	addi r5, r1, 0x474
/* 8016A580  4B F0 A1 C5 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 8016A584  38 61 04 B8 */	addi r3, r1, 0x4b8
/* 8016A588  48 01 84 69 */	bl GetCross__11cBgS_LinChkFv
/* 8016A58C  7C 64 1B 78 */	mr r4, r3
/* 8016A590  38 7F 00 64 */	addi r3, r31, 0x64
/* 8016A594  4B F2 D2 45 */	bl __as__4cXyzFRC4cXyz
/* 8016A598  38 61 04 74 */	addi r3, r1, 0x474
/* 8016A59C  48 01 84 51 */	bl GetNP__8cM3dGPlaFv
/* 8016A5A0  7C 64 1B 78 */	mr r4, r3
/* 8016A5A4  38 7F 00 64 */	addi r3, r31, 0x64
/* 8016A5A8  4B F2 43 5D */	bl __apl__4cXyzFRC3Vec
/* 8016A5AC  38 61 04 74 */	addi r3, r1, 0x474
/* 8016A5B0  38 80 FF FF */	li r4, -1
/* 8016A5B4  4B EB 35 DD */	bl __dt__8cM3dGPlaFv
lbl_8016A5B8:
/* 8016A5B8  38 61 04 B8 */	addi r3, r1, 0x4b8
/* 8016A5BC  38 80 FF FF */	li r4, -1
/* 8016A5C0  4B F0 D8 41 */	bl __dt__14dBgS_CamLinChkFv
/* 8016A5C4  38 61 03 D8 */	addi r3, r1, 0x3d8
/* 8016A5C8  38 80 FF FF */	li r4, -1
/* 8016A5CC  4B E9 EB B9 */	bl __dt__4cXyzFv
lbl_8016A5D0:
/* 8016A5D0  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A5D4  48 01 84 91 */	bl R__7cSGlobeCFv
/* 8016A5D8  FC 40 A8 90 */	fmr f2, f21
/* 8016A5DC  FC 60 B0 90 */	fmr f3, f22
/* 8016A5E0  4B FF 54 4D */	bl func_8015FA2C
/* 8016A5E4  FE 00 08 90 */	fmr f16, f1
/* 8016A5E8  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8016A5EC  C0 3F 04 8C */	lfs f1, 0x48c(r31)
/* 8016A5F0  EC 12 98 28 */	fsubs f0, f18, f19
/* 8016A5F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016A5F8  EC 33 00 2A */	fadds f1, f19, f0
/* 8016A5FC  48 10 69 CD */	bl __ct__7cSAngleFf
/* 8016A600  88 1F 04 7D */	lbz r0, 0x47d(r31)
/* 8016A604  28 00 00 00 */	cmplwi r0, 0
/* 8016A608  40 82 00 10 */	bne lbl_8016A618
/* 8016A60C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8016A610  38 9F 01 B0 */	addi r4, r31, 0x1b0
/* 8016A614  48 10 6B C1 */	bl __apl__7cSAngleFRC7cSAngle
lbl_8016A618:
/* 8016A618  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8016A61C  48 10 6A 15 */	bl Degree__7cSAngleCFv
/* 8016A620  D0 3F 04 38 */	stfs f1, 0x438(r31)
/* 8016A624  38 7F 00 8C */	addi r3, r31, 0x8c
/* 8016A628  48 10 6A C1 */	bl Inv__7cSAngleCFv
/* 8016A62C  7C 64 1B 78 */	mr r4, r3
/* 8016A630  38 61 00 88 */	addi r3, r1, 0x88
/* 8016A634  48 10 69 65 */	bl __ct__7cSAngleFs
/* 8016A638  38 61 01 08 */	addi r3, r1, 0x108
/* 8016A63C  FC 20 80 90 */	fmr f1, f16
/* 8016A640  38 81 00 C8 */	addi r4, r1, 0xc8
/* 8016A644  38 A1 00 88 */	addi r5, r1, 0x88
/* 8016A648  48 10 72 09 */	bl __ct__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8016A64C  38 61 00 88 */	addi r3, r1, 0x88
/* 8016A650  38 80 FF FF */	li r4, -1
/* 8016A654  4B EC 5E BD */	bl __dt__7cSAngleFv
/* 8016A658  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A65C  48 01 84 09 */	bl R__7cSGlobeCFv
/* 8016A660  FE 00 08 90 */	fmr f16, f1
/* 8016A664  38 61 01 08 */	addi r3, r1, 0x108
/* 8016A668  48 01 83 FD */	bl R__7cSGlobeCFv
/* 8016A66C  EC 01 80 28 */	fsubs f0, f1, f16
/* 8016A670  EE 0E 00 32 */	fmuls f16, f14, f0
/* 8016A674  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A678  48 01 83 ED */	bl R__7cSGlobeCFv
/* 8016A67C  EC 21 80 2A */	fadds f1, f1, f16
/* 8016A680  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A684  48 01 83 C9 */	bl R__7cSGlobeFf
/* 8016A688  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A68C  48 01 83 7D */	bl V__7cSGlobeCFv
/* 8016A690  7C 70 1B 78 */	mr r16, r3
/* 8016A694  38 61 01 08 */	addi r3, r1, 0x108
/* 8016A698  48 01 83 71 */	bl V__7cSGlobeCFv
/* 8016A69C  7C 64 1B 78 */	mr r4, r3
/* 8016A6A0  38 61 00 84 */	addi r3, r1, 0x84
/* 8016A6A4  7E 05 83 78 */	mr r5, r16
/* 8016A6A8  48 10 6A FD */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016A6AC  38 61 00 80 */	addi r3, r1, 0x80
/* 8016A6B0  38 81 00 84 */	addi r4, r1, 0x84
/* 8016A6B4  FC 20 70 90 */	fmr f1, f14
/* 8016A6B8  48 10 6B AD */	bl __ml__7cSAngleCFf
/* 8016A6BC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A6C0  48 01 83 49 */	bl V__7cSGlobeCFv
/* 8016A6C4  7C 64 1B 78 */	mr r4, r3
/* 8016A6C8  38 61 00 7C */	addi r3, r1, 0x7c
/* 8016A6CC  38 A1 00 80 */	addi r5, r1, 0x80
/* 8016A6D0  48 10 6A A5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016A6D4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A6D8  38 81 00 7C */	addi r4, r1, 0x7c
/* 8016A6DC  4B F2 53 7D */	bl V__7cSGlobeFRC7cSAngle
/* 8016A6E0  38 61 00 7C */	addi r3, r1, 0x7c
/* 8016A6E4  38 80 FF FF */	li r4, -1
/* 8016A6E8  4B EC 5E 29 */	bl __dt__7cSAngleFv
/* 8016A6EC  38 61 00 80 */	addi r3, r1, 0x80
/* 8016A6F0  38 80 FF FF */	li r4, -1
/* 8016A6F4  4B EC 5E 1D */	bl __dt__7cSAngleFv
/* 8016A6F8  38 61 00 84 */	addi r3, r1, 0x84
/* 8016A6FC  38 80 FF FF */	li r4, -1
/* 8016A700  4B EC 5E 11 */	bl __dt__7cSAngleFv
/* 8016A704  7F E3 FB 78 */	mr r3, r31
/* 8016A708  3C 80 00 10 */	lis r4, 0x10
/* 8016A70C  48 01 82 75 */	bl chkFlag__9dCamera_cFUl
/* 8016A710  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016A714  40 82 00 14 */	bne lbl_8016A728
/* 8016A718  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8016A71C  40 82 00 0C */	bne lbl_8016A728
/* 8016A720  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8016A724  41 82 00 74 */	beq lbl_8016A798
lbl_8016A728:
/* 8016A728  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A72C  48 01 85 59 */	bl U__7cSGlobeCFv
/* 8016A730  7C 65 1B 78 */	mr r5, r3
/* 8016A734  38 61 00 78 */	addi r3, r1, 0x78
/* 8016A738  38 9F 04 7E */	addi r4, r31, 0x47e
/* 8016A73C  48 10 6A 69 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016A740  38 61 00 74 */	addi r3, r1, 0x74
/* 8016A744  38 81 00 78 */	addi r4, r1, 0x78
/* 8016A748  FC 20 70 90 */	fmr f1, f14
/* 8016A74C  48 10 6B 19 */	bl __ml__7cSAngleCFf
/* 8016A750  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A754  48 01 85 31 */	bl U__7cSGlobeCFv
/* 8016A758  7C 64 1B 78 */	mr r4, r3
/* 8016A75C  38 61 00 70 */	addi r3, r1, 0x70
/* 8016A760  38 A1 00 74 */	addi r5, r1, 0x74
/* 8016A764  48 10 6A 11 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016A768  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A76C  38 81 00 70 */	addi r4, r1, 0x70
/* 8016A770  4B F2 41 25 */	bl U__7cSGlobeFRC7cSAngle
/* 8016A774  38 61 00 70 */	addi r3, r1, 0x70
/* 8016A778  38 80 FF FF */	li r4, -1
/* 8016A77C  4B EC 5D 95 */	bl __dt__7cSAngleFv
/* 8016A780  38 61 00 74 */	addi r3, r1, 0x74
/* 8016A784  38 80 FF FF */	li r4, -1
/* 8016A788  4B EC 5D 89 */	bl __dt__7cSAngleFv
/* 8016A78C  38 61 00 78 */	addi r3, r1, 0x78
/* 8016A790  38 80 FF FF */	li r4, -1
/* 8016A794  4B EC 5D 7D */	bl __dt__7cSAngleFv
lbl_8016A798:
/* 8016A798  38 61 01 EC */	addi r3, r1, 0x1ec
/* 8016A79C  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8016A7A0  48 10 73 15 */	bl Xyz__7cSGlobeCFv
/* 8016A7A4  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 8016A7A8  38 9F 00 64 */	addi r4, r31, 0x64
/* 8016A7AC  38 A1 01 EC */	addi r5, r1, 0x1ec
/* 8016A7B0  48 0F C3 35 */	bl __pl__4cXyzCFRC3Vec
/* 8016A7B4  38 7F 04 4C */	addi r3, r31, 0x44c
/* 8016A7B8  38 81 01 E0 */	addi r4, r1, 0x1e0
/* 8016A7BC  4B F2 D0 1D */	bl __as__4cXyzFRC4cXyz
/* 8016A7C0  38 61 01 E0 */	addi r3, r1, 0x1e0
/* 8016A7C4  38 80 FF FF */	li r4, -1
/* 8016A7C8  4B E9 E9 BD */	bl __dt__4cXyzFv
/* 8016A7CC  38 61 01 EC */	addi r3, r1, 0x1ec
/* 8016A7D0  38 80 FF FF */	li r4, -1
/* 8016A7D4  4B E9 E9 B1 */	bl __dt__4cXyzFv
/* 8016A7D8  38 7F 00 70 */	addi r3, r31, 0x70
/* 8016A7DC  38 9F 04 4C */	addi r4, r31, 0x44c
/* 8016A7E0  4B F2 CF F9 */	bl __as__4cXyzFRC4cXyz
/* 8016A7E4  80 9F 01 74 */	lwz r4, 0x174(r31)
/* 8016A7E8  80 7F 03 EC */	lwz r3, 0x3ec(r31)
/* 8016A7EC  38 03 FF FF */	addi r0, r3, -1
/* 8016A7F0  7C 04 00 40 */	cmplw r4, r0
/* 8016A7F4  41 80 00 0C */	blt lbl_8016A800
/* 8016A7F8  38 00 00 01 */	li r0, 1
/* 8016A7FC  98 1F 01 58 */	stb r0, 0x158(r31)
lbl_8016A800:
/* 8016A800  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016A804  48 01 82 61 */	bl R__7cSGlobeCFv
/* 8016A808  D0 3F 04 14 */	stfs f1, 0x414(r31)
/* 8016A80C  D0 3F 04 10 */	stfs f1, 0x410(r31)
/* 8016A810  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 8016A814  C0 3F 04 8C */	lfs f1, 0x48c(r31)
/* 8016A818  EC 1F 78 28 */	fsubs f0, f31, f15
/* 8016A81C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016A820  EC 0F 00 2A */	fadds f0, f15, f0
/* 8016A824  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016A828  EC 0E 00 32 */	fmuls f0, f14, f0
/* 8016A82C  EC 02 00 2A */	fadds f0, f2, f0
/* 8016A830  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8016A834  C0 3F 03 F0 */	lfs f1, 0x3f0(r31)
/* 8016A838  C0 1F 03 F4 */	lfs f0, 0x3f4(r31)
/* 8016A83C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016A840  D0 1F 03 F0 */	stfs f0, 0x3f0(r31)
/* 8016A844  38 00 00 00 */	li r0, 0
/* 8016A848  90 1F 04 74 */	stw r0, 0x474(r31)
/* 8016A84C  98 1F 04 78 */	stb r0, 0x478(r31)
/* 8016A850  38 61 01 08 */	addi r3, r1, 0x108
/* 8016A854  38 80 FF FF */	li r4, -1
/* 8016A858  4B F0 6E 25 */	bl __dt__7cSGlobeFv
/* 8016A85C  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8016A860  38 80 FF FF */	li r4, -1
/* 8016A864  4B EC 5C AD */	bl __dt__7cSAngleFv
/* 8016A868  38 61 05 28 */	addi r3, r1, 0x528
/* 8016A86C  38 80 FF FF */	li r4, -1
/* 8016A870  4B F0 D5 91 */	bl __dt__14dBgS_CamLinChkFv
/* 8016A874  38 61 03 E4 */	addi r3, r1, 0x3e4
/* 8016A878  38 80 FF FF */	li r4, -1
/* 8016A87C  4B E9 E9 09 */	bl __dt__4cXyzFv
/* 8016A880  38 61 03 F0 */	addi r3, r1, 0x3f0
/* 8016A884  38 80 FF FF */	li r4, -1
/* 8016A888  4B E9 E8 FD */	bl __dt__4cXyzFv
/* 8016A88C  38 61 04 08 */	addi r3, r1, 0x408
/* 8016A890  38 80 FF FF */	li r4, -1
/* 8016A894  4B E9 E8 F1 */	bl __dt__4cXyzFv
/* 8016A898  38 61 04 44 */	addi r3, r1, 0x444
/* 8016A89C  38 80 FF FF */	li r4, -1
/* 8016A8A0  4B E9 E8 E5 */	bl __dt__4cXyzFv
/* 8016A8A4  38 61 04 50 */	addi r3, r1, 0x450
/* 8016A8A8  38 80 FF FF */	li r4, -1
/* 8016A8AC  4B E9 E8 D9 */	bl __dt__4cXyzFv
/* 8016A8B0  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8016A8B4  38 80 FF FF */	li r4, -1
/* 8016A8B8  4B EC 5C 59 */	bl __dt__7cSAngleFv
/* 8016A8BC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8016A8C0  38 80 FF FF */	li r4, -1
/* 8016A8C4  4B EC 5C 4D */	bl __dt__7cSAngleFv
/* 8016A8C8  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8016A8CC  38 80 FF FF */	li r4, -1
/* 8016A8D0  4B EC 5C 41 */	bl __dt__7cSAngleFv
/* 8016A8D4  38 61 00 DC */	addi r3, r1, 0xdc
/* 8016A8D8  38 80 FF FF */	li r4, -1
/* 8016A8DC  4B EC 5C 35 */	bl __dt__7cSAngleFv
/* 8016A8E0  38 60 00 01 */	li r3, 1
/* 8016A8E4  48 00 18 D0 */	b lbl_8016C1B4
lbl_8016A8E8:
/* 8016A8E8  38 00 00 00 */	li r0, 0
/* 8016A8EC  98 1F 04 7D */	stb r0, 0x47d(r31)
/* 8016A8F0  80 1F 01 F8 */	lwz r0, 0x1f8(r31)
/* 8016A8F4  2C 00 00 01 */	cmpwi r0, 1
/* 8016A8F8  40 82 00 24 */	bne lbl_8016A91C
/* 8016A8FC  80 7F 04 88 */	lwz r3, 0x488(r31)
/* 8016A900  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8016A904  7C 03 00 00 */	cmpw r3, r0
/* 8016A908  41 82 00 14 */	beq lbl_8016A91C
/* 8016A90C  38 00 00 14 */	li r0, 0x14
/* 8016A910  B0 1F 04 04 */	sth r0, 0x404(r31)
/* 8016A914  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8016A918  90 1F 04 88 */	stw r0, 0x488(r31)
lbl_8016A91C:
/* 8016A91C  A8 7F 04 04 */	lha r3, 0x404(r31)
/* 8016A920  7C 60 07 35 */	extsh. r0, r3
/* 8016A924  41 82 00 40 */	beq lbl_8016A964
/* 8016A928  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8016A92C  38 03 FF FF */	addi r0, r3, -1
/* 8016A930  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016A934  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016A938  90 01 05 AC */	stw r0, 0x5ac(r1)
/* 8016A93C  3C 00 43 30 */	lis r0, 0x4330
/* 8016A940  90 01 05 A8 */	stw r0, 0x5a8(r1)
/* 8016A944  C8 01 05 A8 */	lfd f0, 0x5a8(r1)
/* 8016A948  EC 20 08 28 */	fsubs f1, f0, f1
/* 8016A94C  C0 02 9D 68 */	lfs f0, lit_9788(r2)
/* 8016A950  EC 01 00 24 */	fdivs f0, f1, f0
/* 8016A954  EC 22 00 28 */	fsubs f1, f2, f0
/* 8016A958  C0 42 9C 90 */	lfs f2, lit_4445(r2)
/* 8016A95C  4B F1 D7 E1 */	bl rationalBezierRatio__8dCamMathFff
/* 8016A960  FF A0 08 90 */	fmr f29, f1
lbl_8016A964:
/* 8016A964  7F A3 EB 78 */	mr r3, r29
/* 8016A968  48 01 80 79 */	bl checkThrowDamage__9daPy_py_cCFv
/* 8016A96C  28 03 00 00 */	cmplwi r3, 0
/* 8016A970  41 82 00 44 */	beq lbl_8016A9B4
/* 8016A974  38 00 00 01 */	li r0, 1
/* 8016A978  98 1F 04 79 */	stb r0, 0x479(r31)
/* 8016A97C  48 01 80 21 */	bl dComIfGp_getAttention__Fv
/* 8016A980  38 80 00 00 */	li r4, 0
/* 8016A984  4B F0 8B B9 */	bl LockonTarget__12dAttention_cFl
/* 8016A988  7C 70 1B 79 */	or. r16, r3, r3
/* 8016A98C  41 82 00 30 */	beq lbl_8016A9BC
/* 8016A990  4B FD 69 2D */	bl fopAcM_GetName__FPv
/* 8016A994  7C 60 07 34 */	extsh r0, r3
/* 8016A998  2C 00 01 FC */	cmpwi r0, 0x1fc
/* 8016A99C  40 82 00 20 */	bne lbl_8016A9BC
/* 8016A9A0  7F E3 FB 78 */	mr r3, r31
/* 8016A9A4  38 80 20 00 */	li r4, 0x2000
/* 8016A9A8  4B F2 CD D1 */	bl setFlag__9dCamera_cFUl
/* 8016A9AC  92 1F 01 88 */	stw r16, 0x188(r31)
/* 8016A9B0  48 00 00 0C */	b lbl_8016A9BC
lbl_8016A9B4:
/* 8016A9B4  38 00 00 00 */	li r0, 0
/* 8016A9B8  98 1F 04 79 */	stb r0, 0x479(r31)
lbl_8016A9BC:
/* 8016A9BC  3B 20 00 00 */	li r25, 0
/* 8016A9C0  3B 60 00 00 */	li r27, 0
/* 8016A9C4  3A A0 00 00 */	li r21, 0
/* 8016A9C8  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 8016A9CC  7F E4 FB 78 */	mr r4, r31
/* 8016A9D0  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8016A9D4  4B F2 CD 89 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016A9D8  38 61 03 CC */	addi r3, r1, 0x3cc
/* 8016A9DC  38 81 01 D4 */	addi r4, r1, 0x1d4
/* 8016A9E0  4B F2 CE 15 */	bl __ct__4cXyzFRC4cXyz
/* 8016A9E4  38 61 01 D4 */	addi r3, r1, 0x1d4
/* 8016A9E8  38 80 FF FF */	li r4, -1
/* 8016A9EC  4B E9 E7 99 */	bl __dt__4cXyzFv
/* 8016A9F0  C0 21 03 D0 */	lfs f1, 0x3d0(r1)
/* 8016A9F4  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 8016A9F8  EC 01 00 2A */	fadds f0, f1, f0
/* 8016A9FC  D0 01 03 D0 */	stfs f0, 0x3d0(r1)
/* 8016AA00  7F E3 FB 78 */	mr r3, r31
/* 8016AA04  38 81 03 CC */	addi r4, r1, 0x3cc
/* 8016AA08  4B FF AD E5 */	bl groundHeight__9dCamera_cFP4cXyz
/* 8016AA0C  7F E3 FB 78 */	mr r3, r31
/* 8016AA10  80 9F 01 80 */	lwz r4, 0x180(r31)
/* 8016AA14  48 01 7F 49 */	bl footHeightOf__9dCamera_cFP10fopAc_ac_c
/* 8016AA18  88 1F 03 D0 */	lbz r0, 0x3d0(r31)
/* 8016AA1C  28 00 00 00 */	cmplwi r0, 0
/* 8016AA20  41 82 00 2C */	beq lbl_8016AA4C
/* 8016AA24  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016AA28  38 80 02 00 */	li r4, 0x200
/* 8016AA2C  48 00 19 3D */	bl func_8016C368
/* 8016AA30  28 03 00 00 */	cmplwi r3, 0
/* 8016AA34  40 82 00 18 */	bne lbl_8016AA4C
/* 8016AA38  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016AA3C  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 8016AA40  38 00 00 00 */	li r0, 0
/* 8016AA44  90 1F 03 F8 */	stw r0, 0x3f8(r31)
/* 8016AA48  48 00 00 D4 */	b lbl_8016AB1C
lbl_8016AA4C:
/* 8016AA4C  80 7F 03 F8 */	lwz r3, 0x3f8(r31)
/* 8016AA50  2C 03 00 1E */	cmpwi r3, 0x1e
/* 8016AA54  40 80 00 5C */	bge lbl_8016AAB0
/* 8016AA58  3B 20 00 01 */	li r25, 1
/* 8016AA5C  38 03 00 01 */	addi r0, r3, 1
/* 8016AA60  90 1F 03 F8 */	stw r0, 0x3f8(r31)
/* 8016AA64  80 1F 03 F8 */	lwz r0, 0x3f8(r31)
/* 8016AA68  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016AA6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016AA70  90 01 05 AC */	stw r0, 0x5ac(r1)
/* 8016AA74  3C 00 43 30 */	lis r0, 0x4330
/* 8016AA78  90 01 05 A8 */	stw r0, 0x5a8(r1)
/* 8016AA7C  C8 01 05 A8 */	lfd f0, 0x5a8(r1)
/* 8016AA80  EC 20 08 28 */	fsubs f1, f0, f1
/* 8016AA84  C0 02 9D 18 */	lfs f0, lit_8127(r2)
/* 8016AA88  EC 21 00 24 */	fdivs f1, f1, f0
/* 8016AA8C  C0 42 9D D0 */	lfs f2, lit_10575(r2)
/* 8016AA90  4B F1 D6 AD */	bl rationalBezierRatio__8dCamMathFff
/* 8016AA94  C0 0D 8A B4 */	lfs f0, JumpCushion(r13)
/* 8016AA98  C0 5F 04 08 */	lfs f2, 0x408(r31)
/* 8016AA9C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016AAA0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016AAA4  EC 02 00 2A */	fadds f0, f2, f0
/* 8016AAA8  D0 1F 04 08 */	stfs f0, 0x408(r31)
/* 8016AAAC  48 00 00 70 */	b lbl_8016AB1C
lbl_8016AAB0:
/* 8016AAB0  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 8016AAB4  40 82 00 68 */	bne lbl_8016AB1C
/* 8016AAB8  3B 60 00 01 */	li r27, 1
/* 8016AABC  88 1F 03 28 */	lbz r0, 0x328(r31)
/* 8016AAC0  28 00 00 00 */	cmplwi r0, 0
/* 8016AAC4  41 82 00 20 */	beq lbl_8016AAE4
/* 8016AAC8  48 01 7F 31 */	bl dComIfG_Bgsp__Fv
/* 8016AACC  38 9F 03 40 */	addi r4, r31, 0x340
/* 8016AAD0  4B F0 A4 21 */	bl GetGroundCode__4dBgSFRC13cBgS_PolyInfo
/* 8016AAD4  2C 03 00 04 */	cmpwi r3, 4
/* 8016AAD8  40 82 00 0C */	bne lbl_8016AAE4
/* 8016AADC  3A A0 00 01 */	li r21, 1
/* 8016AAE0  48 00 00 1C */	b lbl_8016AAFC
lbl_8016AAE4:
/* 8016AAE4  7F A3 EB 78 */	mr r3, r29
/* 8016AAE8  48 01 7D 2D */	bl checkCokkoGlide__9daAlink_cCFv
/* 8016AAEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016AAF0  41 82 00 0C */	beq lbl_8016AAFC
/* 8016AAF4  3B 20 00 01 */	li r25, 1
/* 8016AAF8  3B 60 00 00 */	li r27, 0
lbl_8016AAFC:
/* 8016AAFC  C2 82 9C E0 */	lfs f20, lit_6180(r2)
/* 8016AB00  C0 5F 04 08 */	lfs f2, 0x408(r31)
/* 8016AB04  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 8016AB08  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016AB0C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016AB10  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016AB14  EC 02 00 2A */	fadds f0, f2, f0
/* 8016AB18  D0 1F 04 08 */	stfs f0, 0x408(r31)
lbl_8016AB1C:
/* 8016AB1C  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016AB20  3C 80 02 80 */	lis r4, 0x0280 /* 0x02800008@ha */
/* 8016AB24  38 84 00 08 */	addi r4, r4, 0x0008 /* 0x02800008@l */
/* 8016AB28  48 00 18 41 */	bl func_8016C368
/* 8016AB2C  28 03 00 00 */	cmplwi r3, 0
/* 8016AB30  41 82 00 E8 */	beq lbl_8016AC18
/* 8016AB34  88 1F 02 98 */	lbz r0, 0x298(r31)
/* 8016AB38  28 00 00 00 */	cmplwi r0, 0
/* 8016AB3C  40 82 00 38 */	bne lbl_8016AB74
/* 8016AB40  7F E3 FB 78 */	mr r3, r31
/* 8016AB44  4B FF A5 C1 */	bl setUSOAngle__9dCamera_cFv
/* 8016AB48  38 61 00 6C */	addi r3, r1, 0x6c
/* 8016AB4C  7F E4 FB 78 */	mr r4, r31
/* 8016AB50  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8016AB54  4B F2 CB E5 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016AB58  38 7F 04 80 */	addi r3, r31, 0x480
/* 8016AB5C  38 81 00 6C */	addi r4, r1, 0x6c
/* 8016AB60  48 01 81 49 */	bl __as__7cSAngleFRC7cSAngle
/* 8016AB64  38 61 00 6C */	addi r3, r1, 0x6c
/* 8016AB68  38 80 FF FF */	li r4, -1
/* 8016AB6C  4B EC 59 A5 */	bl __dt__7cSAngleFv
/* 8016AB70  48 00 00 A8 */	b lbl_8016AC18
lbl_8016AB74:
/* 8016AB74  38 61 00 68 */	addi r3, r1, 0x68
/* 8016AB78  7F E4 FB 78 */	mr r4, r31
/* 8016AB7C  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8016AB80  4B F2 CB B9 */	bl directionOf__9dCamera_cFP10fopAc_ac_c
/* 8016AB84  38 61 00 64 */	addi r3, r1, 0x64
/* 8016AB88  38 9F 04 80 */	addi r4, r31, 0x480
/* 8016AB8C  38 A1 00 68 */	addi r5, r1, 0x68
/* 8016AB90  48 10 66 15 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016AB94  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8016AB98  38 81 00 64 */	addi r4, r1, 0x64
/* 8016AB9C  48 10 63 CD */	bl __ct__7cSAngleFRC7cSAngle
/* 8016ABA0  38 61 00 64 */	addi r3, r1, 0x64
/* 8016ABA4  38 80 FF FF */	li r4, -1
/* 8016ABA8  4B EC 59 69 */	bl __dt__7cSAngleFv
/* 8016ABAC  38 61 00 68 */	addi r3, r1, 0x68
/* 8016ABB0  38 80 FF FF */	li r4, -1
/* 8016ABB4  4B EC 59 5D */	bl __dt__7cSAngleFv
/* 8016ABB8  38 61 00 60 */	addi r3, r1, 0x60
/* 8016ABBC  C0 22 9D 88 */	lfs f1, lit_10557(r2)
/* 8016ABC0  48 10 64 09 */	bl __ct__7cSAngleFf
/* 8016ABC4  38 61 00 60 */	addi r3, r1, 0x60
/* 8016ABC8  48 01 80 4D */	bl __ops__7cSAngleCFv
/* 8016ABCC  7C 70 07 34 */	extsh r16, r3
/* 8016ABD0  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8016ABD4  48 10 64 F9 */	bl Abs__7cSAngleCFv
/* 8016ABD8  7C 64 07 34 */	extsh r4, r3
/* 8016ABDC  7C 80 82 78 */	xor r0, r4, r16
/* 8016ABE0  7C 03 0E 70 */	srawi r3, r0, 1
/* 8016ABE4  7C 00 20 38 */	and r0, r0, r4
/* 8016ABE8  7C 00 18 50 */	subf r0, r0, r3
/* 8016ABEC  54 10 0F FE */	srwi r16, r0, 0x1f
/* 8016ABF0  38 61 00 60 */	addi r3, r1, 0x60
/* 8016ABF4  38 80 FF FF */	li r4, -1
/* 8016ABF8  4B EC 59 19 */	bl __dt__7cSAngleFv
/* 8016ABFC  28 10 00 00 */	cmplwi r16, 0
/* 8016AC00  41 82 00 0C */	beq lbl_8016AC0C
/* 8016AC04  38 00 00 00 */	li r0, 0
/* 8016AC08  98 1F 02 98 */	stb r0, 0x298(r31)
lbl_8016AC0C:
/* 8016AC0C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8016AC10  38 80 FF FF */	li r4, -1
/* 8016AC14  4B EC 58 FD */	bl __dt__7cSAngleFv
lbl_8016AC18:
/* 8016AC18  88 1F 04 79 */	lbz r0, 0x479(r31)
/* 8016AC1C  28 00 00 00 */	cmplwi r0, 0
/* 8016AC20  41 82 00 10 */	beq lbl_8016AC30
/* 8016AC24  C0 02 9D D4 */	lfs f0, lit_10576(r2)
/* 8016AC28  D0 1F 04 6C */	stfs f0, 0x46c(r31)
/* 8016AC2C  48 00 00 6C */	b lbl_8016AC98
lbl_8016AC30:
/* 8016AC30  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016AC34  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000108@ha */
/* 8016AC38  38 84 01 08 */	addi r4, r4, 0x0108 /* 0x02000108@l */
/* 8016AC3C  48 00 17 2D */	bl func_8016C368
/* 8016AC40  28 03 00 00 */	cmplwi r3, 0
/* 8016AC44  41 82 00 38 */	beq lbl_8016AC7C
/* 8016AC48  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8016AC4C  38 8D 8C 18 */	la r4, _270__7cSAngle(r13) /* 80451198-_SDA_BASE_ */
/* 8016AC50  48 01 7E 3D */	bl __gt__7cSAngleCFRC7cSAngle
/* 8016AC54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016AC58  41 82 00 18 */	beq lbl_8016AC70
/* 8016AC5C  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8016AC60  38 8D 8C 10 */	la r4, _90__7cSAngle(r13) /* 80451190-_SDA_BASE_ */
/* 8016AC64  48 01 7E 09 */	bl __lt__7cSAngleCFRC7cSAngle
/* 8016AC68  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016AC6C  40 82 00 10 */	bne lbl_8016AC7C
lbl_8016AC70:
/* 8016AC70  C0 02 9D 0C */	lfs f0, lit_8021(r2)
/* 8016AC74  D0 1F 04 6C */	stfs f0, 0x46c(r31)
/* 8016AC78  48 00 00 20 */	b lbl_8016AC98
lbl_8016AC7C:
/* 8016AC7C  C0 5F 04 6C */	lfs f2, 0x46c(r31)
/* 8016AC80  C0 22 9D D8 */	lfs f1, lit_10577(r2)
/* 8016AC84  C0 01 05 C0 */	lfs f0, 0x5c0(r1)
/* 8016AC88  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016AC8C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016AC90  EC 02 00 2A */	fadds f0, f2, f0
/* 8016AC94  D0 1F 04 6C */	stfs f0, 0x46c(r31)
lbl_8016AC98:
/* 8016AC98  88 1F 04 79 */	lbz r0, 0x479(r31)
/* 8016AC9C  28 00 00 00 */	cmplwi r0, 0
/* 8016ACA0  41 82 00 10 */	beq lbl_8016ACB0
/* 8016ACA4  C0 02 9C EC */	lfs f0, lit_6766(r2)
/* 8016ACA8  D0 1F 04 70 */	stfs f0, 0x470(r31)
/* 8016ACAC  48 00 00 E4 */	b lbl_8016AD90
lbl_8016ACB0:
/* 8016ACB0  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 8016ACB4  40 82 00 0C */	bne lbl_8016ACC0
/* 8016ACB8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8016ACBC  41 82 00 60 */	beq lbl_8016AD1C
lbl_8016ACC0:
/* 8016ACC0  C0 02 9D 0C */	lfs f0, lit_8021(r2)
/* 8016ACC4  EC 40 05 F2 */	fmuls f2, f0, f23
/* 8016ACC8  C0 02 9D 6C */	lfs f0, lit_10550(r2)
/* 8016ACCC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8016ACD0  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 8016ACD4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016ACD8  EC 02 00 2A */	fadds f0, f2, f0
/* 8016ACDC  D0 1F 04 70 */	stfs f0, 0x470(r31)
/* 8016ACE0  7F E3 FB 78 */	mr r3, r31
/* 8016ACE4  3C 80 00 10 */	lis r4, 0x10
/* 8016ACE8  48 01 7C 99 */	bl chkFlag__9dCamera_cFUl
/* 8016ACEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016ACF0  41 82 00 A0 */	beq lbl_8016AD90
/* 8016ACF4  C0 1F 04 6C */	lfs f0, 0x46c(r31)
/* 8016ACF8  C0 42 9C EC */	lfs f2, lit_6766(r2)
/* 8016ACFC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8016AD00  40 81 00 90 */	ble lbl_8016AD90
/* 8016AD04  C0 22 9D 24 */	lfs f1, lit_8530(r2)
/* 8016AD08  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 8016AD0C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016AD10  EC 02 00 2A */	fadds f0, f2, f0
/* 8016AD14  D0 1F 04 6C */	stfs f0, 0x46c(r31)
/* 8016AD18  48 00 00 78 */	b lbl_8016AD90
lbl_8016AD1C:
/* 8016AD1C  A8 1F 04 04 */	lha r0, 0x404(r31)
/* 8016AD20  2C 00 00 00 */	cmpwi r0, 0
/* 8016AD24  41 82 00 0C */	beq lbl_8016AD30
/* 8016AD28  D3 BF 04 70 */	stfs f29, 0x470(r31)
/* 8016AD2C  48 00 00 64 */	b lbl_8016AD90
lbl_8016AD30:
/* 8016AD30  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8016AD34  41 82 00 20 */	beq lbl_8016AD54
/* 8016AD38  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016AD3C  48 01 7E BD */	bl getTrigA__8mDoCPd_cFUl
/* 8016AD40  28 03 00 00 */	cmplwi r3, 0
/* 8016AD44  41 82 00 10 */	beq lbl_8016AD54
/* 8016AD48  C0 02 9C E0 */	lfs f0, lit_6180(r2)
/* 8016AD4C  D0 1F 04 70 */	stfs f0, 0x470(r31)
/* 8016AD50  48 00 00 40 */	b lbl_8016AD90
lbl_8016AD54:
/* 8016AD54  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8016AD58  41 82 00 20 */	beq lbl_8016AD78
/* 8016AD5C  C0 5F 04 70 */	lfs f2, 0x470(r31)
/* 8016AD60  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 8016AD64  EC 17 10 28 */	fsubs f0, f23, f2
/* 8016AD68  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016AD6C  EC 02 00 2A */	fadds f0, f2, f0
/* 8016AD70  D0 1F 04 70 */	stfs f0, 0x470(r31)
/* 8016AD74  48 00 00 1C */	b lbl_8016AD90
lbl_8016AD78:
/* 8016AD78  C0 5F 04 70 */	lfs f2, 0x470(r31)
/* 8016AD7C  C0 22 9D D8 */	lfs f1, lit_10577(r2)
/* 8016AD80  EC 17 10 28 */	fsubs f0, f23, f2
/* 8016AD84  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016AD88  EC 02 00 2A */	fadds f0, f2, f0
/* 8016AD8C  D0 1F 04 70 */	stfs f0, 0x470(r31)
lbl_8016AD90:
/* 8016AD90  C0 3F 04 6C */	lfs f1, 0x46c(r31)
/* 8016AD94  38 61 03 C0 */	addi r3, r1, 0x3c0
/* 8016AD98  C0 5F 04 70 */	lfs f2, 0x470(r31)
/* 8016AD9C  FC 60 08 90 */	fmr f3, f1
/* 8016ADA0  4B FD 6B BD */	bl __ct__4cXyzFfff
/* 8016ADA4  3A C0 00 00 */	li r22, 0
/* 8016ADA8  3A 00 00 00 */	li r16, 0
/* 8016ADAC  7F E3 FB 78 */	mr r3, r31
/* 8016ADB0  38 80 00 80 */	li r4, 0x80
/* 8016ADB4  48 01 7B CD */	bl chkFlag__9dCamera_cFUl
/* 8016ADB8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016ADBC  41 82 00 18 */	beq lbl_8016ADD4
/* 8016ADC0  38 7F 00 28 */	addi r3, r31, 0x28
/* 8016ADC4  48 01 7C A1 */	bl R__7cSGlobeCFv
/* 8016ADC8  FC 01 A8 40 */	fcmpo cr0, f1, f21
/* 8016ADCC  40 80 00 08 */	bge lbl_8016ADD4
/* 8016ADD0  3A 00 00 01 */	li r16, 1
lbl_8016ADD4:
/* 8016ADD4  7F E3 FB 78 */	mr r3, r31
/* 8016ADD8  3C 80 00 10 */	lis r4, 0x10
/* 8016ADDC  48 01 7B A5 */	bl chkFlag__9dCamera_cFUl
/* 8016ADE0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016ADE4  40 82 00 24 */	bne lbl_8016AE08
/* 8016ADE8  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016ADEC  3C 80 02 80 */	lis r4, 0x0280 /* 0x02800108@ha */
/* 8016ADF0  38 84 01 08 */	addi r4, r4, 0x0108 /* 0x02800108@l */
/* 8016ADF4  48 00 15 75 */	bl func_8016C368
/* 8016ADF8  28 03 00 00 */	cmplwi r3, 0
/* 8016ADFC  40 82 00 0C */	bne lbl_8016AE08
/* 8016AE00  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016AE04  48 00 15 49 */	bl func_8016C34C
lbl_8016AE08:
/* 8016AE08  56 00 06 3F */	clrlwi. r0, r16, 0x18
/* 8016AE0C  41 82 00 58 */	beq lbl_8016AE64
/* 8016AE10  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 8016AE14  C0 02 9D 0C */	lfs f0, lit_8021(r2)
/* 8016AE18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016AE1C  40 80 00 48 */	bge lbl_8016AE64
/* 8016AE20  7F E3 FB 78 */	mr r3, r31
/* 8016AE24  3C 80 00 10 */	lis r4, 0x10
/* 8016AE28  48 01 7B 59 */	bl chkFlag__9dCamera_cFUl
/* 8016AE2C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016AE30  40 82 00 34 */	bne lbl_8016AE64
/* 8016AE34  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016AE38  3C 80 02 80 */	lis r4, 0x0280 /* 0x02800108@ha */
/* 8016AE3C  38 84 01 08 */	addi r4, r4, 0x0108 /* 0x02800108@l */
/* 8016AE40  48 00 15 29 */	bl func_8016C368
/* 8016AE44  28 03 00 00 */	cmplwi r3, 0
/* 8016AE48  40 82 00 1C */	bne lbl_8016AE64
/* 8016AE4C  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016AE50  3C 80 02 11 */	lis r4, 0x211
/* 8016AE54  48 00 14 DD */	bl func_8016C330
/* 8016AE58  28 03 00 00 */	cmplwi r3, 0
/* 8016AE5C  40 82 00 08 */	bne lbl_8016AE64
/* 8016AE60  3A C0 00 01 */	li r22, 1
lbl_8016AE64:
/* 8016AE64  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016AE68  7F C4 F3 78 */	mr r4, r30
/* 8016AE6C  38 A0 10 00 */	li r5, 0x1000
/* 8016AE70  48 01 7E 1D */	bl Flag__11dCamParam_cFlUs
/* 8016AE74  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8016AE78  41 82 02 3C */	beq lbl_8016B0B4
/* 8016AE7C  C1 C2 9C A0 */	lfs f14, lit_5656(r2)
/* 8016AE80  7F E3 FB 78 */	mr r3, r31
/* 8016AE84  48 01 7A E1 */	bl push_any_key__9dCamera_cFv
/* 8016AE88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016AE8C  41 82 00 14 */	beq lbl_8016AEA0
/* 8016AE90  38 00 00 00 */	li r0, 0
/* 8016AE94  90 1F 04 74 */	stw r0, 0x474(r31)
/* 8016AE98  98 1F 04 78 */	stb r0, 0x478(r31)
/* 8016AE9C  48 00 01 90 */	b lbl_8016B02C
lbl_8016AEA0:
/* 8016AEA0  38 7F 09 70 */	addi r3, r31, 0x970
/* 8016AEA4  48 01 7D 4D */	bl WaitRollTimer__11dCamSetup_cFv
/* 8016AEA8  80 9F 04 74 */	lwz r4, 0x474(r31)
/* 8016AEAC  7C 04 18 00 */	cmpw r4, r3
/* 8016AEB0  40 80 00 10 */	bge lbl_8016AEC0
/* 8016AEB4  38 04 00 01 */	addi r0, r4, 1
/* 8016AEB8  90 1F 04 74 */	stw r0, 0x474(r31)
/* 8016AEBC  48 00 01 70 */	b lbl_8016B02C
lbl_8016AEC0:
/* 8016AEC0  7E 83 A3 78 */	mr r3, r20
/* 8016AEC4  38 80 00 00 */	li r4, 0
/* 8016AEC8  4B F0 86 75 */	bl LockonTarget__12dAttention_cFl
/* 8016AECC  7C 65 1B 79 */	or. r5, r3, r3
/* 8016AED0  41 82 01 5C */	beq lbl_8016B02C
/* 8016AED4  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 8016AED8  7F E4 FB 78 */	mr r4, r31
/* 8016AEDC  4B F2 C8 81 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016AEE0  38 61 01 BC */	addi r3, r1, 0x1bc
/* 8016AEE4  7F E4 FB 78 */	mr r4, r31
/* 8016AEE8  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8016AEEC  4B F2 C8 71 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016AEF0  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 8016AEF4  38 81 01 C8 */	addi r4, r1, 0x1c8
/* 8016AEF8  38 A1 01 BC */	addi r5, r1, 0x1bc
/* 8016AEFC  48 0F BC 39 */	bl __mi__4cXyzCFRC3Vec
/* 8016AF00  38 61 03 B4 */	addi r3, r1, 0x3b4
/* 8016AF04  38 81 01 B0 */	addi r4, r1, 0x1b0
/* 8016AF08  4B F2 C8 ED */	bl __ct__4cXyzFRC4cXyz
/* 8016AF0C  38 61 01 B0 */	addi r3, r1, 0x1b0
/* 8016AF10  38 80 FF FF */	li r4, -1
/* 8016AF14  4B E9 E2 71 */	bl __dt__4cXyzFv
/* 8016AF18  38 61 01 BC */	addi r3, r1, 0x1bc
/* 8016AF1C  38 80 FF FF */	li r4, -1
/* 8016AF20  4B E9 E2 65 */	bl __dt__4cXyzFv
/* 8016AF24  38 61 01 C8 */	addi r3, r1, 0x1c8
/* 8016AF28  38 80 FF FF */	li r4, -1
/* 8016AF2C  4B E9 E2 59 */	bl __dt__4cXyzFv
/* 8016AF30  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016AF34  48 01 7D 51 */	bl U__7cSGlobeCFv
/* 8016AF38  7C 64 1B 78 */	mr r4, r3
/* 8016AF3C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8016AF40  48 10 62 09 */	bl __mi__7cSAngleCFv
/* 8016AF44  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8016AF48  38 81 00 5C */	addi r4, r1, 0x5c
/* 8016AF4C  48 10 60 1D */	bl __ct__7cSAngleFRC7cSAngle
/* 8016AF50  38 61 00 5C */	addi r3, r1, 0x5c
/* 8016AF54  38 80 FF FF */	li r4, -1
/* 8016AF58  4B EC 55 B9 */	bl __dt__7cSAngleFv
/* 8016AF5C  38 61 00 58 */	addi r3, r1, 0x58
/* 8016AF60  38 81 00 C0 */	addi r4, r1, 0xc0
/* 8016AF64  48 10 60 05 */	bl __ct__7cSAngleFRC7cSAngle
/* 8016AF68  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 8016AF6C  38 81 03 B4 */	addi r4, r1, 0x3b4
/* 8016AF70  38 A1 00 58 */	addi r5, r1, 0x58
/* 8016AF74  4B F1 D4 11 */	bl xyzRotateY__8dCamMathFR4cXyz7cSAngle
/* 8016AF78  38 61 03 B4 */	addi r3, r1, 0x3b4
/* 8016AF7C  38 81 01 A4 */	addi r4, r1, 0x1a4
/* 8016AF80  4B F2 C8 59 */	bl __as__4cXyzFRC4cXyz
/* 8016AF84  38 61 01 A4 */	addi r3, r1, 0x1a4
/* 8016AF88  38 80 FF FF */	li r4, -1
/* 8016AF8C  4B E9 E1 F9 */	bl __dt__4cXyzFv
/* 8016AF90  38 61 00 58 */	addi r3, r1, 0x58
/* 8016AF94  38 80 FF FF */	li r4, -1
/* 8016AF98  4B EC 55 79 */	bl __dt__7cSAngleFv
/* 8016AF9C  38 61 03 A8 */	addi r3, r1, 0x3a8
/* 8016AFA0  38 81 03 B4 */	addi r4, r1, 0x3b4
/* 8016AFA4  4B F2 C8 51 */	bl __ct__4cXyzFRC4cXyz
/* 8016AFA8  C0 21 03 AC */	lfs f1, 0x3ac(r1)
/* 8016AFAC  48 01 7A 91 */	bl fabsf__3stdFf
/* 8016AFB0  C0 02 9D 10 */	lfs f0, lit_8022(r2)
/* 8016AFB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016AFB8  40 80 00 50 */	bge lbl_8016B008
/* 8016AFBC  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016AFC0  D0 01 03 AC */	stfs f0, 0x3ac(r1)
/* 8016AFC4  C0 21 03 A8 */	lfs f1, 0x3a8(r1)
/* 8016AFC8  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 8016AFCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016AFD0  D0 01 03 A8 */	stfs f0, 0x3a8(r1)
/* 8016AFD4  38 61 03 A8 */	addi r3, r1, 0x3a8
/* 8016AFD8  4B F2 37 B9 */	bl abs__4cXyzCFv
/* 8016AFDC  C0 82 9D DC */	lfs f4, lit_10578(r2)
/* 8016AFE0  FC 01 20 40 */	fcmpo cr0, f1, f4
/* 8016AFE4  40 80 00 24 */	bge lbl_8016B008
/* 8016AFE8  C0 42 9D E0 */	lfs f2, lit_10579(r2)
/* 8016AFEC  C0 01 03 B4 */	lfs f0, 0x3b4(r1)
/* 8016AFF0  FC 00 00 50 */	fneg f0, f0
/* 8016AFF4  EC 62 00 32 */	fmuls f3, f2, f0
/* 8016AFF8  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8016AFFC  EC 01 20 24 */	fdivs f0, f1, f4
/* 8016B000  EC 02 00 28 */	fsubs f0, f2, f0
/* 8016B004  ED C3 00 32 */	fmuls f14, f3, f0
lbl_8016B008:
/* 8016B008  38 61 03 A8 */	addi r3, r1, 0x3a8
/* 8016B00C  38 80 FF FF */	li r4, -1
/* 8016B010  4B E9 E1 75 */	bl __dt__4cXyzFv
/* 8016B014  38 61 00 C0 */	addi r3, r1, 0xc0
/* 8016B018  38 80 FF FF */	li r4, -1
/* 8016B01C  4B EC 54 F5 */	bl __dt__7cSAngleFv
/* 8016B020  38 61 03 B4 */	addi r3, r1, 0x3b4
/* 8016B024  38 80 FF FF */	li r4, -1
/* 8016B028  4B E9 E1 5D */	bl __dt__4cXyzFv
lbl_8016B02C:
/* 8016B02C  C0 5F 04 28 */	lfs f2, 0x428(r31)
/* 8016B030  C0 22 9C E0 */	lfs f1, lit_6180(r2)
/* 8016B034  EC 0E 10 28 */	fsubs f0, f14, f2
/* 8016B038  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016B03C  EC 02 00 2A */	fadds f0, f2, f0
/* 8016B040  D0 1F 04 28 */	stfs f0, 0x428(r31)
/* 8016B044  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016B048  48 01 7C 3D */	bl U__7cSGlobeCFv
/* 8016B04C  7C 64 1B 78 */	mr r4, r3
/* 8016B050  38 61 00 54 */	addi r3, r1, 0x54
/* 8016B054  38 AD 8C 18 */	la r5, _270__7cSAngle(r13) /* 80451198-_SDA_BASE_ */
/* 8016B058  48 10 61 1D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016B05C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016B060  48 01 79 A9 */	bl V__7cSGlobeCFv
/* 8016B064  7C 64 1B 78 */	mr r4, r3
/* 8016B068  38 61 01 00 */	addi r3, r1, 0x100
/* 8016B06C  C0 3F 04 28 */	lfs f1, 0x428(r31)
/* 8016B070  38 A1 00 54 */	addi r5, r1, 0x54
/* 8016B074  48 10 67 DD */	bl __ct__7cSGlobeFfRC7cSAngleRC7cSAngle
/* 8016B078  38 61 00 54 */	addi r3, r1, 0x54
/* 8016B07C  38 80 FF FF */	li r4, -1
/* 8016B080  4B EC 54 91 */	bl __dt__7cSAngleFv
/* 8016B084  38 61 01 98 */	addi r3, r1, 0x198
/* 8016B088  38 81 01 00 */	addi r4, r1, 0x100
/* 8016B08C  48 10 6A 29 */	bl Xyz__7cSGlobeCFv
/* 8016B090  38 61 04 08 */	addi r3, r1, 0x408
/* 8016B094  38 81 01 98 */	addi r4, r1, 0x198
/* 8016B098  4B F2 38 6D */	bl __apl__4cXyzFRC3Vec
/* 8016B09C  38 61 01 98 */	addi r3, r1, 0x198
/* 8016B0A0  38 80 FF FF */	li r4, -1
/* 8016B0A4  4B E9 E0 E1 */	bl __dt__4cXyzFv
/* 8016B0A8  38 61 01 00 */	addi r3, r1, 0x100
/* 8016B0AC  38 80 FF FF */	li r4, -1
/* 8016B0B0  4B F0 65 CD */	bl __dt__7cSGlobeFv
lbl_8016B0B4:
/* 8016B0B4  38 61 01 8C */	addi r3, r1, 0x18c
/* 8016B0B8  38 81 04 08 */	addi r4, r1, 0x408
/* 8016B0BC  38 BF 00 64 */	addi r5, r31, 0x64
/* 8016B0C0  48 0F BA 75 */	bl __mi__4cXyzCFRC3Vec
/* 8016B0C4  38 61 01 80 */	addi r3, r1, 0x180
/* 8016B0C8  38 81 01 8C */	addi r4, r1, 0x18c
/* 8016B0CC  38 A1 03 C0 */	addi r5, r1, 0x3c0
/* 8016B0D0  48 0F BB 01 */	bl __ml__4cXyzCFRC3Vec
/* 8016B0D4  38 7F 00 64 */	addi r3, r31, 0x64
/* 8016B0D8  38 81 01 80 */	addi r4, r1, 0x180
/* 8016B0DC  4B F2 38 29 */	bl __apl__4cXyzFRC3Vec
/* 8016B0E0  38 61 01 80 */	addi r3, r1, 0x180
/* 8016B0E4  38 80 FF FF */	li r4, -1
/* 8016B0E8  4B E9 E0 9D */	bl __dt__4cXyzFv
/* 8016B0EC  38 61 01 8C */	addi r3, r1, 0x18c
/* 8016B0F0  38 80 FF FF */	li r4, -1
/* 8016B0F4  4B E9 E0 91 */	bl __dt__4cXyzFv
/* 8016B0F8  38 61 01 74 */	addi r3, r1, 0x174
/* 8016B0FC  38 9F 00 70 */	addi r4, r31, 0x70
/* 8016B100  38 BF 00 64 */	addi r5, r31, 0x64
/* 8016B104  48 0F BA 31 */	bl __mi__4cXyzCFRC3Vec
/* 8016B108  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8016B10C  38 81 01 74 */	addi r4, r1, 0x174
/* 8016B110  48 10 67 71 */	bl __ct__7cSGlobeFRC4cXyz
/* 8016B114  38 61 01 74 */	addi r3, r1, 0x174
/* 8016B118  38 80 FF FF */	li r4, -1
/* 8016B11C  4B E9 E0 69 */	bl __dt__4cXyzFv
/* 8016B120  A8 7F 04 02 */	lha r3, 0x402(r31)
/* 8016B124  7C 60 07 35 */	extsh. r0, r3
/* 8016B128  40 81 00 68 */	ble lbl_8016B190
/* 8016B12C  2C 03 00 0E */	cmpwi r3, 0xe
/* 8016B130  41 81 00 60 */	bgt lbl_8016B190
/* 8016B134  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016B138  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8016B13C  90 01 05 AC */	stw r0, 0x5ac(r1)
/* 8016B140  3C 00 43 30 */	lis r0, 0x4330
/* 8016B144  90 01 05 A8 */	stw r0, 0x5a8(r1)
/* 8016B148  C8 01 05 A8 */	lfd f0, 0x5a8(r1)
/* 8016B14C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8016B150  C0 02 9D E4 */	lfs f0, lit_10580(r2)
/* 8016B154  EC 21 00 24 */	fdivs f1, f1, f0
/* 8016B158  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016B15C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016B160  40 81 00 08 */	ble lbl_8016B168
/* 8016B164  FC 20 00 90 */	fmr f1, f0
lbl_8016B168:
/* 8016B168  C0 41 05 CC */	lfs f2, 0x5cc(r1)
/* 8016B16C  4B F1 CF D1 */	bl rationalBezierRatio__8dCamMathFff
/* 8016B170  38 00 00 01 */	li r0, 1
/* 8016B174  98 1F 04 58 */	stb r0, 0x458(r31)
/* 8016B178  C0 42 9C A8 */	lfs f2, lit_5658(r2)
/* 8016B17C  C0 1F 04 30 */	lfs f0, 0x430(r31)
/* 8016B180  EC 02 00 28 */	fsubs f0, f2, f0
/* 8016B184  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016B188  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 8016B18C  48 00 02 FC */	b lbl_8016B488
lbl_8016B190:
/* 8016B190  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8016B194  41 82 00 C0 */	beq lbl_8016B254
/* 8016B198  C2 22 9C A8 */	lfs f17, lit_5658(r2)
/* 8016B19C  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 8016B1A0  C0 41 05 B0 */	lfs f2, 0x5b0(r1)
/* 8016B1A4  4B F1 CF 99 */	bl rationalBezierRatio__8dCamMathFff
/* 8016B1A8  FD C0 08 90 */	fmr f14, f1
/* 8016B1AC  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016B1B0  48 00 11 65 */	bl getHoldA__8mDoCPd_cFUl
/* 8016B1B4  28 03 00 00 */	cmplwi r3, 0
/* 8016B1B8  40 82 00 44 */	bne lbl_8016B1FC
/* 8016B1BC  38 61 00 50 */	addi r3, r1, 0x50
/* 8016B1C0  C0 02 9D E8 */	lfs f0, lit_10581(r2)
/* 8016B1C4  EC 20 03 B2 */	fmuls f1, f0, f14
/* 8016B1C8  48 10 5E 01 */	bl __ct__7cSAngleFf
/* 8016B1CC  38 61 00 50 */	addi r3, r1, 0x50
/* 8016B1D0  48 10 5F 51 */	bl Cos__7cSAngleCFv
/* 8016B1D4  EC 5C 00 72 */	fmuls f2, f28, f1
/* 8016B1D8  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 8016B1DC  EC 01 E0 28 */	fsubs f0, f1, f28
/* 8016B1E0  EC 00 10 2A */	fadds f0, f0, f2
/* 8016B1E4  EE 21 00 28 */	fsubs f17, f1, f0
/* 8016B1E8  38 61 00 50 */	addi r3, r1, 0x50
/* 8016B1EC  38 80 FF FF */	li r4, -1
/* 8016B1F0  4B EC 53 21 */	bl __dt__7cSAngleFv
/* 8016B1F4  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 8016B1F8  EE 31 00 32 */	fmuls f17, f17, f0
lbl_8016B1FC:
/* 8016B1FC  C0 5F 04 0C */	lfs f2, 0x40c(r31)
/* 8016B200  C0 22 9D D8 */	lfs f1, lit_10577(r2)
/* 8016B204  EC 11 10 28 */	fsubs f0, f17, f2
/* 8016B208  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016B20C  EC 02 00 2A */	fadds f0, f2, f0
/* 8016B210  D0 1F 04 0C */	stfs f0, 0x40c(r31)
/* 8016B214  88 1F 04 58 */	lbz r0, 0x458(r31)
/* 8016B218  28 00 00 00 */	cmplwi r0, 0
/* 8016B21C  41 82 00 0C */	beq lbl_8016B228
/* 8016B220  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 8016B224  D0 1F 04 30 */	stfs f0, 0x430(r31)
lbl_8016B228:
/* 8016B228  38 00 00 00 */	li r0, 0
/* 8016B22C  98 1F 04 58 */	stb r0, 0x458(r31)
/* 8016B230  C0 5F 04 30 */	lfs f2, 0x430(r31)
/* 8016B234  C0 22 9D 14 */	lfs f1, lit_8023(r2)
/* 8016B238  C0 1F 04 0C */	lfs f0, 0x40c(r31)
/* 8016B23C  EC 1C 00 32 */	fmuls f0, f28, f0
/* 8016B240  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016B244  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016B248  EC 02 00 2A */	fadds f0, f2, f0
/* 8016B24C  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 8016B250  48 00 02 38 */	b lbl_8016B488
lbl_8016B254:
/* 8016B254  7F E3 FB 78 */	mr r3, r31
/* 8016B258  3C 80 00 10 */	lis r4, 0x10
/* 8016B25C  48 01 77 25 */	bl chkFlag__9dCamera_cFUl
/* 8016B260  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016B264  40 82 00 0C */	bne lbl_8016B270
/* 8016B268  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8016B26C  41 82 00 40 */	beq lbl_8016B2AC
lbl_8016B270:
/* 8016B270  88 1F 04 58 */	lbz r0, 0x458(r31)
/* 8016B274  28 00 00 00 */	cmplwi r0, 0
/* 8016B278  41 82 00 0C */	beq lbl_8016B284
/* 8016B27C  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 8016B280  D0 1F 04 30 */	stfs f0, 0x430(r31)
lbl_8016B284:
/* 8016B284  38 00 00 00 */	li r0, 0
/* 8016B288  98 1F 04 58 */	stb r0, 0x458(r31)
/* 8016B28C  C0 5F 04 30 */	lfs f2, 0x430(r31)
/* 8016B290  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016B294  EC 20 10 28 */	fsubs f1, f0, f2
/* 8016B298  C0 02 9D 14 */	lfs f0, lit_8023(r2)
/* 8016B29C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016B2A0  EC 02 00 2A */	fadds f0, f2, f0
/* 8016B2A4  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 8016B2A8  48 00 01 E0 */	b lbl_8016B488
lbl_8016B2AC:
/* 8016B2AC  38 00 00 01 */	li r0, 1
/* 8016B2B0  98 1F 04 58 */	stb r0, 0x458(r31)
/* 8016B2B4  88 1F 02 98 */	lbz r0, 0x298(r31)
/* 8016B2B8  28 00 00 00 */	cmplwi r0, 0
/* 8016B2BC  41 82 00 10 */	beq lbl_8016B2CC
/* 8016B2C0  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016B2C4  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 8016B2C8  48 00 00 B4 */	b lbl_8016B37C
lbl_8016B2CC:
/* 8016B2CC  C0 3F 01 C0 */	lfs f1, 0x1c0(r31)
/* 8016B2D0  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016B2D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016B2D8  4C 41 13 82 */	cror 2, 1, 2
/* 8016B2DC  40 82 00 50 */	bne lbl_8016B32C
/* 8016B2E0  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 8016B2E4  C0 41 05 B0 */	lfs f2, 0x5b0(r1)
/* 8016B2E8  4B F1 CE 55 */	bl rationalBezierRatio__8dCamMathFff
/* 8016B2EC  38 61 00 4C */	addi r3, r1, 0x4c
/* 8016B2F0  C0 02 9D E8 */	lfs f0, lit_10581(r2)
/* 8016B2F4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8016B2F8  48 10 5C D1 */	bl __ct__7cSAngleFf
/* 8016B2FC  38 61 00 4C */	addi r3, r1, 0x4c
/* 8016B300  48 10 5E 21 */	bl Cos__7cSAngleCFv
/* 8016B304  EC 5C 00 72 */	fmuls f2, f28, f1
/* 8016B308  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 8016B30C  EC 01 E0 28 */	fsubs f0, f1, f28
/* 8016B310  EC 00 10 2A */	fadds f0, f0, f2
/* 8016B314  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016B318  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 8016B31C  38 61 00 4C */	addi r3, r1, 0x4c
/* 8016B320  38 80 FF FF */	li r4, -1
/* 8016B324  4B EC 51 ED */	bl __dt__7cSAngleFv
/* 8016B328  48 00 00 54 */	b lbl_8016B37C
lbl_8016B32C:
/* 8016B32C  C0 3F 01 BC */	lfs f1, 0x1bc(r31)
/* 8016B330  C0 42 9C F8 */	lfs f2, lit_8016(r2)
/* 8016B334  C0 01 05 B0 */	lfs f0, 0x5b0(r1)
/* 8016B338  EC 42 00 32 */	fmuls f2, f2, f0
/* 8016B33C  4B F1 CE 01 */	bl rationalBezierRatio__8dCamMathFff
/* 8016B340  38 61 00 48 */	addi r3, r1, 0x48
/* 8016B344  C0 02 9D E8 */	lfs f0, lit_10581(r2)
/* 8016B348  EC 20 00 72 */	fmuls f1, f0, f1
/* 8016B34C  48 10 5C 7D */	bl __ct__7cSAngleFf
/* 8016B350  38 61 00 48 */	addi r3, r1, 0x48
/* 8016B354  48 10 5D CD */	bl Cos__7cSAngleCFv
/* 8016B358  EC 5C 00 72 */	fmuls f2, f28, f1
/* 8016B35C  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 8016B360  EC 01 E0 28 */	fsubs f0, f1, f28
/* 8016B364  EC 00 10 2A */	fadds f0, f0, f2
/* 8016B368  EC 01 00 28 */	fsubs f0, f1, f0
/* 8016B36C  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 8016B370  38 61 00 48 */	addi r3, r1, 0x48
/* 8016B374  38 80 FF FF */	li r4, -1
/* 8016B378  4B EC 51 99 */	bl __dt__7cSAngleFv
lbl_8016B37C:
/* 8016B37C  C0 3F 04 30 */	lfs f1, 0x430(r31)
/* 8016B380  C0 1F 01 C4 */	lfs f0, 0x1c4(r31)
/* 8016B384  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016B388  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 8016B38C  C0 1F 04 30 */	lfs f0, 0x430(r31)
/* 8016B390  EC 00 07 B2 */	fmuls f0, f0, f30
/* 8016B394  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 8016B398  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016B39C  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000008@ha */
/* 8016B3A0  38 84 00 08 */	addi r4, r4, 0x0008 /* 0x02000008@l */
/* 8016B3A4  48 00 0F C5 */	bl func_8016C368
/* 8016B3A8  28 03 00 00 */	cmplwi r3, 0
/* 8016B3AC  41 82 00 D4 */	beq lbl_8016B480
/* 8016B3B0  80 7F 03 FC */	lwz r3, 0x3fc(r31)
/* 8016B3B4  2C 03 00 00 */	cmpwi r3, 0
/* 8016B3B8  40 82 00 64 */	bne lbl_8016B41C
/* 8016B3BC  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016B3C0  38 80 00 08 */	li r4, 8
/* 8016B3C4  48 00 0F A5 */	bl func_8016C368
/* 8016B3C8  28 03 00 00 */	cmplwi r3, 0
/* 8016B3CC  41 82 00 10 */	beq lbl_8016B3DC
/* 8016B3D0  38 00 00 01 */	li r0, 1
/* 8016B3D4  90 1F 03 FC */	stw r0, 0x3fc(r31)
/* 8016B3D8  48 00 00 B0 */	b lbl_8016B488
lbl_8016B3DC:
/* 8016B3DC  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8016B3E0  38 8D 8C 18 */	la r4, _270__7cSAngle(r13) /* 80451198-_SDA_BASE_ */
/* 8016B3E4  48 01 76 A9 */	bl __gt__7cSAngleCFRC7cSAngle
/* 8016B3E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016B3EC  41 82 00 24 */	beq lbl_8016B410
/* 8016B3F0  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8016B3F4  38 8D 8C 10 */	la r4, _90__7cSAngle(r13) /* 80451190-_SDA_BASE_ */
/* 8016B3F8  48 01 76 75 */	bl __lt__7cSAngleCFRC7cSAngle
/* 8016B3FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016B400  41 82 00 10 */	beq lbl_8016B410
/* 8016B404  38 00 00 01 */	li r0, 1
/* 8016B408  90 1F 03 FC */	stw r0, 0x3fc(r31)
/* 8016B40C  48 00 00 7C */	b lbl_8016B488
lbl_8016B410:
/* 8016B410  38 00 FF FF */	li r0, -1
/* 8016B414  90 1F 03 FC */	stw r0, 0x3fc(r31)
/* 8016B418  48 00 00 70 */	b lbl_8016B488
lbl_8016B41C:
/* 8016B41C  40 80 00 10 */	bge lbl_8016B42C
/* 8016B420  38 03 FF FF */	addi r0, r3, -1
/* 8016B424  90 1F 03 FC */	stw r0, 0x3fc(r31)
/* 8016B428  48 00 00 60 */	b lbl_8016B488
lbl_8016B42C:
/* 8016B42C  2C 03 00 1E */	cmpwi r3, 0x1e
/* 8016B430  40 80 00 44 */	bge lbl_8016B474
/* 8016B434  C0 42 9C 90 */	lfs f2, lit_4445(r2)
/* 8016B438  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016B43C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 8016B440  90 01 05 AC */	stw r0, 0x5ac(r1)
/* 8016B444  3C 00 43 30 */	lis r0, 0x4330
/* 8016B448  90 01 05 A8 */	stw r0, 0x5a8(r1)
/* 8016B44C  C8 01 05 A8 */	lfd f0, 0x5a8(r1)
/* 8016B450  EC 20 08 28 */	fsubs f1, f0, f1
/* 8016B454  C0 02 9D 18 */	lfs f0, lit_8127(r2)
/* 8016B458  EC 01 00 24 */	fdivs f0, f1, f0
/* 8016B45C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8016B460  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 8016B464  80 7F 03 FC */	lwz r3, 0x3fc(r31)
/* 8016B468  38 03 00 01 */	addi r0, r3, 1
/* 8016B46C  90 1F 03 FC */	stw r0, 0x3fc(r31)
/* 8016B470  48 00 00 18 */	b lbl_8016B488
lbl_8016B474:
/* 8016B474  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 8016B478  D0 1F 04 30 */	stfs f0, 0x430(r31)
/* 8016B47C  48 00 00 0C */	b lbl_8016B488
lbl_8016B480:
/* 8016B480  38 00 00 00 */	li r0, 0
/* 8016B484  90 1F 03 FC */	stw r0, 0x3fc(r31)
lbl_8016B488:
/* 8016B488  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016B48C  48 01 75 BD */	bl __ct__7cSAngleFv
/* 8016B490  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8016B494  48 01 75 75 */	bl V__7cSGlobeCFv
/* 8016B498  48 10 5C 89 */	bl Cos__7cSAngleCFv
/* 8016B49C  C0 1F 04 30 */	lfs f0, 0x430(r31)
/* 8016B4A0  EE 20 00 72 */	fmuls f17, f0, f1
/* 8016B4A4  7F E3 FB 78 */	mr r3, r31
/* 8016B4A8  3C 80 00 08 */	lis r4, 8
/* 8016B4AC  48 01 74 D5 */	bl chkFlag__9dCamera_cFUl
/* 8016B4B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016B4B4  41 82 00 98 */	beq lbl_8016B54C
/* 8016B4B8  38 61 03 9C */	addi r3, r1, 0x39c
/* 8016B4BC  38 9F 00 90 */	addi r4, r31, 0x90
/* 8016B4C0  4B F2 C3 35 */	bl __ct__4cXyzFRC4cXyz
/* 8016B4C4  38 61 01 68 */	addi r3, r1, 0x168
/* 8016B4C8  38 81 03 9C */	addi r4, r1, 0x39c
/* 8016B4CC  38 BF 00 64 */	addi r5, r31, 0x64
/* 8016B4D0  48 0F B6 65 */	bl __mi__4cXyzCFRC3Vec
/* 8016B4D4  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8016B4D8  38 81 01 68 */	addi r4, r1, 0x168
/* 8016B4DC  48 10 63 A5 */	bl __ct__7cSGlobeFRC4cXyz
/* 8016B4E0  38 61 01 68 */	addi r3, r1, 0x168
/* 8016B4E4  38 80 FF FF */	li r4, -1
/* 8016B4E8  4B E9 DC 9D */	bl __dt__4cXyzFv
/* 8016B4EC  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8016B4F0  48 01 77 95 */	bl U__7cSGlobeCFv
/* 8016B4F4  7C 64 1B 78 */	mr r4, r3
/* 8016B4F8  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016B4FC  48 01 77 AD */	bl __as__7cSAngleFRC7cSAngle
/* 8016B500  38 61 00 44 */	addi r3, r1, 0x44
/* 8016B504  38 9F 00 9C */	addi r4, r31, 0x9c
/* 8016B508  48 00 0D CD */	bl func_8016C2D4
/* 8016B50C  38 61 00 44 */	addi r3, r1, 0x44
/* 8016B510  48 10 5C 11 */	bl Cos__7cSAngleCFv
/* 8016B514  C0 02 9D 28 */	lfs f0, lit_9395(r2)
/* 8016B518  EC 20 00 72 */	fmuls f1, f0, f1
/* 8016B51C  C0 02 9D D4 */	lfs f0, lit_10576(r2)
/* 8016B520  EE 20 08 2A */	fadds f17, f0, f1
/* 8016B524  38 61 00 44 */	addi r3, r1, 0x44
/* 8016B528  38 80 FF FF */	li r4, -1
/* 8016B52C  4B EC 4F E5 */	bl __dt__7cSAngleFv
/* 8016B530  38 61 00 F0 */	addi r3, r1, 0xf0
/* 8016B534  38 80 FF FF */	li r4, -1
/* 8016B538  4B F0 61 45 */	bl __dt__7cSGlobeFv
/* 8016B53C  38 61 03 9C */	addi r3, r1, 0x39c
/* 8016B540  38 80 FF FF */	li r4, -1
/* 8016B544  4B E9 DC 41 */	bl __dt__4cXyzFv
/* 8016B548  48 00 01 E8 */	b lbl_8016B730
lbl_8016B54C:
/* 8016B54C  88 1F 04 78 */	lbz r0, 0x478(r31)
/* 8016B550  28 00 00 00 */	cmplwi r0, 0
/* 8016B554  41 82 00 40 */	beq lbl_8016B594
/* 8016B558  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8016B55C  48 10 5B 8D */	bl Inv__7cSAngleCFv
/* 8016B560  7C 64 1B 78 */	mr r4, r3
/* 8016B564  38 61 00 40 */	addi r3, r1, 0x40
/* 8016B568  48 10 5A 31 */	bl __ct__7cSAngleFs
/* 8016B56C  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016B570  38 81 00 40 */	addi r4, r1, 0x40
/* 8016B574  48 01 77 35 */	bl __as__7cSAngleFRC7cSAngle
/* 8016B578  38 61 00 40 */	addi r3, r1, 0x40
/* 8016B57C  38 80 FF FF */	li r4, -1
/* 8016B580  4B EC 4F 91 */	bl __dt__7cSAngleFv
/* 8016B584  38 7F 09 70 */	addi r3, r31, 0x970
/* 8016B588  48 01 76 61 */	bl WaitRollSpeed__11dCamSetup_cFv
/* 8016B58C  FE 20 08 90 */	fmr f17, f1
/* 8016B590  48 00 01 A0 */	b lbl_8016B730
lbl_8016B594:
/* 8016B594  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8016B598  41 82 00 1C */	beq lbl_8016B5B4
/* 8016B59C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016B5A0  48 01 76 E5 */	bl U__7cSGlobeCFv
/* 8016B5A4  7C 64 1B 78 */	mr r4, r3
/* 8016B5A8  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016B5AC  48 01 76 FD */	bl __as__7cSAngleFRC7cSAngle
/* 8016B5B0  48 00 01 80 */	b lbl_8016B730
lbl_8016B5B4:
/* 8016B5B4  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8016B5B8  41 82 00 34 */	beq lbl_8016B5EC
/* 8016B5BC  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8016B5C0  48 10 5B 29 */	bl Inv__7cSAngleCFv
/* 8016B5C4  7C 64 1B 78 */	mr r4, r3
/* 8016B5C8  38 61 00 3C */	addi r3, r1, 0x3c
/* 8016B5CC  48 10 59 CD */	bl __ct__7cSAngleFs
/* 8016B5D0  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016B5D4  38 81 00 3C */	addi r4, r1, 0x3c
/* 8016B5D8  48 01 76 D1 */	bl __as__7cSAngleFRC7cSAngle
/* 8016B5DC  38 61 00 3C */	addi r3, r1, 0x3c
/* 8016B5E0  38 80 FF FF */	li r4, -1
/* 8016B5E4  4B EC 4F 2D */	bl __dt__7cSAngleFv
/* 8016B5E8  48 00 01 48 */	b lbl_8016B730
lbl_8016B5EC:
/* 8016B5EC  7F E3 FB 78 */	mr r3, r31
/* 8016B5F0  3C 80 00 10 */	lis r4, 0x10
/* 8016B5F4  48 01 73 8D */	bl chkFlag__9dCamera_cFUl
/* 8016B5F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016B5FC  40 82 00 0C */	bne lbl_8016B608
/* 8016B600  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 8016B604  41 82 01 00 */	beq lbl_8016B704
lbl_8016B608:
/* 8016B608  7F A3 EB 78 */	mr r3, r29
/* 8016B60C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 8016B610  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 8016B614  7D 89 03 A6 */	mtctr r12
/* 8016B618  4E 80 04 21 */	bctrl 
/* 8016B61C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016B620  41 82 00 74 */	beq lbl_8016B694
/* 8016B624  7F A3 EB 78 */	mr r3, r29
/* 8016B628  48 01 71 E5 */	bl getChainGrabActor__9daAlink_cFv
/* 8016B62C  7C 65 1B 78 */	mr r5, r3
/* 8016B630  38 61 01 5C */	addi r3, r1, 0x15c
/* 8016B634  7F E4 FB 78 */	mr r4, r31
/* 8016B638  4B F2 C0 E5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8016B63C  38 61 01 50 */	addi r3, r1, 0x150
/* 8016B640  38 9F 00 64 */	addi r4, r31, 0x64
/* 8016B644  38 A1 01 5C */	addi r5, r1, 0x15c
/* 8016B648  48 0F B4 ED */	bl __mi__4cXyzCFRC3Vec
/* 8016B64C  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8016B650  38 81 01 50 */	addi r4, r1, 0x150
/* 8016B654  48 10 62 2D */	bl __ct__7cSGlobeFRC4cXyz
/* 8016B658  38 61 01 50 */	addi r3, r1, 0x150
/* 8016B65C  38 80 FF FF */	li r4, -1
/* 8016B660  4B E9 DB 25 */	bl __dt__4cXyzFv
/* 8016B664  38 61 01 5C */	addi r3, r1, 0x15c
/* 8016B668  38 80 FF FF */	li r4, -1
/* 8016B66C  4B E9 DB 19 */	bl __dt__4cXyzFv
/* 8016B670  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8016B674  48 01 76 11 */	bl U__7cSGlobeCFv
/* 8016B678  7C 64 1B 78 */	mr r4, r3
/* 8016B67C  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016B680  48 01 76 29 */	bl __as__7cSAngleFRC7cSAngle
/* 8016B684  38 61 00 E8 */	addi r3, r1, 0xe8
/* 8016B688  38 80 FF FF */	li r4, -1
/* 8016B68C  4B F0 5F F1 */	bl __dt__7cSGlobeFv
/* 8016B690  48 00 00 A0 */	b lbl_8016B730
lbl_8016B694:
/* 8016B694  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 8016B698  2C 00 00 01 */	cmpwi r0, 1
/* 8016B69C  40 82 00 10 */	bne lbl_8016B6AC
/* 8016B6A0  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 8016B6A4  2C 00 00 01 */	cmpwi r0, 1
/* 8016B6A8  41 82 00 4C */	beq lbl_8016B6F4
lbl_8016B6AC:
/* 8016B6AC  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016B6B0  7F C4 F3 78 */	mr r4, r30
/* 8016B6B4  38 A0 01 00 */	li r5, 0x100
/* 8016B6B8  48 01 75 D5 */	bl Flag__11dCamParam_cFlUs
/* 8016B6BC  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8016B6C0  40 82 00 34 */	bne lbl_8016B6F4
/* 8016B6C4  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8016B6C8  48 10 5A 21 */	bl Inv__7cSAngleCFv
/* 8016B6CC  7C 64 1B 78 */	mr r4, r3
/* 8016B6D0  38 61 00 38 */	addi r3, r1, 0x38
/* 8016B6D4  48 10 58 C5 */	bl __ct__7cSAngleFs
/* 8016B6D8  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016B6DC  38 81 00 38 */	addi r4, r1, 0x38
/* 8016B6E0  48 01 75 C9 */	bl __as__7cSAngleFRC7cSAngle
/* 8016B6E4  38 61 00 38 */	addi r3, r1, 0x38
/* 8016B6E8  38 80 FF FF */	li r4, -1
/* 8016B6EC  4B EC 4E 25 */	bl __dt__7cSAngleFv
/* 8016B6F0  48 00 00 40 */	b lbl_8016B730
lbl_8016B6F4:
/* 8016B6F4  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016B6F8  38 9F 04 7E */	addi r4, r31, 0x47e
/* 8016B6FC  48 01 75 AD */	bl __as__7cSAngleFRC7cSAngle
/* 8016B700  48 00 00 30 */	b lbl_8016B730
lbl_8016B704:
/* 8016B704  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8016B708  48 10 59 E1 */	bl Inv__7cSAngleCFv
/* 8016B70C  7C 64 1B 78 */	mr r4, r3
/* 8016B710  38 61 00 34 */	addi r3, r1, 0x34
/* 8016B714  48 10 58 85 */	bl __ct__7cSAngleFs
/* 8016B718  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016B71C  38 81 00 34 */	addi r4, r1, 0x34
/* 8016B720  48 01 75 89 */	bl __as__7cSAngleFRC7cSAngle
/* 8016B724  38 61 00 34 */	addi r3, r1, 0x34
/* 8016B728  38 80 FF FF */	li r4, -1
/* 8016B72C  4B EC 4D E5 */	bl __dt__7cSAngleFv
lbl_8016B730:
/* 8016B730  C1 DF 01 D8 */	lfs f14, 0x1d8(r31)
/* 8016B734  FC 20 70 90 */	fmr f1, f14
/* 8016B738  48 01 73 05 */	bl fabsf__3stdFf
/* 8016B73C  C0 3F 01 DC */	lfs f1, 0x1dc(r31)
/* 8016B740  48 01 72 FD */	bl fabsf__3stdFf
/* 8016B744  38 00 00 00 */	li r0, 0
/* 8016B748  98 1F 04 7B */	stb r0, 0x47b(r31)
/* 8016B74C  38 7F 0A EC */	addi r3, r31, 0xaec
/* 8016B750  7F C4 F3 78 */	mr r4, r30
/* 8016B754  38 A0 00 40 */	li r5, 0x40
/* 8016B758  48 01 75 35 */	bl Flag__11dCamParam_cFlUs
/* 8016B75C  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 8016B760  40 82 01 28 */	bne lbl_8016B888
/* 8016B764  FC 20 70 90 */	fmr f1, f14
/* 8016B768  48 01 72 D5 */	bl fabsf__3stdFf
/* 8016B76C  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 8016B770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016B774  40 81 01 14 */	ble lbl_8016B888
/* 8016B778  FC 20 70 90 */	fmr f1, f14
/* 8016B77C  C0 42 9C 90 */	lfs f2, lit_4445(r2)
/* 8016B780  4B F1 C9 BD */	bl rationalBezierRatio__8dCamMathFff
/* 8016B784  C0 02 9D B8 */	lfs f0, lit_10569(r2)
/* 8016B788  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016B78C  C0 5F 04 94 */	lfs f2, 0x494(r31)
/* 8016B790  EC 20 10 28 */	fsubs f1, f0, f2
/* 8016B794  C0 1F 04 34 */	lfs f0, 0x434(r31)
/* 8016B798  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016B79C  EC 02 00 2A */	fadds f0, f2, f0
/* 8016B7A0  D0 1F 04 94 */	stfs f0, 0x494(r31)
/* 8016B7A4  38 61 00 30 */	addi r3, r1, 0x30
/* 8016B7A8  C0 3F 04 94 */	lfs f1, 0x494(r31)
/* 8016B7AC  48 10 58 1D */	bl __ct__7cSAngleFf
/* 8016B7B0  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8016B7B4  48 01 74 D1 */	bl U__7cSGlobeCFv
/* 8016B7B8  7C 64 1B 78 */	mr r4, r3
/* 8016B7BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8016B7C0  38 A1 00 30 */	addi r5, r1, 0x30
/* 8016B7C4  48 10 59 B1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016B7C8  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016B7CC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8016B7D0  48 01 74 D9 */	bl __as__7cSAngleFRC7cSAngle
/* 8016B7D4  38 61 00 2C */	addi r3, r1, 0x2c
/* 8016B7D8  38 80 FF FF */	li r4, -1
/* 8016B7DC  4B EC 4D 35 */	bl __dt__7cSAngleFv
/* 8016B7E0  38 61 00 30 */	addi r3, r1, 0x30
/* 8016B7E4  38 80 FF FF */	li r4, -1
/* 8016B7E8  4B EC 4D 29 */	bl __dt__7cSAngleFv
/* 8016B7EC  FC 20 70 90 */	fmr f1, f14
/* 8016B7F0  48 01 72 4D */	bl fabsf__3stdFf
/* 8016B7F4  C0 02 9C E8 */	lfs f0, lit_6630(r2)
/* 8016B7F8  EE 21 00 28 */	fsubs f17, f1, f0
/* 8016B7FC  38 7F 09 70 */	addi r3, r31, 0x970
/* 8016B800  38 80 10 00 */	li r4, 0x1000
/* 8016B804  48 01 73 CD */	bl CheckFlag__11dCamSetup_cFUs
/* 8016B808  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016B80C  41 82 00 18 */	beq lbl_8016B824
/* 8016B810  88 1F 02 98 */	lbz r0, 0x298(r31)
/* 8016B814  28 00 00 00 */	cmplwi r0, 0
/* 8016B818  40 82 00 0C */	bne lbl_8016B824
/* 8016B81C  7F E3 FB 78 */	mr r3, r31
/* 8016B820  4B FF 98 E5 */	bl setUSOAngle__9dCamera_cFv
lbl_8016B824:
/* 8016B824  38 7F 09 70 */	addi r3, r31, 0x970
/* 8016B828  38 80 00 40 */	li r4, 0x40
/* 8016B82C  48 01 73 8D */	bl CheckFlag2__11dCamSetup_cFUs
/* 8016B830  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016B834  41 82 00 1C */	beq lbl_8016B850
/* 8016B838  38 00 00 01 */	li r0, 1
/* 8016B83C  98 1F 04 7B */	stb r0, 0x47b(r31)
/* 8016B840  38 7F 04 82 */	addi r3, r31, 0x482
/* 8016B844  38 81 00 BC */	addi r4, r1, 0xbc
/* 8016B848  48 01 74 61 */	bl __as__7cSAngleFRC7cSAngle
/* 8016B84C  48 00 00 2C */	b lbl_8016B878
lbl_8016B850:
/* 8016B850  7F E3 FB 78 */	mr r3, r31
/* 8016B854  3C 80 00 10 */	lis r4, 0x10
/* 8016B858  48 01 71 29 */	bl chkFlag__9dCamera_cFUl
/* 8016B85C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016B860  41 82 00 18 */	beq lbl_8016B878
/* 8016B864  38 00 00 01 */	li r0, 1
/* 8016B868  98 1F 04 7B */	stb r0, 0x47b(r31)
/* 8016B86C  38 7F 04 82 */	addi r3, r31, 0x482
/* 8016B870  38 81 00 BC */	addi r4, r1, 0xbc
/* 8016B874  48 01 74 35 */	bl __as__7cSAngleFRC7cSAngle
lbl_8016B878:
/* 8016B878  7F E3 FB 78 */	mr r3, r31
/* 8016B87C  3C 80 00 02 */	lis r4, 2
/* 8016B880  48 01 70 ED */	bl clrFlag__9dCamera_cFUl
/* 8016B884  48 00 00 C0 */	b lbl_8016B944
lbl_8016B888:
/* 8016B888  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016B88C  3C 80 02 01 */	lis r4, 0x201
/* 8016B890  48 00 0A A1 */	bl func_8016C330
/* 8016B894  28 03 00 00 */	cmplwi r3, 0
/* 8016B898  41 82 00 4C */	beq lbl_8016B8E4
/* 8016B89C  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 8016B8A0  2C 00 00 00 */	cmpwi r0, 0
/* 8016B8A4  40 82 00 40 */	bne lbl_8016B8E4
/* 8016B8A8  38 7F 00 28 */	addi r3, r31, 0x28
/* 8016B8AC  48 01 73 D9 */	bl U__7cSGlobeCFv
/* 8016B8B0  48 00 0A 1D */	bl Val__7cSAngleCFv
/* 8016B8B4  7C 64 1B 78 */	mr r4, r3
/* 8016B8B8  38 61 00 28 */	addi r3, r1, 0x28
/* 8016B8BC  48 10 56 DD */	bl __ct__7cSAngleFs
/* 8016B8C0  38 7F 04 82 */	addi r3, r31, 0x482
/* 8016B8C4  38 81 00 28 */	addi r4, r1, 0x28
/* 8016B8C8  48 01 73 E1 */	bl __as__7cSAngleFRC7cSAngle
/* 8016B8CC  38 61 00 28 */	addi r3, r1, 0x28
/* 8016B8D0  38 80 FF FF */	li r4, -1
/* 8016B8D4  4B EC 4C 3D */	bl __dt__7cSAngleFv
/* 8016B8D8  38 00 00 01 */	li r0, 1
/* 8016B8DC  98 1F 04 7B */	stb r0, 0x47b(r31)
/* 8016B8E0  48 00 00 64 */	b lbl_8016B944
lbl_8016B8E4:
/* 8016B8E4  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 8016B8E8  2C 00 00 01 */	cmpwi r0, 1
/* 8016B8EC  40 82 00 50 */	bne lbl_8016B93C
/* 8016B8F0  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016B8F4  48 00 0A 59 */	bl func_8016C34C
/* 8016B8F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016B8FC  41 82 00 40 */	beq lbl_8016B93C
/* 8016B900  38 7F 00 28 */	addi r3, r31, 0x28
/* 8016B904  48 01 73 81 */	bl U__7cSGlobeCFv
/* 8016B908  48 00 09 C5 */	bl Val__7cSAngleCFv
/* 8016B90C  7C 64 1B 78 */	mr r4, r3
/* 8016B910  38 61 00 24 */	addi r3, r1, 0x24
/* 8016B914  48 10 56 85 */	bl __ct__7cSAngleFs
/* 8016B918  38 7F 04 82 */	addi r3, r31, 0x482
/* 8016B91C  38 81 00 24 */	addi r4, r1, 0x24
/* 8016B920  48 01 73 89 */	bl __as__7cSAngleFRC7cSAngle
/* 8016B924  38 61 00 24 */	addi r3, r1, 0x24
/* 8016B928  38 80 FF FF */	li r4, -1
/* 8016B92C  4B EC 4B E5 */	bl __dt__7cSAngleFv
/* 8016B930  38 00 00 01 */	li r0, 1
/* 8016B934  98 1F 04 7B */	stb r0, 0x47b(r31)
/* 8016B938  48 00 00 0C */	b lbl_8016B944
lbl_8016B93C:
/* 8016B93C  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016B940  D0 1F 04 94 */	stfs f0, 0x494(r31)
lbl_8016B944:
/* 8016B944  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016B948  3C 80 01 00 */	lis r4, 0x100
/* 8016B94C  48 00 09 E5 */	bl func_8016C330
/* 8016B950  28 03 00 00 */	cmplwi r3, 0
/* 8016B954  40 82 00 10 */	bne lbl_8016B964
/* 8016B958  88 1F 04 79 */	lbz r0, 0x479(r31)
/* 8016B95C  28 00 00 00 */	cmplwi r0, 0
/* 8016B960  41 82 00 3C */	beq lbl_8016B99C
lbl_8016B964:
/* 8016B964  38 7F 00 28 */	addi r3, r31, 0x28
/* 8016B968  48 01 73 1D */	bl U__7cSGlobeCFv
/* 8016B96C  48 00 09 61 */	bl Val__7cSAngleCFv
/* 8016B970  7C 64 1B 78 */	mr r4, r3
/* 8016B974  38 61 00 20 */	addi r3, r1, 0x20
/* 8016B978  48 10 56 21 */	bl __ct__7cSAngleFs
/* 8016B97C  38 7F 04 82 */	addi r3, r31, 0x482
/* 8016B980  38 81 00 20 */	addi r4, r1, 0x20
/* 8016B984  48 01 73 25 */	bl __as__7cSAngleFRC7cSAngle
/* 8016B988  38 61 00 20 */	addi r3, r1, 0x20
/* 8016B98C  38 80 FF FF */	li r4, -1
/* 8016B990  4B EC 4B 81 */	bl __dt__7cSAngleFv
/* 8016B994  38 00 00 01 */	li r0, 1
/* 8016B998  98 1F 04 7B */	stb r0, 0x47b(r31)
lbl_8016B99C:
/* 8016B99C  88 1F 04 7B */	lbz r0, 0x47b(r31)
/* 8016B9A0  28 00 00 00 */	cmplwi r0, 0
/* 8016B9A4  41 82 00 14 */	beq lbl_8016B9B8
/* 8016B9A8  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016B9AC  38 9F 04 82 */	addi r4, r31, 0x482
/* 8016B9B0  4B F2 2E E5 */	bl U__7cSGlobeFRC7cSAngle
/* 8016B9B4  48 00 00 74 */	b lbl_8016BA28
lbl_8016B9B8:
/* 8016B9B8  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8016B9BC  48 01 72 C9 */	bl U__7cSGlobeCFv
/* 8016B9C0  7C 65 1B 78 */	mr r5, r3
/* 8016B9C4  38 61 00 1C */	addi r3, r1, 0x1c
/* 8016B9C8  38 81 00 BC */	addi r4, r1, 0xbc
/* 8016B9CC  48 10 57 D9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016B9D0  38 61 00 18 */	addi r3, r1, 0x18
/* 8016B9D4  38 81 00 1C */	addi r4, r1, 0x1c
/* 8016B9D8  FC 20 88 90 */	fmr f1, f17
/* 8016B9DC  48 10 58 89 */	bl __ml__7cSAngleCFf
/* 8016B9E0  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8016B9E4  48 01 72 A1 */	bl U__7cSGlobeCFv
/* 8016B9E8  7C 64 1B 78 */	mr r4, r3
/* 8016B9EC  38 61 00 14 */	addi r3, r1, 0x14
/* 8016B9F0  38 A1 00 18 */	addi r5, r1, 0x18
/* 8016B9F4  48 10 57 81 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016B9F8  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016B9FC  38 81 00 14 */	addi r4, r1, 0x14
/* 8016BA00  4B F2 2E 95 */	bl U__7cSGlobeFRC7cSAngle
/* 8016BA04  38 61 00 14 */	addi r3, r1, 0x14
/* 8016BA08  38 80 FF FF */	li r4, -1
/* 8016BA0C  4B EC 4B 05 */	bl __dt__7cSAngleFv
/* 8016BA10  38 61 00 18 */	addi r3, r1, 0x18
/* 8016BA14  38 80 FF FF */	li r4, -1
/* 8016BA18  4B EC 4A F9 */	bl __dt__7cSAngleFv
/* 8016BA1C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8016BA20  38 80 FF FF */	li r4, -1
/* 8016BA24  4B EC 4A ED */	bl __dt__7cSAngleFv
lbl_8016BA28:
/* 8016BA28  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8016BA2C  48 01 70 1D */	bl __ct__7cSAngleFv
/* 8016BA30  56 E0 06 3F */	clrlwi. r0, r23, 0x18
/* 8016BA34  41 82 00 90 */	beq lbl_8016BAC4
/* 8016BA38  56 40 06 3F */	clrlwi. r0, r18, 0x18
/* 8016BA3C  40 82 00 88 */	bne lbl_8016BAC4
/* 8016BA40  C8 01 05 D0 */	lfd f0, 0x5d0(r1)
/* 8016BA44  D0 1F 04 38 */	stfs f0, 0x438(r31)
/* 8016BA48  A8 1F 04 02 */	lha r0, 0x402(r31)
/* 8016BA4C  2C 00 00 0E */	cmpwi r0, 0xe
/* 8016BA50  40 80 00 50 */	bge lbl_8016BAA0
/* 8016BA54  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 8016BA58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8016BA5C  90 01 05 AC */	stw r0, 0x5ac(r1)
/* 8016BA60  3C 00 43 30 */	lis r0, 0x4330
/* 8016BA64  90 01 05 A8 */	stw r0, 0x5a8(r1)
/* 8016BA68  C8 01 05 A8 */	lfd f0, 0x5a8(r1)
/* 8016BA6C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8016BA70  C0 02 9D E4 */	lfs f0, lit_10580(r2)
/* 8016BA74  EC 21 00 24 */	fdivs f1, f1, f0
/* 8016BA78  C0 41 05 CC */	lfs f2, 0x5cc(r1)
/* 8016BA7C  4B F1 C6 C1 */	bl rationalBezierRatio__8dCamMathFff
/* 8016BA80  D0 3F 04 60 */	stfs f1, 0x460(r31)
/* 8016BA84  7F E3 FB 78 */	mr r3, r31
/* 8016BA88  3C 80 04 00 */	lis r4, 0x400
/* 8016BA8C  4B F2 BC ED */	bl setFlag__9dCamera_cFUl
/* 8016BA90  A8 7F 04 02 */	lha r3, 0x402(r31)
/* 8016BA94  38 03 00 01 */	addi r0, r3, 1
/* 8016BA98  B0 1F 04 02 */	sth r0, 0x402(r31)
/* 8016BA9C  48 00 02 DC */	b lbl_8016BD78
lbl_8016BAA0:
/* 8016BAA0  7F A3 EB 78 */	mr r3, r29
/* 8016BAA4  4B F6 70 19 */	bl checkCutLargeTurnState__9daAlink_cCFv
/* 8016BAA8  2C 03 00 00 */	cmpwi r3, 0
/* 8016BAAC  41 82 00 0C */	beq lbl_8016BAB8
/* 8016BAB0  38 00 00 01 */	li r0, 1
/* 8016BAB4  98 1F 04 7A */	stb r0, 0x47a(r31)
lbl_8016BAB8:
/* 8016BAB8  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016BABC  D0 1F 04 60 */	stfs f0, 0x460(r31)
/* 8016BAC0  48 00 02 B8 */	b lbl_8016BD78
lbl_8016BAC4:
/* 8016BAC4  A8 1F 04 02 */	lha r0, 0x402(r31)
/* 8016BAC8  2C 00 00 0E */	cmpwi r0, 0xe
/* 8016BACC  41 80 00 2C */	blt lbl_8016BAF8
/* 8016BAD0  2C 00 00 22 */	cmpwi r0, 0x22
/* 8016BAD4  40 80 00 24 */	bge lbl_8016BAF8
/* 8016BAD8  C8 01 05 D0 */	lfd f0, 0x5d0(r1)
/* 8016BADC  D0 1F 04 38 */	stfs f0, 0x438(r31)
/* 8016BAE0  A8 7F 04 02 */	lha r3, 0x402(r31)
/* 8016BAE4  38 03 00 01 */	addi r0, r3, 1
/* 8016BAE8  B0 1F 04 02 */	sth r0, 0x402(r31)
/* 8016BAEC  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016BAF0  D0 1F 04 60 */	stfs f0, 0x460(r31)
/* 8016BAF4  48 00 02 84 */	b lbl_8016BD78
lbl_8016BAF8:
/* 8016BAF8  7C 00 07 35 */	extsh. r0, r0
/* 8016BAFC  41 82 00 0C */	beq lbl_8016BB08
/* 8016BB00  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016BB04  D0 1F 04 60 */	stfs f0, 0x460(r31)
lbl_8016BB08:
/* 8016BB08  38 00 00 00 */	li r0, 0
/* 8016BB0C  B0 1F 04 02 */	sth r0, 0x402(r31)
/* 8016BB10  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 8016BB14  2C 00 00 01 */	cmpwi r0, 1
/* 8016BB18  40 82 00 38 */	bne lbl_8016BB50
/* 8016BB1C  C0 3F 04 8C */	lfs f1, 0x48c(r31)
/* 8016BB20  EC 12 98 28 */	fsubs f0, f18, f19
/* 8016BB24  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016BB28  EC 73 00 2A */	fadds f3, f19, f0
/* 8016BB2C  C0 02 9C 90 */	lfs f0, lit_4445(r2)
/* 8016BB30  D0 1F 04 60 */	stfs f0, 0x460(r31)
/* 8016BB34  C0 5F 04 38 */	lfs f2, 0x438(r31)
/* 8016BB38  C0 3F 04 30 */	lfs f1, 0x430(r31)
/* 8016BB3C  EC 03 10 28 */	fsubs f0, f3, f2
/* 8016BB40  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016BB44  EC 02 00 2A */	fadds f0, f2, f0
/* 8016BB48  D0 1F 04 38 */	stfs f0, 0x438(r31)
/* 8016BB4C  48 00 02 2C */	b lbl_8016BD78
lbl_8016BB50:
/* 8016BB50  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016BB54  3C 80 00 80 */	lis r4, 0x80
/* 8016BB58  48 00 07 D9 */	bl func_8016C330
/* 8016BB5C  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016BB60  3C 80 01 00 */	lis r4, 0x100
/* 8016BB64  48 00 07 CD */	bl func_8016C330
/* 8016BB68  28 03 00 00 */	cmplwi r3, 0
/* 8016BB6C  40 82 00 10 */	bne lbl_8016BB7C
/* 8016BB70  88 1F 04 5B */	lbz r0, 0x45b(r31)
/* 8016BB74  28 00 00 00 */	cmplwi r0, 0
/* 8016BB78  41 82 00 14 */	beq lbl_8016BB8C
lbl_8016BB7C:
/* 8016BB7C  C0 02 9D 24 */	lfs f0, lit_8530(r2)
/* 8016BB80  D0 1F 04 60 */	stfs f0, 0x460(r31)
/* 8016BB84  D2 7F 04 38 */	stfs f19, 0x438(r31)
/* 8016BB88  48 00 01 F0 */	b lbl_8016BD78
lbl_8016BB8C:
/* 8016BB8C  7F E3 FB 78 */	mr r3, r31
/* 8016BB90  3C 80 00 01 */	lis r4, 1
/* 8016BB94  48 01 6D ED */	bl chkFlag__9dCamera_cFUl
/* 8016BB98  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016BB9C  41 82 00 24 */	beq lbl_8016BBC0
/* 8016BBA0  C0 5F 04 38 */	lfs f2, 0x438(r31)
/* 8016BBA4  C0 3F 04 08 */	lfs f1, 0x408(r31)
/* 8016BBA8  EC 13 10 28 */	fsubs f0, f19, f2
/* 8016BBAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016BBB0  EC 02 00 2A */	fadds f0, f2, f0
/* 8016BBB4  D0 1F 04 38 */	stfs f0, 0x438(r31)
/* 8016BBB8  D2 1F 04 60 */	stfs f16, 0x460(r31)
/* 8016BBBC  48 00 01 BC */	b lbl_8016BD78
lbl_8016BBC0:
/* 8016BBC0  7F E3 FB 78 */	mr r3, r31
/* 8016BBC4  3C 80 00 08 */	lis r4, 8
/* 8016BBC8  48 01 6D B9 */	bl chkFlag__9dCamera_cFUl
/* 8016BBCC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016BBD0  40 82 00 14 */	bne lbl_8016BBE4
/* 8016BBD4  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 8016BBD8  40 82 00 0C */	bne lbl_8016BBE4
/* 8016BBDC  56 60 06 3F */	clrlwi. r0, r19, 0x18
/* 8016BBE0  41 82 00 20 */	beq lbl_8016BC00
lbl_8016BBE4:
/* 8016BBE4  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 8016BBE8  D0 1F 04 60 */	stfs f0, 0x460(r31)
/* 8016BBEC  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016BBF0  48 01 6E 19 */	bl V__7cSGlobeCFv
/* 8016BBF4  48 10 54 3D */	bl Degree__7cSAngleCFv
/* 8016BBF8  D0 3F 04 38 */	stfs f1, 0x438(r31)
/* 8016BBFC  48 00 01 7C */	b lbl_8016BD78
lbl_8016BC00:
/* 8016BC00  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 8016BC04  40 82 00 2C */	bne lbl_8016BC30
/* 8016BC08  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8016BC0C  40 82 00 24 */	bne lbl_8016BC30
/* 8016BC10  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 8016BC14  41 82 00 24 */	beq lbl_8016BC38
/* 8016BC18  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 8016BC1C  2C 00 00 00 */	cmpwi r0, 0
/* 8016BC20  40 82 00 18 */	bne lbl_8016BC38
/* 8016BC24  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 8016BC28  2C 00 00 00 */	cmpwi r0, 0
/* 8016BC2C  40 82 00 0C */	bne lbl_8016BC38
lbl_8016BC30:
/* 8016BC30  56 20 06 3F */	clrlwi. r0, r17, 0x18
/* 8016BC34  41 82 00 54 */	beq lbl_8016BC88
lbl_8016BC38:
/* 8016BC38  C0 3F 04 8C */	lfs f1, 0x48c(r31)
/* 8016BC3C  EC 12 98 28 */	fsubs f0, f18, f19
/* 8016BC40  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016BC44  ED D3 00 2A */	fadds f14, f19, f0
/* 8016BC48  38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 8016BC4C  48 10 53 E5 */	bl Degree__7cSAngleCFv
/* 8016BC50  ED CE 08 2A */	fadds f14, f14, f1
/* 8016BC54  C0 3F 04 38 */	lfs f1, 0x438(r31)
/* 8016BC58  EC 0E 08 28 */	fsubs f0, f14, f1
/* 8016BC5C  EC 10 00 32 */	fmuls f0, f16, f0
/* 8016BC60  EC 01 00 2A */	fadds f0, f1, f0
/* 8016BC64  D0 1F 04 38 */	stfs f0, 0x438(r31)
/* 8016BC68  C0 5F 04 60 */	lfs f2, 0x460(r31)
/* 8016BC6C  C0 22 9C E8 */	lfs f1, lit_6630(r2)
/* 8016BC70  C0 0D 8A B4 */	lfs f0, JumpCushion(r13)
/* 8016BC74  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016BC78  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016BC7C  EC 02 00 2A */	fadds f0, f2, f0
/* 8016BC80  D0 1F 04 60 */	stfs f0, 0x460(r31)
/* 8016BC84  48 00 00 F4 */	b lbl_8016BD78
lbl_8016BC88:
/* 8016BC88  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 8016BC8C  41 82 00 20 */	beq lbl_8016BCAC
/* 8016BC90  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8016BC94  48 01 6D 75 */	bl V__7cSGlobeCFv
/* 8016BC98  48 10 53 99 */	bl Degree__7cSAngleCFv
/* 8016BC9C  D0 3F 04 38 */	stfs f1, 0x438(r31)
/* 8016BCA0  C0 02 9D 00 */	lfs f0, lit_8018(r2)
/* 8016BCA4  D0 1F 04 60 */	stfs f0, 0x460(r31)
/* 8016BCA8  48 00 00 D0 */	b lbl_8016BD78
lbl_8016BCAC:
/* 8016BCAC  7F A3 EB 78 */	mr r3, r29
/* 8016BCB0  48 00 05 AD */	bl func_8016C25C
/* 8016BCB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016BCB8  41 82 00 80 */	beq lbl_8016BD38
/* 8016BCBC  38 61 01 44 */	addi r3, r1, 0x144
/* 8016BCC0  7F E4 FB 78 */	mr r4, r31
/* 8016BCC4  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8016BCC8  4B F2 BA 95 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016BCCC  C0 3F 04 18 */	lfs f1, 0x418(r31)
/* 8016BCD0  C0 01 01 48 */	lfs f0, 0x148(r1)
/* 8016BCD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016BCD8  7C 00 00 26 */	mfcr r0
/* 8016BCDC  54 10 0F FE */	srwi r16, r0, 0x1f
/* 8016BCE0  38 61 01 44 */	addi r3, r1, 0x144
/* 8016BCE4  38 80 FF FF */	li r4, -1
/* 8016BCE8  4B E9 D4 9D */	bl __dt__4cXyzFv
/* 8016BCEC  28 10 00 00 */	cmplwi r16, 0
/* 8016BCF0  41 82 00 18 */	beq lbl_8016BD08
/* 8016BCF4  C0 3F 04 08 */	lfs f1, 0x408(r31)
/* 8016BCF8  C0 41 05 B8 */	lfs f2, 0x5b8(r1)
/* 8016BCFC  4B F1 C4 41 */	bl rationalBezierRatio__8dCamMathFff
/* 8016BD00  D0 3F 04 60 */	stfs f1, 0x460(r31)
/* 8016BD04  48 00 00 20 */	b lbl_8016BD24
lbl_8016BD08:
/* 8016BD08  C0 5F 04 60 */	lfs f2, 0x460(r31)
/* 8016BD0C  C0 22 9D 94 */	lfs f1, lit_10560(r2)
/* 8016BD10  C0 02 9D 24 */	lfs f0, lit_8530(r2)
/* 8016BD14  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016BD18  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016BD1C  EC 02 00 2A */	fadds f0, f2, f0
/* 8016BD20  D0 1F 04 60 */	stfs f0, 0x460(r31)
lbl_8016BD24:
/* 8016BD24  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8016BD28  48 01 6C E1 */	bl V__7cSGlobeCFv
/* 8016BD2C  48 10 53 05 */	bl Degree__7cSAngleCFv
/* 8016BD30  D0 3F 04 38 */	stfs f1, 0x438(r31)
/* 8016BD34  48 00 00 44 */	b lbl_8016BD78
lbl_8016BD38:
/* 8016BD38  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8016BD3C  48 01 6C CD */	bl V__7cSGlobeCFv
/* 8016BD40  48 10 52 F1 */	bl Degree__7cSAngleCFv
/* 8016BD44  D0 3F 04 38 */	stfs f1, 0x438(r31)
/* 8016BD48  C0 3F 04 08 */	lfs f1, 0x408(r31)
/* 8016BD4C  C0 41 05 B8 */	lfs f2, 0x5b8(r1)
/* 8016BD50  4B F1 C3 ED */	bl rationalBezierRatio__8dCamMathFff
/* 8016BD54  D0 3F 04 60 */	stfs f1, 0x460(r31)
/* 8016BD58  88 1F 04 79 */	lbz r0, 0x479(r31)
/* 8016BD5C  28 00 00 00 */	cmplwi r0, 0
/* 8016BD60  41 82 00 18 */	beq lbl_8016BD78
/* 8016BD64  38 61 00 DC */	addi r3, r1, 0xdc
/* 8016BD68  C0 22 9D EC */	lfs f1, lit_10582(r2)
/* 8016BD6C  48 10 52 A1 */	bl Val__7cSAngleFf
/* 8016BD70  C0 02 9D 24 */	lfs f0, lit_8530(r2)
/* 8016BD74  D0 1F 04 60 */	stfs f0, 0x460(r31)
lbl_8016BD78:
/* 8016BD78  A8 1F 04 02 */	lha r0, 0x402(r31)
/* 8016BD7C  2C 00 00 00 */	cmpwi r0, 0
/* 8016BD80  40 82 00 0C */	bne lbl_8016BD8C
/* 8016BD84  38 00 00 00 */	li r0, 0
/* 8016BD88  98 1F 04 7A */	stb r0, 0x47a(r31)
lbl_8016BD8C:
/* 8016BD8C  38 61 01 38 */	addi r3, r1, 0x138
/* 8016BD90  7F E4 FB 78 */	mr r4, r31
/* 8016BD94  80 BF 01 80 */	lwz r5, 0x180(r31)
/* 8016BD98  4B F2 B9 C5 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 8016BD9C  C0 01 01 3C */	lfs f0, 0x13c(r1)
/* 8016BDA0  D0 1F 04 18 */	stfs f0, 0x418(r31)
/* 8016BDA4  38 61 01 38 */	addi r3, r1, 0x138
/* 8016BDA8  38 80 FF FF */	li r4, -1
/* 8016BDAC  4B E9 D3 D9 */	bl __dt__4cXyzFv
/* 8016BDB0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8016BDB4  C0 3F 04 38 */	lfs f1, 0x438(r31)
/* 8016BDB8  48 10 52 55 */	bl Val__7cSAngleFf
/* 8016BDBC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8016BDC0  38 81 00 DC */	addi r4, r1, 0xdc
/* 8016BDC4  48 01 6C A9 */	bl __lt__7cSAngleCFRC7cSAngle
/* 8016BDC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016BDCC  41 82 00 14 */	beq lbl_8016BDE0
/* 8016BDD0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8016BDD4  38 81 00 DC */	addi r4, r1, 0xdc
/* 8016BDD8  48 10 52 21 */	bl Val__7cSAngleFRC7cSAngle
/* 8016BDDC  48 00 00 24 */	b lbl_8016BE00
lbl_8016BDE0:
/* 8016BDE0  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8016BDE4  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8016BDE8  48 01 6C A5 */	bl __gt__7cSAngleCFRC7cSAngle
/* 8016BDEC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016BDF0  41 82 00 10 */	beq lbl_8016BE00
/* 8016BDF4  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8016BDF8  38 81 00 D8 */	addi r4, r1, 0xd8
/* 8016BDFC  48 10 51 FD */	bl Val__7cSAngleFRC7cSAngle
lbl_8016BE00:
/* 8016BE00  A8 1F 04 04 */	lha r0, 0x404(r31)
/* 8016BE04  2C 00 00 00 */	cmpwi r0, 0
/* 8016BE08  41 82 00 08 */	beq lbl_8016BE10
/* 8016BE0C  D3 BF 04 60 */	stfs f29, 0x460(r31)
lbl_8016BE10:
/* 8016BE10  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016BE14  48 01 6B F5 */	bl V__7cSGlobeCFv
/* 8016BE18  7C 65 1B 78 */	mr r5, r3
/* 8016BE1C  38 61 00 10 */	addi r3, r1, 0x10
/* 8016BE20  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8016BE24  48 10 53 81 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8016BE28  38 61 00 0C */	addi r3, r1, 0xc
/* 8016BE2C  38 81 00 10 */	addi r4, r1, 0x10
/* 8016BE30  C0 3F 04 60 */	lfs f1, 0x460(r31)
/* 8016BE34  48 10 54 31 */	bl __ml__7cSAngleCFf
/* 8016BE38  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016BE3C  48 01 6B CD */	bl V__7cSGlobeCFv
/* 8016BE40  7C 64 1B 78 */	mr r4, r3
/* 8016BE44  38 61 00 08 */	addi r3, r1, 8
/* 8016BE48  38 A1 00 0C */	addi r5, r1, 0xc
/* 8016BE4C  48 10 53 29 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8016BE50  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016BE54  38 81 00 08 */	addi r4, r1, 8
/* 8016BE58  4B F2 3C 01 */	bl V__7cSGlobeFRC7cSAngle
/* 8016BE5C  38 61 00 08 */	addi r3, r1, 8
/* 8016BE60  38 80 FF FF */	li r4, -1
/* 8016BE64  4B EC 46 AD */	bl __dt__7cSAngleFv
/* 8016BE68  38 61 00 0C */	addi r3, r1, 0xc
/* 8016BE6C  38 80 FF FF */	li r4, -1
/* 8016BE70  4B EC 46 A1 */	bl __dt__7cSAngleFv
/* 8016BE74  38 61 00 10 */	addi r3, r1, 0x10
/* 8016BE78  38 80 FF FF */	li r4, -1
/* 8016BE7C  4B EC 46 95 */	bl __dt__7cSAngleFv
/* 8016BE80  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8016BE84  48 01 6B E1 */	bl R__7cSGlobeCFv
/* 8016BE88  FD C0 08 90 */	fmr f14, f1
/* 8016BE8C  A8 1F 04 04 */	lha r0, 0x404(r31)
/* 8016BE90  2C 00 00 00 */	cmpwi r0, 0
/* 8016BE94  41 82 00 0C */	beq lbl_8016BEA0
/* 8016BE98  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016BE9C  D0 01 05 BC */	stfs f0, 0x5bc(r1)
lbl_8016BEA0:
/* 8016BEA0  C0 5F 04 10 */	lfs f2, 0x410(r31)
/* 8016BEA4  EC 35 10 28 */	fsubs f1, f21, f2
/* 8016BEA8  C0 01 05 BC */	lfs f0, 0x5bc(r1)
/* 8016BEAC  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016BEB0  EC 02 00 2A */	fadds f0, f2, f0
/* 8016BEB4  D0 1F 04 10 */	stfs f0, 0x410(r31)
/* 8016BEB8  C0 5F 04 14 */	lfs f2, 0x414(r31)
/* 8016BEBC  EC 36 10 28 */	fsubs f1, f22, f2
/* 8016BEC0  C0 01 05 BC */	lfs f0, 0x5bc(r1)
/* 8016BEC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8016BEC8  EC 02 00 2A */	fadds f0, f2, f0
/* 8016BECC  D0 1F 04 14 */	stfs f0, 0x414(r31)
/* 8016BED0  3A 00 00 00 */	li r16, 0
/* 8016BED4  3A 20 00 00 */	li r17, 0
/* 8016BED8  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8016BEDC  41 82 00 58 */	beq lbl_8016BF34
/* 8016BEE0  80 7F 01 7C */	lwz r3, 0x17c(r31)
/* 8016BEE4  3C 80 00 10 */	lis r4, 0x10
/* 8016BEE8  48 00 04 81 */	bl func_8016C368
/* 8016BEEC  28 03 00 00 */	cmplwi r3, 0
/* 8016BEF0  40 82 00 44 */	bne lbl_8016BF34
/* 8016BEF4  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016BEF8  48 01 6B 6D */	bl R__7cSGlobeCFv
/* 8016BEFC  EC 2E 08 28 */	fsubs f1, f14, f1
/* 8016BF00  C0 02 9D D8 */	lfs f0, lit_10577(r2)
/* 8016BF04  ED C0 00 72 */	fmuls f14, f0, f1
/* 8016BF08  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016BF0C  48 01 6B 59 */	bl R__7cSGlobeCFv
/* 8016BF10  ED C1 70 2A */	fadds f14, f1, f14
/* 8016BF14  56 A0 06 3F */	clrlwi. r0, r21, 0x18
/* 8016BF18  40 82 00 48 */	bne lbl_8016BF60
/* 8016BF1C  C0 02 9D 4C */	lfs f0, lit_9404(r2)
/* 8016BF20  EC 00 05 B2 */	fmuls f0, f0, f22
/* 8016BF24  FC 0E 00 40 */	fcmpo cr0, f14, f0
/* 8016BF28  40 81 00 38 */	ble lbl_8016BF60
/* 8016BF2C  FD C0 00 90 */	fmr f14, f0
/* 8016BF30  48 00 00 30 */	b lbl_8016BF60
lbl_8016BF34:
/* 8016BF34  C0 1F 04 10 */	lfs f0, 0x410(r31)
/* 8016BF38  FC 0E 00 40 */	fcmpo cr0, f14, f0
/* 8016BF3C  40 80 00 10 */	bge lbl_8016BF4C
/* 8016BF40  FD C0 00 90 */	fmr f14, f0
/* 8016BF44  3A 00 00 01 */	li r16, 1
/* 8016BF48  48 00 00 18 */	b lbl_8016BF60
lbl_8016BF4C:
/* 8016BF4C  C0 1F 04 14 */	lfs f0, 0x414(r31)
/* 8016BF50  FC 0E 00 40 */	fcmpo cr0, f14, f0
/* 8016BF54  40 81 00 0C */	ble lbl_8016BF60
/* 8016BF58  FD C0 00 90 */	fmr f14, f0
/* 8016BF5C  3A 20 00 01 */	li r17, 1
lbl_8016BF60:
/* 8016BF60  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 8016BF64  41 82 00 24 */	beq lbl_8016BF88
/* 8016BF68  C0 5F 04 5C */	lfs f2, 0x45c(r31)
/* 8016BF6C  C0 22 9C E0 */	lfs f1, lit_6180(r2)
/* 8016BF70  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 8016BF74  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016BF78  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016BF7C  EC 02 00 2A */	fadds f0, f2, f0
/* 8016BF80  D0 1F 04 5C */	stfs f0, 0x45c(r31)
/* 8016BF84  48 00 00 90 */	b lbl_8016C014
lbl_8016BF88:
/* 8016BF88  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 8016BF8C  41 82 00 24 */	beq lbl_8016BFB0
/* 8016BF90  C0 5F 04 5C */	lfs f2, 0x45c(r31)
/* 8016BF94  C0 22 9C E0 */	lfs f1, lit_6180(r2)
/* 8016BF98  C0 1F 04 08 */	lfs f0, 0x408(r31)
/* 8016BF9C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016BFA0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016BFA4  EC 02 00 2A */	fadds f0, f2, f0
/* 8016BFA8  D0 1F 04 5C */	stfs f0, 0x45c(r31)
/* 8016BFAC  48 00 00 68 */	b lbl_8016C014
lbl_8016BFB0:
/* 8016BFB0  A8 1F 04 04 */	lha r0, 0x404(r31)
/* 8016BFB4  2C 00 00 00 */	cmpwi r0, 0
/* 8016BFB8  41 82 00 0C */	beq lbl_8016BFC4
/* 8016BFBC  D3 BF 04 5C */	stfs f29, 0x45c(r31)
/* 8016BFC0  48 00 00 54 */	b lbl_8016C014
lbl_8016BFC4:
/* 8016BFC4  56 00 06 3F */	clrlwi. r0, r16, 0x18
/* 8016BFC8  41 82 00 20 */	beq lbl_8016BFE8
/* 8016BFCC  C0 5F 04 5C */	lfs f2, 0x45c(r31)
/* 8016BFD0  C0 22 9C E0 */	lfs f1, lit_6180(r2)
/* 8016BFD4  EC 14 10 28 */	fsubs f0, f20, f2
/* 8016BFD8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016BFDC  EC 02 00 2A */	fadds f0, f2, f0
/* 8016BFE0  D0 1F 04 5C */	stfs f0, 0x45c(r31)
/* 8016BFE4  48 00 00 30 */	b lbl_8016C014
lbl_8016BFE8:
/* 8016BFE8  56 20 06 3F */	clrlwi. r0, r17, 0x18
/* 8016BFEC  41 82 00 20 */	beq lbl_8016C00C
/* 8016BFF0  C0 5F 04 5C */	lfs f2, 0x45c(r31)
/* 8016BFF4  C0 22 9C E0 */	lfs f1, lit_6180(r2)
/* 8016BFF8  EC 14 10 28 */	fsubs f0, f20, f2
/* 8016BFFC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016C000  EC 02 00 2A */	fadds f0, f2, f0
/* 8016C004  D0 1F 04 5C */	stfs f0, 0x45c(r31)
/* 8016C008  48 00 00 0C */	b lbl_8016C014
lbl_8016C00C:
/* 8016C00C  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 8016C010  D0 1F 04 5C */	stfs f0, 0x45c(r31)
lbl_8016C014:
/* 8016C014  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016C018  48 01 6A 4D */	bl R__7cSGlobeCFv
/* 8016C01C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016C020  48 01 6A 45 */	bl R__7cSGlobeCFv
/* 8016C024  EC 2E 08 28 */	fsubs f1, f14, f1
/* 8016C028  C0 1F 04 5C */	lfs f0, 0x45c(r31)
/* 8016C02C  ED C0 00 72 */	fmuls f14, f0, f1
/* 8016C030  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016C034  48 01 6A 31 */	bl R__7cSGlobeCFv
/* 8016C038  EC 21 70 2A */	fadds f1, f1, f14
/* 8016C03C  38 7F 00 5C */	addi r3, r31, 0x5c
/* 8016C040  48 01 6A 0D */	bl R__7cSGlobeFf
/* 8016C044  38 61 01 2C */	addi r3, r1, 0x12c
/* 8016C048  38 9F 00 5C */	addi r4, r31, 0x5c
/* 8016C04C  48 10 5A 69 */	bl Xyz__7cSGlobeCFv
/* 8016C050  38 61 01 20 */	addi r3, r1, 0x120
/* 8016C054  38 9F 00 64 */	addi r4, r31, 0x64
/* 8016C058  38 A1 01 2C */	addi r5, r1, 0x12c
/* 8016C05C  48 0F AA 89 */	bl __pl__4cXyzCFRC3Vec
/* 8016C060  38 7F 04 4C */	addi r3, r31, 0x44c
/* 8016C064  38 81 01 20 */	addi r4, r1, 0x120
/* 8016C068  4B F2 B7 71 */	bl __as__4cXyzFRC4cXyz
/* 8016C06C  38 61 01 20 */	addi r3, r1, 0x120
/* 8016C070  38 80 FF FF */	li r4, -1
/* 8016C074  4B E9 D1 11 */	bl __dt__4cXyzFv
/* 8016C078  38 61 01 2C */	addi r3, r1, 0x12c
/* 8016C07C  38 80 FF FF */	li r4, -1
/* 8016C080  4B E9 D1 05 */	bl __dt__4cXyzFv
/* 8016C084  38 7F 00 70 */	addi r3, r31, 0x70
/* 8016C088  38 9F 04 4C */	addi r4, r31, 0x44c
/* 8016C08C  4B F2 B7 4D */	bl __as__4cXyzFRC4cXyz
/* 8016C090  A8 1F 04 04 */	lha r0, 0x404(r31)
/* 8016C094  2C 00 00 00 */	cmpwi r0, 0
/* 8016C098  41 82 00 0C */	beq lbl_8016C0A4
/* 8016C09C  D3 BF 04 68 */	stfs f29, 0x468(r31)
/* 8016C0A0  48 00 00 20 */	b lbl_8016C0C0
lbl_8016C0A4:
/* 8016C0A4  C0 5F 04 68 */	lfs f2, 0x468(r31)
/* 8016C0A8  C0 22 9C E0 */	lfs f1, lit_6180(r2)
/* 8016C0AC  C0 01 05 B4 */	lfs f0, 0x5b4(r1)
/* 8016C0B0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8016C0B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016C0B8  EC 02 00 2A */	fadds f0, f2, f0
/* 8016C0BC  D0 1F 04 68 */	stfs f0, 0x468(r31)
lbl_8016C0C0:
/* 8016C0C0  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8016C0C4  C0 5F 04 68 */	lfs f2, 0x468(r31)
/* 8016C0C8  C0 3F 04 8C */	lfs f1, 0x48c(r31)
/* 8016C0CC  EC 1F 78 28 */	fsubs f0, f31, f15
/* 8016C0D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8016C0D4  EC 0F 00 2A */	fadds f0, f15, f0
/* 8016C0D8  EC 00 18 28 */	fsubs f0, f0, f3
/* 8016C0DC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8016C0E0  EC 03 00 2A */	fadds f0, f3, f0
/* 8016C0E4  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 8016C0E8  A8 7F 04 04 */	lha r3, 0x404(r31)
/* 8016C0EC  2C 03 00 00 */	cmpwi r3, 0
/* 8016C0F0  41 82 00 0C */	beq lbl_8016C0FC
/* 8016C0F4  38 03 FF FF */	addi r0, r3, -1
/* 8016C0F8  B0 1F 04 04 */	sth r0, 0x404(r31)
lbl_8016C0FC:
/* 8016C0FC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 8016C100  38 80 FF FF */	li r4, -1
/* 8016C104  4B EC 44 0D */	bl __dt__7cSAngleFv
/* 8016C108  38 61 00 BC */	addi r3, r1, 0xbc
/* 8016C10C  38 80 FF FF */	li r4, -1
/* 8016C110  4B EC 44 01 */	bl __dt__7cSAngleFv
/* 8016C114  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8016C118  38 80 FF FF */	li r4, -1
/* 8016C11C  4B F0 55 61 */	bl __dt__7cSGlobeFv
/* 8016C120  38 61 03 C0 */	addi r3, r1, 0x3c0
/* 8016C124  38 80 FF FF */	li r4, -1
/* 8016C128  4B E9 D0 5D */	bl __dt__4cXyzFv
/* 8016C12C  38 61 03 CC */	addi r3, r1, 0x3cc
/* 8016C130  38 80 FF FF */	li r4, -1
/* 8016C134  4B E9 D0 51 */	bl __dt__4cXyzFv
/* 8016C138  38 61 05 28 */	addi r3, r1, 0x528
/* 8016C13C  38 80 FF FF */	li r4, -1
/* 8016C140  4B F0 BC C1 */	bl __dt__14dBgS_CamLinChkFv
/* 8016C144  38 61 03 E4 */	addi r3, r1, 0x3e4
/* 8016C148  38 80 FF FF */	li r4, -1
/* 8016C14C  4B E9 D0 39 */	bl __dt__4cXyzFv
/* 8016C150  38 61 03 F0 */	addi r3, r1, 0x3f0
/* 8016C154  38 80 FF FF */	li r4, -1
/* 8016C158  4B E9 D0 2D */	bl __dt__4cXyzFv
/* 8016C15C  38 61 04 08 */	addi r3, r1, 0x408
/* 8016C160  38 80 FF FF */	li r4, -1
/* 8016C164  4B E9 D0 21 */	bl __dt__4cXyzFv
/* 8016C168  38 61 04 44 */	addi r3, r1, 0x444
/* 8016C16C  38 80 FF FF */	li r4, -1
/* 8016C170  4B E9 D0 15 */	bl __dt__4cXyzFv
/* 8016C174  38 61 04 50 */	addi r3, r1, 0x450
/* 8016C178  38 80 FF FF */	li r4, -1
/* 8016C17C  4B E9 D0 09 */	bl __dt__4cXyzFv
/* 8016C180  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8016C184  38 80 FF FF */	li r4, -1
/* 8016C188  4B EC 43 89 */	bl __dt__7cSAngleFv
/* 8016C18C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8016C190  38 80 FF FF */	li r4, -1
/* 8016C194  4B EC 43 7D */	bl __dt__7cSAngleFv
/* 8016C198  38 61 00 D8 */	addi r3, r1, 0xd8
/* 8016C19C  38 80 FF FF */	li r4, -1
/* 8016C1A0  4B EC 43 71 */	bl __dt__7cSAngleFv
/* 8016C1A4  38 61 00 DC */	addi r3, r1, 0xdc
/* 8016C1A8  38 80 FF FF */	li r4, -1
/* 8016C1AC  4B EC 43 65 */	bl __dt__7cSAngleFv
/* 8016C1B0  38 60 00 01 */	li r3, 1
lbl_8016C1B4:
/* 8016C1B4  E3 E1 07 38 */	psq_l f31, 1848(r1), 0, 0 /* qr0 */
/* 8016C1B8  CB E1 07 30 */	lfd f31, 0x730(r1)
/* 8016C1BC  E3 C1 07 28 */	psq_l f30, 1832(r1), 0, 0 /* qr0 */
/* 8016C1C0  CB C1 07 20 */	lfd f30, 0x720(r1)
/* 8016C1C4  E3 A1 07 18 */	psq_l f29, 1816(r1), 0, 0 /* qr0 */
/* 8016C1C8  CB A1 07 10 */	lfd f29, 0x710(r1)
/* 8016C1CC  E3 81 07 08 */	psq_l f28, 1800(r1), 0, 0 /* qr0 */
/* 8016C1D0  CB 81 07 00 */	lfd f28, 0x700(r1)
/* 8016C1D4  E3 61 06 F8 */	psq_l f27, 1784(r1), 0, 0 /* qr0 */
/* 8016C1D8  CB 61 06 F0 */	lfd f27, 0x6f0(r1)
/* 8016C1DC  E3 41 06 E8 */	psq_l f26, 1768(r1), 0, 0 /* qr0 */
/* 8016C1E0  CB 41 06 E0 */	lfd f26, 0x6e0(r1)
/* 8016C1E4  E3 21 06 D8 */	psq_l f25, 1752(r1), 0, 0 /* qr0 */
/* 8016C1E8  CB 21 06 D0 */	lfd f25, 0x6d0(r1)
/* 8016C1EC  E3 01 06 C8 */	psq_l f24, 1736(r1), 0, 0 /* qr0 */
/* 8016C1F0  CB 01 06 C0 */	lfd f24, 0x6c0(r1)
/* 8016C1F4  E2 E1 06 B8 */	psq_l f23, 1720(r1), 0, 0 /* qr0 */
/* 8016C1F8  CA E1 06 B0 */	lfd f23, 0x6b0(r1)
/* 8016C1FC  E2 C1 06 A8 */	psq_l f22, 1704(r1), 0, 0 /* qr0 */
/* 8016C200  CA C1 06 A0 */	lfd f22, 0x6a0(r1)
/* 8016C204  E2 A1 06 98 */	psq_l f21, 1688(r1), 0, 0 /* qr0 */
/* 8016C208  CA A1 06 90 */	lfd f21, 0x690(r1)
/* 8016C20C  E2 81 06 88 */	psq_l f20, 1672(r1), 0, 0 /* qr0 */
/* 8016C210  CA 81 06 80 */	lfd f20, 0x680(r1)
/* 8016C214  E2 61 06 78 */	psq_l f19, 1656(r1), 0, 0 /* qr0 */
/* 8016C218  CA 61 06 70 */	lfd f19, 0x670(r1)
/* 8016C21C  E2 41 06 68 */	psq_l f18, 1640(r1), 0, 0 /* qr0 */
/* 8016C220  CA 41 06 60 */	lfd f18, 0x660(r1)
/* 8016C224  E2 21 06 58 */	psq_l f17, 1624(r1), 0, 0 /* qr0 */
/* 8016C228  CA 21 06 50 */	lfd f17, 0x650(r1)
/* 8016C22C  E2 01 06 48 */	psq_l f16, 1608(r1), 0, 0 /* qr0 */
/* 8016C230  CA 01 06 40 */	lfd f16, 0x640(r1)
/* 8016C234  E1 E1 06 38 */	psq_l f15, 1592(r1), 0, 0 /* qr0 */
/* 8016C238  C9 E1 06 30 */	lfd f15, 0x630(r1)
/* 8016C23C  E1 C1 06 28 */	psq_l f14, 1576(r1), 0, 0 /* qr0 */
/* 8016C240  C9 C1 06 20 */	lfd f14, 0x620(r1)
/* 8016C244  39 61 06 20 */	addi r11, r1, 0x620
/* 8016C248  48 1F 5F AD */	bl _restgpr_16
/* 8016C24C  80 01 07 44 */	lwz r0, 0x744(r1)
/* 8016C250  7C 08 03 A6 */	mtlr r0
/* 8016C254  38 21 07 40 */	addi r1, r1, 0x740
/* 8016C258  4E 80 00 20 */	blr 
