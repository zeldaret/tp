lbl_8048C730:
/* 8048C730  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048C734  7C 08 02 A6 */	mflr r0
/* 8048C738  90 01 00 24 */	stw r0, 0x24(r1)
/* 8048C73C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8048C740  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8048C744  7C 7F 1B 78 */	mr r31, r3
/* 8048C748  88 03 04 BA */	lbz r0, 0x4ba(r3)
/* 8048C74C  7C 05 07 74 */	extsb r5, r0
/* 8048C750  3C 80 80 45 */	lis r4, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8048C754  88 04 0D 64 */	lbz r0, mStayNo__20dStage_roomControl_c+0x0@l(r4)  /* 0x80450D64@l */
/* 8048C758  7C 00 07 74 */	extsb r0, r0
/* 8048C75C  7C 05 00 00 */	cmpw r5, r0
/* 8048C760  40 82 01 18 */	bne lbl_8048C878
/* 8048C764  48 00 01 39 */	bl isDelete__15daTag_EvtArea_cFv
/* 8048C768  2C 03 00 00 */	cmpwi r3, 0
/* 8048C76C  41 82 00 14 */	beq lbl_8048C780
/* 8048C770  7F E3 FB 78 */	mr r3, r31
/* 8048C774  4B B8 D5 09 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8048C778  38 60 00 01 */	li r3, 1
/* 8048C77C  48 00 01 00 */	b lbl_8048C87C
lbl_8048C780:
/* 8048C780  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8048C784  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8048C788  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8048C78C  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8048C790  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8048C794  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8048C798  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 8048C79C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8048C7A0  38 03 FF 01 */	addi r0, r3, -255
/* 8048C7A4  30 00 FF FF */	addic r0, r0, -1
/* 8048C7A8  7C 00 01 10 */	subfe r0, r0, r0
/* 8048C7AC  7C 60 00 78 */	andc r0, r3, r0
/* 8048C7B0  2C 00 00 08 */	cmpwi r0, 8
/* 8048C7B4  40 82 00 18 */	bne lbl_8048C7CC
/* 8048C7B8  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8048C7BC  3C 60 80 49 */	lis r3, lit_3853@ha /* 0x8048CDD0@ha */
/* 8048C7C0  C0 03 CD D0 */	lfs f0, lit_3853@l(r3)  /* 0x8048CDD0@l */
/* 8048C7C4  EC 01 00 2A */	fadds f0, f1, f0
/* 8048C7C8  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_8048C7CC:
/* 8048C7CC  38 00 00 00 */	li r0, 0
/* 8048C7D0  98 1F 04 96 */	stb r0, 0x496(r31)
/* 8048C7D4  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 8048C7D8  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8048C7DC  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 8048C7E0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8048C7E4  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 8048C7E8  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8048C7EC  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 8048C7F0  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8048C7F4  38 03 FF 01 */	addi r0, r3, -255
/* 8048C7F8  30 00 FF FF */	addic r0, r0, -1
/* 8048C7FC  7C 00 01 10 */	subfe r0, r0, r0
/* 8048C800  7C 60 00 78 */	andc r0, r3, r0
/* 8048C804  2C 00 00 0F */	cmpwi r0, 0xf
/* 8048C808  40 82 00 60 */	bne lbl_8048C868
/* 8048C80C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8048C810  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8048C814  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 8048C818  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8048C81C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8048C820  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8048C824  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8048C828  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8048C82C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8048C830  7F E3 FB 78 */	mr r3, r31
/* 8048C834  38 81 00 08 */	addi r4, r1, 8
/* 8048C838  48 00 04 D1 */	bl chkPointInArea__15daTag_EvtArea_cF4cXyz
/* 8048C83C  2C 03 00 00 */	cmpwi r3, 0
/* 8048C840  41 82 00 28 */	beq lbl_8048C868
/* 8048C844  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 8048C848  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 8048C84C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8048C850  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 8048C854  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8048C858  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 8048C85C  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8048C860  38 00 00 04 */	li r0, 4
/* 8048C864  98 1F 04 96 */	stb r0, 0x496(r31)
lbl_8048C868:
/* 8048C868  38 00 00 00 */	li r0, 0
/* 8048C86C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8048C870  38 60 00 01 */	li r3, 1
/* 8048C874  48 00 00 08 */	b lbl_8048C87C
lbl_8048C878:
/* 8048C878  38 60 00 00 */	li r3, 0
lbl_8048C87C:
/* 8048C87C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8048C880  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8048C884  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8048C888  7C 08 03 A6 */	mtlr r0
/* 8048C88C  38 21 00 20 */	addi r1, r1, 0x20
/* 8048C890  4E 80 00 20 */	blr 
