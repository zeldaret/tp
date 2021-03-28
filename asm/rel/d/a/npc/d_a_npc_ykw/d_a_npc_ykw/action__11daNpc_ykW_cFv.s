lbl_80B608AC:
/* 80B608AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B608B0  7C 08 02 A6 */	mflr r0
/* 80B608B4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B608B8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B608BC  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80B608C0  7C 7F 1B 78 */	mr r31, r3
/* 80B608C4  38 9F 0E 44 */	addi r4, r31, 0xe44
/* 80B608C8  38 A0 FF FF */	li r5, -1
/* 80B608CC  4B 5E A1 74 */	b hitChk__8daNpcT_cFP12dCcD_GObjInfUl
/* 80B608D0  7C 65 1B 79 */	or. r5, r3, r3
/* 80B608D4  41 82 01 08 */	beq lbl_80B609DC
/* 80B608D8  88 1F 10 6A */	lbz r0, 0x106a(r31)
/* 80B608DC  28 00 00 00 */	cmplwi r0, 0
/* 80B608E0  41 82 00 FC */	beq lbl_80B609DC
/* 80B608E4  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B608E8  7F E4 FB 78 */	mr r4, r31
/* 80B608EC  A8 DF 0D 7A */	lha r6, 0xd7a(r31)
/* 80B608F0  4B 5E 74 DC */	b setParam__19daNpcT_DmgStagger_cFP10fopAc_ac_cP10fopAc_ac_cs
/* 80B608F4  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B608F8  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80B608FC  41 82 00 28 */	beq lbl_80B60924
/* 80B60900  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B60904  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B60908  4B 5E 4F 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6090C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B60910  38 00 00 1E */	li r0, 0x1e
/* 80B60914  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B60918  3C 60 80 B6 */	lis r3, lit_4358@ha
/* 80B6091C  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)
/* 80B60920  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B60924:
/* 80B60924  80 1F 0D B0 */	lwz r0, 0xdb0(r31)
/* 80B60928  2C 00 00 08 */	cmpwi r0, 8
/* 80B6092C  38 00 00 08 */	li r0, 8
/* 80B60930  40 82 00 08 */	bne lbl_80B60938
/* 80B60934  38 00 00 14 */	li r0, 0x14
lbl_80B60938:
/* 80B60938  90 1F 0D BC */	stw r0, 0xdbc(r31)
/* 80B6093C  38 00 00 00 */	li r0, 0
/* 80B60940  90 1F 0D B8 */	stw r0, 0xdb8(r31)
/* 80B60944  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80B60948  2C 00 00 00 */	cmpwi r0, 0
/* 80B6094C  41 82 00 28 */	beq lbl_80B60974
/* 80B60950  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80B60954  4B 5E 4D A8 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B60958  38 00 00 00 */	li r0, 0
/* 80B6095C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80B60960  3C 60 80 B6 */	lis r3, lit_4358@ha
/* 80B60964  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)
/* 80B60968  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80B6096C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B60970  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80B60974:
/* 80B60974  38 00 00 00 */	li r0, 0
/* 80B60978  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 80B6097C  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80B60980  38 00 00 01 */	li r0, 1
/* 80B60984  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80B60988  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006008D@ha */
/* 80B6098C  38 03 00 8D */	addi r0, r3, 0x008D /* 0x0006008D@l */
/* 80B60990  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B60994  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B60998  38 81 00 0C */	addi r4, r1, 0xc
/* 80B6099C  38 A0 00 00 */	li r5, 0
/* 80B609A0  38 C0 FF FF */	li r6, -1
/* 80B609A4  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80B609A8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B609AC  7D 89 03 A6 */	mtctr r12
/* 80B609B0  4E 80 04 21 */	bctrl 
/* 80B609B4  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500C0@ha */
/* 80B609B8  38 03 00 C0 */	addi r0, r3, 0x00C0 /* 0x000500C0@l */
/* 80B609BC  90 01 00 08 */	stw r0, 8(r1)
/* 80B609C0  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B609C4  38 81 00 08 */	addi r4, r1, 8
/* 80B609C8  38 A0 FF FF */	li r5, -1
/* 80B609CC  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 80B609D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B609D4  7D 89 03 A6 */	mtctr r12
/* 80B609D8  4E 80 04 21 */	bctrl 
lbl_80B609DC:
/* 80B609DC  88 1F 0D 20 */	lbz r0, 0xd20(r31)
/* 80B609E0  2C 00 00 00 */	cmpwi r0, 0
/* 80B609E4  41 82 00 A0 */	beq lbl_80B60A84
/* 80B609E8  38 C0 00 00 */	li r6, 0
/* 80B609EC  38 60 00 00 */	li r3, 0
/* 80B609F0  7C C4 33 78 */	mr r4, r6
/* 80B609F4  3C A0 80 B6 */	lis r5, lit_4358@ha
/* 80B609F8  C0 05 7D 18 */	lfs f0, lit_4358@l(r5)
/* 80B609FC  38 00 00 02 */	li r0, 2
/* 80B60A00  7C 09 03 A6 */	mtctr r0
lbl_80B60A04:
/* 80B60A04  7C BF 22 14 */	add r5, r31, r4
/* 80B60A08  B0 C5 0D 08 */	sth r6, 0xd08(r5)
/* 80B60A0C  B0 C5 0D 0A */	sth r6, 0xd0a(r5)
/* 80B60A10  B0 C5 0D 0C */	sth r6, 0xd0c(r5)
/* 80B60A14  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B60A18  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B60A1C  38 63 00 04 */	addi r3, r3, 4
/* 80B60A20  38 84 00 06 */	addi r4, r4, 6
/* 80B60A24  42 00 FF E0 */	bdnz lbl_80B60A04
/* 80B60A28  38 00 00 00 */	li r0, 0
/* 80B60A2C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B60A30  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B60A34  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B60A38  38 00 00 01 */	li r0, 1
/* 80B60A3C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80B60A40  88 1F 10 6A */	lbz r0, 0x106a(r31)
/* 80B60A44  28 00 00 00 */	cmplwi r0, 0
/* 80B60A48  41 82 00 3C */	beq lbl_80B60A84
/* 80B60A4C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80B60A50  2C 00 00 18 */	cmpwi r0, 0x18
/* 80B60A54  41 82 00 28 */	beq lbl_80B60A7C
/* 80B60A58  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80B60A5C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B60A60  4B 5E 4E 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B60A64  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80B60A68  38 00 00 18 */	li r0, 0x18
/* 80B60A6C  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80B60A70  3C 60 80 B6 */	lis r3, lit_5096@ha
/* 80B60A74  C0 03 7D 38 */	lfs f0, lit_5096@l(r3)
/* 80B60A78  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80B60A7C:
/* 80B60A7C  38 00 00 02 */	li r0, 2
/* 80B60A80  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80B60A84:
/* 80B60A84  38 7F 0F D8 */	addi r3, r31, 0xfd8
/* 80B60A88  4B 80 15 90 */	b __ptmf_test
/* 80B60A8C  2C 03 00 00 */	cmpwi r3, 0
/* 80B60A90  41 82 00 54 */	beq lbl_80B60AE4
/* 80B60A94  38 7F 0F E4 */	addi r3, r31, 0xfe4
/* 80B60A98  38 9F 0F D8 */	addi r4, r31, 0xfd8
/* 80B60A9C  4B 80 15 AC */	b __ptmf_cmpr
/* 80B60AA0  2C 03 00 00 */	cmpwi r3, 0
/* 80B60AA4  40 82 00 1C */	bne lbl_80B60AC0
/* 80B60AA8  7F E3 FB 78 */	mr r3, r31
/* 80B60AAC  38 80 00 00 */	li r4, 0
/* 80B60AB0  39 9F 0F E4 */	addi r12, r31, 0xfe4
/* 80B60AB4  4B 80 15 D0 */	b __ptmf_scall
/* 80B60AB8  60 00 00 00 */	nop 
/* 80B60ABC  48 00 00 28 */	b lbl_80B60AE4
lbl_80B60AC0:
/* 80B60AC0  80 7F 0F D8 */	lwz r3, 0xfd8(r31)
/* 80B60AC4  80 1F 0F DC */	lwz r0, 0xfdc(r31)
/* 80B60AC8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B60ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B60AD0  80 1F 0F E0 */	lwz r0, 0xfe0(r31)
/* 80B60AD4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B60AD8  7F E3 FB 78 */	mr r3, r31
/* 80B60ADC  38 81 00 10 */	addi r4, r1, 0x10
/* 80B60AE0  48 00 0D 75 */	bl setAction__11daNpc_ykW_cFM11daNpc_ykW_cFPCvPvPv_i
lbl_80B60AE4:
/* 80B60AE4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B60AE8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80B60AEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B60AF0  7C 08 03 A6 */	mtlr r0
/* 80B60AF4  38 21 00 30 */	addi r1, r1, 0x30
/* 80B60AF8  4E 80 00 20 */	blr 
