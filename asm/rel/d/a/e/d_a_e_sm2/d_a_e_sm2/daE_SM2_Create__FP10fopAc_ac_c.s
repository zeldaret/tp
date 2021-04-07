lbl_8079C480:
/* 8079C480  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8079C484  7C 08 02 A6 */	mflr r0
/* 8079C488  90 01 00 44 */	stw r0, 0x44(r1)
/* 8079C48C  39 61 00 40 */	addi r11, r1, 0x40
/* 8079C490  4B BC 5D 39 */	bl _savegpr_24
/* 8079C494  7C 7F 1B 78 */	mr r31, r3
/* 8079C498  3C 80 80 7A */	lis r4, lit_3790@ha /* 0x8079D5B0@ha */
/* 8079C49C  3B C4 D5 B0 */	addi r30, r4, lit_3790@l /* 0x8079D5B0@l */
/* 8079C4A0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8079C4A4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8079C4A8  40 82 01 28 */	bne lbl_8079C5D0
/* 8079C4AC  7F E0 FB 79 */	or. r0, r31, r31
/* 8079C4B0  41 82 01 14 */	beq lbl_8079C5C4
/* 8079C4B4  7C 1D 03 78 */	mr r29, r0
/* 8079C4B8  4B 87 C6 AD */	bl __ct__10fopAc_ac_cFv
/* 8079C4BC  38 7D 05 DC */	addi r3, r29, 0x5dc
/* 8079C4C0  4B B2 4A A5 */	bl __ct__15Z2CreatureEnemyFv
/* 8079C4C4  38 7D 07 08 */	addi r3, r29, 0x708
/* 8079C4C8  3C 80 80 7A */	lis r4, __ct__4cXyzFv@ha /* 0x8079CE48@ha */
/* 8079C4CC  38 84 CE 48 */	addi r4, r4, __ct__4cXyzFv@l /* 0x8079CE48@l */
/* 8079C4D0  3C A0 80 7A */	lis r5, __dt__4cXyzFv@ha /* 0x8079D560@ha */
/* 8079C4D4  38 A5 D5 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x8079D560@l */
/* 8079C4D8  38 C0 00 0C */	li r6, 0xc
/* 8079C4DC  38 E0 00 08 */	li r7, 8
/* 8079C4E0  4B BC 58 81 */	bl __construct_array
/* 8079C4E4  38 7D 07 68 */	addi r3, r29, 0x768
/* 8079C4E8  3C 80 80 7A */	lis r4, __ct__5csXyzFv@ha /* 0x8079CE44@ha */
/* 8079C4EC  38 84 CE 44 */	addi r4, r4, __ct__5csXyzFv@l /* 0x8079CE44@l */
/* 8079C4F0  3C A0 80 7A */	lis r5, __dt__5csXyzFv@ha /* 0x8079D524@ha */
/* 8079C4F4  38 A5 D5 24 */	addi r5, r5, __dt__5csXyzFv@l /* 0x8079D524@l */
/* 8079C4F8  38 C0 00 06 */	li r6, 6
/* 8079C4FC  38 E0 00 08 */	li r7, 8
/* 8079C500  4B BC 58 61 */	bl __construct_array
/* 8079C504  38 7D 07 98 */	addi r3, r29, 0x798
/* 8079C508  3C 80 80 7A */	lis r4, __ct__4cXyzFv@ha /* 0x8079CE48@ha */
/* 8079C50C  38 84 CE 48 */	addi r4, r4, __ct__4cXyzFv@l /* 0x8079CE48@l */
/* 8079C510  3C A0 80 7A */	lis r5, __dt__4cXyzFv@ha /* 0x8079D560@ha */
/* 8079C514  38 A5 D5 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x8079D560@l */
/* 8079C518  38 C0 00 0C */	li r6, 0xc
/* 8079C51C  38 E0 00 08 */	li r7, 8
/* 8079C520  4B BC 58 41 */	bl __construct_array
/* 8079C524  38 7D 07 F8 */	addi r3, r29, 0x7f8
/* 8079C528  3C 80 80 7A */	lis r4, __ct__5csXyzFv@ha /* 0x8079CE44@ha */
/* 8079C52C  38 84 CE 44 */	addi r4, r4, __ct__5csXyzFv@l /* 0x8079CE44@l */
/* 8079C530  3C A0 80 7A */	lis r5, __dt__5csXyzFv@ha /* 0x8079D524@ha */
/* 8079C534  38 A5 D5 24 */	addi r5, r5, __dt__5csXyzFv@l /* 0x8079D524@l */
/* 8079C538  38 C0 00 06 */	li r6, 6
/* 8079C53C  38 E0 00 08 */	li r7, 8
/* 8079C540  4B BC 58 21 */	bl __construct_array
/* 8079C544  38 7D 08 54 */	addi r3, r29, 0x854
/* 8079C548  4B 8D 99 65 */	bl __ct__12dBgS_AcchCirFv
/* 8079C54C  3B 1D 08 94 */	addi r24, r29, 0x894
/* 8079C550  7F 03 C3 78 */	mr r3, r24
/* 8079C554  4B 8D 9B 4D */	bl __ct__9dBgS_AcchFv
/* 8079C558  3C 60 80 7A */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8079DAF8@ha */
/* 8079C55C  38 63 DA F8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8079DAF8@l */
/* 8079C560  90 78 00 10 */	stw r3, 0x10(r24)
/* 8079C564  38 03 00 0C */	addi r0, r3, 0xc
/* 8079C568  90 18 00 14 */	stw r0, 0x14(r24)
/* 8079C56C  38 03 00 18 */	addi r0, r3, 0x18
/* 8079C570  90 18 00 24 */	stw r0, 0x24(r24)
/* 8079C574  38 78 00 14 */	addi r3, r24, 0x14
/* 8079C578  4B 8D C8 F1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8079C57C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8079C580  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8079C584  90 1D 0A 84 */	stw r0, 0xa84(r29)
/* 8079C588  38 7D 0A 88 */	addi r3, r29, 0xa88
/* 8079C58C  4B 8E 71 D5 */	bl __ct__10dCcD_GSttsFv
/* 8079C590  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8079C594  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8079C598  90 7D 0A 84 */	stw r3, 0xa84(r29)
/* 8079C59C  38 03 00 20 */	addi r0, r3, 0x20
/* 8079C5A0  90 1D 0A 88 */	stw r0, 0xa88(r29)
/* 8079C5A4  38 7D 0A A8 */	addi r3, r29, 0xaa8
/* 8079C5A8  3C 80 80 7A */	lis r4, __ct__8dCcD_SphFv@ha /* 0x8079CBF4@ha */
/* 8079C5AC  38 84 CB F4 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x8079CBF4@l */
/* 8079C5B0  3C A0 80 7A */	lis r5, __dt__8dCcD_SphFv@ha /* 0x8079CB28@ha */
/* 8079C5B4  38 A5 CB 28 */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x8079CB28@l */
/* 8079C5B8  38 C0 01 38 */	li r6, 0x138
/* 8079C5BC  38 E0 00 04 */	li r7, 4
/* 8079C5C0  4B BC 57 A1 */	bl __construct_array
lbl_8079C5C4:
/* 8079C5C4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8079C5C8  60 00 00 08 */	ori r0, r0, 8
/* 8079C5CC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8079C5D0:
/* 8079C5D0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8079C5D4  3C 80 80 7A */	lis r4, d_a_e_sm2__stringBase0@ha /* 0x8079D718@ha */
/* 8079C5D8  38 84 D7 18 */	addi r4, r4, d_a_e_sm2__stringBase0@l /* 0x8079D718@l */
/* 8079C5DC  38 84 00 07 */	addi r4, r4, 7
/* 8079C5E0  4B 89 08 DD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8079C5E4  7C 7D 1B 78 */	mr r29, r3
/* 8079C5E8  2C 1D 00 04 */	cmpwi r29, 4
/* 8079C5EC  40 82 05 20 */	bne lbl_8079CB0C
/* 8079C5F0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8079C5F4  54 04 46 3E */	srwi r4, r0, 0x18
/* 8079C5F8  2C 04 00 FF */	cmpwi r4, 0xff
/* 8079C5FC  41 82 00 28 */	beq lbl_8079C624
/* 8079C600  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079C604  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079C608  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8079C60C  7C 05 07 74 */	extsb r5, r0
/* 8079C610  4B 89 8D 51 */	bl isSwitch__10dSv_info_cCFii
/* 8079C614  2C 03 00 00 */	cmpwi r3, 0
/* 8079C618  41 82 00 0C */	beq lbl_8079C624
/* 8079C61C  38 60 00 05 */	li r3, 5
/* 8079C620  48 00 04 F0 */	b lbl_8079CB10
lbl_8079C624:
/* 8079C624  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8079C628  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8079C62C  98 1F 05 B4 */	stb r0, 0x5b4(r31)
/* 8079C630  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8079C634  28 00 00 0F */	cmplwi r0, 0xf
/* 8079C638  40 82 00 0C */	bne lbl_8079C644
/* 8079C63C  38 00 00 00 */	li r0, 0
/* 8079C640  98 1F 05 B4 */	stb r0, 0x5b4(r31)
lbl_8079C644:
/* 8079C644  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8079C648  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 8079C64C  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 8079C650  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 8079C654  28 00 00 0F */	cmplwi r0, 0xf
/* 8079C658  40 82 00 0C */	bne lbl_8079C664
/* 8079C65C  38 00 00 00 */	li r0, 0
/* 8079C660  98 1F 05 B7 */	stb r0, 0x5b7(r31)
lbl_8079C664:
/* 8079C664  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079C668  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079C66C  38 63 00 CC */	addi r3, r3, 0xcc
/* 8079C670  38 80 00 30 */	li r4, 0x30
/* 8079C674  4B 89 78 55 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 8079C678  2C 03 00 00 */	cmpwi r3, 0
/* 8079C67C  40 82 00 18 */	bne lbl_8079C694
/* 8079C680  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 8079C684  28 00 00 00 */	cmplwi r0, 0
/* 8079C688  40 82 00 0C */	bne lbl_8079C694
/* 8079C68C  38 60 00 05 */	li r3, 5
/* 8079C690  48 00 04 80 */	b lbl_8079CB10
lbl_8079C694:
/* 8079C694  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8079C698  28 00 00 0A */	cmplwi r0, 0xa
/* 8079C69C  40 80 00 40 */	bge lbl_8079C6DC
/* 8079C6A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079C6A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079C6A8  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8079C6AC  3C 80 80 7A */	lis r4, d_a_e_sm2__stringBase0@ha /* 0x8079D718@ha */
/* 8079C6B0  38 84 D7 18 */	addi r4, r4, d_a_e_sm2__stringBase0@l /* 0x8079D718@l */
/* 8079C6B4  38 84 00 0D */	addi r4, r4, 0xd
/* 8079C6B8  4B BC C2 DD */	bl strcmp
/* 8079C6BC  2C 03 00 00 */	cmpwi r3, 0
/* 8079C6C0  40 82 00 1C */	bne lbl_8079C6DC
/* 8079C6C4  C0 3E 01 3C */	lfs f1, 0x13c(r30)
/* 8079C6C8  4B AC B2 8D */	bl cM_rndF__Ff
/* 8079C6CC  FC 00 08 1E */	fctiwz f0, f1
/* 8079C6D0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8079C6D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079C6D8  98 1F 05 B7 */	stb r0, 0x5b7(r31)
lbl_8079C6DC:
/* 8079C6DC  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 8079C6E0  28 00 00 07 */	cmplwi r0, 7
/* 8079C6E4  40 82 00 3C */	bne lbl_8079C720
/* 8079C6E8  3C 60 80 43 */	lis r3, g_Counter@ha /* 0x80430CD8@ha */
/* 8079C6EC  80 03 0C D8 */	lwz r0, g_Counter@l(r3)  /* 0x80430CD8@l */
/* 8079C6F0  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 8079C6F4  40 82 00 10 */	bne lbl_8079C704
/* 8079C6F8  38 00 00 05 */	li r0, 5
/* 8079C6FC  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 8079C700  48 00 00 20 */	b lbl_8079C720
lbl_8079C704:
/* 8079C704  2C 00 00 04 */	cmpwi r0, 4
/* 8079C708  41 81 00 10 */	bgt lbl_8079C718
/* 8079C70C  38 00 00 01 */	li r0, 1
/* 8079C710  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 8079C714  48 00 00 0C */	b lbl_8079C720
lbl_8079C718:
/* 8079C718  38 00 00 02 */	li r0, 2
/* 8079C71C  98 1F 05 B7 */	stb r0, 0x5b7(r31)
lbl_8079C720:
/* 8079C720  88 1F 05 B7 */	lbz r0, 0x5b7(r31)
/* 8079C724  28 00 00 05 */	cmplwi r0, 5
/* 8079C728  40 82 00 44 */	bne lbl_8079C76C
/* 8079C72C  38 60 00 77 */	li r3, 0x77
/* 8079C730  38 80 00 01 */	li r4, 1
/* 8079C734  4B 8F B7 AD */	bl checkItemGet__FUci
/* 8079C738  2C 03 00 00 */	cmpwi r3, 0
/* 8079C73C  41 82 00 30 */	beq lbl_8079C76C
/* 8079C740  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8079C744  4B AC B2 11 */	bl cM_rndF__Ff
/* 8079C748  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8079C74C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079C750  4C 40 13 82 */	cror 2, 0, 2
/* 8079C754  40 82 00 10 */	bne lbl_8079C764
/* 8079C758  38 00 00 01 */	li r0, 1
/* 8079C75C  98 1F 05 B7 */	stb r0, 0x5b7(r31)
/* 8079C760  48 00 00 0C */	b lbl_8079C76C
lbl_8079C764:
/* 8079C764  38 00 00 02 */	li r0, 2
/* 8079C768  98 1F 05 B7 */	stb r0, 0x5b7(r31)
lbl_8079C76C:
/* 8079C76C  7F E3 FB 78 */	mr r3, r31
/* 8079C770  38 80 00 01 */	li r4, 1
/* 8079C774  4B FF F5 A1 */	bl col_set__FP11e_sm2_classSc
/* 8079C778  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8079C77C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8079C780  98 1F 08 3C */	stb r0, 0x83c(r31)
/* 8079C784  88 1F 08 3C */	lbz r0, 0x83c(r31)
/* 8079C788  28 00 00 FF */	cmplwi r0, 0xff
/* 8079C78C  41 82 00 18 */	beq lbl_8079C7A4
/* 8079C790  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8079C794  28 00 00 01 */	cmplwi r0, 1
/* 8079C798  41 82 00 0C */	beq lbl_8079C7A4
/* 8079C79C  28 00 00 02 */	cmplwi r0, 2
/* 8079C7A0  40 82 00 0C */	bne lbl_8079C7AC
lbl_8079C7A4:
/* 8079C7A4  38 00 00 00 */	li r0, 0
/* 8079C7A8  98 1F 08 3C */	stb r0, 0x83c(r31)
lbl_8079C7AC:
/* 8079C7AC  88 1F 08 3C */	lbz r0, 0x83c(r31)
/* 8079C7B0  28 00 00 03 */	cmplwi r0, 3
/* 8079C7B4  40 81 00 0C */	ble lbl_8079C7C0
/* 8079C7B8  38 00 00 03 */	li r0, 3
/* 8079C7BC  98 1F 08 3C */	stb r0, 0x83c(r31)
lbl_8079C7C0:
/* 8079C7C0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 8079C7C4  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8079C7C8  98 1F 05 B6 */	stb r0, 0x5b6(r31)
/* 8079C7CC  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 8079C7D0  28 00 00 FF */	cmplwi r0, 0xff
/* 8079C7D4  40 82 00 0C */	bne lbl_8079C7E0
/* 8079C7D8  38 00 00 03 */	li r0, 3
/* 8079C7DC  98 1F 05 B6 */	stb r0, 0x5b6(r31)
lbl_8079C7E0:
/* 8079C7E0  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 8079C7E4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8079C7E8  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 8079C7EC  38 00 00 00 */	li r0, 0
/* 8079C7F0  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 8079C7F4  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 8079C7F8  88 7F 08 3C */	lbz r3, 0x83c(r31)
/* 8079C7FC  4B FF C8 75 */	bl size_get__FUc
/* 8079C800  D0 3F 08 34 */	stfs f1, 0x834(r31)
/* 8079C804  7F E3 FB 78 */	mr r3, r31
/* 8079C808  3C 80 80 7A */	lis r4, useHeapInit__FP10fopAc_ac_c@ha /* 0x8079C184@ha */
/* 8079C80C  38 84 C1 84 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l /* 0x8079C184@l */
/* 8079C810  38 A0 20 D0 */	li r5, 0x20d0
/* 8079C814  4B 87 DC 9D */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8079C818  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079C81C  40 82 00 0C */	bne lbl_8079C828
/* 8079C820  38 60 00 05 */	li r3, 5
/* 8079C824  48 00 02 EC */	b lbl_8079CB10
lbl_8079C828:
/* 8079C828  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8079C82C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8079C830  7C 85 23 78 */	mr r5, r4
/* 8079C834  38 C0 00 03 */	li r6, 3
/* 8079C838  38 E0 00 01 */	li r7, 1
/* 8079C83C  4B B2 48 59 */	bl init__15Z2CreatureEnemyFP3VecP3VecUcUc
/* 8079C840  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 8079C844  3C 80 80 7A */	lis r4, d_a_e_sm2__stringBase0@ha /* 0x8079D718@ha */
/* 8079C848  38 84 D7 18 */	addi r4, r4, d_a_e_sm2__stringBase0@l /* 0x8079D718@l */
/* 8079C84C  38 84 00 07 */	addi r4, r4, 7
/* 8079C850  4B B2 53 41 */	bl setEnemyName__15Z2CreatureEnemyFPCc
/* 8079C854  38 1F 05 DC */	addi r0, r31, 0x5dc
/* 8079C858  90 1F 0F 94 */	stw r0, 0xf94(r31)
/* 8079C85C  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 8079C860  4B AC B0 F5 */	bl cM_rndF__Ff
/* 8079C864  FC 00 08 1E */	fctiwz f0, f1
/* 8079C868  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8079C86C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079C870  B0 1F 06 80 */	sth r0, 0x680(r31)
/* 8079C874  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8079C878  D0 1F 08 40 */	stfs f0, 0x840(r31)
/* 8079C87C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8079C880  D0 1F 08 44 */	stfs f0, 0x844(r31)
/* 8079C884  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8079C888  D0 1F 08 48 */	stfs f0, 0x848(r31)
/* 8079C88C  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 8079C890  B0 1F 08 4C */	sth r0, 0x84c(r31)
/* 8079C894  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8079C898  B0 1F 08 4E */	sth r0, 0x84e(r31)
/* 8079C89C  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 8079C8A0  B0 1F 08 50 */	sth r0, 0x850(r31)
/* 8079C8A4  38 60 00 00 */	li r3, 0
/* 8079C8A8  38 80 00 00 */	li r4, 0
/* 8079C8AC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8079C8B0  38 00 00 08 */	li r0, 8
/* 8079C8B4  7C 09 03 A6 */	mtctr r0
lbl_8079C8B8:
/* 8079C8B8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8079C8BC  7C BF 22 14 */	add r5, r31, r4
/* 8079C8C0  D0 25 07 08 */	stfs f1, 0x708(r5)
/* 8079C8C4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8079C8C8  D0 25 07 0C */	stfs f1, 0x70c(r5)
/* 8079C8CC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8079C8D0  D0 25 07 10 */	stfs f1, 0x710(r5)
/* 8079C8D4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8079C8D8  D0 25 07 98 */	stfs f1, 0x798(r5)
/* 8079C8DC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8079C8E0  D0 25 07 9C */	stfs f1, 0x79c(r5)
/* 8079C8E4  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8079C8E8  D0 25 07 A0 */	stfs f1, 0x7a0(r5)
/* 8079C8EC  38 03 06 C8 */	addi r0, r3, 0x6c8
/* 8079C8F0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8079C8F4  38 63 00 04 */	addi r3, r3, 4
/* 8079C8F8  38 84 00 0C */	addi r4, r4, 0xc
/* 8079C8FC  42 00 FF BC */	bdnz lbl_8079C8B8
/* 8079C900  38 00 00 64 */	li r0, 0x64
/* 8079C904  B0 1F 05 62 */	sth r0, 0x562(r31)
/* 8079C908  B0 1F 05 60 */	sth r0, 0x560(r31)
/* 8079C90C  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 8079C910  80 63 00 04 */	lwz r3, 4(r3)
/* 8079C914  38 03 00 24 */	addi r0, r3, 0x24
/* 8079C918  90 1F 05 04 */	stw r0, 0x504(r31)
/* 8079C91C  7F E3 FB 78 */	mr r3, r31
/* 8079C920  C0 3E 01 40 */	lfs f1, 0x140(r30)
/* 8079C924  C0 5E 01 44 */	lfs f2, 0x144(r30)
/* 8079C928  FC 60 08 90 */	fmr f3, f1
/* 8079C92C  4B 87 DB FD */	bl fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8079C930  7F E3 FB 78 */	mr r3, r31
/* 8079C934  C0 3E 01 48 */	lfs f1, 0x148(r30)
/* 8079C938  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 8079C93C  FC 60 08 90 */	fmr f3, f1
/* 8079C940  4B 87 DB F9 */	bl fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8079C944  38 00 00 00 */	li r0, 0
/* 8079C948  90 01 00 08 */	stw r0, 8(r1)
/* 8079C94C  38 7F 08 94 */	addi r3, r31, 0x894
/* 8079C950  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8079C954  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 8079C958  7F E6 FB 78 */	mr r6, r31
/* 8079C95C  38 E0 00 01 */	li r7, 1
/* 8079C960  39 1F 08 54 */	addi r8, r31, 0x854
/* 8079C964  39 3F 04 F8 */	addi r9, r31, 0x4f8
/* 8079C968  39 40 00 00 */	li r10, 0
/* 8079C96C  4B 8D 98 DD */	bl Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 8079C970  38 7F 08 54 */	addi r3, r31, 0x854
/* 8079C974  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8079C978  C0 5E 00 80 */	lfs f2, 0x80(r30)
/* 8079C97C  4B 8D 95 DD */	bl SetWall__12dBgS_AcchCirFff
/* 8079C980  7F E3 FB 78 */	mr r3, r31
/* 8079C984  4B FF C7 DD */	bl cc_stts_init__FP11e_sm2_class
/* 8079C988  3B 00 00 00 */	li r24, 0
/* 8079C98C  3B 80 00 00 */	li r28, 0
/* 8079C990  3C 60 80 7A */	lis r3, cc_sph_src@ha /* 0x8079DA2C@ha */
/* 8079C994  3B 43 DA 2C */	addi r26, r3, cc_sph_src@l /* 0x8079DA2C@l */
/* 8079C998  3B 7F 0A 6C */	addi r27, r31, 0xa6c
lbl_8079C99C:
/* 8079C99C  7F 3F E2 14 */	add r25, r31, r28
/* 8079C9A0  38 79 0A A8 */	addi r3, r25, 0xaa8
/* 8079C9A4  7F 44 D3 78 */	mr r4, r26
/* 8079C9A8  4B 8E 80 8D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 8079C9AC  93 79 0A EC */	stw r27, 0xaec(r25)
/* 8079C9B0  3B 18 00 01 */	addi r24, r24, 1
/* 8079C9B4  2C 18 00 04 */	cmpwi r24, 4
/* 8079C9B8  3B 9C 01 38 */	addi r28, r28, 0x138
/* 8079C9BC  41 80 FF E0 */	blt lbl_8079C99C
/* 8079C9C0  38 00 FF FF */	li r0, -1
/* 8079C9C4  90 1F 0F D0 */	stw r0, 0xfd0(r31)
/* 8079C9C8  88 1F 05 B4 */	lbz r0, 0x5b4(r31)
/* 8079C9CC  28 00 00 0A */	cmplwi r0, 0xa
/* 8079C9D0  40 82 00 58 */	bne lbl_8079CA28
/* 8079C9D4  38 60 00 01 */	li r3, 1
/* 8079C9D8  B0 7F 06 82 */	sth r3, 0x682(r31)
/* 8079C9DC  38 00 00 0A */	li r0, 0xa
/* 8079C9E0  B0 1F 06 84 */	sth r0, 0x684(r31)
/* 8079C9E4  38 00 00 14 */	li r0, 0x14
/* 8079C9E8  B0 1F 06 8C */	sth r0, 0x68c(r31)
/* 8079C9EC  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 8079C9F0  D0 1F 08 30 */	stfs f0, 0x830(r31)
/* 8079C9F4  98 7F 0F D4 */	stb r3, 0xfd4(r31)
/* 8079C9F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079C9FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079CA00  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8079CA04  3C 80 80 7A */	lis r4, d_a_e_sm2__stringBase0@ha /* 0x8079D718@ha */
/* 8079CA08  38 84 D7 18 */	addi r4, r4, d_a_e_sm2__stringBase0@l /* 0x8079D718@l */
/* 8079CA0C  38 84 00 15 */	addi r4, r4, 0x15
/* 8079CA10  4B BC BF 85 */	bl strcmp
/* 8079CA14  2C 03 00 00 */	cmpwi r3, 0
/* 8079CA18  40 82 00 D8 */	bne lbl_8079CAF0
/* 8079CA1C  38 00 00 1E */	li r0, 0x1e
/* 8079CA20  98 1F 08 3E */	stb r0, 0x83e(r31)
/* 8079CA24  48 00 00 CC */	b lbl_8079CAF0
lbl_8079CA28:
/* 8079CA28  28 00 00 0B */	cmplwi r0, 0xb
/* 8079CA2C  40 82 00 54 */	bne lbl_8079CA80
/* 8079CA30  38 60 00 01 */	li r3, 1
/* 8079CA34  B0 7F 06 82 */	sth r3, 0x682(r31)
/* 8079CA38  38 00 00 14 */	li r0, 0x14
/* 8079CA3C  B0 1F 06 84 */	sth r0, 0x684(r31)
/* 8079CA40  B0 1F 06 8C */	sth r0, 0x68c(r31)
/* 8079CA44  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 8079CA48  D0 1F 08 30 */	stfs f0, 0x830(r31)
/* 8079CA4C  98 7F 0F D4 */	stb r3, 0xfd4(r31)
/* 8079CA50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079CA54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079CA58  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 8079CA5C  3C 80 80 7A */	lis r4, d_a_e_sm2__stringBase0@ha /* 0x8079D718@ha */
/* 8079CA60  38 84 D7 18 */	addi r4, r4, d_a_e_sm2__stringBase0@l /* 0x8079D718@l */
/* 8079CA64  38 84 00 15 */	addi r4, r4, 0x15
/* 8079CA68  4B BC BF 2D */	bl strcmp
/* 8079CA6C  2C 03 00 00 */	cmpwi r3, 0
/* 8079CA70  40 82 00 80 */	bne lbl_8079CAF0
/* 8079CA74  38 00 00 1E */	li r0, 0x1e
/* 8079CA78  98 1F 08 3E */	stb r0, 0x83e(r31)
/* 8079CA7C  48 00 00 74 */	b lbl_8079CAF0
lbl_8079CA80:
/* 8079CA80  28 00 00 01 */	cmplwi r0, 1
/* 8079CA84  40 82 00 10 */	bne lbl_8079CA94
/* 8079CA88  38 00 00 0A */	li r0, 0xa
/* 8079CA8C  B0 1F 06 82 */	sth r0, 0x682(r31)
/* 8079CA90  48 00 00 60 */	b lbl_8079CAF0
lbl_8079CA94:
/* 8079CA94  28 00 00 02 */	cmplwi r0, 2
/* 8079CA98  40 82 00 18 */	bne lbl_8079CAB0
/* 8079CA9C  38 00 00 0A */	li r0, 0xa
/* 8079CAA0  B0 1F 06 82 */	sth r0, 0x682(r31)
/* 8079CAA4  38 00 00 01 */	li r0, 1
/* 8079CAA8  98 1F 08 3D */	stb r0, 0x83d(r31)
/* 8079CAAC  48 00 00 44 */	b lbl_8079CAF0
lbl_8079CAB0:
/* 8079CAB0  38 00 00 00 */	li r0, 0
/* 8079CAB4  B0 1F 06 82 */	sth r0, 0x682(r31)
/* 8079CAB8  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 8079CABC  4B AC AE 99 */	bl cM_rndF__Ff
/* 8079CAC0  FC 00 08 1E */	fctiwz f0, f1
/* 8079CAC4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8079CAC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079CACC  B0 1F 06 86 */	sth r0, 0x686(r31)
/* 8079CAD0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8079CAD4  4B AC AE 81 */	bl cM_rndF__Ff
/* 8079CAD8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8079CADC  EC 00 08 2A */	fadds f0, f0, f1
/* 8079CAE0  FC 00 00 1E */	fctiwz f0, f0
/* 8079CAE4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8079CAE8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8079CAEC  B0 1F 06 8E */	sth r0, 0x68e(r31)
lbl_8079CAF0:
/* 8079CAF0  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 8079CAF4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 8079CAF8  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8079CAFC  D0 1F 06 C4 */	stfs f0, 0x6c4(r31)
/* 8079CB00  D0 1F 06 B0 */	stfs f0, 0x6b0(r31)
/* 8079CB04  7F E3 FB 78 */	mr r3, r31
/* 8079CB08  4B FF F3 E9 */	bl daE_SM2_Execute__FP11e_sm2_class
lbl_8079CB0C:
/* 8079CB0C  7F A3 EB 78 */	mr r3, r29
lbl_8079CB10:
/* 8079CB10  39 61 00 40 */	addi r11, r1, 0x40
/* 8079CB14  4B BC 57 01 */	bl _restgpr_24
/* 8079CB18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8079CB1C  7C 08 03 A6 */	mtlr r0
/* 8079CB20  38 21 00 40 */	addi r1, r1, 0x40
/* 8079CB24  4E 80 00 20 */	blr 
