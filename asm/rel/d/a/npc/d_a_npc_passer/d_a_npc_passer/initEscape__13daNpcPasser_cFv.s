lbl_80AA38C4:
/* 80AA38C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA38C8  7C 08 02 A6 */	mflr r0
/* 80AA38CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA38D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA38D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA38D8  7C 7E 1B 78 */	mr r30, r3
/* 80AA38DC  3C 80 80 AA */	lis r4, lit_4109@ha /* 0x80AA698C@ha */
/* 80AA38E0  3B E4 69 8C */	addi r31, r4, lit_4109@l /* 0x80AA698C@l */
/* 80AA38E4  4B 6B 5E DD */	bl getEscapeTag__10daNpcCd2_cFv
/* 80AA38E8  90 7E 0A B0 */	stw r3, 0xab0(r30)
/* 80AA38EC  80 7E 0A B0 */	lwz r3, 0xab0(r30)
/* 80AA38F0  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80AA38F4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80AA38F8  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA38FC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80AA3900  7C 05 07 74 */	extsb r5, r0
/* 80AA3904  38 C0 00 01 */	li r6, 1
/* 80AA3908  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80AA390C  39 00 00 01 */	li r8, 1
/* 80AA3910  4B 6B 61 29 */	bl setPath__11PathTrace_cFiiiP4cXyzb
/* 80AA3914  38 7E 0A CC */	addi r3, r30, 0xacc
/* 80AA3918  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80AA391C  4B 6B 66 7D */	bl setNextPoint__11PathTrace_cFR4cXyz
/* 80AA3920  80 BE 0B 00 */	lwz r5, 0xb00(r30)
/* 80AA3924  2C 05 00 00 */	cmpwi r5, 0
/* 80AA3928  40 82 00 48 */	bne lbl_80AA3970
/* 80AA392C  7F C3 F3 78 */	mr r3, r30
/* 80AA3930  38 80 00 29 */	li r4, 0x29
/* 80AA3934  4B 6B 47 BD */	bl getAnmP__10daNpcCd2_cFii
/* 80AA3938  7C 64 1B 78 */	mr r4, r3
/* 80AA393C  7F C3 F3 78 */	mr r3, r30
/* 80AA3940  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA3944  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80AA3948  38 A0 00 00 */	li r5, 0
/* 80AA394C  38 C0 00 00 */	li r6, 0
/* 80AA3950  38 E0 FF FF */	li r7, -1
/* 80AA3954  4B 6B 55 AD */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA3958  38 7E 05 94 */	addi r3, r30, 0x594
/* 80AA395C  38 80 00 01 */	li r4, 1
/* 80AA3960  4B 81 D4 B9 */	bl playVoice__17Z2CreatureCitizenFi
/* 80AA3964  38 00 00 00 */	li r0, 0
/* 80AA3968  90 1E 0B 1C */	stw r0, 0xb1c(r30)
/* 80AA396C  48 00 00 44 */	b lbl_80AA39B0
lbl_80AA3970:
/* 80AA3970  7F C3 F3 78 */	mr r3, r30
/* 80AA3974  38 80 00 04 */	li r4, 4
/* 80AA3978  4B 6B 47 79 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA397C  7C 64 1B 78 */	mr r4, r3
/* 80AA3980  7F C3 F3 78 */	mr r3, r30
/* 80AA3984  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA3988  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA398C  38 A0 00 02 */	li r5, 2
/* 80AA3990  38 C0 00 00 */	li r6, 0
/* 80AA3994  38 E0 FF FF */	li r7, -1
/* 80AA3998  4B 6B 55 69 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA399C  38 7E 05 94 */	addi r3, r30, 0x594
/* 80AA39A0  38 80 00 00 */	li r4, 0
/* 80AA39A4  4B 81 D4 75 */	bl playVoice__17Z2CreatureCitizenFi
/* 80AA39A8  38 00 00 01 */	li r0, 1
/* 80AA39AC  90 1E 0B 1C */	stw r0, 0xb1c(r30)
lbl_80AA39B0:
/* 80AA39B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AA39B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AA39B8  38 63 09 78 */	addi r3, r3, 0x978
/* 80AA39BC  38 80 00 3C */	li r4, 0x3c
/* 80AA39C0  4B 59 11 D9 */	bl onSwitch__12dSv_danBit_cFi
/* 80AA39C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA39C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA39CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA39D0  7C 08 03 A6 */	mtlr r0
/* 80AA39D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA39D8  4E 80 00 20 */	blr 
