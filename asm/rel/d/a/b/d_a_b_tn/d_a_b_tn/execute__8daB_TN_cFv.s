lbl_8062C5B4:
/* 8062C5B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8062C5B8  7C 08 02 A6 */	mflr r0
/* 8062C5BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 8062C5C0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8062C5C4  7C 7F 1B 78 */	mr r31, r3
/* 8062C5C8  80 63 0A 6C */	lwz r3, 0xa6c(r3)
/* 8062C5CC  2C 03 00 00 */	cmpwi r3, 0
/* 8062C5D0  41 82 00 0C */	beq lbl_8062C5DC
/* 8062C5D4  38 03 FF FF */	addi r0, r3, -1
/* 8062C5D8  90 1F 0A 6C */	stw r0, 0xa6c(r31)
lbl_8062C5DC:
/* 8062C5DC  A8 7F 0A 68 */	lha r3, 0xa68(r31)
/* 8062C5E0  2C 03 00 00 */	cmpwi r3, 0
/* 8062C5E4  41 82 00 0C */	beq lbl_8062C5F0
/* 8062C5E8  38 03 FF FF */	addi r0, r3, -1
/* 8062C5EC  B0 1F 0A 68 */	sth r0, 0xa68(r31)
lbl_8062C5F0:
/* 8062C5F0  80 7F 0A 70 */	lwz r3, 0xa70(r31)
/* 8062C5F4  2C 03 00 00 */	cmpwi r3, 0
/* 8062C5F8  41 82 00 0C */	beq lbl_8062C604
/* 8062C5FC  38 03 FF FF */	addi r0, r3, -1
/* 8062C600  90 1F 0A 70 */	stw r0, 0xa70(r31)
lbl_8062C604:
/* 8062C604  80 7F 0A 7C */	lwz r3, 0xa7c(r31)
/* 8062C608  2C 03 00 00 */	cmpwi r3, 0
/* 8062C60C  41 82 00 0C */	beq lbl_8062C618
/* 8062C610  38 03 FF FF */	addi r0, r3, -1
/* 8062C614  90 1F 0A 7C */	stw r0, 0xa7c(r31)
lbl_8062C618:
/* 8062C618  80 7F 0A 80 */	lwz r3, 0xa80(r31)
/* 8062C61C  2C 03 00 00 */	cmpwi r3, 0
/* 8062C620  41 82 00 0C */	beq lbl_8062C62C
/* 8062C624  38 03 FF FF */	addi r0, r3, -1
/* 8062C628  90 1F 0A 80 */	stw r0, 0xa80(r31)
lbl_8062C62C:
/* 8062C62C  80 7F 0A 74 */	lwz r3, 0xa74(r31)
/* 8062C630  2C 03 00 00 */	cmpwi r3, 0
/* 8062C634  41 82 00 0C */	beq lbl_8062C640
/* 8062C638  38 03 FF FF */	addi r0, r3, -1
/* 8062C63C  90 1F 0A 74 */	stw r0, 0xa74(r31)
lbl_8062C640:
/* 8062C640  80 7F 0A 84 */	lwz r3, 0xa84(r31)
/* 8062C644  2C 03 00 00 */	cmpwi r3, 0
/* 8062C648  41 82 00 0C */	beq lbl_8062C654
/* 8062C64C  38 03 FF FF */	addi r0, r3, -1
/* 8062C650  90 1F 0A 84 */	stw r0, 0xa84(r31)
lbl_8062C654:
/* 8062C654  80 7F 0A 88 */	lwz r3, 0xa88(r31)
/* 8062C658  2C 03 00 00 */	cmpwi r3, 0
/* 8062C65C  41 82 00 2C */	beq lbl_8062C688
/* 8062C660  38 03 FF FF */	addi r0, r3, -1
/* 8062C664  90 1F 0A 88 */	stw r0, 0xa88(r31)
/* 8062C668  80 1F 0A 88 */	lwz r0, 0xa88(r31)
/* 8062C66C  2C 00 00 00 */	cmpwi r0, 0
/* 8062C670  40 82 00 18 */	bne lbl_8062C688
/* 8062C674  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8062C678  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062C67C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8062C680  38 80 00 1F */	li r4, 0x1f
/* 8062C684  4B A4 37 11 */	bl StopQuake__12dVibration_cFi
lbl_8062C688:
/* 8062C688  80 7F 0A 60 */	lwz r3, 0xa60(r31)
/* 8062C68C  2C 03 00 00 */	cmpwi r3, 0
/* 8062C690  41 82 00 0C */	beq lbl_8062C69C
/* 8062C694  38 03 FF FF */	addi r0, r3, -1
/* 8062C698  90 1F 0A 60 */	stw r0, 0xa60(r31)
lbl_8062C69C:
/* 8062C69C  88 7F 0A A7 */	lbz r3, 0xaa7(r31)
/* 8062C6A0  28 03 00 00 */	cmplwi r3, 0
/* 8062C6A4  41 82 00 0C */	beq lbl_8062C6B0
/* 8062C6A8  38 03 FF FF */	addi r0, r3, -1
/* 8062C6AC  98 1F 0A A7 */	stb r0, 0xaa7(r31)
lbl_8062C6B0:
/* 8062C6B0  88 7F 0A 90 */	lbz r3, 0xa90(r31)
/* 8062C6B4  28 03 00 00 */	cmplwi r3, 0
/* 8062C6B8  41 82 00 0C */	beq lbl_8062C6C4
/* 8062C6BC  38 03 FF FF */	addi r0, r3, -1
/* 8062C6C0  98 1F 0A 90 */	stb r0, 0xa90(r31)
lbl_8062C6C4:
/* 8062C6C4  88 7F 0A A9 */	lbz r3, 0xaa9(r31)
/* 8062C6C8  28 03 00 00 */	cmplwi r3, 0
/* 8062C6CC  41 82 00 0C */	beq lbl_8062C6D8
/* 8062C6D0  38 03 FF FF */	addi r0, r3, -1
/* 8062C6D4  98 1F 0A A9 */	stb r0, 0xaa9(r31)
lbl_8062C6D8:
/* 8062C6D8  88 7F 0A AA */	lbz r3, 0xaaa(r31)
/* 8062C6DC  28 03 00 00 */	cmplwi r3, 0
/* 8062C6E0  41 82 00 0C */	beq lbl_8062C6EC
/* 8062C6E4  38 03 FF FF */	addi r0, r3, -1
/* 8062C6E8  98 1F 0A AA */	stb r0, 0xaaa(r31)
lbl_8062C6EC:
/* 8062C6EC  7F E3 FB 78 */	mr r3, r31
/* 8062C6F0  4B FF EF B9 */	bl action__8daB_TN_cFv
/* 8062C6F4  7F E3 FB 78 */	mr r3, r31
/* 8062C6F8  4B FF F3 65 */	bl mtx_set__8daB_TN_cFv
/* 8062C6FC  88 1F 0A AC */	lbz r0, 0xaac(r31)
/* 8062C700  28 00 00 00 */	cmplwi r0, 0
/* 8062C704  41 82 00 0C */	beq lbl_8062C710
/* 8062C708  38 60 00 01 */	li r3, 1
/* 8062C70C  48 00 00 80 */	b lbl_8062C78C
lbl_8062C710:
/* 8062C710  7F E3 FB 78 */	mr r3, r31
/* 8062C714  4B FF F6 B9 */	bl cc_set__8daB_TN_cFv
/* 8062C718  80 7F 06 00 */	lwz r3, 0x600(r31)
/* 8062C71C  80 63 00 04 */	lwz r3, 4(r3)
/* 8062C720  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8062C724  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8062C728  38 63 03 60 */	addi r3, r3, 0x360
/* 8062C72C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062C730  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062C734  4B D1 9D 7D */	bl PSMTXCopy
/* 8062C738  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8062C73C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8062C740  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8062C744  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8062C748  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8062C74C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8062C750  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8062C754  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8062C758  3C 60 80 63 */	lis r3, lit_9978@ha /* 0x8062E8C0@ha */
/* 8062C75C  C0 23 E8 C0 */	lfs f1, lit_9978@l(r3)  /* 0x8062E8C0@l */
/* 8062C760  D0 21 00 08 */	stfs f1, 8(r1)
/* 8062C764  3C 60 80 63 */	lis r3, lit_9979@ha /* 0x8062E8C4@ha */
/* 8062C768  C0 03 E8 C4 */	lfs f0, lit_9979@l(r3)  /* 0x8062E8C4@l */
/* 8062C76C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8062C770  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8062C774  7F E3 FB 78 */	mr r3, r31
/* 8062C778  38 9F 06 4C */	addi r4, r31, 0x64c
/* 8062C77C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8062C780  38 C1 00 08 */	addi r6, r1, 8
/* 8062C784  48 00 19 F9 */	bl setMidnaBindEffect__FP13fopEn_enemy_cP15Z2CreatureEnemyP4cXyzP4cXyz
/* 8062C788  38 60 00 01 */	li r3, 1
lbl_8062C78C:
/* 8062C78C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8062C790  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8062C794  7C 08 03 A6 */	mtlr r0
/* 8062C798  38 21 00 30 */	addi r1, r1, 0x30
/* 8062C79C  4E 80 00 20 */	blr 
