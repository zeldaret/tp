lbl_802AC50C:
/* 802AC50C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 802AC510  7C 08 02 A6 */	mflr r0
/* 802AC514  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 802AC518  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 802AC51C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 802AC520  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 802AC524  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 802AC528  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 802AC52C  F3 A1 00 78 */	psq_st f29, 120(r1), 0, 0 /* qr0 */
/* 802AC530  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 802AC534  F3 81 00 68 */	psq_st f28, 104(r1), 0, 0 /* qr0 */
/* 802AC538  39 61 00 60 */	addi r11, r1, 0x60
/* 802AC53C  48 0B 5C 95 */	bl _savegpr_26
/* 802AC540  7C 7F 1B 78 */	mr r31, r3
/* 802AC544  7C 9B 23 78 */	mr r27, r4
/* 802AC548  90 A1 00 08 */	stw r5, 8(r1)
/* 802AC54C  7C DC 33 78 */	mr r28, r6
/* 802AC550  7C FD 3B 78 */	mr r29, r7
/* 802AC554  FF E0 08 90 */	fmr f31, f1
/* 802AC558  FF C0 10 90 */	fmr f30, f2
/* 802AC55C  FF A0 18 90 */	fmr f29, f3
/* 802AC560  FF 80 20 90 */	fmr f28, f4
/* 802AC564  7D 1E 43 78 */	mr r30, r8
/* 802AC568  55 00 06 3E */	clrlwi r0, r8, 0x18
/* 802AC56C  28 00 00 01 */	cmplwi r0, 1
/* 802AC570  41 82 00 B4 */	beq lbl_802AC624
/* 802AC574  80 9B 00 00 */	lwz r4, 0(r27)
/* 802AC578  3C A0 00 08 */	lis r5, 0x0008 /* 0x00080210@ha */
/* 802AC57C  38 05 02 10 */	addi r0, r5, 0x0210 /* 0x00080210@l */
/* 802AC580  7C 04 00 00 */	cmpw r4, r0
/* 802AC584  41 82 00 88 */	beq lbl_802AC60C
/* 802AC588  40 80 00 3C */	bge lbl_802AC5C4
/* 802AC58C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070426@ha */
/* 802AC590  38 03 04 26 */	addi r0, r3, 0x0426 /* 0x00070426@l */
/* 802AC594  7C 04 00 00 */	cmpw r4, r0
/* 802AC598  41 82 00 74 */	beq lbl_802AC60C
/* 802AC59C  40 80 00 18 */	bge lbl_802AC5B4
/* 802AC5A0  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600D6@ha */
/* 802AC5A4  38 03 00 D6 */	addi r0, r3, 0x00D6 /* 0x000600D6@l */
/* 802AC5A8  7C 04 00 00 */	cmpw r4, r0
/* 802AC5AC  41 82 00 60 */	beq lbl_802AC60C
/* 802AC5B0  48 00 00 74 */	b lbl_802AC624
lbl_802AC5B4:
/* 802AC5B4  38 05 00 18 */	addi r0, r5, 0x18
/* 802AC5B8  7C 04 00 00 */	cmpw r4, r0
/* 802AC5BC  41 82 00 28 */	beq lbl_802AC5E4
/* 802AC5C0  48 00 00 64 */	b lbl_802AC624
lbl_802AC5C4:
/* 802AC5C4  38 05 02 C7 */	addi r0, r5, 0x2c7
/* 802AC5C8  7C 04 00 00 */	cmpw r4, r0
/* 802AC5CC  41 82 00 40 */	beq lbl_802AC60C
/* 802AC5D0  40 80 00 54 */	bge lbl_802AC624
/* 802AC5D4  38 05 02 AA */	addi r0, r5, 0x2aa
/* 802AC5D8  7C 04 00 00 */	cmpw r4, r0
/* 802AC5DC  41 82 00 30 */	beq lbl_802AC60C
/* 802AC5E0  48 00 00 44 */	b lbl_802AC624
lbl_802AC5E4:
/* 802AC5E4  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802AC5E8  88 03 00 2C */	lbz r0, 0x2c(r3)
/* 802AC5EC  28 00 00 02 */	cmplwi r0, 2
/* 802AC5F0  41 82 00 14 */	beq lbl_802AC604
/* 802AC5F4  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802AC5F8  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 802AC5FC  28 00 00 00 */	cmplwi r0, 0
/* 802AC600  40 82 00 0C */	bne lbl_802AC60C
lbl_802AC604:
/* 802AC604  38 60 00 00 */	li r3, 0
/* 802AC608  48 00 12 70 */	b lbl_802AD878
lbl_802AC60C:
/* 802AC60C  7F E3 FB 78 */	mr r3, r31
/* 802AC610  80 A1 00 08 */	lwz r5, 8(r1)
/* 802AC614  7F A6 EB 78 */	mr r6, r29
/* 802AC618  48 00 18 45 */	bl setLevObjSE__7Z2SeMgrFUlP3VecSc
/* 802AC61C  38 60 00 00 */	li r3, 0
/* 802AC620  48 00 12 58 */	b lbl_802AD878
lbl_802AC624:
/* 802AC624  80 1B 00 00 */	lwz r0, 0(r27)
/* 802AC628  3C 80 00 08 */	lis r4, 0x0008 /* 0x000801E1@ha */
/* 802AC62C  38 64 01 E1 */	addi r3, r4, 0x01E1 /* 0x000801E1@l */
/* 802AC630  7C 00 18 00 */	cmpw r0, r3
/* 802AC634  41 82 09 94 */	beq lbl_802ACFC8
/* 802AC638  40 80 01 08 */	bge lbl_802AC740
/* 802AC63C  38 64 01 84 */	addi r3, r4, 0x184
/* 802AC640  7C 00 18 00 */	cmpw r0, r3
/* 802AC644  41 82 06 94 */	beq lbl_802ACCD8
/* 802AC648  40 80 00 88 */	bge lbl_802AC6D0
/* 802AC64C  38 64 00 E7 */	addi r3, r4, 0xe7
/* 802AC650  7C 00 18 00 */	cmpw r0, r3
/* 802AC654  41 82 0C 08 */	beq lbl_802AD25C
/* 802AC658  40 80 00 48 */	bge lbl_802AC6A0
/* 802AC65C  38 64 00 BF */	addi r3, r4, 0xbf
/* 802AC660  7C 00 18 00 */	cmpw r0, r3
/* 802AC664  41 82 02 38 */	beq lbl_802AC89C
/* 802AC668  40 80 00 28 */	bge lbl_802AC690
/* 802AC66C  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002008E@ha */
/* 802AC670  38 63 00 8E */	addi r3, r3, 0x008E /* 0x0002008E@l */
/* 802AC674  7C 00 18 00 */	cmpw r0, r3
/* 802AC678  41 82 0F 00 */	beq lbl_802AD578
/* 802AC67C  41 80 0F 00 */	blt lbl_802AD57C
/* 802AC680  38 64 00 BE */	addi r3, r4, 0xbe
/* 802AC684  7C 00 18 00 */	cmpw r0, r3
/* 802AC688  40 80 01 A0 */	bge lbl_802AC828
/* 802AC68C  48 00 0E F0 */	b lbl_802AD57C
lbl_802AC690:
/* 802AC690  38 64 00 CF */	addi r3, r4, 0xcf
/* 802AC694  7C 00 18 00 */	cmpw r0, r3
/* 802AC698  41 82 02 78 */	beq lbl_802AC910
/* 802AC69C  48 00 0E E0 */	b lbl_802AD57C
lbl_802AC6A0:
/* 802AC6A0  38 64 01 75 */	addi r3, r4, 0x175
/* 802AC6A4  7C 00 18 00 */	cmpw r0, r3
/* 802AC6A8  41 82 05 28 */	beq lbl_802ACBD0
/* 802AC6AC  40 80 00 14 */	bge lbl_802AC6C0
/* 802AC6B0  38 64 01 20 */	addi r3, r4, 0x120
/* 802AC6B4  7C 00 18 00 */	cmpw r0, r3
/* 802AC6B8  41 82 01 E4 */	beq lbl_802AC89C
/* 802AC6BC  48 00 0E C0 */	b lbl_802AD57C
lbl_802AC6C0:
/* 802AC6C0  38 64 01 77 */	addi r3, r4, 0x177
/* 802AC6C4  7C 00 18 00 */	cmpw r0, r3
/* 802AC6C8  40 80 0E B4 */	bge lbl_802AD57C
/* 802AC6CC  48 00 05 90 */	b lbl_802ACC5C
lbl_802AC6D0:
/* 802AC6D0  38 64 01 A5 */	addi r3, r4, 0x1a5
/* 802AC6D4  7C 00 18 00 */	cmpw r0, r3
/* 802AC6D8  40 80 00 38 */	bge lbl_802AC710
/* 802AC6DC  38 64 01 9F */	addi r3, r4, 0x19f
/* 802AC6E0  7C 00 18 00 */	cmpw r0, r3
/* 802AC6E4  41 82 06 A0 */	beq lbl_802ACD84
/* 802AC6E8  40 80 00 14 */	bge lbl_802AC6FC
/* 802AC6EC  38 64 01 86 */	addi r3, r4, 0x186
/* 802AC6F0  7C 00 18 00 */	cmpw r0, r3
/* 802AC6F4  41 82 06 34 */	beq lbl_802ACD28
/* 802AC6F8  48 00 0E 84 */	b lbl_802AD57C
lbl_802AC6FC:
/* 802AC6FC  38 64 01 A2 */	addi r3, r4, 0x1a2
/* 802AC700  7C 00 18 00 */	cmpw r0, r3
/* 802AC704  41 82 0E 78 */	beq lbl_802AD57C
/* 802AC708  40 80 06 6C */	bge lbl_802ACD74
/* 802AC70C  48 00 07 D4 */	b lbl_802ACEE0
lbl_802AC710:
/* 802AC710  38 64 01 C1 */	addi r3, r4, 0x1c1
/* 802AC714  7C 00 18 00 */	cmpw r0, r3
/* 802AC718  41 82 06 E0 */	beq lbl_802ACDF8
/* 802AC71C  40 80 00 14 */	bge lbl_802AC730
/* 802AC720  38 64 01 A9 */	addi r3, r4, 0x1a9
/* 802AC724  7C 00 18 00 */	cmpw r0, r3
/* 802AC728  41 82 07 44 */	beq lbl_802ACE6C
/* 802AC72C  48 00 0E 50 */	b lbl_802AD57C
lbl_802AC730:
/* 802AC730  38 64 01 CC */	addi r3, r4, 0x1cc
/* 802AC734  7C 00 18 00 */	cmpw r0, r3
/* 802AC738  41 82 08 1C */	beq lbl_802ACF54
/* 802AC73C  48 00 0E 40 */	b lbl_802AD57C
lbl_802AC740:
/* 802AC740  38 64 02 64 */	addi r3, r4, 0x264
/* 802AC744  7C 00 18 00 */	cmpw r0, r3
/* 802AC748  41 82 02 48 */	beq lbl_802AC990
/* 802AC74C  40 80 00 78 */	bge lbl_802AC7C4
/* 802AC750  38 64 02 18 */	addi r3, r4, 0x218
/* 802AC754  7C 00 18 00 */	cmpw r0, r3
/* 802AC758  41 82 09 D0 */	beq lbl_802AD128
/* 802AC75C  40 80 00 38 */	bge lbl_802AC794
/* 802AC760  38 64 02 14 */	addi r3, r4, 0x214
/* 802AC764  7C 00 18 00 */	cmpw r0, r3
/* 802AC768  41 82 09 FC */	beq lbl_802AD164
/* 802AC76C  40 80 00 14 */	bge lbl_802AC780
/* 802AC770  38 64 02 12 */	addi r3, r4, 0x212
/* 802AC774  7C 00 18 00 */	cmpw r0, r3
/* 802AC778  41 82 08 C4 */	beq lbl_802AD03C
/* 802AC77C  48 00 0E 00 */	b lbl_802AD57C
lbl_802AC780:
/* 802AC780  38 64 02 16 */	addi r3, r4, 0x216
/* 802AC784  7C 00 18 00 */	cmpw r0, r3
/* 802AC788  41 82 09 28 */	beq lbl_802AD0B0
/* 802AC78C  40 80 09 60 */	bge lbl_802AD0EC
/* 802AC790  48 00 0D EC */	b lbl_802AD57C
lbl_802AC794:
/* 802AC794  38 64 02 5F */	addi r3, r4, 0x25f
/* 802AC798  7C 00 18 00 */	cmpw r0, r3
/* 802AC79C  41 82 03 04 */	beq lbl_802ACAA0
/* 802AC7A0  40 80 00 14 */	bge lbl_802AC7B4
/* 802AC7A4  38 64 02 3F */	addi r3, r4, 0x23f
/* 802AC7A8  7C 00 18 00 */	cmpw r0, r3
/* 802AC7AC  41 82 0A 2C */	beq lbl_802AD1D8
/* 802AC7B0  48 00 0D CC */	b lbl_802AD57C
lbl_802AC7B4:
/* 802AC7B4  38 64 02 61 */	addi r3, r4, 0x261
/* 802AC7B8  7C 00 18 00 */	cmpw r0, r3
/* 802AC7BC  40 80 01 E4 */	bge lbl_802AC9A0
/* 802AC7C0  48 00 0D BC */	b lbl_802AD57C
lbl_802AC7C4:
/* 802AC7C4  38 64 03 1D */	addi r3, r4, 0x31d
/* 802AC7C8  7C 00 18 00 */	cmpw r0, r3
/* 802AC7CC  41 82 0A 80 */	beq lbl_802AD24C
/* 802AC7D0  40 80 00 34 */	bge lbl_802AC804
/* 802AC7D4  38 64 02 AE */	addi r3, r4, 0x2ae
/* 802AC7D8  7C 00 18 00 */	cmpw r0, r3
/* 802AC7DC  41 82 0C 08 */	beq lbl_802AD3E4
/* 802AC7E0  40 80 00 14 */	bge lbl_802AC7F4
/* 802AC7E4  38 64 02 7E */	addi r3, r4, 0x27e
/* 802AC7E8  7C 00 18 00 */	cmpw r0, r3
/* 802AC7EC  41 82 02 34 */	beq lbl_802ACA20
/* 802AC7F0  48 00 0D 8C */	b lbl_802AD57C
lbl_802AC7F4:
/* 802AC7F4  38 64 02 BC */	addi r3, r4, 0x2bc
/* 802AC7F8  7C 00 18 00 */	cmpw r0, r3
/* 802AC7FC  41 82 03 54 */	beq lbl_802ACB50
/* 802AC800  48 00 0D 7C */	b lbl_802AD57C
lbl_802AC804:
/* 802AC804  3C 60 00 09 */	lis r3, 0x0009 /* 0x0009003E@ha */
/* 802AC808  38 83 00 3E */	addi r4, r3, 0x003E /* 0x0009003E@l */
/* 802AC80C  7C 00 20 00 */	cmpw r0, r4
/* 802AC810  41 82 0C 10 */	beq lbl_802AD420
/* 802AC814  40 80 0D 68 */	bge lbl_802AD57C
/* 802AC818  38 63 00 2D */	addi r3, r3, 0x2d
/* 802AC81C  7C 00 18 00 */	cmpw r0, r3
/* 802AC820  41 82 02 BC */	beq lbl_802ACADC
/* 802AC824  48 00 0D 58 */	b lbl_802AD57C
lbl_802AC828:
/* 802AC828  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC82C  93 81 00 34 */	stw r28, 0x34(r1)
/* 802AC830  3C 00 43 30 */	lis r0, 0x4330
/* 802AC834  90 01 00 30 */	stw r0, 0x30(r1)
/* 802AC838  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802AC83C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC840  C0 42 BE E8 */	lfs f2, lit_4586(r2)
/* 802AC844  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802AC848  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AC84C  C0 A2 BE EC */	lfs f5, lit_4587(r2)
/* 802AC850  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AC854  38 60 00 00 */	li r3, 0
/* 802AC858  4B FF CE 9D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC85C  FF C0 08 90 */	fmr f30, f1
/* 802AC860  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC864  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802AC868  3C 00 43 30 */	lis r0, 0x4330
/* 802AC86C  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AC870  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AC874  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC878  C0 42 BE E8 */	lfs f2, lit_4586(r2)
/* 802AC87C  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802AC880  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AC884  C0 A2 BE 84 */	lfs f5, lit_4043(r2)
/* 802AC888  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802AC88C  38 60 00 00 */	li r3, 0
/* 802AC890  4B FF CE 65 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC894  FF E0 08 90 */	fmr f31, f1
/* 802AC898  48 00 0C E4 */	b lbl_802AD57C
lbl_802AC89C:
/* 802AC89C  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC8A0  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802AC8A4  3C 00 43 30 */	lis r0, 0x4330
/* 802AC8A8  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AC8AC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AC8B0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC8B4  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AC8B8  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802AC8BC  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AC8C0  C0 A2 BE EC */	lfs f5, lit_4587(r2)
/* 802AC8C4  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AC8C8  38 60 00 00 */	li r3, 0
/* 802AC8CC  4B FF CE 29 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC8D0  FF C0 08 90 */	fmr f30, f1
/* 802AC8D4  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC8D8  93 81 00 34 */	stw r28, 0x34(r1)
/* 802AC8DC  3C 00 43 30 */	lis r0, 0x4330
/* 802AC8E0  90 01 00 30 */	stw r0, 0x30(r1)
/* 802AC8E4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802AC8E8  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC8EC  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AC8F0  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802AC8F4  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AC8F8  C0 A2 BE 84 */	lfs f5, lit_4043(r2)
/* 802AC8FC  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802AC900  38 60 00 00 */	li r3, 0
/* 802AC904  4B FF CD F1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC908  FF E0 08 90 */	fmr f31, f1
/* 802AC90C  48 00 0C 70 */	b lbl_802AD57C
lbl_802AC910:
/* 802AC910  28 1C 00 0A */	cmplwi r28, 0xa
/* 802AC914  40 80 00 08 */	bge lbl_802AC91C
/* 802AC918  3B 80 00 0A */	li r28, 0xa
lbl_802AC91C:
/* 802AC91C  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC920  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802AC924  3C 00 43 30 */	lis r0, 0x4330
/* 802AC928  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AC92C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AC930  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC934  C0 42 BE F0 */	lfs f2, lit_4588(r2)
/* 802AC938  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802AC93C  C0 82 BE F4 */	lfs f4, lit_4589(r2)
/* 802AC940  C0 A2 BE 78 */	lfs f5, lit_4040(r2)
/* 802AC944  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AC948  38 60 00 01 */	li r3, 1
/* 802AC94C  4B FF CD A9 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC950  FF C0 08 90 */	fmr f30, f1
/* 802AC954  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC958  93 81 00 34 */	stw r28, 0x34(r1)
/* 802AC95C  3C 00 43 30 */	lis r0, 0x4330
/* 802AC960  90 01 00 30 */	stw r0, 0x30(r1)
/* 802AC964  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802AC968  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC96C  C0 42 BE F0 */	lfs f2, lit_4588(r2)
/* 802AC970  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802AC974  C0 82 BE F4 */	lfs f4, lit_4589(r2)
/* 802AC978  C0 A2 BE 84 */	lfs f5, lit_4043(r2)
/* 802AC97C  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802AC980  38 60 00 01 */	li r3, 1
/* 802AC984  4B FF CD 71 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC988  FF E0 08 90 */	fmr f31, f1
/* 802AC98C  48 00 0B F0 */	b lbl_802AD57C
lbl_802AC990:
/* 802AC990  7F E3 FB 78 */	mr r3, r31
/* 802AC994  38 81 00 08 */	addi r4, r1, 8
/* 802AC998  4B FF EE 99 */	bl modHeightAtCamera__7Z2SeMgrFPPC3Vec
/* 802AC99C  48 00 0B E0 */	b lbl_802AD57C
lbl_802AC9A0:
/* 802AC9A0  28 1C 00 0A */	cmplwi r28, 0xa
/* 802AC9A4  40 80 00 08 */	bge lbl_802AC9AC
/* 802AC9A8  3B 80 00 0A */	li r28, 0xa
lbl_802AC9AC:
/* 802AC9AC  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC9B0  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802AC9B4  3C 00 43 30 */	lis r0, 0x4330
/* 802AC9B8  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AC9BC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AC9C0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC9C4  C0 42 BE F0 */	lfs f2, lit_4588(r2)
/* 802AC9C8  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802AC9CC  C0 82 BE F4 */	lfs f4, lit_4589(r2)
/* 802AC9D0  C0 A2 BE 78 */	lfs f5, lit_4040(r2)
/* 802AC9D4  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AC9D8  38 60 00 01 */	li r3, 1
/* 802AC9DC  4B FF CD 19 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AC9E0  FF C0 08 90 */	fmr f30, f1
/* 802AC9E4  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AC9E8  93 81 00 34 */	stw r28, 0x34(r1)
/* 802AC9EC  3C 00 43 30 */	lis r0, 0x4330
/* 802AC9F0  90 01 00 30 */	stw r0, 0x30(r1)
/* 802AC9F4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802AC9F8  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AC9FC  C0 42 BE F0 */	lfs f2, lit_4588(r2)
/* 802ACA00  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802ACA04  C0 82 BE F4 */	lfs f4, lit_4589(r2)
/* 802ACA08  C0 A2 BE 84 */	lfs f5, lit_4043(r2)
/* 802ACA0C  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802ACA10  38 60 00 01 */	li r3, 1
/* 802ACA14  4B FF CC E1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACA18  FF E0 08 90 */	fmr f31, f1
/* 802ACA1C  48 00 0B 60 */	b lbl_802AD57C
lbl_802ACA20:
/* 802ACA20  28 1C 00 0A */	cmplwi r28, 0xa
/* 802ACA24  40 80 00 08 */	bge lbl_802ACA2C
/* 802ACA28  3B 80 00 0A */	li r28, 0xa
lbl_802ACA2C:
/* 802ACA2C  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACA30  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802ACA34  3C 00 43 30 */	lis r0, 0x4330
/* 802ACA38  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACA3C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACA40  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACA44  C0 42 BE F0 */	lfs f2, lit_4588(r2)
/* 802ACA48  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802ACA4C  C0 82 BE F4 */	lfs f4, lit_4589(r2)
/* 802ACA50  C0 A2 BE 78 */	lfs f5, lit_4040(r2)
/* 802ACA54  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802ACA58  38 60 00 01 */	li r3, 1
/* 802ACA5C  4B FF CC 99 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACA60  FF C0 08 90 */	fmr f30, f1
/* 802ACA64  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACA68  93 81 00 34 */	stw r28, 0x34(r1)
/* 802ACA6C  3C 00 43 30 */	lis r0, 0x4330
/* 802ACA70  90 01 00 30 */	stw r0, 0x30(r1)
/* 802ACA74  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802ACA78  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACA7C  C0 42 BE F0 */	lfs f2, lit_4588(r2)
/* 802ACA80  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802ACA84  C0 82 BE F4 */	lfs f4, lit_4589(r2)
/* 802ACA88  C0 A2 BE 84 */	lfs f5, lit_4043(r2)
/* 802ACA8C  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802ACA90  38 60 00 01 */	li r3, 1
/* 802ACA94  4B FF CC 61 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACA98  FF E0 08 90 */	fmr f31, f1
/* 802ACA9C  48 00 0A E0 */	b lbl_802AD57C
lbl_802ACAA0:
/* 802ACAA0  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACAA4  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802ACAA8  3C 00 43 30 */	lis r0, 0x4330
/* 802ACAAC  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACAB0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACAB4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACAB8  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ACABC  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802ACAC0  C0 82 BE F4 */	lfs f4, lit_4589(r2)
/* 802ACAC4  C0 A2 BE 84 */	lfs f5, lit_4043(r2)
/* 802ACAC8  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802ACACC  38 60 00 01 */	li r3, 1
/* 802ACAD0  4B FF CC 25 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACAD4  FF E0 08 90 */	fmr f31, f1
/* 802ACAD8  48 00 0A A4 */	b lbl_802AD57C
lbl_802ACADC:
/* 802ACADC  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACAE0  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802ACAE4  3C 00 43 30 */	lis r0, 0x4330
/* 802ACAE8  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACAEC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACAF0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACAF4  C0 42 BE E8 */	lfs f2, lit_4586(r2)
/* 802ACAF8  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802ACAFC  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACB00  FC A0 20 90 */	fmr f5, f4
/* 802ACB04  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802ACB08  38 60 00 00 */	li r3, 0
/* 802ACB0C  4B FF CB E9 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACB10  FF C0 08 90 */	fmr f30, f1
/* 802ACB14  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACB18  93 81 00 34 */	stw r28, 0x34(r1)
/* 802ACB1C  3C 00 43 30 */	lis r0, 0x4330
/* 802ACB20  90 01 00 30 */	stw r0, 0x30(r1)
/* 802ACB24  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802ACB28  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACB2C  C0 42 BE E8 */	lfs f2, lit_4586(r2)
/* 802ACB30  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802ACB34  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACB38  C0 A2 BE C0 */	lfs f5, lit_4058(r2)
/* 802ACB3C  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802ACB40  38 60 00 00 */	li r3, 0
/* 802ACB44  4B FF CB B1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACB48  FF E0 08 90 */	fmr f31, f1
/* 802ACB4C  48 00 0A 30 */	b lbl_802AD57C
lbl_802ACB50:
/* 802ACB50  28 1C 00 0A */	cmplwi r28, 0xa
/* 802ACB54  40 80 00 08 */	bge lbl_802ACB5C
/* 802ACB58  3B 80 00 0A */	li r28, 0xa
lbl_802ACB5C:
/* 802ACB5C  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACB60  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802ACB64  3C 00 43 30 */	lis r0, 0x4330
/* 802ACB68  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACB6C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACB70  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACB74  C0 42 BE F0 */	lfs f2, lit_4588(r2)
/* 802ACB78  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802ACB7C  C0 82 BE F4 */	lfs f4, lit_4589(r2)
/* 802ACB80  C0 A2 BE 78 */	lfs f5, lit_4040(r2)
/* 802ACB84  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802ACB88  38 60 00 01 */	li r3, 1
/* 802ACB8C  4B FF CB 69 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACB90  FF C0 08 90 */	fmr f30, f1
/* 802ACB94  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACB98  93 81 00 34 */	stw r28, 0x34(r1)
/* 802ACB9C  3C 00 43 30 */	lis r0, 0x4330
/* 802ACBA0  90 01 00 30 */	stw r0, 0x30(r1)
/* 802ACBA4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802ACBA8  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACBAC  C0 42 BE F0 */	lfs f2, lit_4588(r2)
/* 802ACBB0  C0 62 BE D0 */	lfs f3, lit_4062(r2)
/* 802ACBB4  C0 82 BE F4 */	lfs f4, lit_4589(r2)
/* 802ACBB8  C0 A2 BE 84 */	lfs f5, lit_4043(r2)
/* 802ACBBC  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802ACBC0  38 60 00 01 */	li r3, 1
/* 802ACBC4  4B FF CB 31 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACBC8  FF E0 08 90 */	fmr f31, f1
/* 802ACBCC  48 00 09 B0 */	b lbl_802AD57C
lbl_802ACBD0:
/* 802ACBD0  28 1C 01 2C */	cmplwi r28, 0x12c
/* 802ACBD4  40 81 00 38 */	ble lbl_802ACC0C
/* 802ACBD8  38 04 01 76 */	addi r0, r4, 0x176
/* 802ACBDC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 802ACBE0  7F E3 FB 78 */	mr r3, r31
/* 802ACBE4  38 81 00 1C */	addi r4, r1, 0x1c
/* 802ACBE8  38 A0 00 00 */	li r5, 0
/* 802ACBEC  7F 86 E3 78 */	mr r6, r28
/* 802ACBF0  38 E0 00 00 */	li r7, 0
/* 802ACBF4  C0 22 BE 80 */	lfs f1, lit_4042(r2)
/* 802ACBF8  FC 40 08 90 */	fmr f2, f1
/* 802ACBFC  C0 62 BE B8 */	lfs f3, lit_4056(r2)
/* 802ACC00  FC 80 18 90 */	fmr f4, f3
/* 802ACC04  39 00 00 00 */	li r8, 0
/* 802ACC08  4B FF F9 05 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_802ACC0C:
/* 802ACC0C  28 1C 01 F4 */	cmplwi r28, 0x1f4
/* 802ACC10  40 81 00 10 */	ble lbl_802ACC20
/* 802ACC14  C3 C2 BE 80 */	lfs f30, lit_4042(r2)
/* 802ACC18  C3 E2 BE F8 */	lfs f31, lit_4590(r2)
/* 802ACC1C  48 00 09 60 */	b lbl_802AD57C
lbl_802ACC20:
/* 802ACC20  C8 62 BF 00 */	lfd f3, lit_4591(r2)
/* 802ACC24  C8 42 BF 08 */	lfd f2, lit_4592(r2)
/* 802ACC28  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACC2C  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802ACC30  3C 00 43 30 */	lis r0, 0x4330
/* 802ACC34  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACC38  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACC3C  FC 00 08 28 */	fsub f0, f0, f1
/* 802ACC40  FC 22 00 32 */	fmul f1, f2, f0
/* 802ACC44  FF C3 08 2A */	fadd f30, f3, f1
/* 802ACC48  FF C0 F0 18 */	frsp f30, f30
/* 802ACC4C  C8 02 BF 10 */	lfd f0, lit_4593(r2)
/* 802ACC50  FF E0 08 2A */	fadd f31, f0, f1
/* 802ACC54  FF E0 F8 18 */	frsp f31, f31
/* 802ACC58  48 00 09 24 */	b lbl_802AD57C
lbl_802ACC5C:
/* 802ACC5C  28 1C 01 F4 */	cmplwi r28, 0x1f4
/* 802ACC60  40 81 00 3C */	ble lbl_802ACC9C
/* 802ACC64  C3 C2 BE 80 */	lfs f30, lit_4042(r2)
/* 802ACC68  C8 62 BF 10 */	lfd f3, lit_4593(r2)
/* 802ACC6C  C8 42 BF 18 */	lfd f2, lit_4594(r2)
/* 802ACC70  38 1C FE 0C */	addi r0, r28, -500
/* 802ACC74  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACC78  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802ACC7C  3C 00 43 30 */	lis r0, 0x4330
/* 802ACC80  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACC84  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACC88  FC 00 08 28 */	fsub f0, f0, f1
/* 802ACC8C  FC 02 00 32 */	fmul f0, f2, f0
/* 802ACC90  FF E3 00 2A */	fadd f31, f3, f0
/* 802ACC94  FF E0 F8 18 */	frsp f31, f31
/* 802ACC98  48 00 08 E4 */	b lbl_802AD57C
lbl_802ACC9C:
/* 802ACC9C  28 1C 01 2C */	cmplwi r28, 0x12c
/* 802ACCA0  40 80 00 0C */	bge lbl_802ACCAC
/* 802ACCA4  C3 C2 BE 78 */	lfs f30, lit_4040(r2)
/* 802ACCA8  48 00 08 D4 */	b lbl_802AD57C
lbl_802ACCAC:
/* 802ACCAC  C8 42 BF 20 */	lfd f2, lit_4595(r2)
/* 802ACCB0  38 1C FE D4 */	addi r0, r28, -300
/* 802ACCB4  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACCB8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802ACCBC  3C 00 43 30 */	lis r0, 0x4330
/* 802ACCC0  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACCC4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACCC8  FC 00 08 28 */	fsub f0, f0, f1
/* 802ACCCC  FF C2 00 32 */	fmul f30, f2, f0
/* 802ACCD0  FF C0 F0 18 */	frsp f30, f30
/* 802ACCD4  48 00 08 A8 */	b lbl_802AD57C
lbl_802ACCD8:
/* 802ACCD8  28 1C 01 F4 */	cmplwi r28, 0x1f4
/* 802ACCDC  41 81 00 0C */	bgt lbl_802ACCE8
/* 802ACCE0  C3 E2 BE C0 */	lfs f31, lit_4058(r2)
/* 802ACCE4  48 00 00 34 */	b lbl_802ACD18
lbl_802ACCE8:
/* 802ACCE8  40 81 00 14 */	ble lbl_802ACCFC
/* 802ACCEC  28 1C 03 E8 */	cmplwi r28, 0x3e8
/* 802ACCF0  41 81 00 0C */	bgt lbl_802ACCFC
/* 802ACCF4  C3 E2 BE 80 */	lfs f31, lit_4042(r2)
/* 802ACCF8  48 00 00 20 */	b lbl_802ACD18
lbl_802ACCFC:
/* 802ACCFC  28 1C 03 E8 */	cmplwi r28, 0x3e8
/* 802ACD00  40 81 00 14 */	ble lbl_802ACD14
/* 802ACD04  28 1C 05 DC */	cmplwi r28, 0x5dc
/* 802ACD08  41 81 00 0C */	bgt lbl_802ACD14
/* 802ACD0C  C3 E2 BE 80 */	lfs f31, lit_4042(r2)
/* 802ACD10  48 00 00 08 */	b lbl_802ACD18
lbl_802ACD14:
/* 802ACD14  C3 E2 BE D4 */	lfs f31, lit_4063(r2)
lbl_802ACD18:
/* 802ACD18  7F E3 FB 78 */	mr r3, r31
/* 802ACD1C  38 81 00 08 */	addi r4, r1, 8
/* 802ACD20  4B FF EB 11 */	bl modHeightAtCamera__7Z2SeMgrFPPC3Vec
/* 802ACD24  48 00 08 58 */	b lbl_802AD57C
lbl_802ACD28:
/* 802ACD28  28 1C 02 BC */	cmplwi r28, 0x2bc
/* 802ACD2C  40 81 00 0C */	ble lbl_802ACD38
/* 802ACD30  C3 E2 BE 80 */	lfs f31, lit_4042(r2)
/* 802ACD34  48 00 00 30 */	b lbl_802ACD64
lbl_802ACD38:
/* 802ACD38  C8 62 BF 28 */	lfd f3, lit_4596(r2)
/* 802ACD3C  C8 42 BF 30 */	lfd f2, lit_4597(r2)
/* 802ACD40  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACD44  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802ACD48  3C 00 43 30 */	lis r0, 0x4330
/* 802ACD4C  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACD50  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACD54  FC 00 08 28 */	fsub f0, f0, f1
/* 802ACD58  FC 02 00 32 */	fmul f0, f2, f0
/* 802ACD5C  FF E3 00 2A */	fadd f31, f3, f0
/* 802ACD60  FF E0 F8 18 */	frsp f31, f31
lbl_802ACD64:
/* 802ACD64  7F E3 FB 78 */	mr r3, r31
/* 802ACD68  38 81 00 08 */	addi r4, r1, 8
/* 802ACD6C  4B FF EA C5 */	bl modHeightAtCamera__7Z2SeMgrFPPC3Vec
/* 802ACD70  48 00 08 0C */	b lbl_802AD57C
lbl_802ACD74:
/* 802ACD74  7F E3 FB 78 */	mr r3, r31
/* 802ACD78  38 81 00 08 */	addi r4, r1, 8
/* 802ACD7C  4B FF EA B5 */	bl modHeightAtCamera__7Z2SeMgrFPPC3Vec
/* 802ACD80  48 00 07 FC */	b lbl_802AD57C
lbl_802ACD84:
/* 802ACD84  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACD88  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802ACD8C  3C 00 43 30 */	lis r0, 0x4330
/* 802ACD90  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACD94  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACD98  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACD9C  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ACDA0  C0 62 BF 38 */	lfs f3, lit_4598(r2)
/* 802ACDA4  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACDA8  C0 A2 BE B4 */	lfs f5, lit_4055(r2)
/* 802ACDAC  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802ACDB0  38 60 00 00 */	li r3, 0
/* 802ACDB4  4B FF C9 41 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACDB8  FF C0 08 90 */	fmr f30, f1
/* 802ACDBC  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACDC0  93 81 00 34 */	stw r28, 0x34(r1)
/* 802ACDC4  3C 00 43 30 */	lis r0, 0x4330
/* 802ACDC8  90 01 00 30 */	stw r0, 0x30(r1)
/* 802ACDCC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802ACDD0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACDD4  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ACDD8  C0 62 BF 38 */	lfs f3, lit_4598(r2)
/* 802ACDDC  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACDE0  C0 A2 BE 84 */	lfs f5, lit_4043(r2)
/* 802ACDE4  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802ACDE8  38 60 00 00 */	li r3, 0
/* 802ACDEC  4B FF C9 09 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACDF0  FF E0 08 90 */	fmr f31, f1
/* 802ACDF4  48 00 07 88 */	b lbl_802AD57C
lbl_802ACDF8:
/* 802ACDF8  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACDFC  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802ACE00  3C 00 43 30 */	lis r0, 0x4330
/* 802ACE04  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACE08  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACE0C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACE10  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ACE14  C0 62 BF 3C */	lfs f3, lit_4599(r2)
/* 802ACE18  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACE1C  C0 A2 BE B4 */	lfs f5, lit_4055(r2)
/* 802ACE20  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802ACE24  38 60 00 00 */	li r3, 0
/* 802ACE28  4B FF C8 CD */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACE2C  FF C0 08 90 */	fmr f30, f1
/* 802ACE30  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACE34  93 81 00 34 */	stw r28, 0x34(r1)
/* 802ACE38  3C 00 43 30 */	lis r0, 0x4330
/* 802ACE3C  90 01 00 30 */	stw r0, 0x30(r1)
/* 802ACE40  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802ACE44  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACE48  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ACE4C  C0 62 BF 3C */	lfs f3, lit_4599(r2)
/* 802ACE50  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACE54  C0 A2 BE 84 */	lfs f5, lit_4043(r2)
/* 802ACE58  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802ACE5C  38 60 00 00 */	li r3, 0
/* 802ACE60  4B FF C8 95 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACE64  FF E0 08 90 */	fmr f31, f1
/* 802ACE68  48 00 07 14 */	b lbl_802AD57C
lbl_802ACE6C:
/* 802ACE6C  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACE70  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802ACE74  3C 00 43 30 */	lis r0, 0x4330
/* 802ACE78  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACE7C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACE80  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACE84  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ACE88  C0 62 BF 40 */	lfs f3, lit_4600(r2)
/* 802ACE8C  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACE90  C0 A2 BF 44 */	lfs f5, lit_4601(r2)
/* 802ACE94  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802ACE98  38 60 00 00 */	li r3, 0
/* 802ACE9C  4B FF C8 59 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACEA0  FF C0 08 90 */	fmr f30, f1
/* 802ACEA4  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACEA8  93 81 00 34 */	stw r28, 0x34(r1)
/* 802ACEAC  3C 00 43 30 */	lis r0, 0x4330
/* 802ACEB0  90 01 00 30 */	stw r0, 0x30(r1)
/* 802ACEB4  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802ACEB8  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACEBC  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ACEC0  C0 62 BF 40 */	lfs f3, lit_4600(r2)
/* 802ACEC4  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACEC8  C0 A2 BE C0 */	lfs f5, lit_4058(r2)
/* 802ACECC  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802ACED0  38 60 00 00 */	li r3, 0
/* 802ACED4  4B FF C8 21 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACED8  FF E0 08 90 */	fmr f31, f1
/* 802ACEDC  48 00 06 A0 */	b lbl_802AD57C
lbl_802ACEE0:
/* 802ACEE0  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACEE4  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802ACEE8  3C 00 43 30 */	lis r0, 0x4330
/* 802ACEEC  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACEF0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACEF4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACEF8  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ACEFC  C0 62 BF 48 */	lfs f3, lit_4602(r2)
/* 802ACF00  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACF04  C0 A2 BE B4 */	lfs f5, lit_4055(r2)
/* 802ACF08  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802ACF0C  38 60 00 00 */	li r3, 0
/* 802ACF10  4B FF C7 E5 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACF14  FF C0 08 90 */	fmr f30, f1
/* 802ACF18  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACF1C  93 81 00 34 */	stw r28, 0x34(r1)
/* 802ACF20  3C 00 43 30 */	lis r0, 0x4330
/* 802ACF24  90 01 00 30 */	stw r0, 0x30(r1)
/* 802ACF28  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802ACF2C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACF30  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ACF34  C0 62 BF 48 */	lfs f3, lit_4602(r2)
/* 802ACF38  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACF3C  C0 A2 BF 44 */	lfs f5, lit_4601(r2)
/* 802ACF40  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802ACF44  38 60 00 00 */	li r3, 0
/* 802ACF48  4B FF C7 AD */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACF4C  FF E0 08 90 */	fmr f31, f1
/* 802ACF50  48 00 06 2C */	b lbl_802AD57C
lbl_802ACF54:
/* 802ACF54  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACF58  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802ACF5C  3C 00 43 30 */	lis r0, 0x4330
/* 802ACF60  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACF64  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACF68  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACF6C  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ACF70  C0 62 BF 4C */	lfs f3, lit_4603(r2)
/* 802ACF74  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACF78  C0 A2 BF 44 */	lfs f5, lit_4601(r2)
/* 802ACF7C  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802ACF80  38 60 00 00 */	li r3, 0
/* 802ACF84  4B FF C7 71 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACF88  FF C0 08 90 */	fmr f30, f1
/* 802ACF8C  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACF90  93 81 00 34 */	stw r28, 0x34(r1)
/* 802ACF94  3C 00 43 30 */	lis r0, 0x4330
/* 802ACF98  90 01 00 30 */	stw r0, 0x30(r1)
/* 802ACF9C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802ACFA0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACFA4  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ACFA8  C0 62 BF 4C */	lfs f3, lit_4603(r2)
/* 802ACFAC  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACFB0  C0 A2 BE 84 */	lfs f5, lit_4043(r2)
/* 802ACFB4  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802ACFB8  38 60 00 00 */	li r3, 0
/* 802ACFBC  4B FF C7 39 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACFC0  FF E0 08 90 */	fmr f31, f1
/* 802ACFC4  48 00 05 B8 */	b lbl_802AD57C
lbl_802ACFC8:
/* 802ACFC8  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802ACFCC  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802ACFD0  3C 00 43 30 */	lis r0, 0x4330
/* 802ACFD4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802ACFD8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802ACFDC  EC 20 08 28 */	fsubs f1, f0, f1
/* 802ACFE0  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802ACFE4  C0 62 BF 50 */	lfs f3, lit_4604(r2)
/* 802ACFE8  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802ACFEC  FC A0 10 90 */	fmr f5, f2
/* 802ACFF0  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802ACFF4  38 60 00 00 */	li r3, 0
/* 802ACFF8  4B FF C6 FD */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802ACFFC  FF C0 08 90 */	fmr f30, f1
/* 802AD000  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AD004  93 81 00 34 */	stw r28, 0x34(r1)
/* 802AD008  3C 00 43 30 */	lis r0, 0x4330
/* 802AD00C  90 01 00 30 */	stw r0, 0x30(r1)
/* 802AD010  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802AD014  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD018  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AD01C  C0 62 BF 50 */	lfs f3, lit_4604(r2)
/* 802AD020  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AD024  C0 A2 BE C0 */	lfs f5, lit_4058(r2)
/* 802AD028  C0 C2 BE D4 */	lfs f6, lit_4063(r2)
/* 802AD02C  38 60 00 00 */	li r3, 0
/* 802AD030  4B FF C6 C5 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD034  FF E0 08 90 */	fmr f31, f1
/* 802AD038  48 00 05 44 */	b lbl_802AD57C
lbl_802AD03C:
/* 802AD03C  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AD040  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802AD044  3C 00 43 30 */	lis r0, 0x4330
/* 802AD048  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AD04C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AD050  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD054  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AD058  C0 62 BF 54 */	lfs f3, lit_4605(r2)
/* 802AD05C  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AD060  FC A0 10 90 */	fmr f5, f2
/* 802AD064  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AD068  38 60 00 00 */	li r3, 0
/* 802AD06C  4B FF C6 89 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD070  FF C0 08 90 */	fmr f30, f1
/* 802AD074  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AD078  93 81 00 34 */	stw r28, 0x34(r1)
/* 802AD07C  3C 00 43 30 */	lis r0, 0x4330
/* 802AD080  90 01 00 30 */	stw r0, 0x30(r1)
/* 802AD084  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802AD088  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD08C  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AD090  C0 62 BF 54 */	lfs f3, lit_4605(r2)
/* 802AD094  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AD098  C0 A2 BE AC */	lfs f5, lit_4053(r2)
/* 802AD09C  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AD0A0  38 60 00 00 */	li r3, 0
/* 802AD0A4  4B FF C6 51 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD0A8  FF E0 08 90 */	fmr f31, f1
/* 802AD0AC  48 00 04 D0 */	b lbl_802AD57C
lbl_802AD0B0:
/* 802AD0B0  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AD0B4  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802AD0B8  3C 00 43 30 */	lis r0, 0x4330
/* 802AD0BC  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AD0C0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AD0C4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD0C8  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AD0CC  C0 62 BE 74 */	lfs f3, lit_4039(r2)
/* 802AD0D0  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AD0D4  FC A0 10 90 */	fmr f5, f2
/* 802AD0D8  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AD0DC  38 60 00 00 */	li r3, 0
/* 802AD0E0  4B FF C6 15 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD0E4  FF C0 08 90 */	fmr f30, f1
/* 802AD0E8  48 00 04 94 */	b lbl_802AD57C
lbl_802AD0EC:
/* 802AD0EC  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AD0F0  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802AD0F4  3C 00 43 30 */	lis r0, 0x4330
/* 802AD0F8  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AD0FC  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AD100  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD104  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AD108  C0 62 BE 74 */	lfs f3, lit_4039(r2)
/* 802AD10C  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AD110  FC A0 10 90 */	fmr f5, f2
/* 802AD114  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AD118  38 60 00 00 */	li r3, 0
/* 802AD11C  4B FF C5 D9 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD120  FF C0 08 90 */	fmr f30, f1
/* 802AD124  48 00 04 58 */	b lbl_802AD57C
lbl_802AD128:
/* 802AD128  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AD12C  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802AD130  3C 00 43 30 */	lis r0, 0x4330
/* 802AD134  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AD138  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AD13C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD140  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AD144  C0 62 BE 74 */	lfs f3, lit_4039(r2)
/* 802AD148  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AD14C  FC A0 10 90 */	fmr f5, f2
/* 802AD150  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AD154  38 60 00 00 */	li r3, 0
/* 802AD158  4B FF C5 9D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD15C  FF C0 08 90 */	fmr f30, f1
/* 802AD160  48 00 04 1C */	b lbl_802AD57C
lbl_802AD164:
/* 802AD164  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AD168  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802AD16C  3C 00 43 30 */	lis r0, 0x4330
/* 802AD170  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AD174  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AD178  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD17C  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AD180  C0 62 BF 58 */	lfs f3, lit_4606(r2)
/* 802AD184  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AD188  C0 A2 BE A8 */	lfs f5, lit_4052(r2)
/* 802AD18C  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AD190  38 60 00 00 */	li r3, 0
/* 802AD194  4B FF C5 61 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD198  FF C0 08 90 */	fmr f30, f1
/* 802AD19C  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AD1A0  93 81 00 34 */	stw r28, 0x34(r1)
/* 802AD1A4  3C 00 43 30 */	lis r0, 0x4330
/* 802AD1A8  90 01 00 30 */	stw r0, 0x30(r1)
/* 802AD1AC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802AD1B0  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD1B4  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AD1B8  C0 62 BF 58 */	lfs f3, lit_4606(r2)
/* 802AD1BC  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AD1C0  C0 A2 BE 84 */	lfs f5, lit_4043(r2)
/* 802AD1C4  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AD1C8  38 60 00 00 */	li r3, 0
/* 802AD1CC  4B FF C5 29 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD1D0  FF E0 08 90 */	fmr f31, f1
/* 802AD1D4  48 00 03 A8 */	b lbl_802AD57C
lbl_802AD1D8:
/* 802AD1D8  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AD1DC  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802AD1E0  3C 00 43 30 */	lis r0, 0x4330
/* 802AD1E4  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AD1E8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AD1EC  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD1F0  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AD1F4  C0 62 BE BC */	lfs f3, lit_4057(r2)
/* 802AD1F8  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AD1FC  C0 A2 BE A8 */	lfs f5, lit_4052(r2)
/* 802AD200  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AD204  38 60 00 00 */	li r3, 0
/* 802AD208  4B FF C4 ED */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD20C  FF C0 08 90 */	fmr f30, f1
/* 802AD210  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AD214  93 81 00 34 */	stw r28, 0x34(r1)
/* 802AD218  3C 00 43 30 */	lis r0, 0x4330
/* 802AD21C  90 01 00 30 */	stw r0, 0x30(r1)
/* 802AD220  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 802AD224  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD228  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AD22C  C0 62 BE BC */	lfs f3, lit_4057(r2)
/* 802AD230  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AD234  C0 A2 BE C0 */	lfs f5, lit_4058(r2)
/* 802AD238  C0 C2 BE C4 */	lfs f6, lit_4059(r2)
/* 802AD23C  38 60 00 00 */	li r3, 0
/* 802AD240  4B FF C4 B5 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD244  FF E0 08 90 */	fmr f31, f1
/* 802AD248  48 00 03 34 */	b lbl_802AD57C
lbl_802AD24C:
/* 802AD24C  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802AD250  80 03 00 04 */	lwz r0, 4(r3)
/* 802AD254  2C 00 00 16 */	cmpwi r0, 0x16
/* 802AD258  40 82 03 24 */	bne lbl_802AD57C
lbl_802AD25C:
/* 802AD25C  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802AD260  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 802AD264  28 00 00 00 */	cmplwi r0, 0
/* 802AD268  40 82 03 14 */	bne lbl_802AD57C
/* 802AD26C  80 61 00 08 */	lwz r3, 8(r1)
/* 802AD270  28 03 00 00 */	cmplwi r3, 0
/* 802AD274  41 82 03 08 */	beq lbl_802AD57C
/* 802AD278  80 8D 8D E0 */	lwz r4, mLinkPtr__14Z2CreatureLink(r13)
/* 802AD27C  28 04 00 00 */	cmplwi r4, 0
/* 802AD280  41 82 02 FC */	beq lbl_802AD57C
/* 802AD284  80 84 00 04 */	lwz r4, 4(r4)
/* 802AD288  28 04 00 00 */	cmplwi r4, 0
/* 802AD28C  41 82 02 F0 */	beq lbl_802AD57C
/* 802AD290  48 09 A1 0D */	bl PSVECSquareDistance
/* 802AD294  C0 02 BE 78 */	lfs f0, lit_4040(r2)
/* 802AD298  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802AD29C  40 81 00 58 */	ble lbl_802AD2F4
/* 802AD2A0  FC 00 08 34 */	frsqrte f0, f1
/* 802AD2A4  C8 82 BF 60 */	lfd f4, lit_4607(r2)
/* 802AD2A8  FC 44 00 32 */	fmul f2, f4, f0
/* 802AD2AC  C8 62 BF 68 */	lfd f3, lit_4608(r2)
/* 802AD2B0  FC 00 00 32 */	fmul f0, f0, f0
/* 802AD2B4  FC 01 00 32 */	fmul f0, f1, f0
/* 802AD2B8  FC 03 00 28 */	fsub f0, f3, f0
/* 802AD2BC  FC 02 00 32 */	fmul f0, f2, f0
/* 802AD2C0  FC 44 00 32 */	fmul f2, f4, f0
/* 802AD2C4  FC 00 00 32 */	fmul f0, f0, f0
/* 802AD2C8  FC 01 00 32 */	fmul f0, f1, f0
/* 802AD2CC  FC 03 00 28 */	fsub f0, f3, f0
/* 802AD2D0  FC 02 00 32 */	fmul f0, f2, f0
/* 802AD2D4  FC 44 00 32 */	fmul f2, f4, f0
/* 802AD2D8  FC 00 00 32 */	fmul f0, f0, f0
/* 802AD2DC  FC 01 00 32 */	fmul f0, f1, f0
/* 802AD2E0  FC 03 00 28 */	fsub f0, f3, f0
/* 802AD2E4  FC 02 00 32 */	fmul f0, f2, f0
/* 802AD2E8  FC 21 00 32 */	fmul f1, f1, f0
/* 802AD2EC  FC 20 08 18 */	frsp f1, f1
/* 802AD2F0  48 00 00 88 */	b lbl_802AD378
lbl_802AD2F4:
/* 802AD2F4  C8 02 BF 70 */	lfd f0, lit_4609(r2)
/* 802AD2F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802AD2FC  40 80 00 10 */	bge lbl_802AD30C
/* 802AD300  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 802AD304  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 802AD308  48 00 00 70 */	b lbl_802AD378
lbl_802AD30C:
/* 802AD30C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 802AD310  80 81 00 0C */	lwz r4, 0xc(r1)
/* 802AD314  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 802AD318  3C 00 7F 80 */	lis r0, 0x7f80
/* 802AD31C  7C 03 00 00 */	cmpw r3, r0
/* 802AD320  41 82 00 14 */	beq lbl_802AD334
/* 802AD324  40 80 00 40 */	bge lbl_802AD364
/* 802AD328  2C 03 00 00 */	cmpwi r3, 0
/* 802AD32C  41 82 00 20 */	beq lbl_802AD34C
/* 802AD330  48 00 00 34 */	b lbl_802AD364
lbl_802AD334:
/* 802AD334  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802AD338  41 82 00 0C */	beq lbl_802AD344
/* 802AD33C  38 00 00 01 */	li r0, 1
/* 802AD340  48 00 00 28 */	b lbl_802AD368
lbl_802AD344:
/* 802AD344  38 00 00 02 */	li r0, 2
/* 802AD348  48 00 00 20 */	b lbl_802AD368
lbl_802AD34C:
/* 802AD34C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 802AD350  41 82 00 0C */	beq lbl_802AD35C
/* 802AD354  38 00 00 05 */	li r0, 5
/* 802AD358  48 00 00 10 */	b lbl_802AD368
lbl_802AD35C:
/* 802AD35C  38 00 00 03 */	li r0, 3
/* 802AD360  48 00 00 08 */	b lbl_802AD368
lbl_802AD364:
/* 802AD364  38 00 00 04 */	li r0, 4
lbl_802AD368:
/* 802AD368  2C 00 00 01 */	cmpwi r0, 1
/* 802AD36C  40 82 00 0C */	bne lbl_802AD378
/* 802AD370  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 802AD374  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_802AD378:
/* 802AD378  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AD37C  C0 42 BF 78 */	lfs f2, lit_4610(r2)
/* 802AD380  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 802AD384  40 80 00 0C */	bge lbl_802AD390
/* 802AD388  C0 C2 BE 78 */	lfs f6, lit_4040(r2)
/* 802AD38C  48 00 00 28 */	b lbl_802AD3B4
lbl_802AD390:
/* 802AD390  C0 02 BF 38 */	lfs f0, lit_4598(r2)
/* 802AD394  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802AD398  40 80 00 1C */	bge lbl_802AD3B4
/* 802AD39C  C0 62 BF 7C */	lfs f3, lit_4611(r2)
/* 802AD3A0  C0 82 BF 80 */	lfs f4, lit_4612(r2)
/* 802AD3A4  C0 A2 BE 78 */	lfs f5, lit_4040(r2)
/* 802AD3A8  38 60 00 00 */	li r3, 0
/* 802AD3AC  4B FF C3 49 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD3B0  FC C0 08 90 */	fmr f6, f1
lbl_802AD3B4:
/* 802AD3B4  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802AD3B8  C0 02 BE 78 */	lfs f0, lit_4040(r2)
/* 802AD3BC  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 802AD3C0  40 80 00 08 */	bge lbl_802AD3C8
/* 802AD3C4  48 00 00 18 */	b lbl_802AD3DC
lbl_802AD3C8:
/* 802AD3C8  C0 02 BE 80 */	lfs f0, lit_4042(r2)
/* 802AD3CC  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 802AD3D0  40 81 00 08 */	ble lbl_802AD3D8
/* 802AD3D4  48 00 00 08 */	b lbl_802AD3DC
lbl_802AD3D8:
/* 802AD3D8  FC 00 30 90 */	fmr f0, f6
lbl_802AD3DC:
/* 802AD3DC  D0 03 00 B4 */	stfs f0, 0xb4(r3)
/* 802AD3E0  48 00 01 9C */	b lbl_802AD57C
lbl_802AD3E4:
/* 802AD3E4  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AD3E8  93 81 00 3C */	stw r28, 0x3c(r1)
/* 802AD3EC  3C 00 43 30 */	lis r0, 0x4330
/* 802AD3F0  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AD3F4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AD3F8  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD3FC  C0 42 BE 78 */	lfs f2, lit_4040(r2)
/* 802AD400  C0 62 BF 84 */	lfs f3, lit_4613(r2)
/* 802AD404  C0 82 BE 8C */	lfs f4, lit_4045(r2)
/* 802AD408  C0 A2 BE A8 */	lfs f5, lit_4052(r2)
/* 802AD40C  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AD410  38 60 00 00 */	li r3, 0
/* 802AD414  4B FF C2 E1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD418  FF C0 08 90 */	fmr f30, f1
/* 802AD41C  48 00 01 60 */	b lbl_802AD57C
lbl_802AD420:
/* 802AD420  C0 82 BE 80 */	lfs f4, lit_4042(r2)
/* 802AD424  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802AD428  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802AD42C  2C 00 00 03 */	cmpwi r0, 3
/* 802AD430  40 82 00 2C */	bne lbl_802AD45C
/* 802AD434  80 6D 8D E0 */	lwz r3, mLinkPtr__14Z2CreatureLink(r13)
/* 802AD438  80 63 00 04 */	lwz r3, 4(r3)
/* 802AD43C  C0 03 00 00 */	lfs f0, 0(r3)
/* 802AD440  FC 20 02 10 */	fabs f1, f0
/* 802AD444  C0 42 BF 88 */	lfs f2, lit_4614(r2)
/* 802AD448  C0 62 BF 3C */	lfs f3, lit_4599(r2)
/* 802AD44C  C0 A2 BE EC */	lfs f5, lit_4587(r2)
/* 802AD450  38 60 00 00 */	li r3, 0
/* 802AD454  4B FF C2 39 */	bl linearTransform__6Z2CalcFfffffb
/* 802AD458  FC 80 08 90 */	fmr f4, f1
lbl_802AD45C:
/* 802AD45C  80 6D 85 FC */	lwz r3, data_80450B7C(r13)
/* 802AD460  88 03 00 00 */	lbz r0, 0(r3)
/* 802AD464  28 00 00 17 */	cmplwi r0, 0x17
/* 802AD468  41 81 00 CC */	bgt lbl_802AD534
/* 802AD46C  3C 60 80 3D */	lis r3, lit_4619@ha /* 0x803C9D98@ha */
/* 802AD470  38 63 9D 98 */	addi r3, r3, lit_4619@l /* 0x803C9D98@l */
/* 802AD474  54 00 10 3A */	slwi r0, r0, 2
/* 802AD478  7C 03 00 2E */	lwzx r0, r3, r0
/* 802AD47C  7C 09 03 A6 */	mtctr r0
/* 802AD480  4E 80 04 20 */	bctr 
/* 802AD484  C0 02 BE EC */	lfs f0, lit_4587(r2)
/* 802AD488  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD48C  48 00 00 A8 */	b lbl_802AD534
/* 802AD490  C0 02 BE 7C */	lfs f0, lit_4041(r2)
/* 802AD494  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD498  48 00 00 9C */	b lbl_802AD534
/* 802AD49C  C0 02 BE B4 */	lfs f0, lit_4055(r2)
/* 802AD4A0  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD4A4  48 00 00 90 */	b lbl_802AD534
/* 802AD4A8  C0 02 BE 8C */	lfs f0, lit_4045(r2)
/* 802AD4AC  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD4B0  48 00 00 84 */	b lbl_802AD534
/* 802AD4B4  C0 02 BE A8 */	lfs f0, lit_4052(r2)
/* 802AD4B8  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD4BC  48 00 00 78 */	b lbl_802AD534
/* 802AD4C0  C0 02 BF 44 */	lfs f0, lit_4601(r2)
/* 802AD4C4  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD4C8  48 00 00 6C */	b lbl_802AD534
/* 802AD4CC  C0 02 BE 84 */	lfs f0, lit_4043(r2)
/* 802AD4D0  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD4D4  48 00 00 60 */	b lbl_802AD534
/* 802AD4D8  C0 02 BE C0 */	lfs f0, lit_4058(r2)
/* 802AD4DC  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD4E0  48 00 00 54 */	b lbl_802AD534
/* 802AD4E4  C0 02 BE AC */	lfs f0, lit_4053(r2)
/* 802AD4E8  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD4EC  48 00 00 48 */	b lbl_802AD534
/* 802AD4F0  C0 02 BE AC */	lfs f0, lit_4053(r2)
/* 802AD4F4  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD4F8  48 00 00 3C */	b lbl_802AD534
/* 802AD4FC  C0 02 BE C0 */	lfs f0, lit_4058(r2)
/* 802AD500  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD504  48 00 00 30 */	b lbl_802AD534
/* 802AD508  C0 02 BE 84 */	lfs f0, lit_4043(r2)
/* 802AD50C  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD510  48 00 00 24 */	b lbl_802AD534
/* 802AD514  C0 02 BE A8 */	lfs f0, lit_4052(r2)
/* 802AD518  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD51C  48 00 00 18 */	b lbl_802AD534
/* 802AD520  C0 02 BE 8C */	lfs f0, lit_4045(r2)
/* 802AD524  EC 84 00 32 */	fmuls f4, f4, f0
/* 802AD528  48 00 00 0C */	b lbl_802AD534
/* 802AD52C  C0 02 BE 7C */	lfs f0, lit_4041(r2)
/* 802AD530  EC 84 00 32 */	fmuls f4, f4, f0
lbl_802AD534:
/* 802AD534  88 1F 03 CC */	lbz r0, 0x3cc(r31)
/* 802AD538  C8 22 BE D8 */	lfd f1, lit_4067(r2)
/* 802AD53C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802AD540  3C 00 43 30 */	lis r0, 0x4330
/* 802AD544  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AD548  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AD54C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802AD550  EC 20 01 32 */	fmuls f1, f0, f4
/* 802AD554  C0 42 BF 58 */	lfs f2, lit_4606(r2)
/* 802AD558  C0 62 BF 8C */	lfs f3, lit_4615(r2)
/* 802AD55C  C0 82 BE 7C */	lfs f4, lit_4041(r2)
/* 802AD560  C0 A2 BE 78 */	lfs f5, lit_4040(r2)
/* 802AD564  C0 C2 BE 80 */	lfs f6, lit_4042(r2)
/* 802AD568  38 60 00 00 */	li r3, 0
/* 802AD56C  4B FF C1 89 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802AD570  FF C0 08 90 */	fmr f30, f1
/* 802AD574  48 00 00 08 */	b lbl_802AD57C
lbl_802AD578:
/* 802AD578  3B 9C 00 01 */	addi r28, r28, 1
lbl_802AD57C:
/* 802AD57C  3B 40 00 00 */	li r26, 0
/* 802AD580  80 A1 00 08 */	lwz r5, 8(r1)
/* 802AD584  80 7B 00 00 */	lwz r3, 0(r27)
/* 802AD588  38 00 00 18 */	li r0, 0x18
/* 802AD58C  7C 09 03 A6 */	mtctr r0
lbl_802AD590:
/* 802AD590  80 9F 00 60 */	lwz r4, 0x60(r31)
/* 802AD594  7C 84 D0 2E */	lwzx r4, r4, r26
/* 802AD598  28 04 00 00 */	cmplwi r4, 0
/* 802AD59C  41 82 01 9C */	beq lbl_802AD738
/* 802AD5A0  80 04 00 18 */	lwz r0, 0x18(r4)
/* 802AD5A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 802AD5A8  7C 00 18 40 */	cmplw r0, r3
/* 802AD5AC  40 82 01 8C */	bne lbl_802AD738
/* 802AD5B0  80 04 00 20 */	lwz r0, 0x20(r4)
/* 802AD5B4  7C 05 00 40 */	cmplw r5, r0
/* 802AD5B8  40 82 01 80 */	bne lbl_802AD738
/* 802AD5BC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802AD5C0  28 00 00 01 */	cmplwi r0, 1
/* 802AD5C4  40 82 00 14 */	bne lbl_802AD5D8
/* 802AD5C8  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802AD5CC  FC 20 F0 90 */	fmr f1, f30
/* 802AD5D0  48 01 01 35 */	bl calcOffMicSound__10Z2AudienceFf
/* 802AD5D4  FF C0 08 90 */	fmr f30, f1
lbl_802AD5D8:
/* 802AD5D8  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 802AD5DC  7C 63 D0 2E */	lwzx r3, r3, r26
/* 802AD5E0  80 03 00 10 */	lwz r0, 0x10(r3)
/* 802AD5E4  28 00 00 01 */	cmplwi r0, 1
/* 802AD5E8  40 80 00 0C */	bge lbl_802AD5F4
/* 802AD5EC  38 00 00 01 */	li r0, 1
/* 802AD5F0  90 03 00 10 */	stw r0, 0x10(r3)
lbl_802AD5F4:
/* 802AD5F4  80 61 00 08 */	lwz r3, 8(r1)
/* 802AD5F8  28 03 00 00 */	cmplwi r3, 0
/* 802AD5FC  41 82 00 3C */	beq lbl_802AD638
/* 802AD600  E0 03 00 00 */	psq_l f0, 0(r3), 0, 0 /* qr0 */
/* 802AD604  C0 23 00 08 */	lfs f1, 8(r3)
/* 802AD608  F0 01 00 20 */	psq_st f0, 32(r1), 0, 0 /* qr0 */
/* 802AD60C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 802AD610  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 802AD614  7C 63 D0 2E */	lwzx r3, r3, r26
/* 802AD618  80 63 00 08 */	lwz r3, 8(r3)
/* 802AD61C  28 03 00 00 */	cmplwi r3, 0
/* 802AD620  41 82 00 18 */	beq lbl_802AD638
/* 802AD624  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 802AD628  D0 03 00 04 */	stfs f0, 4(r3)
/* 802AD62C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 802AD630  D0 03 00 08 */	stfs f0, 8(r3)
/* 802AD634  D0 23 00 0C */	stfs f1, 0xc(r3)
lbl_802AD638:
/* 802AD638  28 1C 00 00 */	cmplwi r28, 0
/* 802AD63C  41 82 00 20 */	beq lbl_802AD65C
/* 802AD640  80 1F 00 60 */	lwz r0, 0x60(r31)
/* 802AD644  7C 80 D2 14 */	add r4, r0, r26
/* 802AD648  80 6D 85 F4 */	lwz r3, data_80450B74(r13)
/* 802AD64C  38 A0 00 06 */	li r5, 6
/* 802AD650  57 86 04 3E */	clrlwi r6, r28, 0x10
/* 802AD654  38 E0 FF FF */	li r7, -1
/* 802AD658  4B FF D8 85 */	bl setPortData__14Z2SoundStarterFP14JAISoundHandleUlUsSc
lbl_802AD65C:
/* 802AD65C  7F A0 07 75 */	extsb. r0, r29
/* 802AD660  41 82 00 40 */	beq lbl_802AD6A0
/* 802AD664  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 802AD668  7C 63 D0 2E */	lwzx r3, r3, r26
/* 802AD66C  38 63 00 48 */	addi r3, r3, 0x48
/* 802AD670  7F A0 07 74 */	extsb r0, r29
/* 802AD674  C8 22 BE E0 */	lfd f1, lit_4070(r2)
/* 802AD678  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802AD67C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802AD680  3C 00 43 30 */	lis r0, 0x4330
/* 802AD684  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AD688  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AD68C  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD690  C0 02 BE D0 */	lfs f0, lit_4062(r2)
/* 802AD694  EC 21 00 24 */	fdivs f1, f1, f0
/* 802AD698  38 80 00 00 */	li r4, 0
/* 802AD69C  4B FF 57 C9 */	bl moveFxMix__18JAISoundParamsMoveFfUl
lbl_802AD6A0:
/* 802AD6A0  C0 02 BE 80 */	lfs f0, lit_4042(r2)
/* 802AD6A4  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 802AD6A8  41 82 00 1C */	beq lbl_802AD6C4
/* 802AD6AC  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 802AD6B0  7C 63 D0 2E */	lwzx r3, r3, r26
/* 802AD6B4  38 63 00 48 */	addi r3, r3, 0x48
/* 802AD6B8  FC 20 F8 90 */	fmr f1, f31
/* 802AD6BC  38 80 00 00 */	li r4, 0
/* 802AD6C0  4B FF 57 4D */	bl movePitch__18JAISoundParamsMoveFfUl
lbl_802AD6C4:
/* 802AD6C4  C0 02 BE 80 */	lfs f0, lit_4042(r2)
/* 802AD6C8  FC 00 F0 00 */	fcmpu cr0, f0, f30
/* 802AD6CC  41 82 00 1C */	beq lbl_802AD6E8
/* 802AD6D0  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 802AD6D4  7C 63 D0 2E */	lwzx r3, r3, r26
/* 802AD6D8  38 63 00 48 */	addi r3, r3, 0x48
/* 802AD6DC  FC 20 F0 90 */	fmr f1, f30
/* 802AD6E0  38 80 00 00 */	li r4, 0
/* 802AD6E4  4B FF 56 D1 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802AD6E8:
/* 802AD6E8  C0 02 BE B8 */	lfs f0, lit_4056(r2)
/* 802AD6EC  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 802AD6F0  41 82 00 1C */	beq lbl_802AD70C
/* 802AD6F4  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 802AD6F8  7C 63 D0 2E */	lwzx r3, r3, r26
/* 802AD6FC  38 63 00 48 */	addi r3, r3, 0x48
/* 802AD700  FC 20 E8 90 */	fmr f1, f29
/* 802AD704  38 80 00 00 */	li r4, 0
/* 802AD708  4B FF 57 B5 */	bl movePan__18JAISoundParamsMoveFfUl
lbl_802AD70C:
/* 802AD70C  C0 02 BE B8 */	lfs f0, lit_4056(r2)
/* 802AD710  FC 00 E0 00 */	fcmpu cr0, f0, f28
/* 802AD714  41 82 00 1C */	beq lbl_802AD730
/* 802AD718  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 802AD71C  7C 63 D0 2E */	lwzx r3, r3, r26
/* 802AD720  38 63 00 48 */	addi r3, r3, 0x48
/* 802AD724  FC 20 E0 90 */	fmr f1, f28
/* 802AD728  38 80 00 00 */	li r4, 0
/* 802AD72C  4B FF 57 E9 */	bl moveDolby__18JAISoundParamsMoveFfUl
lbl_802AD730:
/* 802AD730  38 60 00 01 */	li r3, 1
/* 802AD734  48 00 01 44 */	b lbl_802AD878
lbl_802AD738:
/* 802AD738  3B 5A 00 04 */	addi r26, r26, 4
/* 802AD73C  42 00 FE 54 */	bdnz lbl_802AD590
/* 802AD740  80 1B 00 00 */	lwz r0, 0(r27)
/* 802AD744  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AD748  7F E3 FB 78 */	mr r3, r31
/* 802AD74C  38 81 00 14 */	addi r4, r1, 0x14
/* 802AD750  48 00 0E 61 */	bl isSoundCulling__7Z2SeMgrF10JAISoundID
/* 802AD754  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802AD758  41 82 00 0C */	beq lbl_802AD764
/* 802AD75C  38 60 00 00 */	li r3, 0
/* 802AD760  48 00 01 18 */	b lbl_802AD878
lbl_802AD764:
/* 802AD764  38 7F 00 60 */	addi r3, r31, 0x60
/* 802AD768  4B FF 55 8D */	bl getFreeHandle__15JAISoundHandlesFv
/* 802AD76C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802AD770  40 82 00 0C */	bne lbl_802AD77C
/* 802AD774  38 60 00 00 */	li r3, 0
/* 802AD778  48 00 01 00 */	b lbl_802AD878
lbl_802AD77C:
/* 802AD77C  80 1B 00 00 */	lwz r0, 0(r27)
/* 802AD780  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AD784  80 6D 85 F4 */	lwz r3, data_80450B74(r13)
/* 802AD788  38 81 00 10 */	addi r4, r1, 0x10
/* 802AD78C  7F E5 FB 78 */	mr r5, r31
/* 802AD790  80 C1 00 08 */	lwz r6, 8(r1)
/* 802AD794  7F 87 E3 78 */	mr r7, r28
/* 802AD798  7F A0 07 74 */	extsb r0, r29
/* 802AD79C  C8 22 BE E0 */	lfd f1, lit_4070(r2)
/* 802AD7A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802AD7A4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 802AD7A8  3C 00 43 30 */	lis r0, 0x4330
/* 802AD7AC  90 01 00 38 */	stw r0, 0x38(r1)
/* 802AD7B0  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 802AD7B4  EC 20 08 28 */	fsubs f1, f0, f1
/* 802AD7B8  C0 02 BE D0 */	lfs f0, lit_4062(r2)
/* 802AD7BC  EC 21 00 24 */	fdivs f1, f1, f0
/* 802AD7C0  FC 40 F8 90 */	fmr f2, f31
/* 802AD7C4  FC 60 F0 90 */	fmr f3, f30
/* 802AD7C8  FC 80 E8 90 */	fmr f4, f29
/* 802AD7CC  FC A0 E0 90 */	fmr f5, f28
/* 802AD7D0  39 00 00 00 */	li r8, 0
/* 802AD7D4  81 83 00 00 */	lwz r12, 0(r3)
/* 802AD7D8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802AD7DC  7D 89 03 A6 */	mtctr r12
/* 802AD7E0  4E 80 04 21 */	bctrl 
/* 802AD7E4  7C 7A 1B 78 */	mr r26, r3
/* 802AD7E8  28 1F 00 00 */	cmplwi r31, 0
/* 802AD7EC  41 82 00 88 */	beq lbl_802AD874
/* 802AD7F0  80 1F 00 00 */	lwz r0, 0(r31)
/* 802AD7F4  28 00 00 00 */	cmplwi r0, 0
/* 802AD7F8  41 82 00 7C */	beq lbl_802AD874
/* 802AD7FC  80 7B 00 00 */	lwz r3, 0(r27)
/* 802AD800  3C 03 FF F8 */	addis r0, r3, 0xfff8
/* 802AD804  28 00 01 75 */	cmplwi r0, 0x175
/* 802AD808  40 82 00 1C */	bne lbl_802AD824
/* 802AD80C  80 6D 86 04 */	lwz r3, data_80450B84(r13)
/* 802AD810  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100002F@ha */
/* 802AD814  38 84 00 2F */	addi r4, r4, 0x002F /* 0x0100002F@l */
/* 802AD818  38 A0 00 00 */	li r5, 0
/* 802AD81C  38 C0 00 00 */	li r6, 0
/* 802AD820  48 00 17 F1 */	bl bgmStart__8Z2SeqMgrFUlUll
lbl_802AD824:
/* 802AD824  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802AD828  28 00 00 01 */	cmplwi r0, 1
/* 802AD82C  40 82 00 10 */	bne lbl_802AD83C
/* 802AD830  80 6D 85 C4 */	lwz r3, data_80450B44(r13)
/* 802AD834  FC 20 F0 90 */	fmr f1, f30
/* 802AD838  48 00 FE CD */	bl calcOffMicSound__10Z2AudienceFf
lbl_802AD83C:
/* 802AD83C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802AD840  80 01 00 08 */	lwz r0, 8(r1)
/* 802AD844  90 03 00 20 */	stw r0, 0x20(r3)
/* 802AD848  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 802AD84C  41 82 00 28 */	beq lbl_802AD874
/* 802AD850  80 9F 00 00 */	lwz r4, 0(r31)
/* 802AD854  38 60 00 01 */	li r3, 1
/* 802AD858  90 64 00 10 */	stw r3, 0x10(r4)
/* 802AD85C  88 04 00 1D */	lbz r0, 0x1d(r4)
/* 802AD860  50 60 3E 30 */	rlwimi r0, r3, 7, 0x18, 0x18
/* 802AD864  98 04 00 1D */	stb r0, 0x1d(r4)
/* 802AD868  88 04 00 1D */	lbz r0, 0x1d(r4)
/* 802AD86C  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 802AD870  98 04 00 1D */	stb r0, 0x1d(r4)
lbl_802AD874:
/* 802AD874  7F 43 D3 78 */	mr r3, r26
lbl_802AD878:
/* 802AD878  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 802AD87C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 802AD880  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 802AD884  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 802AD888  E3 A1 00 78 */	psq_l f29, 120(r1), 0, 0 /* qr0 */
/* 802AD88C  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 802AD890  E3 81 00 68 */	psq_l f28, 104(r1), 0, 0 /* qr0 */
/* 802AD894  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 802AD898  39 61 00 60 */	addi r11, r1, 0x60
/* 802AD89C  48 0B 49 81 */	bl _restgpr_26
/* 802AD8A0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 802AD8A4  7C 08 03 A6 */	mtlr r0
/* 802AD8A8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 802AD8AC  4E 80 00 20 */	blr 
