lbl_80958610:
/* 80958610  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80958614  7C 08 02 A6 */	mflr r0
/* 80958618  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095861C  39 61 00 20 */	addi r11, r1, 0x20
/* 80958620  4B A0 9B B1 */	bl _savegpr_26
/* 80958624  7C 7E 1B 79 */	or. r30, r3, r3
/* 80958628  7C 9F 23 78 */	mr r31, r4
/* 8095862C  41 82 01 58 */	beq lbl_80958784
/* 80958630  3C 60 80 96 */	lis r3, __vt__10daNpcAsh_c@ha /* 0x8095DC60@ha */
/* 80958634  38 03 DC 60 */	addi r0, r3, __vt__10daNpcAsh_c@l /* 0x8095DC60@l */
/* 80958638  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 8095863C  3B A0 00 00 */	li r29, 0
/* 80958640  3B 80 00 00 */	li r28, 0
/* 80958644  3C 60 80 96 */	lis r3, l_arcNames@ha /* 0x8095DAC0@ha */
/* 80958648  3B 43 DA C0 */	addi r26, r3, l_arcNames@l /* 0x8095DAC0@l */
/* 8095864C  3C 60 80 96 */	lis r3, l_loadRes_list@ha /* 0x8095DAB8@ha */
/* 80958650  3B 63 DA B8 */	addi r27, r3, l_loadRes_list@l /* 0x8095DAB8@l */
/* 80958654  48 00 00 20 */	b lbl_80958674
lbl_80958658:
/* 80958658  38 7C 0F 3C */	addi r3, r28, 0xf3c
/* 8095865C  7C 7E 1A 14 */	add r3, r30, r3
/* 80958660  54 00 10 3A */	slwi r0, r0, 2
/* 80958664  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80958668  4B 6D 49 A1 */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8095866C  3B BD 00 04 */	addi r29, r29, 4
/* 80958670  3B 9C 00 08 */	addi r28, r28, 8
lbl_80958674:
/* 80958674  88 1E 0F 60 */	lbz r0, 0xf60(r30)
/* 80958678  54 00 10 3A */	slwi r0, r0, 2
/* 8095867C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80958680  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80958684  2C 00 00 00 */	cmpwi r0, 0
/* 80958688  40 80 FF D0 */	bge lbl_80958658
/* 8095868C  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80958690  28 00 00 00 */	cmplwi r0, 0
/* 80958694  41 82 00 0C */	beq lbl_809586A0
/* 80958698  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8095869C  4B 6B 8C 75 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809586A0:
/* 809586A0  38 7E 0C B8 */	addi r3, r30, 0xcb8
/* 809586A4  3C 80 80 96 */	lis r4, __dt__8dCcD_CylFv@ha /* 0x80958430@ha */
/* 809586A8  38 84 84 30 */	addi r4, r4, __dt__8dCcD_CylFv@l /* 0x80958430@l */
/* 809586AC  38 A0 01 3C */	li r5, 0x13c
/* 809586B0  38 C0 00 02 */	li r6, 2
/* 809586B4  4B A0 96 35 */	bl __destroy_arr
/* 809586B8  38 7E 0C 80 */	addi r3, r30, 0xc80
/* 809586BC  3C 80 80 96 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x8095CD8C@ha */
/* 809586C0  38 84 CD 8C */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x8095CD8C@l */
/* 809586C4  38 A0 00 08 */	li r5, 8
/* 809586C8  38 C0 00 06 */	li r6, 6
/* 809586CC  4B A0 96 1D */	bl __destroy_arr
/* 809586D0  34 1E 0B E4 */	addic. r0, r30, 0xbe4
/* 809586D4  41 82 00 88 */	beq lbl_8095875C
/* 809586D8  3C 60 80 96 */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x8095DD20@ha */
/* 809586DC  38 03 DD 20 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x8095DD20@l */
/* 809586E0  90 1E 0C 7C */	stw r0, 0xc7c(r30)
/* 809586E4  38 7E 0C 60 */	addi r3, r30, 0xc60
/* 809586E8  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha /* 0x8095CEE0@ha */
/* 809586EC  38 84 CE E0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8095CEE0@l */
/* 809586F0  38 A0 00 06 */	li r5, 6
/* 809586F4  38 C0 00 04 */	li r6, 4
/* 809586F8  4B A0 95 F1 */	bl __destroy_arr
/* 809586FC  38 7E 0C 48 */	addi r3, r30, 0xc48
/* 80958700  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha /* 0x8095CEE0@ha */
/* 80958704  38 84 CE E0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8095CEE0@l */
/* 80958708  38 A0 00 06 */	li r5, 6
/* 8095870C  38 C0 00 04 */	li r6, 4
/* 80958710  4B A0 95 D9 */	bl __destroy_arr
/* 80958714  38 7E 0C 30 */	addi r3, r30, 0xc30
/* 80958718  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha /* 0x8095CEE0@ha */
/* 8095871C  38 84 CE E0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8095CEE0@l */
/* 80958720  38 A0 00 06 */	li r5, 6
/* 80958724  38 C0 00 04 */	li r6, 4
/* 80958728  4B A0 95 C1 */	bl __destroy_arr
/* 8095872C  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 80958730  3C 80 80 96 */	lis r4, __dt__5csXyzFv@ha /* 0x8095CEE0@ha */
/* 80958734  38 84 CE E0 */	addi r4, r4, __dt__5csXyzFv@l /* 0x8095CEE0@l */
/* 80958738  38 A0 00 06 */	li r5, 6
/* 8095873C  38 C0 00 04 */	li r6, 4
/* 80958740  4B A0 95 A9 */	bl __destroy_arr
/* 80958744  38 7E 0B E4 */	addi r3, r30, 0xbe4
/* 80958748  3C 80 80 96 */	lis r4, __dt__4cXyzFv@ha /* 0x8095CF20@ha */
/* 8095874C  38 84 CF 20 */	addi r4, r4, __dt__4cXyzFv@l /* 0x8095CF20@l */
/* 80958750  38 A0 00 0C */	li r5, 0xc
/* 80958754  38 C0 00 04 */	li r6, 4
/* 80958758  4B A0 95 91 */	bl __destroy_arr
lbl_8095875C:
/* 8095875C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80958760  38 80 FF FF */	li r4, -1
/* 80958764  4B 96 7C BD */	bl __dt__10Z2CreatureFv
/* 80958768  7F C3 F3 78 */	mr r3, r30
/* 8095876C  38 80 00 00 */	li r4, 0
/* 80958770  48 00 47 F1 */	bl __dt__8daNpcF_cFv
/* 80958774  7F E0 07 35 */	extsh. r0, r31
/* 80958778  40 81 00 0C */	ble lbl_80958784
/* 8095877C  7F C3 F3 78 */	mr r3, r30
/* 80958780  4B 97 65 BD */	bl __dl__FPv
lbl_80958784:
/* 80958784  7F C3 F3 78 */	mr r3, r30
/* 80958788  39 61 00 20 */	addi r11, r1, 0x20
/* 8095878C  4B A0 9A 91 */	bl _restgpr_26
/* 80958790  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80958794  7C 08 03 A6 */	mtlr r0
/* 80958798  38 21 00 20 */	addi r1, r1, 0x20
/* 8095879C  4E 80 00 20 */	blr 
