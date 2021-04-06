lbl_805611E0:
/* 805611E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805611E4  7C 08 02 A6 */	mflr r0
/* 805611E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805611EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805611F0  4B E0 0F E5 */	bl _savegpr_27
/* 805611F4  7C 7D 1B 78 */	mr r29, r3
/* 805611F8  7C 9B 23 78 */	mr r27, r4
/* 805611FC  38 7D 0B A0 */	addi r3, r29, 0xba0
/* 80561200  4B BE 45 09 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80561204  3B E0 00 00 */	li r31, 0
/* 80561208  3B C0 FF FF */	li r30, -1
/* 8056120C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80561210  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80561214  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80561218  7F 83 E3 78 */	mr r3, r28
/* 8056121C  7F 64 DB 78 */	mr r4, r27
/* 80561220  3C A0 80 56 */	lis r5, d_a_npc_maro__stringBase0@ha /* 0x80564D58@ha */
/* 80561224  38 A5 4D 58 */	addi r5, r5, d_a_npc_maro__stringBase0@l /* 0x80564D58@l */
/* 80561228  38 A5 02 1B */	addi r5, r5, 0x21b
/* 8056122C  38 C0 00 03 */	li r6, 3
/* 80561230  4B AE 6E BD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80561234  28 03 00 00 */	cmplwi r3, 0
/* 80561238  41 82 00 08 */	beq lbl_80561240
/* 8056123C  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80561240:
/* 80561240  7F 83 E3 78 */	mr r3, r28
/* 80561244  7F 64 DB 78 */	mr r4, r27
/* 80561248  4B AE 6B 05 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8056124C  2C 03 00 00 */	cmpwi r3, 0
/* 80561250  41 82 00 AC */	beq lbl_805612FC
/* 80561254  2C 1E 00 00 */	cmpwi r30, 0
/* 80561258  41 82 00 08 */	beq lbl_80561260
/* 8056125C  48 00 00 A0 */	b lbl_805612FC
lbl_80561260:
/* 80561260  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80561264  2C 00 00 07 */	cmpwi r0, 7
/* 80561268  41 82 00 28 */	beq lbl_80561290
/* 8056126C  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80561270  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80561274  4B BE 46 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80561278  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8056127C  38 00 00 07 */	li r0, 7
/* 80561280  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80561284  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 80561288  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 8056128C  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80561290:
/* 80561290  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80561294  2C 00 00 00 */	cmpwi r0, 0
/* 80561298  41 82 00 28 */	beq lbl_805612C0
/* 8056129C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 805612A0  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 805612A4  4B BE 45 F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 805612A8  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 805612AC  38 00 00 00 */	li r0, 0
/* 805612B0  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 805612B4  3C 60 80 56 */	lis r3, lit_5128@ha /* 0x80564CCC@ha */
/* 805612B8  C0 03 4C CC */	lfs f0, lit_5128@l(r3)  /* 0x80564CCC@l */
/* 805612BC  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_805612C0:
/* 805612C0  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 805612C4  2C 00 00 04 */	cmpwi r0, 4
/* 805612C8  41 82 00 2C */	beq lbl_805612F4
/* 805612CC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 805612D0  4B BE 44 2D */	bl remove__18daNpcT_ActorMngr_cFv
/* 805612D4  38 00 00 00 */	li r0, 0
/* 805612D8  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 805612DC  3C 60 80 56 */	lis r3, lit_4318@ha /* 0x80564CA0@ha */
/* 805612E0  C0 03 4C A0 */	lfs f0, lit_4318@l(r3)  /* 0x80564CA0@l */
/* 805612E4  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 805612E8  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 805612EC  38 00 00 04 */	li r0, 4
/* 805612F0  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_805612F4:
/* 805612F4  38 00 00 00 */	li r0, 0
/* 805612F8  98 1D 0C FF */	stb r0, 0xcff(r29)
lbl_805612FC:
/* 805612FC  2C 1E 00 00 */	cmpwi r30, 0
/* 80561300  41 82 00 08 */	beq lbl_80561308
/* 80561304  48 00 00 08 */	b lbl_8056130C
lbl_80561308:
/* 80561308  3B E0 00 01 */	li r31, 1
lbl_8056130C:
/* 8056130C  7F E3 FB 78 */	mr r3, r31
/* 80561310  39 61 00 20 */	addi r11, r1, 0x20
/* 80561314  4B E0 0F 0D */	bl _restgpr_27
/* 80561318  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8056131C  7C 08 03 A6 */	mtlr r0
/* 80561320  38 21 00 20 */	addi r1, r1, 0x20
/* 80561324  4E 80 00 20 */	blr 
