lbl_80973760:
/* 80973760  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80973764  7C 08 02 A6 */	mflr r0
/* 80973768  90 01 00 24 */	stw r0, 0x24(r1)
/* 8097376C  39 61 00 20 */	addi r11, r1, 0x20
/* 80973770  4B 9E EA 60 */	b _savegpr_26
/* 80973774  7C 7E 1B 79 */	or. r30, r3, r3
/* 80973778  7C 9F 23 78 */	mr r31, r4
/* 8097377C  41 82 01 B0 */	beq lbl_8097392C
/* 80973780  3C 60 80 98 */	lis r3, __vt__11daNpcBouS_c@ha
/* 80973784  38 03 8A 98 */	addi r0, r3, __vt__11daNpcBouS_c@l
/* 80973788  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 8097378C  3B 40 00 00 */	li r26, 0
/* 80973790  3B A0 00 00 */	li r29, 0
/* 80973794  3B 80 00 00 */	li r28, 0
/* 80973798  3C 60 80 98 */	lis r3, l_arcNames@ha
/* 8097379C  3B 63 89 20 */	addi r27, r3, l_arcNames@l
lbl_809737A0:
/* 809737A0  38 7C 0D D4 */	addi r3, r28, 0xdd4
/* 809737A4  7C 7E 1A 14 */	add r3, r30, r3
/* 809737A8  7C 9B E8 2E */	lwzx r4, r27, r29
/* 809737AC  4B 6B 98 5C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809737B0  3B 5A 00 01 */	addi r26, r26, 1
/* 809737B4  2C 1A 00 02 */	cmpwi r26, 2
/* 809737B8  3B BD 00 04 */	addi r29, r29, 4
/* 809737BC  3B 9C 00 08 */	addi r28, r28, 8
/* 809737C0  41 80 FF E0 */	blt lbl_809737A0
/* 809737C4  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809737C8  28 00 00 00 */	cmplwi r0, 0
/* 809737CC  41 82 00 0C */	beq lbl_809737D8
/* 809737D0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809737D4  4B 69 DB 3C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809737D8:
/* 809737D8  34 1E 0C 84 */	addic. r0, r30, 0xc84
/* 809737DC  41 82 00 84 */	beq lbl_80973860
/* 809737E0  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809737E4  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809737E8  90 7E 0C C0 */	stw r3, 0xcc0(r30)
/* 809737EC  38 03 00 2C */	addi r0, r3, 0x2c
/* 809737F0  90 1E 0D A4 */	stw r0, 0xda4(r30)
/* 809737F4  38 03 00 84 */	addi r0, r3, 0x84
/* 809737F8  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 809737FC  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80973800  41 82 00 54 */	beq lbl_80973854
/* 80973804  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80973808  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8097380C  90 7E 0D A4 */	stw r3, 0xda4(r30)
/* 80973810  38 03 00 58 */	addi r0, r3, 0x58
/* 80973814  90 1E 0D BC */	stw r0, 0xdbc(r30)
/* 80973818  34 1E 0D A8 */	addic. r0, r30, 0xda8
/* 8097381C  41 82 00 10 */	beq lbl_8097382C
/* 80973820  3C 60 80 98 */	lis r3, __vt__8cM3dGCyl@ha
/* 80973824  38 03 8B 40 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80973828  90 1E 0D BC */	stw r0, 0xdbc(r30)
lbl_8097382C:
/* 8097382C  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80973830  41 82 00 24 */	beq lbl_80973854
/* 80973834  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80973838  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8097383C  90 1E 0D A4 */	stw r0, 0xda4(r30)
/* 80973840  34 1E 0D 88 */	addic. r0, r30, 0xd88
/* 80973844  41 82 00 10 */	beq lbl_80973854
/* 80973848  3C 60 80 98 */	lis r3, __vt__8cM3dGAab@ha
/* 8097384C  38 03 8B 4C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80973850  90 1E 0D A0 */	stw r0, 0xda0(r30)
lbl_80973854:
/* 80973854  38 7E 0C 84 */	addi r3, r30, 0xc84
/* 80973858  38 80 00 00 */	li r4, 0
/* 8097385C  4B 71 08 88 */	b __dt__12dCcD_GObjInfFv
lbl_80973860:
/* 80973860  38 7E 0C 78 */	addi r3, r30, 0xc78
/* 80973864  3C 80 80 97 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80973868  38 84 7B C0 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 8097386C  38 A0 00 08 */	li r5, 8
/* 80973870  38 C0 00 01 */	li r6, 1
/* 80973874  4B 9E E4 74 */	b __destroy_arr
/* 80973878  34 1E 0B DC */	addic. r0, r30, 0xbdc
/* 8097387C  41 82 00 88 */	beq lbl_80973904
/* 80973880  3C 60 80 98 */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 80973884  38 03 8B 58 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 80973888  90 1E 0C 74 */	stw r0, 0xc74(r30)
/* 8097388C  38 7E 0C 58 */	addi r3, r30, 0xc58
/* 80973890  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha
/* 80973894  38 84 7D 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 80973898  38 A0 00 06 */	li r5, 6
/* 8097389C  38 C0 00 04 */	li r6, 4
/* 809738A0  4B 9E E4 48 */	b __destroy_arr
/* 809738A4  38 7E 0C 40 */	addi r3, r30, 0xc40
/* 809738A8  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha
/* 809738AC  38 84 7D 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 809738B0  38 A0 00 06 */	li r5, 6
/* 809738B4  38 C0 00 04 */	li r6, 4
/* 809738B8  4B 9E E4 30 */	b __destroy_arr
/* 809738BC  38 7E 0C 28 */	addi r3, r30, 0xc28
/* 809738C0  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha
/* 809738C4  38 84 7D 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 809738C8  38 A0 00 06 */	li r5, 6
/* 809738CC  38 C0 00 04 */	li r6, 4
/* 809738D0  4B 9E E4 18 */	b __destroy_arr
/* 809738D4  38 7E 0C 10 */	addi r3, r30, 0xc10
/* 809738D8  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha
/* 809738DC  38 84 7D 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 809738E0  38 A0 00 06 */	li r5, 6
/* 809738E4  38 C0 00 04 */	li r6, 4
/* 809738E8  4B 9E E4 00 */	b __destroy_arr
/* 809738EC  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 809738F0  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha
/* 809738F4  38 84 7D 54 */	addi r4, r4, __dt__4cXyzFv@l
/* 809738F8  38 A0 00 0C */	li r5, 0xc
/* 809738FC  38 C0 00 04 */	li r6, 4
/* 80973900  4B 9E E3 E8 */	b __destroy_arr
lbl_80973904:
/* 80973904  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80973908  38 80 FF FF */	li r4, -1
/* 8097390C  4B 94 CB 14 */	b __dt__10Z2CreatureFv
/* 80973910  7F C3 F3 78 */	mr r3, r30
/* 80973914  38 80 00 00 */	li r4, 0
/* 80973918  48 00 44 7D */	bl __dt__8daNpcF_cFv
/* 8097391C  7F E0 07 35 */	extsh. r0, r31
/* 80973920  40 81 00 0C */	ble lbl_8097392C
/* 80973924  7F C3 F3 78 */	mr r3, r30
/* 80973928  4B 95 B4 14 */	b __dl__FPv
lbl_8097392C:
/* 8097392C  7F C3 F3 78 */	mr r3, r30
/* 80973930  39 61 00 20 */	addi r11, r1, 0x20
/* 80973934  4B 9E E8 E8 */	b _restgpr_26
/* 80973938  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8097393C  7C 08 03 A6 */	mtlr r0
/* 80973940  38 21 00 20 */	addi r1, r1, 0x20
/* 80973944  4E 80 00 20 */	blr 
