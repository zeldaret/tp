lbl_8053B530:
/* 8053B530  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8053B534  7C 08 02 A6 */	mflr r0
/* 8053B538  90 01 00 34 */	stw r0, 0x34(r1)
/* 8053B53C  39 61 00 30 */	addi r11, r1, 0x30
/* 8053B540  4B E2 6C 88 */	b _savegpr_24
/* 8053B544  7C 79 1B 78 */	mr r25, r3
/* 8053B548  7C 9A 23 78 */	mr r26, r4
/* 8053B54C  3B E0 00 00 */	li r31, 0
/* 8053B550  3B C0 FF FF */	li r30, -1
/* 8053B554  3B A0 00 00 */	li r29, 0
/* 8053B558  3B 80 00 00 */	li r28, 0
/* 8053B55C  3B 60 00 00 */	li r27, 0
/* 8053B560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053B564  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053B568  3B 03 4F F8 */	addi r24, r3, 0x4ff8
/* 8053B56C  7F 03 C3 78 */	mr r3, r24
/* 8053B570  3C A0 80 54 */	lis r5, struct_8053E908+0x0@ha
/* 8053B574  38 A5 E9 08 */	addi r5, r5, struct_8053E908+0x0@l
/* 8053B578  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 8053B57C  38 C0 00 03 */	li r6, 3
/* 8053B580  4B B0 CB 6C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053B584  28 03 00 00 */	cmplwi r3, 0
/* 8053B588  41 82 00 08 */	beq lbl_8053B590
/* 8053B58C  83 C3 00 00 */	lwz r30, 0(r3)
lbl_8053B590:
/* 8053B590  7F 03 C3 78 */	mr r3, r24
/* 8053B594  7F 44 D3 78 */	mr r4, r26
/* 8053B598  3C A0 80 54 */	lis r5, struct_8053E908+0x0@ha
/* 8053B59C  38 A5 E9 08 */	addi r5, r5, struct_8053E908+0x0@l
/* 8053B5A0  38 A5 02 04 */	addi r5, r5, 0x204
/* 8053B5A4  38 C0 00 03 */	li r6, 3
/* 8053B5A8  4B B0 CB 44 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053B5AC  28 03 00 00 */	cmplwi r3, 0
/* 8053B5B0  41 82 00 08 */	beq lbl_8053B5B8
/* 8053B5B4  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8053B5B8:
/* 8053B5B8  7F 03 C3 78 */	mr r3, r24
/* 8053B5BC  7F 44 D3 78 */	mr r4, r26
/* 8053B5C0  3C A0 80 54 */	lis r5, struct_8053E908+0x0@ha
/* 8053B5C4  38 A5 E9 08 */	addi r5, r5, struct_8053E908+0x0@l
/* 8053B5C8  38 A5 02 0A */	addi r5, r5, 0x20a
/* 8053B5CC  38 C0 00 03 */	li r6, 3
/* 8053B5D0  4B B0 CB 1C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053B5D4  28 03 00 00 */	cmplwi r3, 0
/* 8053B5D8  41 82 00 08 */	beq lbl_8053B5E0
/* 8053B5DC  83 83 00 00 */	lwz r28, 0(r3)
lbl_8053B5E0:
/* 8053B5E0  7F 03 C3 78 */	mr r3, r24
/* 8053B5E4  7F 44 D3 78 */	mr r4, r26
/* 8053B5E8  3C A0 80 54 */	lis r5, struct_8053E908+0x0@ha
/* 8053B5EC  38 A5 E9 08 */	addi r5, r5, struct_8053E908+0x0@l
/* 8053B5F0  38 A5 02 11 */	addi r5, r5, 0x211
/* 8053B5F4  38 C0 00 03 */	li r6, 3
/* 8053B5F8  4B B0 CA F4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053B5FC  28 03 00 00 */	cmplwi r3, 0
/* 8053B600  41 82 00 08 */	beq lbl_8053B608
/* 8053B604  83 63 00 00 */	lwz r27, 0(r3)
lbl_8053B608:
/* 8053B608  7F 03 C3 78 */	mr r3, r24
/* 8053B60C  7F 44 D3 78 */	mr r4, r26
/* 8053B610  4B B0 C7 3C */	b getIsAddvance__16dEvent_manager_cFi
/* 8053B614  2C 03 00 00 */	cmpwi r3, 0
/* 8053B618  41 82 00 DC */	beq lbl_8053B6F4
/* 8053B61C  2C 1E 00 02 */	cmpwi r30, 2
/* 8053B620  41 82 00 84 */	beq lbl_8053B6A4
/* 8053B624  40 80 00 14 */	bge lbl_8053B638
/* 8053B628  2C 1E 00 00 */	cmpwi r30, 0
/* 8053B62C  41 82 00 18 */	beq lbl_8053B644
/* 8053B630  40 80 00 28 */	bge lbl_8053B658
/* 8053B634  48 00 00 C0 */	b lbl_8053B6F4
lbl_8053B638:
/* 8053B638  2C 1E 00 04 */	cmpwi r30, 4
/* 8053B63C  40 80 00 B8 */	bge lbl_8053B6F4
/* 8053B640  48 00 00 6C */	b lbl_8053B6AC
lbl_8053B644:
/* 8053B644  38 00 00 01 */	li r0, 1
/* 8053B648  90 19 11 20 */	stw r0, 0x1120(r25)
/* 8053B64C  38 00 00 00 */	li r0, 0
/* 8053B650  90 19 11 24 */	stw r0, 0x1124(r25)
/* 8053B654  48 00 00 A0 */	b lbl_8053B6F4
lbl_8053B658:
/* 8053B658  83 59 0B 5C */	lwz r26, 0xb5c(r25)
/* 8053B65C  38 79 0B 50 */	addi r3, r25, 0xb50
/* 8053B660  4B C0 A2 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B664  93 59 0B 5C */	stw r26, 0xb5c(r25)
/* 8053B668  38 00 00 15 */	li r0, 0x15
/* 8053B66C  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 8053B670  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053B674  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053B678  D0 19 0B 68 */	stfs f0, 0xb68(r25)
/* 8053B67C  83 59 0B 80 */	lwz r26, 0xb80(r25)
/* 8053B680  38 79 0B 74 */	addi r3, r25, 0xb74
/* 8053B684  4B C0 A2 14 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B688  93 59 0B 80 */	stw r26, 0xb80(r25)
/* 8053B68C  38 00 00 17 */	li r0, 0x17
/* 8053B690  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 8053B694  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053B698  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053B69C  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 8053B6A0  48 00 00 54 */	b lbl_8053B6F4
lbl_8053B6A4:
/* 8053B6A4  93 B9 0D C4 */	stw r29, 0xdc4(r25)
/* 8053B6A8  48 00 00 4C */	b lbl_8053B6F4
lbl_8053B6AC:
/* 8053B6AC  83 59 0B 5C */	lwz r26, 0xb5c(r25)
/* 8053B6B0  38 79 0B 50 */	addi r3, r25, 0xb50
/* 8053B6B4  4B C0 A1 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B6B8  93 59 0B 5C */	stw r26, 0xb5c(r25)
/* 8053B6BC  38 00 00 07 */	li r0, 7
/* 8053B6C0  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 8053B6C4  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053B6C8  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053B6CC  D0 19 0B 68 */	stfs f0, 0xb68(r25)
/* 8053B6D0  83 59 0B 80 */	lwz r26, 0xb80(r25)
/* 8053B6D4  38 79 0B 74 */	addi r3, r25, 0xb74
/* 8053B6D8  4B C0 A1 C0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B6DC  93 59 0B 80 */	stw r26, 0xb80(r25)
/* 8053B6E0  38 00 00 0D */	li r0, 0xd
/* 8053B6E4  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 8053B6E8  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053B6EC  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053B6F0  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_8053B6F4:
/* 8053B6F4  2C 1E 00 02 */	cmpwi r30, 2
/* 8053B6F8  41 82 00 44 */	beq lbl_8053B73C
/* 8053B6FC  40 80 00 14 */	bge lbl_8053B710
/* 8053B700  2C 1E 00 00 */	cmpwi r30, 0
/* 8053B704  41 82 00 18 */	beq lbl_8053B71C
/* 8053B708  40 80 00 2C */	bge lbl_8053B734
/* 8053B70C  48 00 00 F8 */	b lbl_8053B804
lbl_8053B710:
/* 8053B710  2C 1E 00 04 */	cmpwi r30, 4
/* 8053B714  40 80 00 F0 */	bge lbl_8053B804
/* 8053B718  48 00 00 E8 */	b lbl_8053B800
lbl_8053B71C:
/* 8053B71C  7F 23 CB 78 */	mr r3, r25
/* 8053B720  7F 84 E3 78 */	mr r4, r28
/* 8053B724  7F 65 DB 78 */	mr r5, r27
/* 8053B728  4B FF E4 79 */	bl mop__12daNpc_Besu_cFii
/* 8053B72C  3B E0 00 01 */	li r31, 1
/* 8053B730  48 00 00 D4 */	b lbl_8053B804
lbl_8053B734:
/* 8053B734  3B E0 00 01 */	li r31, 1
/* 8053B738  48 00 00 CC */	b lbl_8053B804
lbl_8053B73C:
/* 8053B73C  80 19 0D C4 */	lwz r0, 0xdc4(r25)
/* 8053B740  2C 00 00 00 */	cmpwi r0, 0
/* 8053B744  41 82 00 B4 */	beq lbl_8053B7F8
/* 8053B748  38 79 0D C4 */	addi r3, r25, 0xdc4
/* 8053B74C  48 00 2B E9 */	bl func_8053E334
/* 8053B750  2C 03 00 00 */	cmpwi r3, 0
/* 8053B754  40 82 00 90 */	bne lbl_8053B7E4
/* 8053B758  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 8053B75C  2C 00 00 14 */	cmpwi r0, 0x14
/* 8053B760  41 82 00 28 */	beq lbl_8053B788
/* 8053B764  83 59 0B 5C */	lwz r26, 0xb5c(r25)
/* 8053B768  38 79 0B 50 */	addi r3, r25, 0xb50
/* 8053B76C  4B C0 A1 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B770  93 59 0B 5C */	stw r26, 0xb5c(r25)
/* 8053B774  38 00 00 14 */	li r0, 0x14
/* 8053B778  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 8053B77C  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053B780  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053B784  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_8053B788:
/* 8053B788  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 8053B78C  2C 00 00 16 */	cmpwi r0, 0x16
/* 8053B790  41 82 00 28 */	beq lbl_8053B7B8
/* 8053B794  83 59 0B 80 */	lwz r26, 0xb80(r25)
/* 8053B798  38 79 0B 74 */	addi r3, r25, 0xb74
/* 8053B79C  4B C0 A0 FC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053B7A0  93 59 0B 80 */	stw r26, 0xb80(r25)
/* 8053B7A4  38 00 00 16 */	li r0, 0x16
/* 8053B7A8  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 8053B7AC  3C 60 80 54 */	lis r3, lit_4337@ha
/* 8053B7B0  C0 03 E8 44 */	lfs f0, lit_4337@l(r3)
/* 8053B7B4  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_8053B7B8:
/* 8053B7B8  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500FB@ha */
/* 8053B7BC  38 03 00 FB */	addi r0, r3, 0x00FB /* 0x000500FB@l */
/* 8053B7C0  90 01 00 08 */	stw r0, 8(r1)
/* 8053B7C4  38 79 05 80 */	addi r3, r25, 0x580
/* 8053B7C8  38 81 00 08 */	addi r4, r1, 8
/* 8053B7CC  38 A0 FF FF */	li r5, -1
/* 8053B7D0  81 99 05 80 */	lwz r12, 0x580(r25)
/* 8053B7D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8053B7D8  7D 89 03 A6 */	mtctr r12
/* 8053B7DC  4E 80 04 21 */	bctrl 
/* 8053B7E0  48 00 00 24 */	b lbl_8053B804
lbl_8053B7E4:
/* 8053B7E4  7F 23 CB 78 */	mr r3, r25
/* 8053B7E8  7F 84 E3 78 */	mr r4, r28
/* 8053B7EC  7F 65 DB 78 */	mr r5, r27
/* 8053B7F0  4B FF E3 B1 */	bl mop__12daNpc_Besu_cFii
/* 8053B7F4  48 00 00 10 */	b lbl_8053B804
lbl_8053B7F8:
/* 8053B7F8  3B E0 00 01 */	li r31, 1
/* 8053B7FC  48 00 00 08 */	b lbl_8053B804
lbl_8053B800:
/* 8053B800  3B E0 00 01 */	li r31, 1
lbl_8053B804:
/* 8053B804  7F E3 FB 78 */	mr r3, r31
/* 8053B808  39 61 00 30 */	addi r11, r1, 0x30
/* 8053B80C  4B E2 6A 08 */	b _restgpr_24
/* 8053B810  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8053B814  7C 08 03 A6 */	mtlr r0
/* 8053B818  38 21 00 30 */	addi r1, r1, 0x30
/* 8053B81C  4E 80 00 20 */	blr 
