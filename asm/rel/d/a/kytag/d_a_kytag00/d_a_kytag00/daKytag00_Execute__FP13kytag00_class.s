lbl_8046C684:
/* 8046C684  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8046C688  7C 08 02 A6 */	mflr r0
/* 8046C68C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8046C690  39 61 00 20 */	addi r11, r1, 0x20
/* 8046C694  4B EF 5B 49 */	bl _savegpr_29
/* 8046C698  7C 7D 1B 78 */	mr r29, r3
/* 8046C69C  3C 60 80 47 */	lis r3, lit_3798@ha /* 0x8046C980@ha */
/* 8046C6A0  3B E3 C9 80 */	addi r31, r3, lit_3798@l /* 0x8046C980@l */
/* 8046C6A4  3B C0 00 01 */	li r30, 1
/* 8046C6A8  88 9D 05 71 */	lbz r4, 0x571(r29)
/* 8046C6AC  28 04 00 FF */	cmplwi r4, 0xff
/* 8046C6B0  41 82 00 2C */	beq lbl_8046C6DC
/* 8046C6B4  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8046C6B8  88 A3 0D 64 */	lbz r5, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 8046C6BC  7C A5 07 74 */	extsb r5, r5
/* 8046C6C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046C6C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046C6C8  4B BC 8C 99 */	bl isSwitch__10dSv_info_cCFii
/* 8046C6CC  2C 03 00 00 */	cmpwi r3, 0
/* 8046C6D0  41 82 00 0C */	beq lbl_8046C6DC
/* 8046C6D4  3B C0 00 00 */	li r30, 0
/* 8046C6D8  48 00 00 34 */	b lbl_8046C70C
lbl_8046C6DC:
/* 8046C6DC  88 9D 05 72 */	lbz r4, 0x572(r29)
/* 8046C6E0  28 04 00 FF */	cmplwi r4, 0xff
/* 8046C6E4  41 82 00 28 */	beq lbl_8046C70C
/* 8046C6E8  3C 60 80 45 */	lis r3, mStayNo__20dStage_roomControl_c+0x0@ha /* 0x80450D64@ha */
/* 8046C6EC  88 A3 0D 64 */	lbz r5, mStayNo__20dStage_roomControl_c+0x0@l(r3)  /* 0x80450D64@l */
/* 8046C6F0  7C A5 07 74 */	extsb r5, r5
/* 8046C6F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046C6F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046C6FC  4B BC 8C 65 */	bl isSwitch__10dSv_info_cCFii
/* 8046C700  2C 03 00 00 */	cmpwi r3, 0
/* 8046C704  40 82 00 08 */	bne lbl_8046C70C
/* 8046C708  3B C0 00 00 */	li r30, 0
lbl_8046C70C:
/* 8046C70C  2C 1E 00 01 */	cmpwi r30, 1
/* 8046C710  40 82 00 20 */	bne lbl_8046C730
/* 8046C714  38 7D 05 88 */	addi r3, r29, 0x588
/* 8046C718  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8046C71C  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8046C720  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 8046C724  C0 9F 00 5C */	lfs f4, 0x5c(r31)
/* 8046C728  4B E0 32 55 */	bl cLib_addCalc__FPfffff
/* 8046C72C  48 00 00 1C */	b lbl_8046C748
lbl_8046C730:
/* 8046C730  38 7D 05 88 */	addi r3, r29, 0x588
/* 8046C734  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8046C738  C0 5F 00 54 */	lfs f2, 0x54(r31)
/* 8046C73C  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 8046C740  C0 9F 00 5C */	lfs f4, 0x5c(r31)
/* 8046C744  4B E0 32 39 */	bl cLib_addCalc__FPfffff
lbl_8046C748:
/* 8046C748  7F A3 EB 78 */	mr r3, r29
/* 8046C74C  4B FF F2 C5 */	bl wether_tag_move__FP13kytag00_class
/* 8046C750  38 60 00 01 */	li r3, 1
/* 8046C754  39 61 00 20 */	addi r11, r1, 0x20
/* 8046C758  4B EF 5A D1 */	bl _restgpr_29
/* 8046C75C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8046C760  7C 08 03 A6 */	mtlr r0
/* 8046C764  38 21 00 20 */	addi r1, r1, 0x20
/* 8046C768  4E 80 00 20 */	blr 
