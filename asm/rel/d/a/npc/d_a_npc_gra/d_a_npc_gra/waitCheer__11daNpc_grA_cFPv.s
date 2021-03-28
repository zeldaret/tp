lbl_809C6AAC:
/* 809C6AAC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809C6AB0  7C 08 02 A6 */	mflr r0
/* 809C6AB4  90 01 00 44 */	stw r0, 0x44(r1)
/* 809C6AB8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 809C6ABC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 809C6AC0  7C 7F 1B 78 */	mr r31, r3
/* 809C6AC4  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C6AC8  2C 00 00 02 */	cmpwi r0, 2
/* 809C6ACC  41 82 00 70 */	beq lbl_809C6B3C
/* 809C6AD0  40 80 02 5C */	bge lbl_809C6D2C
/* 809C6AD4  2C 00 00 00 */	cmpwi r0, 0
/* 809C6AD8  41 82 00 0C */	beq lbl_809C6AE4
/* 809C6ADC  48 00 02 50 */	b lbl_809C6D2C
/* 809C6AE0  48 00 02 4C */	b lbl_809C6D2C
lbl_809C6AE4:
/* 809C6AE4  38 80 00 00 */	li r4, 0
/* 809C6AE8  38 A0 00 01 */	li r5, 1
/* 809C6AEC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809C6AF0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 809C6AF4  7D 89 03 A6 */	mtctr r12
/* 809C6AF8  4E 80 04 21 */	bctrl 
/* 809C6AFC  7F E3 FB 78 */	mr r3, r31
/* 809C6B00  38 80 00 00 */	li r4, 0
/* 809C6B04  3C A0 80 9D */	lis r5, lit_6106@ha
/* 809C6B08  C0 25 A4 08 */	lfs f1, lit_6106@l(r5)
/* 809C6B0C  38 A0 00 00 */	li r5, 0
/* 809C6B10  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C6B14  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C6B18  7D 89 03 A6 */	mtctr r12
/* 809C6B1C  4E 80 04 21 */	bctrl 
/* 809C6B20  7F E3 FB 78 */	mr r3, r31
/* 809C6B24  38 80 00 00 */	li r4, 0
/* 809C6B28  4B FF C5 49 */	bl setLookMode__11daNpc_grA_cFi
/* 809C6B2C  38 00 00 00 */	li r0, 0
/* 809C6B30  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C6B34  38 00 00 02 */	li r0, 2
/* 809C6B38  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C6B3C:
/* 809C6B3C  88 1F 14 89 */	lbz r0, 0x1489(r31)
/* 809C6B40  28 00 00 00 */	cmplwi r0, 0
/* 809C6B44  40 82 00 A4 */	bne lbl_809C6BE8
/* 809C6B48  3C 60 80 9C */	lis r3, s_sub__FPvPv@ha
/* 809C6B4C  38 63 FA 88 */	addi r3, r3, s_sub__FPvPv@l
/* 809C6B50  7F E4 FB 78 */	mr r4, r31
/* 809C6B54  4B 65 A7 E4 */	b fpcEx_Search__FPFPvPv_PvPv
/* 809C6B58  7C 7E 1B 79 */	or. r30, r3, r3
/* 809C6B5C  41 82 00 8C */	beq lbl_809C6BE8
/* 809C6B60  38 61 00 24 */	addi r3, r1, 0x24
/* 809C6B64  7F C4 F3 78 */	mr r4, r30
/* 809C6B68  48 00 31 A5 */	bl getGraPos__10daTagGra_cFv
/* 809C6B6C  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 809C6B70  D0 1F 14 8C */	stfs f0, 0x148c(r31)
/* 809C6B74  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 809C6B78  D0 1F 14 90 */	stfs f0, 0x1490(r31)
/* 809C6B7C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 809C6B80  D0 1F 14 94 */	stfs f0, 0x1494(r31)
/* 809C6B84  38 61 00 10 */	addi r3, r1, 0x10
/* 809C6B88  7F C4 F3 78 */	mr r4, r30
/* 809C6B8C  48 00 31 6D */	bl getGraAngle__10daTagGra_cFv
/* 809C6B90  A8 01 00 10 */	lha r0, 0x10(r1)
/* 809C6B94  B0 1F 14 98 */	sth r0, 0x1498(r31)
/* 809C6B98  A8 01 00 12 */	lha r0, 0x12(r1)
/* 809C6B9C  B0 1F 14 9A */	sth r0, 0x149a(r31)
/* 809C6BA0  A8 01 00 14 */	lha r0, 0x14(r1)
/* 809C6BA4  B0 1F 14 9C */	sth r0, 0x149c(r31)
/* 809C6BA8  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 809C6BAC  D0 1F 14 BC */	stfs f0, 0x14bc(r31)
/* 809C6BB0  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 809C6BB4  D0 1F 14 C0 */	stfs f0, 0x14c0(r31)
/* 809C6BB8  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 809C6BBC  D0 1F 14 C4 */	stfs f0, 0x14c4(r31)
/* 809C6BC0  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 809C6BC4  B0 1F 14 C8 */	sth r0, 0x14c8(r31)
/* 809C6BC8  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 809C6BCC  B0 1F 14 CA */	sth r0, 0x14ca(r31)
/* 809C6BD0  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 809C6BD4  B0 1F 14 CC */	sth r0, 0x14cc(r31)
/* 809C6BD8  7F C3 F3 78 */	mr r3, r30
/* 809C6BDC  4B 65 30 A0 */	b fopAcM_delete__FP10fopAc_ac_c
/* 809C6BE0  38 00 00 01 */	li r0, 1
/* 809C6BE4  98 1F 14 89 */	stb r0, 0x1489(r31)
lbl_809C6BE8:
/* 809C6BE8  88 1F 14 9E */	lbz r0, 0x149e(r31)
/* 809C6BEC  28 00 00 00 */	cmplwi r0, 0
/* 809C6BF0  40 82 00 8C */	bne lbl_809C6C7C
/* 809C6BF4  3C 60 80 9C */	lis r3, s_sub2__FPvPv@ha
/* 809C6BF8  38 63 FB 54 */	addi r3, r3, s_sub2__FPvPv@l
/* 809C6BFC  7F E4 FB 78 */	mr r4, r31
/* 809C6C00  4B 65 A7 38 */	b fpcEx_Search__FPFPvPv_PvPv
/* 809C6C04  7C 7E 1B 79 */	or. r30, r3, r3
/* 809C6C08  41 82 00 74 */	beq lbl_809C6C7C
/* 809C6C0C  38 61 00 18 */	addi r3, r1, 0x18
/* 809C6C10  7F C4 F3 78 */	mr r4, r30
/* 809C6C14  48 00 30 F9 */	bl getGraPos__10daTagGra_cFv
/* 809C6C18  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 809C6C1C  D0 1F 14 A0 */	stfs f0, 0x14a0(r31)
/* 809C6C20  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 809C6C24  D0 1F 14 A4 */	stfs f0, 0x14a4(r31)
/* 809C6C28  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 809C6C2C  D0 1F 14 A8 */	stfs f0, 0x14a8(r31)
/* 809C6C30  38 61 00 08 */	addi r3, r1, 8
/* 809C6C34  7F C4 F3 78 */	mr r4, r30
/* 809C6C38  48 00 30 C1 */	bl getGraAngle__10daTagGra_cFv
/* 809C6C3C  A8 01 00 08 */	lha r0, 8(r1)
/* 809C6C40  B0 1F 14 AC */	sth r0, 0x14ac(r31)
/* 809C6C44  A8 01 00 0A */	lha r0, 0xa(r1)
/* 809C6C48  B0 1F 14 AE */	sth r0, 0x14ae(r31)
/* 809C6C4C  A8 01 00 0C */	lha r0, 0xc(r1)
/* 809C6C50  B0 1F 14 B0 */	sth r0, 0x14b0(r31)
/* 809C6C54  7F C3 F3 78 */	mr r3, r30
/* 809C6C58  4B 65 30 24 */	b fopAcM_delete__FP10fopAc_ac_c
/* 809C6C5C  38 00 00 01 */	li r0, 1
/* 809C6C60  98 1F 14 9E */	stb r0, 0x149e(r31)
/* 809C6C64  38 60 00 3F */	li r3, 0x3f
/* 809C6C68  4B 78 E9 CC */	b daNpcF_chkEvtBit__FUl
/* 809C6C6C  2C 03 00 00 */	cmpwi r3, 0
/* 809C6C70  41 82 00 0C */	beq lbl_809C6C7C
/* 809C6C74  7F E3 FB 78 */	mr r3, r31
/* 809C6C78  4B FF 8C 29 */	bl setTagJump2__11daNpc_grA_cFv
lbl_809C6C7C:
/* 809C6C7C  80 1F 09 54 */	lwz r0, 0x954(r31)
/* 809C6C80  2C 00 00 00 */	cmpwi r0, 0
/* 809C6C84  40 82 00 A8 */	bne lbl_809C6D2C
/* 809C6C88  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C6C8C  4B 78 9A 60 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C6C90  28 03 00 00 */	cmplwi r3, 0
/* 809C6C94  41 82 00 20 */	beq lbl_809C6CB4
/* 809C6C98  7F E3 FB 78 */	mr r3, r31
/* 809C6C9C  4B FF C7 89 */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C6CA0  2C 03 00 00 */	cmpwi r3, 0
/* 809C6CA4  40 82 00 28 */	bne lbl_809C6CCC
/* 809C6CA8  38 00 00 00 */	li r0, 0
/* 809C6CAC  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C6CB0  48 00 00 1C */	b lbl_809C6CCC
lbl_809C6CB4:
/* 809C6CB4  7F E3 FB 78 */	mr r3, r31
/* 809C6CB8  4B FF C7 6D */	bl chkFindPlayer__11daNpc_grA_cFv
/* 809C6CBC  2C 03 00 00 */	cmpwi r3, 0
/* 809C6CC0  41 82 00 0C */	beq lbl_809C6CCC
/* 809C6CC4  38 00 00 00 */	li r0, 0
/* 809C6CC8  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809C6CCC:
/* 809C6CCC  38 7F 0C 7C */	addi r3, r31, 0xc7c
/* 809C6CD0  4B 78 9A 1C */	b getActorP__18daNpcF_ActorMngr_cFv
/* 809C6CD4  28 03 00 00 */	cmplwi r3, 0
/* 809C6CD8  41 82 00 14 */	beq lbl_809C6CEC
/* 809C6CDC  7F E3 FB 78 */	mr r3, r31
/* 809C6CE0  38 80 00 02 */	li r4, 2
/* 809C6CE4  4B FF C3 8D */	bl setLookMode__11daNpc_grA_cFi
/* 809C6CE8  48 00 00 44 */	b lbl_809C6D2C
lbl_809C6CEC:
/* 809C6CEC  7F E3 FB 78 */	mr r3, r31
/* 809C6CF0  38 80 00 00 */	li r4, 0
/* 809C6CF4  4B FF C3 7D */	bl setLookMode__11daNpc_grA_cFi
/* 809C6CF8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 809C6CFC  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809C6D00  7C 04 00 00 */	cmpw r4, r0
/* 809C6D04  41 82 00 28 */	beq lbl_809C6D2C
/* 809C6D08  7F E3 FB 78 */	mr r3, r31
/* 809C6D0C  38 A0 FF FF */	li r5, -1
/* 809C6D10  38 C0 FF FF */	li r6, -1
/* 809C6D14  38 E0 00 0F */	li r7, 0xf
/* 809C6D18  4B 78 D3 8C */	b step__8daNpcF_cFsiii
/* 809C6D1C  2C 03 00 00 */	cmpwi r3, 0
/* 809C6D20  41 82 00 0C */	beq lbl_809C6D2C
/* 809C6D24  38 00 00 00 */	li r0, 0
/* 809C6D28  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C6D2C:
/* 809C6D2C  38 60 00 01 */	li r3, 1
/* 809C6D30  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 809C6D34  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 809C6D38  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809C6D3C  7C 08 03 A6 */	mtlr r0
/* 809C6D40  38 21 00 40 */	addi r1, r1, 0x40
/* 809C6D44  4E 80 00 20 */	blr 
