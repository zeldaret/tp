lbl_80D646A8:
/* 80D646A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D646AC  7C 08 02 A6 */	mflr r0
/* 80D646B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D646B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D646B8  7C 7F 1B 78 */	mr r31, r3
/* 80D646BC  4B 2B 46 24 */	b fopAc_IsActor__FPv
/* 80D646C0  2C 03 00 00 */	cmpwi r3, 0
/* 80D646C4  41 82 00 48 */	beq lbl_80D6470C
/* 80D646C8  A8 1F 00 08 */	lha r0, 8(r31)
/* 80D646CC  2C 00 01 F8 */	cmpwi r0, 0x1f8
/* 80D646D0  40 82 00 3C */	bne lbl_80D6470C
/* 80D646D4  28 1F 00 00 */	cmplwi r31, 0
/* 80D646D8  41 82 00 0C */	beq lbl_80D646E4
/* 80D646DC  80 7F 00 04 */	lwz r3, 4(r31)
/* 80D646E0  48 00 00 08 */	b lbl_80D646E8
lbl_80D646E4:
/* 80D646E4  38 60 FF FF */	li r3, -1
lbl_80D646E8:
/* 80D646E8  4B 2B DA 50 */	b fpcM_IsCreating__FUi
/* 80D646EC  2C 03 00 00 */	cmpwi r3, 0
/* 80D646F0  40 82 00 1C */	bne lbl_80D6470C
/* 80D646F4  7F E3 FB 78 */	mr r3, r31
/* 80D646F8  48 00 01 75 */	bl checkHitWaterFallCamera__16daTagWaterFall_cFv
/* 80D646FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D64700  41 82 00 0C */	beq lbl_80D6470C
/* 80D64704  7F E3 FB 78 */	mr r3, r31
/* 80D64708  48 00 00 08 */	b lbl_80D64710
lbl_80D6470C:
/* 80D6470C  38 60 00 00 */	li r3, 0
lbl_80D64710:
/* 80D64710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D64714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D64718  7C 08 03 A6 */	mtlr r0
/* 80D6471C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D64720  4E 80 00 20 */	blr 
