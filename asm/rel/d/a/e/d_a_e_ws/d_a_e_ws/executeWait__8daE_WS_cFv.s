lbl_807E470C:
/* 807E470C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 807E4710  7C 08 02 A6 */	mflr r0
/* 807E4714  90 01 00 74 */	stw r0, 0x74(r1)
/* 807E4718  39 61 00 70 */	addi r11, r1, 0x70
/* 807E471C  4B B7 DA C1 */	bl _savegpr_29
/* 807E4720  7C 7E 1B 78 */	mr r30, r3
/* 807E4724  3C 80 80 7E */	lis r4, lit_3802@ha /* 0x807E7300@ha */
/* 807E4728  3B E4 73 00 */	addi r31, r4, lit_3802@l /* 0x807E7300@l */
/* 807E472C  4B FF FA F9 */	bl checkPlayerPos__8daE_WS_cFv
/* 807E4730  7C 7D 1B 78 */	mr r29, r3
/* 807E4734  2C 1D 00 01 */	cmpwi r29, 1
/* 807E4738  40 82 00 14 */	bne lbl_807E474C
/* 807E473C  7F C3 F3 78 */	mr r3, r30
/* 807E4740  38 80 00 01 */	li r4, 1
/* 807E4744  4B FF F8 4D */	bl setActionMode__8daE_WS_cFi
/* 807E4748  48 00 03 58 */	b lbl_807E4AA0
lbl_807E474C:
/* 807E474C  2C 1D 00 02 */	cmpwi r29, 2
/* 807E4750  40 82 00 20 */	bne lbl_807E4770
/* 807E4754  80 1E 06 80 */	lwz r0, 0x680(r30)
/* 807E4758  2C 00 00 03 */	cmpwi r0, 3
/* 807E475C  41 82 00 14 */	beq lbl_807E4770
/* 807E4760  2C 00 00 04 */	cmpwi r0, 4
/* 807E4764  41 82 00 0C */	beq lbl_807E4770
/* 807E4768  38 00 00 02 */	li r0, 2
/* 807E476C  90 1E 06 80 */	stw r0, 0x680(r30)
lbl_807E4770:
/* 807E4770  80 1E 06 80 */	lwz r0, 0x680(r30)
/* 807E4774  28 00 00 06 */	cmplwi r0, 6
/* 807E4778  41 81 03 20 */	bgt lbl_807E4A98
/* 807E477C  3C 60 80 7E */	lis r3, lit_4268@ha /* 0x807E74C8@ha */
/* 807E4780  38 63 74 C8 */	addi r3, r3, lit_4268@l /* 0x807E74C8@l */
/* 807E4784  54 00 10 3A */	slwi r0, r0, 2
/* 807E4788  7C 03 00 2E */	lwzx r0, r3, r0
/* 807E478C  7C 09 03 A6 */	mtctr r0
/* 807E4790  4E 80 04 20 */	bctr 
lbl_807E4794:
/* 807E4794  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 807E4798  4B A8 31 BD */	bl cM_rndF__Ff
/* 807E479C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 807E47A0  EC 00 08 2A */	fadds f0, f0, f1
/* 807E47A4  FC 00 00 1E */	fctiwz f0, f0
/* 807E47A8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 807E47AC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807E47B0  98 1E 06 8C */	stb r0, 0x68c(r30)
/* 807E47B4  7F C3 F3 78 */	mr r3, r30
/* 807E47B8  38 80 00 09 */	li r4, 9
/* 807E47BC  38 A0 00 02 */	li r5, 2
/* 807E47C0  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807E47C4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E47C8  4B FF F4 59 */	bl setBck__8daE_WS_cFiUcff
/* 807E47CC  38 00 00 01 */	li r0, 1
/* 807E47D0  90 1E 06 80 */	stw r0, 0x680(r30)
lbl_807E47D4:
/* 807E47D4  88 1E 06 8C */	lbz r0, 0x68c(r30)
/* 807E47D8  28 00 00 00 */	cmplwi r0, 0
/* 807E47DC  40 82 02 BC */	bne lbl_807E4A98
/* 807E47E0  38 00 00 02 */	li r0, 2
/* 807E47E4  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E47E8  48 00 02 B0 */	b lbl_807E4A98
lbl_807E47EC:
/* 807E47EC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E47F0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807E47F4  38 00 00 00 */	li r0, 0
/* 807E47F8  98 1E 06 90 */	stb r0, 0x690(r30)
/* 807E47FC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 807E4800  4B A8 31 8D */	bl cM_rndFX__Ff
/* 807E4804  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807E4808  C8 5F 00 A0 */	lfd f2, 0xa0(r31)
/* 807E480C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 807E4810  90 01 00 54 */	stw r0, 0x54(r1)
/* 807E4814  3C 00 43 30 */	lis r0, 0x4330
/* 807E4818  90 01 00 50 */	stw r0, 0x50(r1)
/* 807E481C  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 807E4820  EC 00 10 28 */	fsubs f0, f0, f2
/* 807E4824  EC 00 08 2A */	fadds f0, f0, f1
/* 807E4828  FC 00 00 1E */	fctiwz f0, f0
/* 807E482C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 807E4830  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 807E4834  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 807E4838  2C 1D 00 02 */	cmpwi r29, 2
/* 807E483C  40 82 00 28 */	bne lbl_807E4864
/* 807E4840  38 00 02 00 */	li r0, 0x200
/* 807E4844  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 807E4848  7F C3 F3 78 */	mr r3, r30
/* 807E484C  38 80 00 08 */	li r4, 8
/* 807E4850  38 A0 00 02 */	li r5, 2
/* 807E4854  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807E4858  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 807E485C  4B FF F3 C5 */	bl setBck__8daE_WS_cFiUcff
/* 807E4860  48 00 00 D0 */	b lbl_807E4930
lbl_807E4864:
/* 807E4864  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807E4868  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 807E486C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807E4870  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 807E4874  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807E4878  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 807E487C  C0 1E 06 5C */	lfs f0, 0x65c(r30)
/* 807E4880  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 807E4884  C0 1E 06 60 */	lfs f0, 0x660(r30)
/* 807E4888  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 807E488C  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 807E4890  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 807E4894  7F C3 F3 78 */	mr r3, r30
/* 807E4898  38 81 00 44 */	addi r4, r1, 0x44
/* 807E489C  38 A1 00 38 */	addi r5, r1, 0x38
/* 807E48A0  4B FF F7 0D */	bl calcTargetDist__8daE_WS_cF4cXyz4cXyz
/* 807E48A4  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E75C8@ha */
/* 807E48A8  38 63 75 C8 */	addi r3, r3, l_HIO@l /* 0x807E75C8@l */
/* 807E48AC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807E48B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E48B4  4C 41 13 82 */	cror 2, 1, 2
/* 807E48B8  7C 00 00 26 */	mfcr r0
/* 807E48BC  54 00 1F FF */	rlwinm. r0, r0, 3, 0x1f, 0x1f
/* 807E48C0  41 82 00 50 */	beq lbl_807E4910
/* 807E48C4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807E48C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 807E48CC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807E48D0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 807E48D4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807E48D8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 807E48DC  C0 1E 06 5C */	lfs f0, 0x65c(r30)
/* 807E48E0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 807E48E4  C0 1E 06 60 */	lfs f0, 0x660(r30)
/* 807E48E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 807E48EC  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 807E48F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 807E48F4  7F C3 F3 78 */	mr r3, r30
/* 807E48F8  38 81 00 2C */	addi r4, r1, 0x2c
/* 807E48FC  38 A1 00 20 */	addi r5, r1, 0x20
/* 807E4900  4B FF F7 C9 */	bl calcTargetAngle__8daE_WS_cF4cXyz4cXyz
/* 807E4904  B0 7E 06 88 */	sth r3, 0x688(r30)
/* 807E4908  38 00 00 01 */	li r0, 1
/* 807E490C  98 1E 06 90 */	stb r0, 0x690(r30)
lbl_807E4910:
/* 807E4910  38 00 01 00 */	li r0, 0x100
/* 807E4914  B0 1E 06 8A */	sth r0, 0x68a(r30)
/* 807E4918  7F C3 F3 78 */	mr r3, r30
/* 807E491C  38 80 00 08 */	li r4, 8
/* 807E4920  38 A0 00 02 */	li r5, 2
/* 807E4924  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807E4928  C0 5F 00 B4 */	lfs f2, 0xb4(r31)
/* 807E492C  4B FF F2 F5 */	bl setBck__8daE_WS_cFiUcff
lbl_807E4930:
/* 807E4930  38 00 00 03 */	li r0, 3
/* 807E4934  90 1E 06 80 */	stw r0, 0x680(r30)
lbl_807E4938:
/* 807E4938  7F C3 F3 78 */	mr r3, r30
/* 807E493C  4B FF F3 89 */	bl setFootSound__8daE_WS_cFv
/* 807E4940  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 807E4944  A8 9E 06 88 */	lha r4, 0x688(r30)
/* 807E4948  A8 BE 06 8A */	lha r5, 0x68a(r30)
/* 807E494C  4B A8 C2 45 */	bl cLib_chaseAngleS__FPsss
/* 807E4950  2C 03 00 00 */	cmpwi r3, 0
/* 807E4954  41 82 01 44 */	beq lbl_807E4A98
/* 807E4958  38 00 00 04 */	li r0, 4
/* 807E495C  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E4960  38 00 00 0A */	li r0, 0xa
/* 807E4964  98 1E 06 8C */	stb r0, 0x68c(r30)
/* 807E4968  7F C3 F3 78 */	mr r3, r30
/* 807E496C  38 80 00 09 */	li r4, 9
/* 807E4970  38 A0 00 02 */	li r5, 2
/* 807E4974  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807E4978  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E497C  4B FF F2 A5 */	bl setBck__8daE_WS_cFiUcff
/* 807E4980  48 00 01 18 */	b lbl_807E4A98
lbl_807E4984:
/* 807E4984  88 1E 06 8C */	lbz r0, 0x68c(r30)
/* 807E4988  28 00 00 00 */	cmplwi r0, 0
/* 807E498C  40 82 01 0C */	bne lbl_807E4A98
/* 807E4990  38 00 00 05 */	li r0, 5
/* 807E4994  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E4998  48 00 01 00 */	b lbl_807E4A98
lbl_807E499C:
/* 807E499C  38 00 00 06 */	li r0, 6
/* 807E49A0  90 1E 06 80 */	stw r0, 0x680(r30)
/* 807E49A4  C0 1F 00 A8 */	lfs f0, 0xa8(r31)
/* 807E49A8  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807E49AC  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807E49B0  4B A8 2F A5 */	bl cM_rndF__Ff
/* 807E49B4  C0 1F 00 B8 */	lfs f0, 0xb8(r31)
/* 807E49B8  EC 00 08 2A */	fadds f0, f0, f1
/* 807E49BC  FC 00 00 1E */	fctiwz f0, f0
/* 807E49C0  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 807E49C4  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 807E49C8  98 1E 06 8C */	stb r0, 0x68c(r30)
/* 807E49CC  7F C3 F3 78 */	mr r3, r30
/* 807E49D0  38 80 00 07 */	li r4, 7
/* 807E49D4  38 A0 00 02 */	li r5, 2
/* 807E49D8  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 807E49DC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807E49E0  4B FF F2 41 */	bl setBck__8daE_WS_cFiUcff
lbl_807E49E4:
/* 807E49E4  7F C3 F3 78 */	mr r3, r30
/* 807E49E8  4B FF F2 DD */	bl setFootSound__8daE_WS_cFv
/* 807E49EC  88 1E 06 90 */	lbz r0, 0x690(r30)
/* 807E49F0  28 00 00 00 */	cmplwi r0, 0
/* 807E49F4  40 82 00 6C */	bne lbl_807E4A60
/* 807E49F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 807E49FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 807E4A00  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807E4A04  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 807E4A08  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 807E4A0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 807E4A10  C0 1E 06 5C */	lfs f0, 0x65c(r30)
/* 807E4A14  D0 01 00 08 */	stfs f0, 8(r1)
/* 807E4A18  C0 1E 06 60 */	lfs f0, 0x660(r30)
/* 807E4A1C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 807E4A20  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 807E4A24  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 807E4A28  7F C3 F3 78 */	mr r3, r30
/* 807E4A2C  38 81 00 14 */	addi r4, r1, 0x14
/* 807E4A30  38 A1 00 08 */	addi r5, r1, 8
/* 807E4A34  4B FF F5 79 */	bl calcTargetDist__8daE_WS_cF4cXyz4cXyz
/* 807E4A38  3C 60 80 7E */	lis r3, l_HIO@ha /* 0x807E75C8@ha */
/* 807E4A3C  38 63 75 C8 */	addi r3, r3, l_HIO@l /* 0x807E75C8@l */
/* 807E4A40  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 807E4A44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807E4A48  4C 41 13 82 */	cror 2, 1, 2
/* 807E4A4C  7C 00 00 26 */	mfcr r0
/* 807E4A50  54 00 1F FF */	rlwinm. r0, r0, 3, 0x1f, 0x1f
/* 807E4A54  41 82 00 0C */	beq lbl_807E4A60
/* 807E4A58  38 00 00 00 */	li r0, 0
/* 807E4A5C  98 1E 06 8C */	stb r0, 0x68c(r30)
lbl_807E4A60:
/* 807E4A60  7F C3 F3 78 */	mr r3, r30
/* 807E4A64  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807E4A68  48 00 15 51 */	bl checkBeforeBg__8daE_WS_cFs
/* 807E4A6C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807E4A70  41 82 00 0C */	beq lbl_807E4A7C
/* 807E4A74  38 00 00 00 */	li r0, 0
/* 807E4A78  98 1E 06 8C */	stb r0, 0x68c(r30)
lbl_807E4A7C:
/* 807E4A7C  88 1E 06 8C */	lbz r0, 0x68c(r30)
/* 807E4A80  28 00 00 00 */	cmplwi r0, 0
/* 807E4A84  40 82 00 14 */	bne lbl_807E4A98
/* 807E4A88  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807E4A8C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807E4A90  38 00 00 00 */	li r0, 0
/* 807E4A94  90 1E 06 80 */	stw r0, 0x680(r30)
lbl_807E4A98:
/* 807E4A98  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 807E4A9C  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_807E4AA0:
/* 807E4AA0  39 61 00 70 */	addi r11, r1, 0x70
/* 807E4AA4  4B B7 D7 85 */	bl _restgpr_29
/* 807E4AA8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 807E4AAC  7C 08 03 A6 */	mtlr r0
/* 807E4AB0  38 21 00 70 */	addi r1, r1, 0x70
/* 807E4AB4  4E 80 00 20 */	blr 
