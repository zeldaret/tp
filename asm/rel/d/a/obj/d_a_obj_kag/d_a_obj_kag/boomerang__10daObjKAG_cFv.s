lbl_80C30274:
/* 80C30274  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C30278  7C 08 02 A6 */	mflr r0
/* 80C3027C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C30280  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C30284  7C 7F 1B 78 */	mr r31, r3
/* 80C30288  80 03 08 3C */	lwz r0, 0x83c(r3)
/* 80C3028C  2C 00 00 00 */	cmpwi r0, 0
/* 80C30290  40 82 00 30 */	bne lbl_80C302C0
/* 80C30294  38 00 00 00 */	li r0, 0
/* 80C30298  90 1F 06 EC */	stw r0, 0x6ec(r31)
/* 80C3029C  38 7F 06 C4 */	addi r3, r31, 0x6c4
/* 80C302A0  4B 45 42 A8 */	b GetTgHitGObj__12dCcD_GObjInfFv
/* 80C302A4  38 7F 07 FC */	addi r3, r31, 0x7fc
/* 80C302A8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C302AC  4B 52 E3 04 */	b initOffset__20daPy_boomerangMove_cFPC4cXyz
/* 80C302B0  80 7F 08 3C */	lwz r3, 0x83c(r31)
/* 80C302B4  38 03 00 01 */	addi r0, r3, 1
/* 80C302B8  90 1F 08 3C */	stw r0, 0x83c(r31)
/* 80C302BC  48 00 00 F4 */	b lbl_80C303B0
lbl_80C302C0:
/* 80C302C0  2C 00 FF FF */	cmpwi r0, -1
/* 80C302C4  40 82 00 84 */	bne lbl_80C30348
/* 80C302C8  3C 60 00 01 */	lis r3, 0x0001 /* 0x00014040@ha */
/* 80C302CC  38 03 40 40 */	addi r0, r3, 0x4040 /* 0x00014040@l */
/* 80C302D0  90 1F 06 EC */	stw r0, 0x6ec(r31)
/* 80C302D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C302D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C302DC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C302E0  C0 63 04 D0 */	lfs f3, 0x4d0(r3)
/* 80C302E4  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 80C302E8  C0 43 04 D4 */	lfs f2, 0x4d4(r3)
/* 80C302EC  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 80C302F0  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 80C302F4  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C302F8  3C 60 80 C3 */	lis r3, lit_4634@ha
/* 80C302FC  C0 03 12 30 */	lfs f0, lit_4634@l(r3)
/* 80C30300  EC 02 00 2A */	fadds f0, f2, f0
/* 80C30304  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C30308  D0 7F 04 BC */	stfs f3, 0x4bc(r31)
/* 80C3030C  D0 1F 04 C0 */	stfs f0, 0x4c0(r31)
/* 80C30310  D0 3F 04 C4 */	stfs f1, 0x4c4(r31)
/* 80C30314  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 80C30318  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C3031C  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 80C30320  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C30324  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 80C30328  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C3032C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C30330  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 80C30334  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C30338  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 80C3033C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C30340  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 80C30344  48 00 00 6C */	b lbl_80C303B0
lbl_80C30348:
/* 80C30348  88 1F 05 6D */	lbz r0, 0x56d(r31)
/* 80C3034C  28 00 00 00 */	cmplwi r0, 0
/* 80C30350  41 82 00 08 */	beq lbl_80C30358
/* 80C30354  48 00 0B 01 */	bl kag_setParticle__10daObjKAG_cFv
lbl_80C30358:
/* 80C30358  38 7F 07 FC */	addi r3, r31, 0x7fc
/* 80C3035C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C30360  38 BF 04 DE */	addi r5, r31, 0x4de
/* 80C30364  38 C0 00 00 */	li r6, 0
/* 80C30368  38 E0 1C 00 */	li r7, 0x1c00
/* 80C3036C  4B 52 E2 E8 */	b posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 80C30370  2C 03 00 00 */	cmpwi r3, 0
/* 80C30374  40 82 00 30 */	bne lbl_80C303A4
/* 80C30378  3C 60 80 C3 */	lis r3, lit_4603@ha
/* 80C3037C  38 83 13 30 */	addi r4, r3, lit_4603@l
/* 80C30380  80 64 00 00 */	lwz r3, 0(r4)
/* 80C30384  80 04 00 04 */	lwz r0, 4(r4)
/* 80C30388  90 61 00 08 */	stw r3, 8(r1)
/* 80C3038C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C30390  80 04 00 08 */	lwz r0, 8(r4)
/* 80C30394  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C30398  7F E3 FB 78 */	mr r3, r31
/* 80C3039C  38 81 00 08 */	addi r4, r1, 8
/* 80C303A0  4B FF E0 95 */	bl setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v
lbl_80C303A4:
/* 80C303A4  38 7F 07 FC */	addi r3, r31, 0x7fc
/* 80C303A8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80C303AC  4B 52 E4 D0 */	b bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
lbl_80C303B0:
/* 80C303B0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C303B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C303B8  7C 08 03 A6 */	mtlr r0
/* 80C303BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C303C0  4E 80 00 20 */	blr 
