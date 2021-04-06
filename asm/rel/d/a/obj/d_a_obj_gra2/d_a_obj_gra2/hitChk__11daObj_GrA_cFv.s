lbl_80C0308C:
/* 80C0308C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C03090  7C 08 02 A6 */	mflr r0
/* 80C03094  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C03098  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C0309C  7C 7F 1B 78 */	mr r31, r3
/* 80C030A0  80 03 0A A4 */	lwz r0, 0xaa4(r3)
/* 80C030A4  2C 00 00 00 */	cmpwi r0, 0
/* 80C030A8  41 82 00 10 */	beq lbl_80C030B8
/* 80C030AC  38 7F 0A A4 */	addi r3, r31, 0xaa4
/* 80C030B0  48 00 1E 8D */	bl func_80C04F3C
/* 80C030B4  48 00 01 18 */	b lbl_80C031CC
lbl_80C030B8:
/* 80C030B8  38 7F 08 B8 */	addi r3, r31, 0x8b8
/* 80C030BC  4B 48 07 75 */	bl Move__10dCcD_GSttsFv
/* 80C030C0  88 1F 0A 7E */	lbz r0, 0xa7e(r31)
/* 80C030C4  28 00 00 00 */	cmplwi r0, 0
/* 80C030C8  40 82 01 04 */	bne lbl_80C031CC
/* 80C030CC  38 7F 0F 50 */	addi r3, r31, 0xf50
/* 80C030D0  4B 48 13 91 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 80C030D4  28 03 00 00 */	cmplwi r3, 0
/* 80C030D8  41 82 00 F4 */	beq lbl_80C031CC
/* 80C030DC  38 7F 0F EC */	addi r3, r31, 0xfec
/* 80C030E0  4B 48 05 A9 */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80C030E4  7C 64 1B 78 */	mr r4, r3
/* 80C030E8  38 7F 0A B0 */	addi r3, r31, 0xab0
/* 80C030EC  4B 54 A7 31 */	bl entry__18daBaseNpc_acMngr_cFP10fopAc_ac_c
/* 80C030F0  80 1F 1F 40 */	lwz r0, 0x1f40(r31)
/* 80C030F4  2C 00 00 00 */	cmpwi r0, 0
/* 80C030F8  41 82 00 6C */	beq lbl_80C03164
/* 80C030FC  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C03100  38 63 FA 7C */	addi r3, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C03104  A8 03 00 54 */	lha r0, 0x54(r3)
/* 80C03108  90 1F 0A A4 */	stw r0, 0xaa4(r31)
/* 80C0310C  38 7F 0F 50 */	addi r3, r31, 0xf50
/* 80C03110  4B 48 13 E9 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C03114  7C 64 1B 78 */	mr r4, r3
/* 80C03118  38 7F 07 58 */	addi r3, r31, 0x758
/* 80C0311C  38 A0 00 2C */	li r5, 0x2c
/* 80C03120  38 C0 00 00 */	li r6, 0
/* 80C03124  4B 48 43 F1 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80C03128  3C 60 80 C1 */	lis r3, lit_5987@ha /* 0x80C10154@ha */
/* 80C0312C  38 83 01 54 */	addi r4, r3, lit_5987@l /* 0x80C10154@l */
/* 80C03130  80 64 00 00 */	lwz r3, 0(r4)
/* 80C03134  80 04 00 04 */	lwz r0, 4(r4)
/* 80C03138  90 61 00 14 */	stw r3, 0x14(r1)
/* 80C0313C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80C03140  80 04 00 08 */	lwz r0, 8(r4)
/* 80C03144  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80C03148  7F E3 FB 78 */	mr r3, r31
/* 80C0314C  38 81 00 14 */	addi r4, r1, 0x14
/* 80C03150  4B FF E7 A5 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
/* 80C03154  38 00 00 00 */	li r0, 0
/* 80C03158  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 80C0315C  90 1F 1F 40 */	stw r0, 0x1f40(r31)
/* 80C03160  48 00 00 58 */	b lbl_80C031B8
lbl_80C03164:
/* 80C03164  38 7F 0F 50 */	addi r3, r31, 0xf50
/* 80C03168  4B 48 13 91 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80C0316C  7C 64 1B 78 */	mr r4, r3
/* 80C03170  38 7F 07 58 */	addi r3, r31, 0x758
/* 80C03174  38 A0 00 2C */	li r5, 0x2c
/* 80C03178  38 C0 00 00 */	li r6, 0
/* 80C0317C  4B 48 43 99 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 80C03180  A8 1F 05 62 */	lha r0, 0x562(r31)
/* 80C03184  2C 00 00 00 */	cmpwi r0, 0
/* 80C03188  41 82 00 30 */	beq lbl_80C031B8
/* 80C0318C  3C 60 80 C1 */	lis r3, lit_5992@ha /* 0x80C10160@ha */
/* 80C03190  38 83 01 60 */	addi r4, r3, lit_5992@l /* 0x80C10160@l */
/* 80C03194  80 64 00 00 */	lwz r3, 0(r4)
/* 80C03198  80 04 00 04 */	lwz r0, 4(r4)
/* 80C0319C  90 61 00 08 */	stw r3, 8(r1)
/* 80C031A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C031A4  80 04 00 08 */	lwz r0, 8(r4)
/* 80C031A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C031AC  7F E3 FB 78 */	mr r3, r31
/* 80C031B0  38 81 00 08 */	addi r4, r1, 8
/* 80C031B4  4B FF E7 41 */	bl setProcess__11daObj_GrA_cFM11daObj_GrA_cFPCvPvPv_i
lbl_80C031B8:
/* 80C031B8  38 7F 0F 50 */	addi r3, r31, 0xf50
/* 80C031BC  81 9F 0F 8C */	lwz r12, 0xf8c(r31)
/* 80C031C0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80C031C4  7D 89 03 A6 */	mtctr r12
/* 80C031C8  4E 80 04 21 */	bctrl 
lbl_80C031CC:
/* 80C031CC  38 60 00 01 */	li r3, 1
/* 80C031D0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C031D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C031D8  7C 08 03 A6 */	mtlr r0
/* 80C031DC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C031E0  4E 80 00 20 */	blr 
