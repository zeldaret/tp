lbl_805576C4:
/* 805576C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805576C8  7C 08 02 A6 */	mflr r0
/* 805576CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805576D0  39 61 00 40 */	addi r11, r1, 0x40
/* 805576D4  4B E0 AA F5 */	bl _savegpr_24
/* 805576D8  7C 78 1B 78 */	mr r24, r3
/* 805576DC  7C 99 23 78 */	mr r25, r4
/* 805576E0  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha /* 0x8055A5B4@ha */
/* 805576E4  3B E3 A5 B4 */	addi r31, r3, m__19daNpc_Kolin_Param_c@l /* 0x8055A5B4@l */
/* 805576E8  3B A0 00 00 */	li r29, 0
/* 805576EC  3B 80 FF FF */	li r28, -1
/* 805576F0  3B 60 00 00 */	li r27, 0
/* 805576F4  3B 40 00 00 */	li r26, 0
/* 805576F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805576FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80557700  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 80557704  7F C3 F3 78 */	mr r3, r30
/* 80557708  3C A0 80 56 */	lis r5, d_a_npc_kolin__stringBase0@ha /* 0x8055A77C@ha */
/* 8055770C  38 A5 A7 7C */	addi r5, r5, d_a_npc_kolin__stringBase0@l /* 0x8055A77C@l */
/* 80557710  38 A5 01 39 */	addi r5, r5, 0x139
/* 80557714  38 C0 00 03 */	li r6, 3
/* 80557718  4B AF 09 D5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055771C  28 03 00 00 */	cmplwi r3, 0
/* 80557720  41 82 00 08 */	beq lbl_80557728
/* 80557724  83 83 00 00 */	lwz r28, 0(r3)
lbl_80557728:
/* 80557728  7F C3 F3 78 */	mr r3, r30
/* 8055772C  7F 24 CB 78 */	mr r4, r25
/* 80557730  3C A0 80 56 */	lis r5, d_a_npc_kolin__stringBase0@ha /* 0x8055A77C@ha */
/* 80557734  38 A5 A7 7C */	addi r5, r5, d_a_npc_kolin__stringBase0@l /* 0x8055A77C@l */
/* 80557738  38 A5 01 3D */	addi r5, r5, 0x13d
/* 8055773C  38 C0 00 03 */	li r6, 3
/* 80557740  4B AF 09 AD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80557744  28 03 00 00 */	cmplwi r3, 0
/* 80557748  41 82 00 08 */	beq lbl_80557750
/* 8055774C  83 63 00 00 */	lwz r27, 0(r3)
lbl_80557750:
/* 80557750  7F C3 F3 78 */	mr r3, r30
/* 80557754  7F 24 CB 78 */	mr r4, r25
/* 80557758  3C A0 80 56 */	lis r5, d_a_npc_kolin__stringBase0@ha /* 0x8055A77C@ha */
/* 8055775C  38 A5 A7 7C */	addi r5, r5, d_a_npc_kolin__stringBase0@l /* 0x8055A77C@l */
/* 80557760  38 A5 01 43 */	addi r5, r5, 0x143
/* 80557764  38 C0 00 03 */	li r6, 3
/* 80557768  4B AF 09 85 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8055776C  28 03 00 00 */	cmplwi r3, 0
/* 80557770  41 82 00 08 */	beq lbl_80557778
/* 80557774  83 43 00 00 */	lwz r26, 0(r3)
lbl_80557778:
/* 80557778  80 7F 01 A0 */	lwz r3, 0x1a0(r31)
/* 8055777C  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 80557780  90 61 00 08 */	stw r3, 8(r1)
/* 80557784  90 01 00 0C */	stw r0, 0xc(r1)
/* 80557788  38 78 0F A0 */	addi r3, r24, 0xfa0
/* 8055778C  4B BE DF 7D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80557790  90 61 00 08 */	stw r3, 8(r1)
/* 80557794  93 01 00 0C */	stw r24, 0xc(r1)
/* 80557798  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8055779C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805577A0  90 64 5E F0 */	stw r3, 0x5ef0(r4)
/* 805577A4  93 04 5E F4 */	stw r24, 0x5ef4(r4)
/* 805577A8  38 00 00 00 */	li r0, 0
/* 805577AC  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 805577B0  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 805577B4  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 805577B8  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 805577BC  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 805577C0  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 805577C4  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 805577C8  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 805577CC  7F C3 F3 78 */	mr r3, r30
/* 805577D0  7F 24 CB 78 */	mr r4, r25
/* 805577D4  4B AF 05 79 */	bl getIsAddvance__16dEvent_manager_cFi
/* 805577D8  2C 03 00 00 */	cmpwi r3, 0
/* 805577DC  41 82 00 68 */	beq lbl_80557844
/* 805577E0  2C 1C 00 01 */	cmpwi r28, 1
/* 805577E4  41 82 00 60 */	beq lbl_80557844
/* 805577E8  40 80 00 10 */	bge lbl_805577F8
/* 805577EC  2C 1C 00 00 */	cmpwi r28, 0
/* 805577F0  40 80 00 18 */	bge lbl_80557808
/* 805577F4  48 00 00 50 */	b lbl_80557844
lbl_805577F8:
/* 805577F8  2C 1C 00 04 */	cmpwi r28, 4
/* 805577FC  41 82 00 44 */	beq lbl_80557840
/* 80557800  40 80 00 44 */	bge lbl_80557844
/* 80557804  48 00 00 28 */	b lbl_8055782C
lbl_80557808:
/* 80557808  38 60 00 0B */	li r3, 0xb
/* 8055780C  4B BF 53 21 */	bl daNpcT_offTmpBit__FUl
/* 80557810  38 60 00 0C */	li r3, 0xc
/* 80557814  4B BF 53 19 */	bl daNpcT_offTmpBit__FUl
/* 80557818  7F 03 C3 78 */	mr r3, r24
/* 8055781C  38 80 00 40 */	li r4, 0x40
/* 80557820  38 A1 00 08 */	addi r5, r1, 8
/* 80557824  4B BF 43 CD */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80557828  48 00 00 1C */	b lbl_80557844
lbl_8055782C:
/* 8055782C  7F 03 C3 78 */	mr r3, r24
/* 80557830  38 80 00 40 */	li r4, 0x40
/* 80557834  38 A1 00 08 */	addi r5, r1, 8
/* 80557838  4B BF 43 B9 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8055783C  48 00 00 08 */	b lbl_80557844
lbl_80557840:
/* 80557840  93 58 0D C4 */	stw r26, 0xdc4(r24)
lbl_80557844:
/* 80557844  80 7F 01 A8 */	lwz r3, 0x1a8(r31)
/* 80557848  80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 8055784C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80557850  90 01 00 14 */	stw r0, 0x14(r1)
/* 80557854  80 1F 01 B0 */	lwz r0, 0x1b0(r31)
/* 80557858  90 01 00 18 */	stw r0, 0x18(r1)
/* 8055785C  2C 1C 00 04 */	cmpwi r28, 4
/* 80557860  41 82 01 4C */	beq lbl_805579AC
/* 80557864  40 80 01 5C */	bge lbl_805579C0
/* 80557868  2C 1C 00 00 */	cmpwi r28, 0
/* 8055786C  41 82 00 0C */	beq lbl_80557878
/* 80557870  40 80 00 E8 */	bge lbl_80557958
/* 80557874  48 00 01 4C */	b lbl_805579C0
lbl_80557878:
/* 80557878  A8 78 0D C8 */	lha r3, 0xdc8(r24)
/* 8055787C  A8 18 0D 7A */	lha r0, 0xd7a(r24)
/* 80557880  7C 03 00 00 */	cmpw r3, r0
/* 80557884  41 82 00 C0 */	beq lbl_80557944
/* 80557888  80 18 0C E0 */	lwz r0, 0xce0(r24)
/* 8055788C  2C 00 00 00 */	cmpwi r0, 0
/* 80557890  41 82 00 24 */	beq lbl_805578B4
/* 80557894  38 78 0B A8 */	addi r3, r24, 0xba8
/* 80557898  4B BE DE 65 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055789C  38 00 00 00 */	li r0, 0
/* 805578A0  90 18 0B C8 */	stw r0, 0xbc8(r24)
/* 805578A4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 805578A8  D0 18 0C F4 */	stfs f0, 0xcf4(r24)
/* 805578AC  98 18 0C FF */	stb r0, 0xcff(r24)
/* 805578B0  90 18 0C E0 */	stw r0, 0xce0(r24)
lbl_805578B4:
/* 805578B4  38 00 00 00 */	li r0, 0
/* 805578B8  98 18 0C FF */	stb r0, 0xcff(r24)
/* 805578BC  7F 03 C3 78 */	mr r3, r24
/* 805578C0  A8 98 0D C8 */	lha r4, 0xdc8(r24)
/* 805578C4  38 A0 00 0D */	li r5, 0xd
/* 805578C8  38 C0 00 0A */	li r6, 0xa
/* 805578CC  38 E0 00 0F */	li r7, 0xf
/* 805578D0  39 00 00 00 */	li r8, 0
/* 805578D4  4B BF 3D 75 */	bl step__8daNpcT_cFsiiii
/* 805578D8  2C 03 00 00 */	cmpwi r3, 0
/* 805578DC  41 82 00 5C */	beq lbl_80557938
/* 805578E0  80 18 0B 58 */	lwz r0, 0xb58(r24)
/* 805578E4  2C 00 00 0D */	cmpwi r0, 0xd
/* 805578E8  41 82 00 24 */	beq lbl_8055790C
/* 805578EC  83 38 0B 5C */	lwz r25, 0xb5c(r24)
/* 805578F0  38 78 0B 50 */	addi r3, r24, 0xb50
/* 805578F4  4B BE DF A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 805578F8  93 38 0B 5C */	stw r25, 0xb5c(r24)
/* 805578FC  38 00 00 0D */	li r0, 0xd
/* 80557900  90 18 0B 58 */	stw r0, 0xb58(r24)
/* 80557904  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80557908  D0 18 0B 68 */	stfs f0, 0xb68(r24)
lbl_8055790C:
/* 8055790C  80 18 0B 7C */	lwz r0, 0xb7c(r24)
/* 80557910  2C 00 00 01 */	cmpwi r0, 1
/* 80557914  41 82 00 24 */	beq lbl_80557938
/* 80557918  83 38 0B 80 */	lwz r25, 0xb80(r24)
/* 8055791C  38 78 0B 74 */	addi r3, r24, 0xb74
/* 80557920  4B BE DF 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80557924  93 38 0B 80 */	stw r25, 0xb80(r24)
/* 80557928  38 00 00 01 */	li r0, 1
/* 8055792C  90 18 0B 7C */	stw r0, 0xb7c(r24)
/* 80557930  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80557934  D0 18 0B 8C */	stfs f0, 0xb8c(r24)
lbl_80557938:
/* 80557938  A8 18 0D C8 */	lha r0, 0xdc8(r24)
/* 8055793C  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 80557940  48 00 00 80 */	b lbl_805579C0
lbl_80557944:
/* 80557944  7F 03 C3 78 */	mr r3, r24
/* 80557948  38 80 00 00 */	li r4, 0
/* 8055794C  4B FF EE 61 */	bl lookup__13daNpc_Kolin_cFUc
/* 80557950  3B A0 00 01 */	li r29, 1
/* 80557954  48 00 00 6C */	b lbl_805579C0
lbl_80557958:
/* 80557958  7F 03 C3 78 */	mr r3, r24
/* 8055795C  38 80 00 00 */	li r4, 0
/* 80557960  4B FF EE 4D */	bl lookup__13daNpc_Kolin_cFUc
/* 80557964  93 61 00 10 */	stw r27, 0x10(r1)
/* 80557968  7F 03 C3 78 */	mr r3, r24
/* 8055796C  38 81 00 10 */	addi r4, r1, 0x10
/* 80557970  38 A0 00 00 */	li r5, 0
/* 80557974  38 C1 00 08 */	addi r6, r1, 8
/* 80557978  38 E0 00 00 */	li r7, 0
/* 8055797C  4B BF 42 FD */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80557980  2C 03 00 00 */	cmpwi r3, 0
/* 80557984  41 82 00 3C */	beq lbl_805579C0
/* 80557988  2C 1B 00 00 */	cmpwi r27, 0
/* 8055798C  40 82 00 18 */	bne lbl_805579A4
/* 80557990  88 18 09 9A */	lbz r0, 0x99a(r24)
/* 80557994  28 00 00 01 */	cmplwi r0, 1
/* 80557998  40 82 00 28 */	bne lbl_805579C0
/* 8055799C  3B A0 00 01 */	li r29, 1
/* 805579A0  48 00 00 20 */	b lbl_805579C0
lbl_805579A4:
/* 805579A4  3B A0 00 01 */	li r29, 1
/* 805579A8  48 00 00 18 */	b lbl_805579C0
lbl_805579AC:
/* 805579AC  38 78 0D C4 */	addi r3, r24, 0xdc4
/* 805579B0  48 00 28 15 */	bl func_8055A1C4
/* 805579B4  2C 03 00 00 */	cmpwi r3, 0
/* 805579B8  40 82 00 08 */	bne lbl_805579C0
/* 805579BC  3B A0 00 01 */	li r29, 1
lbl_805579C0:
/* 805579C0  7F A3 EB 78 */	mr r3, r29
/* 805579C4  39 61 00 40 */	addi r11, r1, 0x40
/* 805579C8  4B E0 A8 4D */	bl _restgpr_24
/* 805579CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805579D0  7C 08 03 A6 */	mtlr r0
/* 805579D4  38 21 00 40 */	addi r1, r1, 0x40
/* 805579D8  4E 80 00 20 */	blr 
