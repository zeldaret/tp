lbl_809CB6E0:
/* 809CB6E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809CB6E4  7C 08 02 A6 */	mflr r0
/* 809CB6E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 809CB6EC  39 61 00 20 */	addi r11, r1, 0x20
/* 809CB6F0  4B 99 6A E1 */	bl _savegpr_26
/* 809CB6F4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809CB6F8  7C 9F 23 78 */	mr r31, r4
/* 809CB6FC  41 82 01 C8 */	beq lbl_809CB8C4
/* 809CB700  3C 60 80 9D */	lis r3, __vt__11daNpc_grC_c@ha /* 0x809CFA84@ha */
/* 809CB704  38 03 FA 84 */	addi r0, r3, __vt__11daNpc_grC_c@l /* 0x809CFA84@l */
/* 809CB708  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809CB70C  3B A0 00 00 */	li r29, 0
/* 809CB710  3B 80 00 00 */	li r28, 0
/* 809CB714  3C 60 80 9D */	lis r3, l_resNames@ha /* 0x809CF964@ha */
/* 809CB718  3B 43 F9 64 */	addi r26, r3, l_resNames@l /* 0x809CF964@l */
/* 809CB71C  3C 60 80 9D */	lis r3, l_loadRes_list@ha /* 0x809CF948@ha */
/* 809CB720  3B 63 F9 48 */	addi r27, r3, l_loadRes_list@l /* 0x809CF948@l */
/* 809CB724  48 00 00 20 */	b lbl_809CB744
lbl_809CB728:
/* 809CB728  38 7C 0E 18 */	addi r3, r28, 0xe18
/* 809CB72C  7C 7E 1A 14 */	add r3, r30, r3
/* 809CB730  54 00 10 3A */	slwi r0, r0, 2
/* 809CB734  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809CB738  4B 66 18 D1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809CB73C  3B BD 00 04 */	addi r29, r29, 4
/* 809CB740  3B 9C 00 08 */	addi r28, r28, 8
lbl_809CB744:
/* 809CB744  88 1E 0E 48 */	lbz r0, 0xe48(r30)
/* 809CB748  54 00 10 3A */	slwi r0, r0, 2
/* 809CB74C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809CB750  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809CB754  2C 00 00 00 */	cmpwi r0, 0
/* 809CB758  40 80 FF D0 */	bge lbl_809CB728
/* 809CB75C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809CB760  28 00 00 00 */	cmplwi r0, 0
/* 809CB764  41 82 00 0C */	beq lbl_809CB770
/* 809CB768  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809CB76C  4B 64 5B A5 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809CB770:
/* 809CB770  34 1E 0C C4 */	addic. r0, r30, 0xcc4
/* 809CB774  41 82 00 84 */	beq lbl_809CB7F8
/* 809CB778  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 809CB77C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 809CB780  90 7E 0D 00 */	stw r3, 0xd00(r30)
/* 809CB784  38 03 00 2C */	addi r0, r3, 0x2c
/* 809CB788  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 809CB78C  38 03 00 84 */	addi r0, r3, 0x84
/* 809CB790  90 1E 0D FC */	stw r0, 0xdfc(r30)
/* 809CB794  34 1E 0D C8 */	addic. r0, r30, 0xdc8
/* 809CB798  41 82 00 54 */	beq lbl_809CB7EC
/* 809CB79C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 809CB7A0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 809CB7A4  90 7E 0D E4 */	stw r3, 0xde4(r30)
/* 809CB7A8  38 03 00 58 */	addi r0, r3, 0x58
/* 809CB7AC  90 1E 0D FC */	stw r0, 0xdfc(r30)
/* 809CB7B0  34 1E 0D E8 */	addic. r0, r30, 0xde8
/* 809CB7B4  41 82 00 10 */	beq lbl_809CB7C4
/* 809CB7B8  3C 60 80 9D */	lis r3, __vt__8cM3dGCyl@ha /* 0x809CFB2C@ha */
/* 809CB7BC  38 03 FB 2C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x809CFB2C@l */
/* 809CB7C0  90 1E 0D FC */	stw r0, 0xdfc(r30)
lbl_809CB7C4:
/* 809CB7C4  34 1E 0D C8 */	addic. r0, r30, 0xdc8
/* 809CB7C8  41 82 00 24 */	beq lbl_809CB7EC
/* 809CB7CC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 809CB7D0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 809CB7D4  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 809CB7D8  34 1E 0D C8 */	addic. r0, r30, 0xdc8
/* 809CB7DC  41 82 00 10 */	beq lbl_809CB7EC
/* 809CB7E0  3C 60 80 9D */	lis r3, __vt__8cM3dGAab@ha /* 0x809CFB38@ha */
/* 809CB7E4  38 03 FB 38 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x809CFB38@l */
/* 809CB7E8  90 1E 0D E0 */	stw r0, 0xde0(r30)
lbl_809CB7EC:
/* 809CB7EC  38 7E 0C C4 */	addi r3, r30, 0xcc4
/* 809CB7F0  38 80 00 00 */	li r4, 0
/* 809CB7F4  4B 6B 88 F1 */	bl __dt__12dCcD_GObjInfFv
lbl_809CB7F8:
/* 809CB7F8  38 7E 0C B0 */	addi r3, r30, 0xcb0
/* 809CB7FC  3C 80 80 9D */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809CEC64@ha */
/* 809CB800  38 84 EC 64 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809CEC64@l */
/* 809CB804  38 A0 00 08 */	li r5, 8
/* 809CB808  38 C0 00 02 */	li r6, 2
/* 809CB80C  4B 99 64 DD */	bl __destroy_arr
/* 809CB810  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 809CB814  41 82 00 88 */	beq lbl_809CB89C
/* 809CB818  3C 60 80 9D */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x809CFB44@ha */
/* 809CB81C  38 03 FB 44 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x809CFB44@l */
/* 809CB820  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 809CB824  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 809CB828  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809CEDB8@ha */
/* 809CB82C  38 84 ED B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809CEDB8@l */
/* 809CB830  38 A0 00 06 */	li r5, 6
/* 809CB834  38 C0 00 04 */	li r6, 4
/* 809CB838  4B 99 64 B1 */	bl __destroy_arr
/* 809CB83C  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 809CB840  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809CEDB8@ha */
/* 809CB844  38 84 ED B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809CEDB8@l */
/* 809CB848  38 A0 00 06 */	li r5, 6
/* 809CB84C  38 C0 00 04 */	li r6, 4
/* 809CB850  4B 99 64 99 */	bl __destroy_arr
/* 809CB854  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 809CB858  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809CEDB8@ha */
/* 809CB85C  38 84 ED B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809CEDB8@l */
/* 809CB860  38 A0 00 06 */	li r5, 6
/* 809CB864  38 C0 00 04 */	li r6, 4
/* 809CB868  4B 99 64 81 */	bl __destroy_arr
/* 809CB86C  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 809CB870  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809CEDB8@ha */
/* 809CB874  38 84 ED B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809CEDB8@l */
/* 809CB878  38 A0 00 06 */	li r5, 6
/* 809CB87C  38 C0 00 04 */	li r6, 4
/* 809CB880  4B 99 64 69 */	bl __destroy_arr
/* 809CB884  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 809CB888  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha /* 0x809CEDF8@ha */
/* 809CB88C  38 84 ED F8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809CEDF8@l */
/* 809CB890  38 A0 00 0C */	li r5, 0xc
/* 809CB894  38 C0 00 04 */	li r6, 4
/* 809CB898  4B 99 64 51 */	bl __destroy_arr
lbl_809CB89C:
/* 809CB89C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809CB8A0  38 80 FF FF */	li r4, -1
/* 809CB8A4  4B 8F 4B 7D */	bl __dt__10Z2CreatureFv
/* 809CB8A8  7F C3 F3 78 */	mr r3, r30
/* 809CB8AC  38 80 00 00 */	li r4, 0
/* 809CB8B0  48 00 35 89 */	bl __dt__8daNpcF_cFv
/* 809CB8B4  7F E0 07 35 */	extsh. r0, r31
/* 809CB8B8  40 81 00 0C */	ble lbl_809CB8C4
/* 809CB8BC  7F C3 F3 78 */	mr r3, r30
/* 809CB8C0  4B 90 34 7D */	bl __dl__FPv
lbl_809CB8C4:
/* 809CB8C4  7F C3 F3 78 */	mr r3, r30
/* 809CB8C8  39 61 00 20 */	addi r11, r1, 0x20
/* 809CB8CC  4B 99 69 51 */	bl _restgpr_26
/* 809CB8D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809CB8D4  7C 08 03 A6 */	mtlr r0
/* 809CB8D8  38 21 00 20 */	addi r1, r1, 0x20
/* 809CB8DC  4E 80 00 20 */	blr 
