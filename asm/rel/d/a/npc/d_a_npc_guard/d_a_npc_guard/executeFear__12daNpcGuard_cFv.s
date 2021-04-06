lbl_809F0960:
/* 809F0960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F0964  7C 08 02 A6 */	mflr r0
/* 809F0968  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F096C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F0970  93 C1 00 08 */	stw r30, 8(r1)
/* 809F0974  7C 7E 1B 78 */	mr r30, r3
/* 809F0978  80 63 05 8C */	lwz r3, 0x58c(r3)
/* 809F097C  38 63 00 0C */	addi r3, r3, 0xc
/* 809F0980  3C 80 80 9F */	lis r4, lit_3900@ha /* 0x809F2C50@ha */
/* 809F0984  C0 24 2C 50 */	lfs f1, lit_3900@l(r4)  /* 0x809F2C50@l */
/* 809F0988  4B 93 7A A5 */	bl checkPass__12J3DFrameCtrlFf
/* 809F098C  2C 03 00 00 */	cmpwi r3, 0
/* 809F0990  41 82 00 10 */	beq lbl_809F09A0
/* 809F0994  38 7E 05 94 */	addi r3, r30, 0x594
/* 809F0998  38 80 00 02 */	li r4, 2
/* 809F099C  4B 8D 04 7D */	bl playVoice__17Z2CreatureCitizenFi
lbl_809F09A0:
/* 809F09A0  37 FE 08 50 */	addic. r31, r30, 0x850
/* 809F09A4  41 82 00 18 */	beq lbl_809F09BC
/* 809F09A8  7F E3 FB 78 */	mr r3, r31
/* 809F09AC  7F E4 FB 78 */	mr r4, r31
/* 809F09B0  3C A0 80 9F */	lis r5, lit_4006@ha /* 0x809F2C78@ha */
/* 809F09B4  C0 25 2C 78 */	lfs f1, lit_4006@l(r5)  /* 0x809F2C78@l */
/* 809F09B8  4B 95 67 21 */	bl PSVECScale
lbl_809F09BC:
/* 809F09BC  7F C3 F3 78 */	mr r3, r30
/* 809F09C0  7F E4 FB 78 */	mr r4, r31
/* 809F09C4  4B 62 9D 09 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 809F09C8  38 7E 06 38 */	addi r3, r30, 0x638
/* 809F09CC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F09D0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F09D4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 809F09D8  4B 68 60 D5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 809F09DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809F09E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809F09E4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809F09E8  88 03 05 68 */	lbz r0, 0x568(r3)
/* 809F09EC  28 00 00 33 */	cmplwi r0, 0x33
/* 809F09F0  41 82 00 10 */	beq lbl_809F0A00
/* 809F09F4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 809F09F8  28 00 00 34 */	cmplwi r0, 0x34
/* 809F09FC  40 82 00 20 */	bne lbl_809F0A1C
lbl_809F0A00:
/* 809F0A00  88 1E 0D A2 */	lbz r0, 0xda2(r30)
/* 809F0A04  28 00 00 00 */	cmplwi r0, 0
/* 809F0A08  41 82 00 14 */	beq lbl_809F0A1C
/* 809F0A0C  7F C3 F3 78 */	mr r3, r30
/* 809F0A10  38 80 00 06 */	li r4, 6
/* 809F0A14  4B FF F4 0D */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
/* 809F0A18  48 00 00 20 */	b lbl_809F0A38
lbl_809F0A1C:
/* 809F0A1C  38 7E 0D 88 */	addi r3, r30, 0xd88
/* 809F0A20  48 00 1A 95 */	bl func_809F24B4
/* 809F0A24  2C 03 00 00 */	cmpwi r3, 0
/* 809F0A28  40 82 00 10 */	bne lbl_809F0A38
/* 809F0A2C  7F C3 F3 78 */	mr r3, r30
/* 809F0A30  38 80 00 02 */	li r4, 2
/* 809F0A34  4B FF F3 ED */	bl setAction__12daNpcGuard_cFQ212daNpcGuard_c6Mode_e
lbl_809F0A38:
/* 809F0A38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F0A3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F0A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F0A44  7C 08 03 A6 */	mtlr r0
/* 809F0A48  38 21 00 10 */	addi r1, r1, 0x10
/* 809F0A4C  4E 80 00 20 */	blr 
