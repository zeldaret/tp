lbl_80BD45A4:
/* 80BD45A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD45A8  7C 08 02 A6 */	mflr r0
/* 80BD45AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD45B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BD45B4  7C 7F 1B 78 */	mr r31, r3
/* 80BD45B8  88 03 05 B8 */	lbz r0, 0x5b8(r3)
/* 80BD45BC  28 00 00 00 */	cmplwi r0, 0
/* 80BD45C0  40 82 00 70 */	bne lbl_80BD4630
/* 80BD45C4  38 7F 06 0C */	addi r3, r31, 0x60c
/* 80BD45C8  4B 4B 00 90 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80BD45CC  28 03 00 00 */	cmplwi r3, 0
/* 80BD45D0  41 82 00 34 */	beq lbl_80BD4604
/* 80BD45D4  38 7F 06 0C */	addi r3, r31, 0x60c
/* 80BD45D8  4B 4B 01 18 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 80BD45DC  4B 68 F4 6C */	b GetAc__8cCcD_ObjFv
/* 80BD45E0  A8 03 00 08 */	lha r0, 8(r3)
/* 80BD45E4  2C 00 00 EF */	cmpwi r0, 0xef
/* 80BD45E8  40 82 00 48 */	bne lbl_80BD4630
/* 80BD45EC  A8 03 06 90 */	lha r0, 0x690(r3)
/* 80BD45F0  2C 00 00 66 */	cmpwi r0, 0x66
/* 80BD45F4  40 82 00 3C */	bne lbl_80BD4630
/* 80BD45F8  7F E3 FB 78 */	mr r3, r31
/* 80BD45FC  4B FF FC DD */	bl Break__15daObjCRVLH_DW_cFv
/* 80BD4600  48 00 00 30 */	b lbl_80BD4630
lbl_80BD4604:
/* 80BD4604  38 7F 06 0C */	addi r3, r31, 0x60c
/* 80BD4608  4B 4A FE 58 */	b ChkTgHit__12dCcD_GObjInfFv
/* 80BD460C  28 03 00 00 */	cmplwi r3, 0
/* 80BD4610  41 82 00 20 */	beq lbl_80BD4630
/* 80BD4614  38 7F 06 0C */	addi r3, r31, 0x60c
/* 80BD4618  4B 4A FE E0 */	b GetTgHitObj__12dCcD_GObjInfFv
/* 80BD461C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80BD4620  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80BD4624  41 82 00 0C */	beq lbl_80BD4630
/* 80BD4628  7F E3 FB 78 */	mr r3, r31
/* 80BD462C  4B FF FC AD */	bl Break__15daObjCRVLH_DW_cFv
lbl_80BD4630:
/* 80BD4630  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BD4634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4638  7C 08 03 A6 */	mtlr r0
/* 80BD463C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4640  4E 80 00 20 */	blr 
