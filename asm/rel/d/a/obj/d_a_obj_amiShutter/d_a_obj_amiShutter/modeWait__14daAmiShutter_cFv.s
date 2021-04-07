lbl_80BA1B58:
/* 80BA1B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA1B5C  7C 08 02 A6 */	mflr r0
/* 80BA1B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA1B64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA1B68  7C 7F 1B 78 */	mr r31, r3
/* 80BA1B6C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BA1B70  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BA1B74  88 9F 05 C6 */	lbz r4, 0x5c6(r31)
/* 80BA1B78  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BA1B7C  7C 05 07 74 */	extsb r5, r0
/* 80BA1B80  4B 49 37 E1 */	bl isSwitch__10dSv_info_cCFii
/* 80BA1B84  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 80BA1B88  88 1F 05 C7 */	lbz r0, 0x5c7(r31)
/* 80BA1B8C  7C 00 18 40 */	cmplw r0, r3
/* 80BA1B90  41 82 00 28 */	beq lbl_80BA1BB8
/* 80BA1B94  98 7F 05 C7 */	stb r3, 0x5c7(r31)
/* 80BA1B98  88 1F 05 C7 */	lbz r0, 0x5c7(r31)
/* 80BA1B9C  28 00 00 00 */	cmplwi r0, 0
/* 80BA1BA0  40 82 00 10 */	bne lbl_80BA1BB0
/* 80BA1BA4  7F E3 FB 78 */	mr r3, r31
/* 80BA1BA8  48 00 01 0D */	bl init_modeClose__14daAmiShutter_cFv
/* 80BA1BAC  48 00 00 0C */	b lbl_80BA1BB8
lbl_80BA1BB0:
/* 80BA1BB0  7F E3 FB 78 */	mr r3, r31
/* 80BA1BB4  48 00 03 CD */	bl init_modeOpen__14daAmiShutter_cFv
lbl_80BA1BB8:
/* 80BA1BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA1BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA1BC0  7C 08 03 A6 */	mtlr r0
/* 80BA1BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA1BC8  4E 80 00 20 */	blr 
