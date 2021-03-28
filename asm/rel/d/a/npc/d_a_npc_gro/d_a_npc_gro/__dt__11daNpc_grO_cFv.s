lbl_809DA780:
/* 809DA780  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809DA784  7C 08 02 A6 */	mflr r0
/* 809DA788  90 01 00 24 */	stw r0, 0x24(r1)
/* 809DA78C  39 61 00 20 */	addi r11, r1, 0x20
/* 809DA790  4B 98 7A 40 */	b _savegpr_26
/* 809DA794  7C 7E 1B 79 */	or. r30, r3, r3
/* 809DA798  7C 9F 23 78 */	mr r31, r4
/* 809DA79C  41 82 01 C8 */	beq lbl_809DA964
/* 809DA7A0  3C 60 80 9E */	lis r3, __vt__11daNpc_grO_c@ha
/* 809DA7A4  38 03 F6 20 */	addi r0, r3, __vt__11daNpc_grO_c@l
/* 809DA7A8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809DA7AC  3B A0 00 00 */	li r29, 0
/* 809DA7B0  3B 80 00 00 */	li r28, 0
/* 809DA7B4  3C 60 80 9E */	lis r3, l_resNames@ha
/* 809DA7B8  3B 43 F4 A4 */	addi r26, r3, l_resNames@l
/* 809DA7BC  3C 60 80 9E */	lis r3, l_loadRes_list@ha
/* 809DA7C0  3B 63 F4 84 */	addi r27, r3, l_loadRes_list@l
/* 809DA7C4  48 00 00 20 */	b lbl_809DA7E4
lbl_809DA7C8:
/* 809DA7C8  38 7C 0D EC */	addi r3, r28, 0xdec
/* 809DA7CC  7C 7E 1A 14 */	add r3, r30, r3
/* 809DA7D0  54 00 10 3A */	slwi r0, r0, 2
/* 809DA7D4  7C 9A 00 2E */	lwzx r4, r26, r0
/* 809DA7D8  4B 65 28 30 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 809DA7DC  3B BD 00 04 */	addi r29, r29, 4
/* 809DA7E0  3B 9C 00 08 */	addi r28, r28, 8
lbl_809DA7E4:
/* 809DA7E4  88 1E 0E 24 */	lbz r0, 0xe24(r30)
/* 809DA7E8  54 00 10 3A */	slwi r0, r0, 2
/* 809DA7EC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 809DA7F0  7C 03 E8 2E */	lwzx r0, r3, r29
/* 809DA7F4  2C 00 00 00 */	cmpwi r0, 0
/* 809DA7F8  40 80 FF D0 */	bge lbl_809DA7C8
/* 809DA7FC  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 809DA800  28 00 00 00 */	cmplwi r0, 0
/* 809DA804  41 82 00 0C */	beq lbl_809DA810
/* 809DA808  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 809DA80C  4B 63 6B 04 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_809DA810:
/* 809DA810  34 1E 0C 98 */	addic. r0, r30, 0xc98
/* 809DA814  41 82 00 84 */	beq lbl_809DA898
/* 809DA818  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 809DA81C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 809DA820  90 7E 0C D4 */	stw r3, 0xcd4(r30)
/* 809DA824  38 03 00 2C */	addi r0, r3, 0x2c
/* 809DA828  90 1E 0D B8 */	stw r0, 0xdb8(r30)
/* 809DA82C  38 03 00 84 */	addi r0, r3, 0x84
/* 809DA830  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 809DA834  34 1E 0D 9C */	addic. r0, r30, 0xd9c
/* 809DA838  41 82 00 54 */	beq lbl_809DA88C
/* 809DA83C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 809DA840  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 809DA844  90 7E 0D B8 */	stw r3, 0xdb8(r30)
/* 809DA848  38 03 00 58 */	addi r0, r3, 0x58
/* 809DA84C  90 1E 0D D0 */	stw r0, 0xdd0(r30)
/* 809DA850  34 1E 0D BC */	addic. r0, r30, 0xdbc
/* 809DA854  41 82 00 10 */	beq lbl_809DA864
/* 809DA858  3C 60 80 9E */	lis r3, __vt__8cM3dGCyl@ha
/* 809DA85C  38 03 F6 C8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 809DA860  90 1E 0D D0 */	stw r0, 0xdd0(r30)
lbl_809DA864:
/* 809DA864  34 1E 0D 9C */	addic. r0, r30, 0xd9c
/* 809DA868  41 82 00 24 */	beq lbl_809DA88C
/* 809DA86C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 809DA870  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 809DA874  90 1E 0D B8 */	stw r0, 0xdb8(r30)
/* 809DA878  34 1E 0D 9C */	addic. r0, r30, 0xd9c
/* 809DA87C  41 82 00 10 */	beq lbl_809DA88C
/* 809DA880  3C 60 80 9E */	lis r3, __vt__8cM3dGAab@ha
/* 809DA884  38 03 F6 D4 */	addi r0, r3, __vt__8cM3dGAab@l
/* 809DA888  90 1E 0D B4 */	stw r0, 0xdb4(r30)
lbl_809DA88C:
/* 809DA88C  38 7E 0C 98 */	addi r3, r30, 0xc98
/* 809DA890  38 80 00 00 */	li r4, 0
/* 809DA894  4B 6A 98 50 */	b __dt__12dCcD_GObjInfFv
lbl_809DA898:
/* 809DA898  38 7E 0C 7C */	addi r3, r30, 0xc7c
/* 809DA89C  3C 80 80 9E */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 809DA8A0  38 84 E6 88 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 809DA8A4  38 A0 00 08 */	li r5, 8
/* 809DA8A8  38 C0 00 03 */	li r6, 3
/* 809DA8AC  4B 98 74 3C */	b __destroy_arr
/* 809DA8B0  34 1E 0B E0 */	addic. r0, r30, 0xbe0
/* 809DA8B4  41 82 00 88 */	beq lbl_809DA93C
/* 809DA8B8  3C 60 80 9E */	lis r3, __vt__15daNpcF_Lookat_c@ha
/* 809DA8BC  38 03 F6 E0 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l
/* 809DA8C0  90 1E 0C 78 */	stw r0, 0xc78(r30)
/* 809DA8C4  38 7E 0C 5C */	addi r3, r30, 0xc5c
/* 809DA8C8  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809DA8CC  38 84 E7 DC */	addi r4, r4, __dt__5csXyzFv@l
/* 809DA8D0  38 A0 00 06 */	li r5, 6
/* 809DA8D4  38 C0 00 04 */	li r6, 4
/* 809DA8D8  4B 98 74 10 */	b __destroy_arr
/* 809DA8DC  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 809DA8E0  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809DA8E4  38 84 E7 DC */	addi r4, r4, __dt__5csXyzFv@l
/* 809DA8E8  38 A0 00 06 */	li r5, 6
/* 809DA8EC  38 C0 00 04 */	li r6, 4
/* 809DA8F0  4B 98 73 F8 */	b __destroy_arr
/* 809DA8F4  38 7E 0C 2C */	addi r3, r30, 0xc2c
/* 809DA8F8  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809DA8FC  38 84 E7 DC */	addi r4, r4, __dt__5csXyzFv@l
/* 809DA900  38 A0 00 06 */	li r5, 6
/* 809DA904  38 C0 00 04 */	li r6, 4
/* 809DA908  4B 98 73 E0 */	b __destroy_arr
/* 809DA90C  38 7E 0C 14 */	addi r3, r30, 0xc14
/* 809DA910  3C 80 80 9E */	lis r4, __dt__5csXyzFv@ha
/* 809DA914  38 84 E7 DC */	addi r4, r4, __dt__5csXyzFv@l
/* 809DA918  38 A0 00 06 */	li r5, 6
/* 809DA91C  38 C0 00 04 */	li r6, 4
/* 809DA920  4B 98 73 C8 */	b __destroy_arr
/* 809DA924  38 7E 0B E0 */	addi r3, r30, 0xbe0
/* 809DA928  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809DA92C  38 84 E8 1C */	addi r4, r4, __dt__4cXyzFv@l
/* 809DA930  38 A0 00 0C */	li r5, 0xc
/* 809DA934  38 C0 00 04 */	li r6, 4
/* 809DA938  4B 98 73 B0 */	b __destroy_arr
lbl_809DA93C:
/* 809DA93C  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 809DA940  38 80 FF FF */	li r4, -1
/* 809DA944  4B 8E 5A DC */	b __dt__10Z2CreatureFv
/* 809DA948  7F C3 F3 78 */	mr r3, r30
/* 809DA94C  38 80 00 00 */	li r4, 0
/* 809DA950  48 00 3F 0D */	bl __dt__8daNpcF_cFv
/* 809DA954  7F E0 07 35 */	extsh. r0, r31
/* 809DA958  40 81 00 0C */	ble lbl_809DA964
/* 809DA95C  7F C3 F3 78 */	mr r3, r30
/* 809DA960  4B 8F 43 DC */	b __dl__FPv
lbl_809DA964:
/* 809DA964  7F C3 F3 78 */	mr r3, r30
/* 809DA968  39 61 00 20 */	addi r11, r1, 0x20
/* 809DA96C  4B 98 78 B0 */	b _restgpr_26
/* 809DA970  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809DA974  7C 08 03 A6 */	mtlr r0
/* 809DA978  38 21 00 20 */	addi r1, r1, 0x20
/* 809DA97C  4E 80 00 20 */	blr 
