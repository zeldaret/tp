lbl_80B57638:
/* 80B57638  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B5763C  7C 08 02 A6 */	mflr r0
/* 80B57640  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B57644  39 61 00 50 */	addi r11, r1, 0x50
/* 80B57648  4B 80 AB 7D */	bl _savegpr_23
/* 80B5764C  7C 78 1B 78 */	mr r24, r3
/* 80B57650  7C 99 23 78 */	mr r25, r4
/* 80B57654  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha /* 0x80B5D794@ha */
/* 80B57658  3B E3 D7 94 */	addi r31, r3, m__17daNpc_ykM_Param_c@l /* 0x80B5D794@l */
/* 80B5765C  3B A0 00 00 */	li r29, 0
/* 80B57660  3B 80 FF FF */	li r28, -1
/* 80B57664  3B 60 00 00 */	li r27, 0
/* 80B57668  3B 40 00 00 */	li r26, 0
/* 80B5766C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B57670  D0 18 15 08 */	stfs f0, 0x1508(r24)
/* 80B57674  C0 1F 02 14 */	lfs f0, 0x214(r31)
/* 80B57678  D0 18 15 0C */	stfs f0, 0x150c(r24)
/* 80B5767C  C0 1F 02 18 */	lfs f0, 0x218(r31)
/* 80B57680  D0 18 15 10 */	stfs f0, 0x1510(r24)
/* 80B57684  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B57688  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B5768C  A8 98 04 B6 */	lha r4, 0x4b6(r24)
/* 80B57690  4B 4B 4D 4D */	bl mDoMtx_YrotS__FPA4_fs
/* 80B57694  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B57698  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B5769C  38 98 15 08 */	addi r4, r24, 0x1508
/* 80B576A0  7C 85 23 78 */	mr r5, r4
/* 80B576A4  4B 7E F6 C9 */	bl PSMTXMultVec
/* 80B576A8  38 78 15 08 */	addi r3, r24, 0x1508
/* 80B576AC  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 80B576B0  7C 65 1B 78 */	mr r5, r3
/* 80B576B4  4B 7E F9 DD */	bl PSVECAdd
/* 80B576B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B576BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B576C0  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80B576C4  7F C3 F3 78 */	mr r3, r30
/* 80B576C8  7F 24 CB 78 */	mr r4, r25
/* 80B576CC  3C A0 80 B6 */	lis r5, d_a_npc_ykm__stringBase0@ha /* 0x80B5DA40@ha */
/* 80B576D0  38 A5 DA 40 */	addi r5, r5, d_a_npc_ykm__stringBase0@l /* 0x80B5DA40@l */
/* 80B576D4  38 A5 00 97 */	addi r5, r5, 0x97
/* 80B576D8  38 C0 00 03 */	li r6, 3
/* 80B576DC  4B 4F 0A 11 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B576E0  28 03 00 00 */	cmplwi r3, 0
/* 80B576E4  41 82 00 08 */	beq lbl_80B576EC
/* 80B576E8  83 83 00 00 */	lwz r28, 0(r3)
lbl_80B576EC:
/* 80B576EC  7F C3 F3 78 */	mr r3, r30
/* 80B576F0  7F 24 CB 78 */	mr r4, r25
/* 80B576F4  3C A0 80 B6 */	lis r5, d_a_npc_ykm__stringBase0@ha /* 0x80B5DA40@ha */
/* 80B576F8  38 A5 DA 40 */	addi r5, r5, d_a_npc_ykm__stringBase0@l /* 0x80B5DA40@l */
/* 80B576FC  38 A5 00 9B */	addi r5, r5, 0x9b
/* 80B57700  38 C0 00 03 */	li r6, 3
/* 80B57704  4B 4F 09 E9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B57708  28 03 00 00 */	cmplwi r3, 0
/* 80B5770C  41 82 00 08 */	beq lbl_80B57714
/* 80B57710  83 63 00 00 */	lwz r27, 0(r3)
lbl_80B57714:
/* 80B57714  7F C3 F3 78 */	mr r3, r30
/* 80B57718  7F 24 CB 78 */	mr r4, r25
/* 80B5771C  3C A0 80 B6 */	lis r5, d_a_npc_ykm__stringBase0@ha /* 0x80B5DA40@ha */
/* 80B57720  38 A5 DA 40 */	addi r5, r5, d_a_npc_ykm__stringBase0@l /* 0x80B5DA40@l */
/* 80B57724  38 A5 00 A1 */	addi r5, r5, 0xa1
/* 80B57728  38 C0 00 03 */	li r6, 3
/* 80B5772C  4B 4F 09 C1 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B57730  28 03 00 00 */	cmplwi r3, 0
/* 80B57734  41 82 00 08 */	beq lbl_80B5773C
/* 80B57738  83 43 00 00 */	lwz r26, 0(r3)
lbl_80B5773C:
/* 80B5773C  7F C3 F3 78 */	mr r3, r30
/* 80B57740  7F 24 CB 78 */	mr r4, r25
/* 80B57744  4B 4F 06 09 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B57748  2C 03 00 00 */	cmpwi r3, 0
/* 80B5774C  41 82 02 08 */	beq lbl_80B57954
/* 80B57750  28 1C 00 08 */	cmplwi r28, 8
/* 80B57754  41 81 02 00 */	bgt lbl_80B57954
/* 80B57758  3C 60 80 B6 */	lis r3, lit_6554@ha /* 0x80B5EAE0@ha */
/* 80B5775C  38 63 EA E0 */	addi r3, r3, lit_6554@l /* 0x80B5EAE0@l */
/* 80B57760  57 80 10 3A */	slwi r0, r28, 2
/* 80B57764  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B57768  7C 09 03 A6 */	mtctr r0
/* 80B5776C  4E 80 04 20 */	bctr 
lbl_80B57770:
/* 80B57770  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B57774  2C 00 00 00 */	cmpwi r0, 0
/* 80B57778  41 82 00 24 */	beq lbl_80B5779C
/* 80B5777C  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B57780  4B 5E DF 7D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B57784  38 00 00 00 */	li r0, 0
/* 80B57788  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B5778C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B57790  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B57794  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B57798  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80B5779C:
/* 80B5779C  38 00 00 00 */	li r0, 0
/* 80B577A0  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B577A4  38 60 00 0B */	li r3, 0xb
/* 80B577A8  4B 5F 53 85 */	bl daNpcT_offTmpBit__FUl
/* 80B577AC  38 60 00 0C */	li r3, 0xc
/* 80B577B0  4B 5F 53 7D */	bl daNpcT_offTmpBit__FUl
/* 80B577B4  38 60 00 0D */	li r3, 0xd
/* 80B577B8  4B 5F 53 75 */	bl daNpcT_offTmpBit__FUl
/* 80B577BC  7F 03 C3 78 */	mr r3, r24
/* 80B577C0  80 98 0A 7C */	lwz r4, 0xa7c(r24)
/* 80B577C4  38 A0 00 00 */	li r5, 0
/* 80B577C8  4B 5F 44 29 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B577CC  48 00 01 88 */	b lbl_80B57954
lbl_80B577D0:
/* 80B577D0  93 78 0D C4 */	stw r27, 0xdc4(r24)
/* 80B577D4  48 00 01 80 */	b lbl_80B57954
lbl_80B577D8:
/* 80B577D8  7F 03 C3 78 */	mr r3, r24
/* 80B577DC  80 98 0A 7C */	lwz r4, 0xa7c(r24)
/* 80B577E0  38 A0 00 00 */	li r5, 0
/* 80B577E4  4B 5F 44 0D */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B577E8  48 00 01 6C */	b lbl_80B57954
lbl_80B577EC:
/* 80B577EC  7F 03 C3 78 */	mr r3, r24
/* 80B577F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B577F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B577F8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B577FC  4B 4C 2F 15 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B57800  B0 78 0D C8 */	sth r3, 0xdc8(r24)
/* 80B57804  48 00 01 50 */	b lbl_80B57954
lbl_80B57808:
/* 80B57808  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 80B5780C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B57810  41 82 00 24 */	beq lbl_80B57834
/* 80B57814  82 F8 0B 5C */	lwz r23, 0xb5c(r24)
/* 80B57818  38 78 0B 50 */	addi r3, r24, 0xb50
/* 80B5781C  4B 5E E0 7D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B57820  92 F8 0B 5C */	stw r23, 0xb5c(r24)
/* 80B57824  38 00 00 0F */	li r0, 0xf
/* 80B57828  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 80B5782C  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B57830  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_80B57834:
/* 80B57834  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80B57838  2C 00 00 06 */	cmpwi r0, 6
/* 80B5783C  41 82 00 24 */	beq lbl_80B57860
/* 80B57840  82 F8 0B 80 */	lwz r23, 0xb80(r24)
/* 80B57844  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80B57848  4B 5E E0 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5784C  92 F8 0B 80 */	stw r23, 0xb80(r24)
/* 80B57850  38 00 00 06 */	li r0, 6
/* 80B57854  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80B57858  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B5785C  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_80B57860:
/* 80B57860  93 78 0D C4 */	stw r27, 0xdc4(r24)
/* 80B57864  48 00 00 F0 */	b lbl_80B57954
lbl_80B57868:
/* 80B57868  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 80B5786C  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B57870  41 82 00 24 */	beq lbl_80B57894
/* 80B57874  82 F8 0B 5C */	lwz r23, 0xb5c(r24)
/* 80B57878  38 78 0B 50 */	addi r3, r24, 0xb50
/* 80B5787C  4B 5E E0 1D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B57880  92 F8 0B 5C */	stw r23, 0xb5c(r24)
/* 80B57884  38 00 00 0F */	li r0, 0xf
/* 80B57888  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 80B5788C  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B57890  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_80B57894:
/* 80B57894  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80B57898  2C 00 00 08 */	cmpwi r0, 8
/* 80B5789C  41 82 00 B8 */	beq lbl_80B57954
/* 80B578A0  82 F8 0B 80 */	lwz r23, 0xb80(r24)
/* 80B578A4  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80B578A8  4B 5E DF F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B578AC  92 F8 0B 80 */	stw r23, 0xb80(r24)
/* 80B578B0  38 00 00 08 */	li r0, 8
/* 80B578B4  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80B578B8  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B578BC  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
/* 80B578C0  48 00 00 94 */	b lbl_80B57954
lbl_80B578C4:
/* 80B578C4  7F 03 C3 78 */	mr r3, r24
/* 80B578C8  80 98 0A 7C */	lwz r4, 0xa7c(r24)
/* 80B578CC  38 A0 00 00 */	li r5, 0
/* 80B578D0  4B 5F 43 21 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B578D4  48 00 00 80 */	b lbl_80B57954
lbl_80B578D8:
/* 80B578D8  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 80B578DC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B578E0  41 82 00 24 */	beq lbl_80B57904
/* 80B578E4  82 F8 0B 5C */	lwz r23, 0xb5c(r24)
/* 80B578E8  38 78 0B 50 */	addi r3, r24, 0xb50
/* 80B578EC  4B 5E DF AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B578F0  92 F8 0B 5C */	stw r23, 0xb5c(r24)
/* 80B578F4  38 00 00 0F */	li r0, 0xf
/* 80B578F8  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 80B578FC  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B57900  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_80B57904:
/* 80B57904  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80B57908  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80B5790C  41 82 00 24 */	beq lbl_80B57930
/* 80B57910  82 F8 0B 80 */	lwz r23, 0xb80(r24)
/* 80B57914  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80B57918  4B 5E DF 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5791C  92 F8 0B 80 */	stw r23, 0xb80(r24)
/* 80B57920  38 00 00 1F */	li r0, 0x1f
/* 80B57924  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80B57928  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80B5792C  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_80B57930:
/* 80B57930  93 78 0D C4 */	stw r27, 0xdc4(r24)
/* 80B57934  7F 03 C3 78 */	mr r3, r24
/* 80B57938  A8 98 04 B6 */	lha r4, 0x4b6(r24)
/* 80B5793C  4B 5F 30 DD */	bl setAngle__8daNpcT_cFs
/* 80B57940  48 00 00 14 */	b lbl_80B57954
lbl_80B57944:
/* 80B57944  7F 03 C3 78 */	mr r3, r24
/* 80B57948  80 98 0A 7C */	lwz r4, 0xa7c(r24)
/* 80B5794C  38 A0 00 00 */	li r5, 0
/* 80B57950  4B 5F 42 A1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B57954:
/* 80B57954  80 7F 02 0C */	lwz r3, 0x20c(r31)
/* 80B57958  80 1F 02 10 */	lwz r0, 0x210(r31)
/* 80B5795C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B57960  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B57964  28 1C 00 08 */	cmplwi r28, 8
/* 80B57968  41 81 05 10 */	bgt lbl_80B57E78
/* 80B5796C  3C 60 80 B6 */	lis r3, lit_6555@ha /* 0x80B5EABC@ha */
/* 80B57970  38 63 EA BC */	addi r3, r3, lit_6555@l /* 0x80B5EABC@l */
/* 80B57974  57 80 10 3A */	slwi r0, r28, 2
/* 80B57978  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B5797C  7C 09 03 A6 */	mtctr r0
/* 80B57980  4E 80 04 20 */	bctr 
lbl_80B57984:
/* 80B57984  7F 03 C3 78 */	mr r3, r24
/* 80B57988  38 80 00 00 */	li r4, 0
/* 80B5798C  38 A0 00 00 */	li r5, 0
/* 80B57990  38 C0 00 00 */	li r6, 0
/* 80B57994  38 E0 00 00 */	li r7, 0
/* 80B57998  4B 5F 42 E1 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B5799C  2C 03 00 00 */	cmpwi r3, 0
/* 80B579A0  41 82 04 D8 */	beq lbl_80B57E78
/* 80B579A4  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80B579A8  28 00 00 01 */	cmplwi r0, 1
/* 80B579AC  40 82 04 CC */	bne lbl_80B57E78
/* 80B579B0  3B A0 00 01 */	li r29, 1
/* 80B579B4  48 00 04 C4 */	b lbl_80B57E78
lbl_80B579B8:
/* 80B579B8  38 78 0D C4 */	addi r3, r24, 0xdc4
/* 80B579BC  48 00 59 BD */	bl func_80B5D378
/* 80B579C0  2C 03 00 00 */	cmpwi r3, 0
/* 80B579C4  40 82 04 B4 */	bne lbl_80B57E78
/* 80B579C8  3B A0 00 01 */	li r29, 1
/* 80B579CC  48 00 04 AC */	b lbl_80B57E78
lbl_80B579D0:
/* 80B579D0  93 41 00 10 */	stw r26, 0x10(r1)
/* 80B579D4  7F 03 C3 78 */	mr r3, r24
/* 80B579D8  38 81 00 10 */	addi r4, r1, 0x10
/* 80B579DC  38 A0 00 00 */	li r5, 0
/* 80B579E0  38 C0 00 00 */	li r6, 0
/* 80B579E4  38 E0 00 00 */	li r7, 0
/* 80B579E8  4B 5F 42 91 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B579EC  2C 03 00 00 */	cmpwi r3, 0
/* 80B579F0  41 82 04 88 */	beq lbl_80B57E78
/* 80B579F4  2C 1A 00 00 */	cmpwi r26, 0
/* 80B579F8  40 82 00 18 */	bne lbl_80B57A10
/* 80B579FC  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80B57A00  28 00 00 01 */	cmplwi r0, 1
/* 80B57A04  40 82 04 74 */	bne lbl_80B57E78
/* 80B57A08  3B A0 00 01 */	li r29, 1
/* 80B57A0C  48 00 04 6C */	b lbl_80B57E78
lbl_80B57A10:
/* 80B57A10  3B A0 00 01 */	li r29, 1
/* 80B57A14  48 00 04 64 */	b lbl_80B57E78
lbl_80B57A18:
/* 80B57A18  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B57A1C  2C 00 00 01 */	cmpwi r0, 1
/* 80B57A20  41 82 00 28 */	beq lbl_80B57A48
/* 80B57A24  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B57A28  4B 5E DC D5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B57A2C  38 00 00 00 */	li r0, 0
/* 80B57A30  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B57A34  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B57A38  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B57A3C  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B57A40  38 00 00 01 */	li r0, 1
/* 80B57A44  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80B57A48:
/* 80B57A48  38 00 00 00 */	li r0, 0
/* 80B57A4C  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B57A50  A8 98 0D C8 */	lha r4, 0xdc8(r24)
/* 80B57A54  A8 18 0D 7A */	lha r0, 0xd7a(r24)
/* 80B57A58  7C 04 00 00 */	cmpw r4, r0
/* 80B57A5C  41 82 00 20 */	beq lbl_80B57A7C
/* 80B57A60  7F 03 C3 78 */	mr r3, r24
/* 80B57A64  38 A0 FF FF */	li r5, -1
/* 80B57A68  38 C0 FF FF */	li r6, -1
/* 80B57A6C  38 FF 00 00 */	addi r7, r31, 0
/* 80B57A70  A8 E7 00 8C */	lha r7, 0x8c(r7)
/* 80B57A74  39 00 00 00 */	li r8, 0
/* 80B57A78  4B 5F 3B D1 */	bl step__8daNpcT_cFsiiii
lbl_80B57A7C:
/* 80B57A7C  A8 18 0D C8 */	lha r0, 0xdc8(r24)
/* 80B57A80  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 80B57A84  7F 03 C3 78 */	mr r3, r24
/* 80B57A88  38 80 00 00 */	li r4, 0
/* 80B57A8C  38 A0 00 00 */	li r5, 0
/* 80B57A90  38 C0 00 00 */	li r6, 0
/* 80B57A94  38 E0 00 00 */	li r7, 0
/* 80B57A98  4B 5F 41 E1 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B57A9C  2C 03 00 00 */	cmpwi r3, 0
/* 80B57AA0  41 82 03 D8 */	beq lbl_80B57E78
/* 80B57AA4  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80B57AA8  28 00 00 01 */	cmplwi r0, 1
/* 80B57AAC  40 82 03 CC */	bne lbl_80B57E78
/* 80B57AB0  A8 78 0D C8 */	lha r3, 0xdc8(r24)
/* 80B57AB4  A8 18 0D 7A */	lha r0, 0xd7a(r24)
/* 80B57AB8  7C 03 00 00 */	cmpw r3, r0
/* 80B57ABC  40 82 03 BC */	bne lbl_80B57E78
/* 80B57AC0  3B A0 00 01 */	li r29, 1
/* 80B57AC4  48 00 03 B4 */	b lbl_80B57E78
lbl_80B57AC8:
/* 80B57AC8  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B57ACC  2C 00 00 01 */	cmpwi r0, 1
/* 80B57AD0  41 82 00 28 */	beq lbl_80B57AF8
/* 80B57AD4  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B57AD8  4B 5E DC 25 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B57ADC  38 00 00 00 */	li r0, 0
/* 80B57AE0  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B57AE4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B57AE8  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B57AEC  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B57AF0  38 00 00 01 */	li r0, 1
/* 80B57AF4  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80B57AF8:
/* 80B57AF8  38 00 00 00 */	li r0, 0
/* 80B57AFC  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B57B00  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80B57B04  2C 00 00 06 */	cmpwi r0, 6
/* 80B57B08  40 82 03 70 */	bne lbl_80B57E78
/* 80B57B0C  80 18 0D C4 */	lwz r0, 0xdc4(r24)
/* 80B57B10  2C 00 00 00 */	cmpwi r0, 0
/* 80B57B14  40 82 00 18 */	bne lbl_80B57B2C
/* 80B57B18  7F C3 F3 78 */	mr r3, r30
/* 80B57B1C  7F 24 CB 78 */	mr r4, r25
/* 80B57B20  4B 4F 02 2D */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B57B24  2C 03 00 00 */	cmpwi r3, 0
/* 80B57B28  41 82 00 F0 */	beq lbl_80B57C18
lbl_80B57B2C:
/* 80B57B2C  38 78 0D C4 */	addi r3, r24, 0xdc4
/* 80B57B30  48 00 58 49 */	bl func_80B5D378
/* 80B57B34  2C 03 00 00 */	cmpwi r3, 0
/* 80B57B38  40 82 00 E0 */	bne lbl_80B57C18
/* 80B57B3C  38 78 14 90 */	addi r3, r24, 0x1490
/* 80B57B40  4B 5E DB C9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B57B44  28 03 00 00 */	cmplwi r3, 0
/* 80B57B48  41 82 00 D0 */	beq lbl_80B57C18
/* 80B57B4C  38 00 00 01 */	li r0, 1
/* 80B57B50  98 03 0A 40 */	stb r0, 0xa40(r3)
/* 80B57B54  38 00 00 00 */	li r0, 0
/* 80B57B58  98 03 0A 44 */	stb r0, 0xa44(r3)
/* 80B57B5C  A8 98 04 E6 */	lha r4, 0x4e6(r24)
/* 80B57B60  3C 84 00 01 */	addis r4, r4, 1
/* 80B57B64  38 04 80 00 */	addi r0, r4, -32768
/* 80B57B68  B0 03 04 DE */	sth r0, 0x4de(r3)
/* 80B57B6C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B57B70  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B57B74  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B57B78  34 A4 05 50 */	addic. r5, r4, 0x550
/* 80B57B7C  38 9F 00 00 */	addi r4, r31, 0
/* 80B57B80  C0 44 00 9C */	lfs f2, 0x9c(r4)
/* 80B57B84  C0 24 00 98 */	lfs f1, 0x98(r4)
/* 80B57B88  41 82 00 34 */	beq lbl_80B57BBC
/* 80B57B8C  C0 05 00 00 */	lfs f0, 0(r5)
/* 80B57B90  D0 03 04 D0 */	stfs f0, 0x4d0(r3)
/* 80B57B94  C0 05 00 04 */	lfs f0, 4(r5)
/* 80B57B98  D0 03 04 D4 */	stfs f0, 0x4d4(r3)
/* 80B57B9C  C0 05 00 08 */	lfs f0, 8(r5)
/* 80B57BA0  D0 03 04 D8 */	stfs f0, 0x4d8(r3)
/* 80B57BA4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B57BA8  D0 03 04 BC */	stfs f0, 0x4bc(r3)
/* 80B57BAC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B57BB0  D0 03 04 C0 */	stfs f0, 0x4c0(r3)
/* 80B57BB4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B57BB8  D0 03 04 C4 */	stfs f0, 0x4c4(r3)
lbl_80B57BBC:
/* 80B57BBC  C0 1F 02 1C */	lfs f0, 0x21c(r31)
/* 80B57BC0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B57BC4  FC 00 00 1E */	fctiwz f0, f0
/* 80B57BC8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B57BCC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B57BD0  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B57BD4  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 80B57BD8  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80B57BDC  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 80B57BE0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B57BE4  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B57BE8  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B57BEC  7C 04 04 2E */	lfsx f0, r4, r0
/* 80B57BF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B57BF4  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80B57BF8  7C 84 02 14 */	add r4, r4, r0
/* 80B57BFC  C0 04 00 04 */	lfs f0, 4(r4)
/* 80B57C00  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B57C04  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80B57C08  38 00 40 00 */	li r0, 0x4000
/* 80B57C0C  B0 03 0A 14 */	sth r0, 0xa14(r3)
/* 80B57C10  38 00 00 01 */	li r0, 1
/* 80B57C14  98 03 0A 43 */	stb r0, 0xa43(r3)
lbl_80B57C18:
/* 80B57C18  80 18 0B 84 */	lwz r0, 0xb84(r24)
/* 80B57C1C  2C 00 00 00 */	cmpwi r0, 0
/* 80B57C20  40 82 00 B8 */	bne lbl_80B57CD8
/* 80B57C24  80 78 05 78 */	lwz r3, 0x578(r24)
/* 80B57C28  38 63 00 0C */	addi r3, r3, 0xc
/* 80B57C2C  38 9F 00 00 */	addi r4, r31, 0
/* 80B57C30  C0 24 00 A0 */	lfs f1, 0xa0(r4)
/* 80B57C34  4B 7D 07 F9 */	bl checkPass__12J3DFrameCtrlFf
/* 80B57C38  2C 03 00 00 */	cmpwi r3, 0
/* 80B57C3C  41 82 02 3C */	beq lbl_80B57E78
/* 80B57C40  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500F1@ha */
/* 80B57C44  38 03 00 F1 */	addi r0, r3, 0x00F1 /* 0x000500F1@l */
/* 80B57C48  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B57C4C  38 78 05 80 */	addi r3, r24, 0x580
/* 80B57C50  38 81 00 0C */	addi r4, r1, 0xc
/* 80B57C54  38 A0 FF FF */	li r5, -1
/* 80B57C58  81 98 05 80 */	lwz r12, 0x580(r24)
/* 80B57C5C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B57C60  7D 89 03 A6 */	mtctr r12
/* 80B57C64  4E 80 04 21 */	bctrl 
/* 80B57C68  38 7F 00 00 */	addi r3, r31, 0
/* 80B57C6C  C0 43 00 A4 */	lfs f2, 0xa4(r3)
/* 80B57C70  C0 3F 02 1C */	lfs f1, 0x21c(r31)
/* 80B57C74  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 80B57C78  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B57C7C  FC 00 00 1E */	fctiwz f0, f0
/* 80B57C80  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80B57C84  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B57C88  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B57C8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B57C90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B57C94  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B57C98  A8 98 04 E6 */	lha r4, 0x4e6(r24)
/* 80B57C9C  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B57CA0  38 C5 9A 20 */	addi r6, r5, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B57CA4  7C A6 02 14 */	add r5, r6, r0
/* 80B57CA8  C0 05 00 04 */	lfs f0, 4(r5)
/* 80B57CAC  EC 22 00 32 */	fmuls f1, f2, f0
/* 80B57CB0  7C 06 04 2E */	lfsx f0, r6, r0
/* 80B57CB4  EC 42 00 32 */	fmuls f2, f2, f0
/* 80B57CB8  38 A0 00 00 */	li r5, 0
/* 80B57CBC  38 C0 00 01 */	li r6, 1
/* 80B57CC0  38 E0 00 00 */	li r7, 0
/* 80B57CC4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B57CC8  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80B57CCC  7D 89 03 A6 */	mtctr r12
/* 80B57CD0  4E 80 04 21 */	bctrl 
/* 80B57CD4  48 00 01 A4 */	b lbl_80B57E78
lbl_80B57CD8:
/* 80B57CD8  3B A0 00 01 */	li r29, 1
/* 80B57CDC  48 00 01 9C */	b lbl_80B57E78
lbl_80B57CE0:
/* 80B57CE0  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80B57CE4  2C 00 00 08 */	cmpwi r0, 8
/* 80B57CE8  40 82 01 90 */	bne lbl_80B57E78
/* 80B57CEC  80 18 0B 84 */	lwz r0, 0xb84(r24)
/* 80B57CF0  2C 00 00 00 */	cmpwi r0, 0
/* 80B57CF4  40 82 00 40 */	bne lbl_80B57D34
/* 80B57CF8  80 78 05 78 */	lwz r3, 0x578(r24)
/* 80B57CFC  38 63 00 0C */	addi r3, r3, 0xc
/* 80B57D00  C0 3F 02 20 */	lfs f1, 0x220(r31)
/* 80B57D04  4B 7D 07 29 */	bl checkPass__12J3DFrameCtrlFf
/* 80B57D08  2C 03 00 00 */	cmpwi r3, 0
/* 80B57D0C  41 82 01 6C */	beq lbl_80B57E78
/* 80B57D10  38 00 00 01 */	li r0, 1
/* 80B57D14  98 18 15 77 */	stb r0, 0x1577(r24)
/* 80B57D18  38 78 14 90 */	addi r3, r24, 0x1490
/* 80B57D1C  4B 5E D9 ED */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B57D20  28 03 00 00 */	cmplwi r3, 0
/* 80B57D24  41 82 01 54 */	beq lbl_80B57E78
/* 80B57D28  38 00 00 01 */	li r0, 1
/* 80B57D2C  98 03 0A 44 */	stb r0, 0xa44(r3)
/* 80B57D30  48 00 01 48 */	b lbl_80B57E78
lbl_80B57D34:
/* 80B57D34  3B A0 00 01 */	li r29, 1
/* 80B57D38  48 00 01 40 */	b lbl_80B57E78
lbl_80B57D3C:
/* 80B57D3C  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80B57D40  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80B57D44  40 82 01 34 */	bne lbl_80B57E78
/* 80B57D48  80 18 0B 84 */	lwz r0, 0xb84(r24)
/* 80B57D4C  2C 00 00 00 */	cmpwi r0, 0
/* 80B57D50  40 82 00 74 */	bne lbl_80B57DC4
/* 80B57D54  80 78 05 78 */	lwz r3, 0x578(r24)
/* 80B57D58  38 63 00 0C */	addi r3, r3, 0xc
/* 80B57D5C  C0 3F 02 24 */	lfs f1, 0x224(r31)
/* 80B57D60  4B 7D 06 CD */	bl checkPass__12J3DFrameCtrlFf
/* 80B57D64  2C 03 00 00 */	cmpwi r3, 0
/* 80B57D68  41 82 01 10 */	beq lbl_80B57E78
/* 80B57D6C  88 18 15 77 */	lbz r0, 0x1577(r24)
/* 80B57D70  28 00 00 00 */	cmplwi r0, 0
/* 80B57D74  41 82 00 44 */	beq lbl_80B57DB8
/* 80B57D78  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 80B57D7C  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 80B57D80  90 01 00 08 */	stw r0, 8(r1)
/* 80B57D84  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B57D88  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B57D8C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B57D90  38 81 00 08 */	addi r4, r1, 8
/* 80B57D94  38 A0 00 00 */	li r5, 0
/* 80B57D98  38 C0 00 00 */	li r6, 0
/* 80B57D9C  38 E0 00 00 */	li r7, 0
/* 80B57DA0  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 80B57DA4  FC 40 08 90 */	fmr f2, f1
/* 80B57DA8  C0 7F 01 3C */	lfs f3, 0x13c(r31)
/* 80B57DAC  FC 80 18 90 */	fmr f4, f3
/* 80B57DB0  39 00 00 00 */	li r8, 0
/* 80B57DB4  4B 75 3B D1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80B57DB8:
/* 80B57DB8  38 00 00 00 */	li r0, 0
/* 80B57DBC  98 18 15 77 */	stb r0, 0x1577(r24)
/* 80B57DC0  48 00 00 B8 */	b lbl_80B57E78
lbl_80B57DC4:
/* 80B57DC4  38 78 0D C4 */	addi r3, r24, 0xdc4
/* 80B57DC8  48 00 55 B1 */	bl func_80B5D378
/* 80B57DCC  2C 03 00 00 */	cmpwi r3, 0
/* 80B57DD0  40 82 00 A8 */	bne lbl_80B57E78
/* 80B57DD4  3B A0 00 01 */	li r29, 1
/* 80B57DD8  48 00 00 A0 */	b lbl_80B57E78
lbl_80B57DDC:
/* 80B57DDC  7F 03 C3 78 */	mr r3, r24
/* 80B57DE0  38 80 00 00 */	li r4, 0
/* 80B57DE4  38 A0 00 00 */	li r5, 0
/* 80B57DE8  38 C0 00 00 */	li r6, 0
/* 80B57DEC  38 E0 00 00 */	li r7, 0
/* 80B57DF0  4B 5F 3E 89 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B57DF4  2C 03 00 00 */	cmpwi r3, 0
/* 80B57DF8  41 82 00 80 */	beq lbl_80B57E78
/* 80B57DFC  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80B57E00  28 00 00 01 */	cmplwi r0, 1
/* 80B57E04  40 82 00 74 */	bne lbl_80B57E78
/* 80B57E08  3B A0 00 01 */	li r29, 1
/* 80B57E0C  48 00 00 6C */	b lbl_80B57E78
lbl_80B57E10:
/* 80B57E10  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B57E14  2C 00 00 01 */	cmpwi r0, 1
/* 80B57E18  41 82 00 28 */	beq lbl_80B57E40
/* 80B57E1C  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B57E20  4B 5E D8 DD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B57E24  38 00 00 00 */	li r0, 0
/* 80B57E28  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B57E2C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B57E30  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B57E34  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B57E38  38 00 00 01 */	li r0, 1
/* 80B57E3C  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80B57E40:
/* 80B57E40  38 00 00 00 */	li r0, 0
/* 80B57E44  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B57E48  7F 03 C3 78 */	mr r3, r24
/* 80B57E4C  38 80 00 00 */	li r4, 0
/* 80B57E50  38 A0 00 00 */	li r5, 0
/* 80B57E54  38 C0 00 00 */	li r6, 0
/* 80B57E58  38 E0 00 00 */	li r7, 0
/* 80B57E5C  4B 5F 3E 1D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B57E60  2C 03 00 00 */	cmpwi r3, 0
/* 80B57E64  41 82 00 14 */	beq lbl_80B57E78
/* 80B57E68  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80B57E6C  28 00 00 01 */	cmplwi r0, 1
/* 80B57E70  40 82 00 08 */	bne lbl_80B57E78
/* 80B57E74  3B A0 00 01 */	li r29, 1
lbl_80B57E78:
/* 80B57E78  38 00 00 01 */	li r0, 1
/* 80B57E7C  98 18 15 80 */	stb r0, 0x1580(r24)
/* 80B57E80  2C 1C 00 08 */	cmpwi r28, 8
/* 80B57E84  40 82 00 0C */	bne lbl_80B57E90
/* 80B57E88  38 00 00 00 */	li r0, 0
/* 80B57E8C  98 18 15 80 */	stb r0, 0x1580(r24)
lbl_80B57E90:
/* 80B57E90  2C 1C 00 05 */	cmpwi r28, 5
/* 80B57E94  41 82 00 0C */	beq lbl_80B57EA0
/* 80B57E98  2C 1C 00 06 */	cmpwi r28, 6
/* 80B57E9C  40 82 01 34 */	bne lbl_80B57FD0
lbl_80B57EA0:
/* 80B57EA0  88 18 15 77 */	lbz r0, 0x1577(r24)
/* 80B57EA4  28 00 00 00 */	cmplwi r0, 0
/* 80B57EA8  41 82 00 C0 */	beq lbl_80B57F68
/* 80B57EAC  38 00 00 01 */	li r0, 1
/* 80B57EB0  98 18 15 75 */	stb r0, 0x1575(r24)
/* 80B57EB4  80 78 05 78 */	lwz r3, 0x578(r24)
/* 80B57EB8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B57EBC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B57EC0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B57EC4  38 63 03 C0 */	addi r3, r3, 0x3c0
/* 80B57EC8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B57ECC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B57ED0  4B 7E E5 E1 */	bl PSMTXCopy
/* 80B57ED4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B57ED8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B57EDC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B57EE0  D0 18 0D 6C */	stfs f0, 0xd6c(r24)
/* 80B57EE4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B57EE8  D0 18 0D 70 */	stfs f0, 0xd70(r24)
/* 80B57EEC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B57EF0  D0 18 0D 74 */	stfs f0, 0xd74(r24)
/* 80B57EF4  80 78 0B C8 */	lwz r3, 0xbc8(r24)
/* 80B57EF8  38 18 0D 6C */	addi r0, r24, 0xd6c
/* 80B57EFC  7C 63 00 50 */	subf r3, r3, r0
/* 80B57F00  30 03 FF FF */	addic r0, r3, -1
/* 80B57F04  7C 00 19 10 */	subfe r0, r0, r3
/* 80B57F08  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B57F0C  40 82 00 10 */	bne lbl_80B57F1C
/* 80B57F10  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B57F14  2C 00 00 03 */	cmpwi r0, 3
/* 80B57F18  41 82 00 30 */	beq lbl_80B57F48
lbl_80B57F1C:
/* 80B57F1C  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B57F20  4B 5E D7 DD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B57F24  38 00 00 00 */	li r0, 0
/* 80B57F28  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B57F2C  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B57F30  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B57F34  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B57F38  38 00 00 03 */	li r0, 3
/* 80B57F3C  90 18 0C E0 */	stw r0, 0xce0(r24)
/* 80B57F40  38 00 00 01 */	li r0, 1
/* 80B57F44  48 00 00 08 */	b lbl_80B57F4C
lbl_80B57F48:
/* 80B57F48  38 00 00 00 */	li r0, 0
lbl_80B57F4C:
/* 80B57F4C  2C 00 00 00 */	cmpwi r0, 0
/* 80B57F50  41 82 00 0C */	beq lbl_80B57F5C
/* 80B57F54  38 18 0D 6C */	addi r0, r24, 0xd6c
/* 80B57F58  90 18 0B C8 */	stw r0, 0xbc8(r24)
lbl_80B57F5C:
/* 80B57F5C  38 00 00 00 */	li r0, 0
/* 80B57F60  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B57F64  48 00 00 EC */	b lbl_80B58050
lbl_80B57F68:
/* 80B57F68  38 78 14 90 */	addi r3, r24, 0x1490
/* 80B57F6C  4B 5E D7 9D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B57F70  28 03 00 00 */	cmplwi r3, 0
/* 80B57F74  40 82 00 40 */	bne lbl_80B57FB4
/* 80B57F78  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B57F7C  2C 00 00 00 */	cmpwi r0, 0
/* 80B57F80  41 82 00 24 */	beq lbl_80B57FA4
/* 80B57F84  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B57F88  4B 5E D7 75 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B57F8C  38 00 00 00 */	li r0, 0
/* 80B57F90  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B57F94  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B57F98  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B57F9C  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B57FA0  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_80B57FA4:
/* 80B57FA4  38 00 00 00 */	li r0, 0
/* 80B57FA8  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B57FAC  7F A3 EB 78 */	mr r3, r29
/* 80B57FB0  48 00 00 A4 */	b lbl_80B58054
lbl_80B57FB4:
/* 80B57FB4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B57FB8  D0 18 0D 6C */	stfs f0, 0xd6c(r24)
/* 80B57FBC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B57FC0  D0 18 0D 70 */	stfs f0, 0xd70(r24)
/* 80B57FC4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B57FC8  D0 18 0D 74 */	stfs f0, 0xd74(r24)
/* 80B57FCC  48 00 00 84 */	b lbl_80B58050
lbl_80B57FD0:
/* 80B57FD0  2C 1C 00 07 */	cmpwi r28, 7
/* 80B57FD4  40 82 00 7C */	bne lbl_80B58050
/* 80B57FD8  80 78 0B C8 */	lwz r3, 0xbc8(r24)
/* 80B57FDC  38 18 15 08 */	addi r0, r24, 0x1508
/* 80B57FE0  7C 63 00 50 */	subf r3, r3, r0
/* 80B57FE4  30 03 FF FF */	addic r0, r3, -1
/* 80B57FE8  7C 00 19 10 */	subfe r0, r0, r3
/* 80B57FEC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B57FF0  40 82 00 10 */	bne lbl_80B58000
/* 80B57FF4  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 80B57FF8  2C 00 00 03 */	cmpwi r0, 3
/* 80B57FFC  41 82 00 30 */	beq lbl_80B5802C
lbl_80B58000:
/* 80B58000  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80B58004  4B 5E D6 F9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B58008  38 00 00 00 */	li r0, 0
/* 80B5800C  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 80B58010  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80B58014  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 80B58018  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B5801C  38 00 00 03 */	li r0, 3
/* 80B58020  90 18 0C E0 */	stw r0, 0xce0(r24)
/* 80B58024  38 00 00 01 */	li r0, 1
/* 80B58028  48 00 00 08 */	b lbl_80B58030
lbl_80B5802C:
/* 80B5802C  38 00 00 00 */	li r0, 0
lbl_80B58030:
/* 80B58030  2C 00 00 00 */	cmpwi r0, 0
/* 80B58034  41 82 00 0C */	beq lbl_80B58040
/* 80B58038  38 18 15 08 */	addi r0, r24, 0x1508
/* 80B5803C  90 18 0B C8 */	stw r0, 0xbc8(r24)
lbl_80B58040:
/* 80B58040  38 00 00 00 */	li r0, 0
/* 80B58044  98 18 0C FF */	stb r0, 0xcff(r24)
/* 80B58048  38 00 00 01 */	li r0, 1
/* 80B5804C  98 18 15 75 */	stb r0, 0x1575(r24)
lbl_80B58050:
/* 80B58050  7F A3 EB 78 */	mr r3, r29
lbl_80B58054:
/* 80B58054  39 61 00 50 */	addi r11, r1, 0x50
/* 80B58058  4B 80 A1 B9 */	bl _restgpr_23
/* 80B5805C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B58060  7C 08 03 A6 */	mtlr r0
/* 80B58064  38 21 00 50 */	addi r1, r1, 0x50
/* 80B58068  4E 80 00 20 */	blr 
