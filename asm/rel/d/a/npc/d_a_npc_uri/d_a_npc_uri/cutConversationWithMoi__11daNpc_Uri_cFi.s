lbl_80B296B8:
/* 80B296B8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B296BC  7C 08 02 A6 */	mflr r0
/* 80B296C0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B296C4  39 61 00 30 */	addi r11, r1, 0x30
/* 80B296C8  4B 83 8B 08 */	b _savegpr_26
/* 80B296CC  7C 7B 1B 78 */	mr r27, r3
/* 80B296D0  7C 9C 23 78 */	mr r28, r4
/* 80B296D4  3B E0 00 00 */	li r31, 0
/* 80B296D8  3B C0 FF FF */	li r30, -1
/* 80B296DC  3B A0 00 00 */	li r29, 0
/* 80B296E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B296E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B296E8  3B 43 4F F8 */	addi r26, r3, 0x4ff8
/* 80B296EC  7F 43 D3 78 */	mr r3, r26
/* 80B296F0  3C A0 80 B3 */	lis r5, struct_80B2CF74+0x0@ha
/* 80B296F4  38 A5 CF 74 */	addi r5, r5, struct_80B2CF74+0x0@l
/* 80B296F8  38 A5 00 C4 */	addi r5, r5, 0xc4
/* 80B296FC  38 C0 00 03 */	li r6, 3
/* 80B29700  4B 51 E9 EC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B29704  28 03 00 00 */	cmplwi r3, 0
/* 80B29708  41 82 00 08 */	beq lbl_80B29710
/* 80B2970C  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80B29710:
/* 80B29710  7F 43 D3 78 */	mr r3, r26
/* 80B29714  7F 84 E3 78 */	mr r4, r28
/* 80B29718  3C A0 80 B3 */	lis r5, struct_80B2CF74+0x0@ha
/* 80B2971C  38 A5 CF 74 */	addi r5, r5, struct_80B2CF74+0x0@l
/* 80B29720  38 A5 00 C8 */	addi r5, r5, 0xc8
/* 80B29724  38 C0 00 03 */	li r6, 3
/* 80B29728  4B 51 E9 C4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B2972C  28 03 00 00 */	cmplwi r3, 0
/* 80B29730  41 82 00 08 */	beq lbl_80B29738
/* 80B29734  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B29738:
/* 80B29738  3C 60 80 B3 */	lis r3, lit_5573@ha
/* 80B2973C  38 83 CF 50 */	addi r4, r3, lit_5573@l
/* 80B29740  80 64 00 00 */	lwz r3, 0(r4)
/* 80B29744  80 04 00 04 */	lwz r0, 4(r4)
/* 80B29748  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B2974C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B29750  38 7B 0F 88 */	addi r3, r27, 0xf88
/* 80B29754  4B 61 BF B4 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80B29758  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B2975C  93 61 00 14 */	stw r27, 0x14(r1)
/* 80B29760  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B29764  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B29768  90 64 5E F0 */	stw r3, 0x5ef0(r4)
/* 80B2976C  93 64 5E F4 */	stw r27, 0x5ef4(r4)
/* 80B29770  38 00 00 00 */	li r0, 0
/* 80B29774  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 80B29778  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 80B2977C  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80B29780  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80B29784  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80B29788  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80B2978C  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80B29790  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80B29794  7F 43 D3 78 */	mr r3, r26
/* 80B29798  7F 84 E3 78 */	mr r4, r28
/* 80B2979C  4B 51 E5 B0 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B297A0  2C 03 00 00 */	cmpwi r3, 0
/* 80B297A4  41 82 00 2C */	beq lbl_80B297D0
/* 80B297A8  2C 1E 00 01 */	cmpwi r30, 1
/* 80B297AC  41 82 00 24 */	beq lbl_80B297D0
/* 80B297B0  40 80 00 20 */	bge lbl_80B297D0
/* 80B297B4  2C 1E 00 00 */	cmpwi r30, 0
/* 80B297B8  40 80 00 08 */	bge lbl_80B297C0
/* 80B297BC  48 00 00 14 */	b lbl_80B297D0
lbl_80B297C0:
/* 80B297C0  7F 63 DB 78 */	mr r3, r27
/* 80B297C4  38 80 00 CE */	li r4, 0xce
/* 80B297C8  38 A1 00 10 */	addi r5, r1, 0x10
/* 80B297CC  4B 62 24 24 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_80B297D0:
/* 80B297D0  3C 60 80 B3 */	lis r3, lit_5580@ha
/* 80B297D4  38 83 CF 58 */	addi r4, r3, lit_5580@l
/* 80B297D8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B297DC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B297E0  90 61 00 08 */	stw r3, 8(r1)
/* 80B297E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B297E8  2C 1E 00 02 */	cmpwi r30, 2
/* 80B297EC  40 80 00 54 */	bge lbl_80B29840
/* 80B297F0  2C 1E 00 00 */	cmpwi r30, 0
/* 80B297F4  40 80 00 08 */	bge lbl_80B297FC
/* 80B297F8  48 00 00 48 */	b lbl_80B29840
lbl_80B297FC:
/* 80B297FC  93 A1 00 08 */	stw r29, 8(r1)
/* 80B29800  7F 63 DB 78 */	mr r3, r27
/* 80B29804  38 81 00 08 */	addi r4, r1, 8
/* 80B29808  38 A0 00 01 */	li r5, 1
/* 80B2980C  38 C1 00 10 */	addi r6, r1, 0x10
/* 80B29810  38 E0 00 00 */	li r7, 0
/* 80B29814  4B 62 24 64 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B29818  2C 03 00 00 */	cmpwi r3, 0
/* 80B2981C  41 82 00 24 */	beq lbl_80B29840
/* 80B29820  2C 1D 00 00 */	cmpwi r29, 0
/* 80B29824  40 82 00 18 */	bne lbl_80B2983C
/* 80B29828  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80B2982C  28 00 00 01 */	cmplwi r0, 1
/* 80B29830  40 82 00 10 */	bne lbl_80B29840
/* 80B29834  3B E0 00 01 */	li r31, 1
/* 80B29838  48 00 00 08 */	b lbl_80B29840
lbl_80B2983C:
/* 80B2983C  3B E0 00 01 */	li r31, 1
lbl_80B29840:
/* 80B29840  7F E3 FB 78 */	mr r3, r31
/* 80B29844  39 61 00 30 */	addi r11, r1, 0x30
/* 80B29848  4B 83 89 D4 */	b _restgpr_26
/* 80B2984C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B29850  7C 08 03 A6 */	mtlr r0
/* 80B29854  38 21 00 30 */	addi r1, r1, 0x30
/* 80B29858  4E 80 00 20 */	blr 
