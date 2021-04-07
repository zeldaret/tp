lbl_809D577C:
/* 809D577C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809D5780  7C 08 02 A6 */	mflr r0
/* 809D5784  90 01 00 24 */	stw r0, 0x24(r1)
/* 809D5788  39 61 00 20 */	addi r11, r1, 0x20
/* 809D578C  4B 98 CA 49 */	bl _savegpr_27
/* 809D5790  7C 7E 1B 78 */	mr r30, r3
/* 809D5794  7C 9B 23 78 */	mr r27, r4
/* 809D5798  3B E0 00 00 */	li r31, 0
/* 809D579C  3B 80 FF FF */	li r28, -1
/* 809D57A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809D57A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809D57A8  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 809D57AC  7F A3 EB 78 */	mr r3, r29
/* 809D57B0  3C A0 80 9D */	lis r5, d_a_npc_grm__stringBase0@ha /* 0x809D6E60@ha */
/* 809D57B4  38 A5 6E 60 */	addi r5, r5, d_a_npc_grm__stringBase0@l /* 0x809D6E60@l */
/* 809D57B8  38 A5 00 2F */	addi r5, r5, 0x2f
/* 809D57BC  38 C0 00 03 */	li r6, 3
/* 809D57C0  4B 67 29 2D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809D57C4  28 03 00 00 */	cmplwi r3, 0
/* 809D57C8  41 82 00 08 */	beq lbl_809D57D0
/* 809D57CC  83 83 00 00 */	lwz r28, 0(r3)
lbl_809D57D0:
/* 809D57D0  7F A3 EB 78 */	mr r3, r29
/* 809D57D4  7F 64 DB 78 */	mr r4, r27
/* 809D57D8  4B 67 25 75 */	bl getIsAddvance__16dEvent_manager_cFi
/* 809D57DC  2C 03 00 00 */	cmpwi r3, 0
/* 809D57E0  41 82 00 84 */	beq lbl_809D5864
/* 809D57E4  2C 1C 00 01 */	cmpwi r28, 1
/* 809D57E8  41 82 00 0C */	beq lbl_809D57F4
/* 809D57EC  40 80 00 78 */	bge lbl_809D5864
/* 809D57F0  48 00 00 74 */	b lbl_809D5864
lbl_809D57F4:
/* 809D57F4  38 60 00 06 */	li r3, 6
/* 809D57F8  4B 77 72 B5 */	bl daNpcT_chkEvtBit__FUl
/* 809D57FC  2C 03 00 00 */	cmpwi r3, 0
/* 809D5800  41 82 00 5C */	beq lbl_809D585C
/* 809D5804  38 60 00 3E */	li r3, 0x3e
/* 809D5808  4B 77 72 A5 */	bl daNpcT_chkEvtBit__FUl
/* 809D580C  2C 03 00 00 */	cmpwi r3, 0
/* 809D5810  40 82 00 4C */	bne lbl_809D585C
/* 809D5814  38 00 00 3C */	li r0, 0x3c
/* 809D5818  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 809D581C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809D5820  2C 00 00 01 */	cmpwi r0, 1
/* 809D5824  41 82 00 2C */	beq lbl_809D5850
/* 809D5828  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D582C  4B 76 FE D1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809D5830  38 00 00 00 */	li r0, 0
/* 809D5834  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809D5838  3C 60 80 9D */	lis r3, lit_4009@ha /* 0x809D6E18@ha */
/* 809D583C  C0 03 6E 18 */	lfs f0, lit_4009@l(r3)  /* 0x809D6E18@l */
/* 809D5840  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809D5844  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809D5848  38 00 00 01 */	li r0, 1
/* 809D584C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809D5850:
/* 809D5850  38 00 00 00 */	li r0, 0
/* 809D5854  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809D5858  48 00 00 0C */	b lbl_809D5864
lbl_809D585C:
/* 809D585C  38 00 00 00 */	li r0, 0
/* 809D5860  90 1E 0D C4 */	stw r0, 0xdc4(r30)
lbl_809D5864:
/* 809D5864  2C 1C 00 01 */	cmpwi r28, 1
/* 809D5868  41 82 00 1C */	beq lbl_809D5884
/* 809D586C  40 80 00 68 */	bge lbl_809D58D4
/* 809D5870  2C 1C 00 00 */	cmpwi r28, 0
/* 809D5874  40 80 00 08 */	bge lbl_809D587C
/* 809D5878  48 00 00 5C */	b lbl_809D58D4
lbl_809D587C:
/* 809D587C  3B E0 00 01 */	li r31, 1
/* 809D5880  48 00 00 58 */	b lbl_809D58D8
lbl_809D5884:
/* 809D5884  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 809D5888  48 00 14 31 */	bl func_809D6CB8
/* 809D588C  2C 03 00 00 */	cmpwi r3, 0
/* 809D5890  40 82 00 48 */	bne lbl_809D58D8
/* 809D5894  3B E0 00 01 */	li r31, 1
/* 809D5898  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 809D589C  2C 00 00 00 */	cmpwi r0, 0
/* 809D58A0  41 82 00 28 */	beq lbl_809D58C8
/* 809D58A4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 809D58A8  4B 76 FE 55 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809D58AC  38 00 00 00 */	li r0, 0
/* 809D58B0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 809D58B4  3C 60 80 9D */	lis r3, lit_4009@ha /* 0x809D6E18@ha */
/* 809D58B8  C0 03 6E 18 */	lfs f0, lit_4009@l(r3)  /* 0x809D6E18@l */
/* 809D58BC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 809D58C0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809D58C4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_809D58C8:
/* 809D58C8  38 00 00 00 */	li r0, 0
/* 809D58CC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 809D58D0  48 00 00 08 */	b lbl_809D58D8
lbl_809D58D4:
/* 809D58D4  3B E0 00 01 */	li r31, 1
lbl_809D58D8:
/* 809D58D8  7F E3 FB 78 */	mr r3, r31
/* 809D58DC  39 61 00 20 */	addi r11, r1, 0x20
/* 809D58E0  4B 98 C9 41 */	bl _restgpr_27
/* 809D58E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809D58E8  7C 08 03 A6 */	mtlr r0
/* 809D58EC  38 21 00 20 */	addi r1, r1, 0x20
/* 809D58F0  4E 80 00 20 */	blr 
