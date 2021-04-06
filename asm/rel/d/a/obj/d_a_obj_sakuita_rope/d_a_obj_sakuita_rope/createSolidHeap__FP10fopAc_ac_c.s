lbl_80CC622C:
/* 80CC622C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CC6230  7C 08 02 A6 */	mflr r0
/* 80CC6234  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CC6238  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC623C  4B 69 BF 9D */	bl _savegpr_28
/* 80CC6240  7C 7F 1B 78 */	mr r31, r3
/* 80CC6244  38 00 00 00 */	li r0, 0
/* 80CC6248  90 03 06 18 */	stw r0, 0x618(r3)
/* 80CC624C  88 63 06 35 */	lbz r3, 0x635(r3)
/* 80CC6250  3B C3 FF FE */	addi r30, r3, -2
/* 80CC6254  1C 7E 00 1C */	mulli r3, r30, 0x1c
/* 80CC6258  38 63 00 10 */	addi r3, r3, 0x10
/* 80CC625C  4B 60 8A 69 */	bl __nwa__FUl
/* 80CC6260  3C 80 80 CC */	lis r4, __ct__10RopeWork_cFv@ha /* 0x80CC6460@ha */
/* 80CC6264  38 84 64 60 */	addi r4, r4, __ct__10RopeWork_cFv@l /* 0x80CC6460@l */
/* 80CC6268  3C A0 80 CC */	lis r5, __dt__10RopeWork_cFv@ha /* 0x80CC6424@ha */
/* 80CC626C  38 A5 64 24 */	addi r5, r5, __dt__10RopeWork_cFv@l /* 0x80CC6424@l */
/* 80CC6270  38 C0 00 1C */	li r6, 0x1c
/* 80CC6274  7F C7 F3 78 */	mr r7, r30
/* 80CC6278  4B 69 BC 9D */	bl __construct_new_array
/* 80CC627C  90 7F 06 18 */	stw r3, 0x618(r31)
/* 80CC6280  80 1F 06 18 */	lwz r0, 0x618(r31)
/* 80CC6284  28 00 00 00 */	cmplwi r0, 0
/* 80CC6288  40 82 00 0C */	bne lbl_80CC6294
/* 80CC628C  38 60 00 00 */	li r3, 0
/* 80CC6290  48 00 01 3C */	b lbl_80CC63CC
lbl_80CC6294:
/* 80CC6294  38 00 00 00 */	li r0, 0
/* 80CC6298  90 1F 06 1C */	stw r0, 0x61c(r31)
/* 80CC629C  88 7F 06 35 */	lbz r3, 0x635(r31)
/* 80CC62A0  3B C3 FF FE */	addi r30, r3, -2
/* 80CC62A4  1C 7E 00 3C */	mulli r3, r30, 0x3c
/* 80CC62A8  38 63 00 10 */	addi r3, r3, 0x10
/* 80CC62AC  4B 60 8A 19 */	bl __nwa__FUl
/* 80CC62B0  3C 80 80 CC */	lis r4, __ct__9Sakuita_cFv@ha /* 0x80CC6420@ha */
/* 80CC62B4  38 84 64 20 */	addi r4, r4, __ct__9Sakuita_cFv@l /* 0x80CC6420@l */
/* 80CC62B8  3C A0 80 CC */	lis r5, __dt__9Sakuita_cFv@ha /* 0x80CC63E4@ha */
/* 80CC62BC  38 A5 63 E4 */	addi r5, r5, __dt__9Sakuita_cFv@l /* 0x80CC63E4@l */
/* 80CC62C0  38 C0 00 3C */	li r6, 0x3c
/* 80CC62C4  7F C7 F3 78 */	mr r7, r30
/* 80CC62C8  4B 69 BC 4D */	bl __construct_new_array
/* 80CC62CC  90 7F 06 1C */	stw r3, 0x61c(r31)
/* 80CC62D0  80 1F 06 1C */	lwz r0, 0x61c(r31)
/* 80CC62D4  28 00 00 00 */	cmplwi r0, 0
/* 80CC62D8  40 82 00 0C */	bne lbl_80CC62E4
/* 80CC62DC  38 60 00 00 */	li r3, 0
/* 80CC62E0  48 00 00 EC */	b lbl_80CC63CC
lbl_80CC62E4:
/* 80CC62E4  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CC6998@ha */
/* 80CC62E8  38 63 69 98 */	addi r3, r3, l_arcName@l /* 0x80CC6998@l */
/* 80CC62EC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC62F0  3C 80 80 CC */	lis r4, d_a_obj_sakuita_rope__stringBase0@ha /* 0x80CC6970@ha */
/* 80CC62F4  38 84 69 70 */	addi r4, r4, d_a_obj_sakuita_rope__stringBase0@l /* 0x80CC6970@l */
/* 80CC62F8  38 84 00 18 */	addi r4, r4, 0x18
/* 80CC62FC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CC6300  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CC6304  3F 85 00 02 */	addis r28, r5, 2
/* 80CC6308  3B 9C C2 F8 */	addi r28, r28, -15624
/* 80CC630C  7F 85 E3 78 */	mr r5, r28
/* 80CC6310  38 C0 00 80 */	li r6, 0x80
/* 80CC6314  4B 37 60 69 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CC6318  7C 66 1B 78 */	mr r6, r3
/* 80CC631C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CC6320  38 80 00 01 */	li r4, 1
/* 80CC6324  88 BF 06 35 */	lbz r5, 0x635(r31)
/* 80CC6328  38 E0 00 01 */	li r7, 1
/* 80CC632C  4B 34 D0 35 */	bl init__19mDoExt_3DlineMat1_cFUsUsP7ResTIMGi
/* 80CC6330  2C 03 00 00 */	cmpwi r3, 0
/* 80CC6334  40 82 00 0C */	bne lbl_80CC6340
/* 80CC6338  38 60 00 00 */	li r3, 0
/* 80CC633C  48 00 00 90 */	b lbl_80CC63CC
lbl_80CC6340:
/* 80CC6340  80 7F 05 A0 */	lwz r3, 0x5a0(r31)
/* 80CC6344  80 A3 00 04 */	lwz r5, 4(r3)
/* 80CC6348  38 80 00 00 */	li r4, 0
/* 80CC634C  3C 60 80 CC */	lis r3, lit_4149@ha /* 0x80CC696C@ha */
/* 80CC6350  C0 03 69 6C */	lfs f0, lit_4149@l(r3)  /* 0x80CC696C@l */
/* 80CC6354  48 00 00 10 */	b lbl_80CC6364
lbl_80CC6358:
/* 80CC6358  D0 05 00 00 */	stfs f0, 0(r5)
/* 80CC635C  38 84 00 01 */	addi r4, r4, 1
/* 80CC6360  38 A5 00 04 */	addi r5, r5, 4
lbl_80CC6364:
/* 80CC6364  88 1F 06 35 */	lbz r0, 0x635(r31)
/* 80CC6368  7C 04 00 00 */	cmpw r4, r0
/* 80CC636C  41 80 FF EC */	blt lbl_80CC6358
/* 80CC6370  3C 60 80 CC */	lis r3, l_arcName@ha /* 0x80CC6998@ha */
/* 80CC6374  38 63 69 98 */	addi r3, r3, l_arcName@l /* 0x80CC6998@l */
/* 80CC6378  80 63 00 00 */	lwz r3, 0(r3)
/* 80CC637C  3C 80 80 CC */	lis r4, d_a_obj_sakuita_rope__stringBase0@ha /* 0x80CC6970@ha */
/* 80CC6380  38 84 69 70 */	addi r4, r4, d_a_obj_sakuita_rope__stringBase0@l /* 0x80CC6970@l */
/* 80CC6384  38 84 00 0A */	addi r4, r4, 0xa
/* 80CC6388  7F 85 E3 78 */	mr r5, r28
/* 80CC638C  38 C0 00 80 */	li r6, 0x80
/* 80CC6390  4B 37 5F ED */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80CC6394  7C 7C 1B 78 */	mr r28, r3
/* 80CC6398  83 BF 06 1C */	lwz r29, 0x61c(r31)
/* 80CC639C  3B C0 00 00 */	li r30, 0
/* 80CC63A0  48 00 00 18 */	b lbl_80CC63B8
lbl_80CC63A4:
/* 80CC63A4  7F A3 EB 78 */	mr r3, r29
/* 80CC63A8  7F 84 E3 78 */	mr r4, r28
/* 80CC63AC  4B FF EE 8D */	bl setModelData__9Sakuita_cFP12J3DModelData
/* 80CC63B0  3B DE 00 01 */	addi r30, r30, 1
/* 80CC63B4  3B BD 00 3C */	addi r29, r29, 0x3c
lbl_80CC63B8:
/* 80CC63B8  88 7F 06 35 */	lbz r3, 0x635(r31)
/* 80CC63BC  38 03 FF FE */	addi r0, r3, -2
/* 80CC63C0  7C 1E 00 00 */	cmpw r30, r0
/* 80CC63C4  41 80 FF E0 */	blt lbl_80CC63A4
/* 80CC63C8  38 60 00 01 */	li r3, 1
lbl_80CC63CC:
/* 80CC63CC  39 61 00 20 */	addi r11, r1, 0x20
/* 80CC63D0  4B 69 BE 55 */	bl _restgpr_28
/* 80CC63D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CC63D8  7C 08 03 A6 */	mtlr r0
/* 80CC63DC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CC63E0  4E 80 00 20 */	blr 
