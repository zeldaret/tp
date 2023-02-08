lbl_80A3203C:
/* 80A3203C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A32040  7C 08 02 A6 */	mflr r0
/* 80A32044  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A32048  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3204C  4B 93 01 89 */	bl _savegpr_27
/* 80A32050  7C 7D 1B 78 */	mr r29, r3
/* 80A32054  7C 9B 23 78 */	mr r27, r4
/* 80A32058  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A3205C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A32060  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80A32064  3B E0 00 00 */	li r31, 0
/* 80A32068  3B C0 FF FF */	li r30, -1
/* 80A3206C  7F 83 E3 78 */	mr r3, r28
/* 80A32070  3C A0 80 A4 */	lis r5, d_a_npc_kn__stringBase0@ha /* 0x80A40AF8@ha */
/* 80A32074  38 A5 0A F8 */	addi r5, r5, d_a_npc_kn__stringBase0@l /* 0x80A40AF8@l */
/* 80A32078  38 A5 02 35 */	addi r5, r5, 0x235
/* 80A3207C  38 C0 00 03 */	li r6, 3
/* 80A32080  4B 61 60 6D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A32084  28 03 00 00 */	cmplwi r3, 0
/* 80A32088  41 82 00 08 */	beq lbl_80A32090
/* 80A3208C  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80A32090:
/* 80A32090  7F 83 E3 78 */	mr r3, r28
/* 80A32094  7F 64 DB 78 */	mr r4, r27
/* 80A32098  4B 61 5C B5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80A3209C  2C 03 00 00 */	cmpwi r3, 0
/* 80A320A0  41 82 01 98 */	beq lbl_80A32238
/* 80A320A4  28 1E 00 14 */	cmplwi r30, 0x14
/* 80A320A8  41 81 01 90 */	bgt lbl_80A32238
/* 80A320AC  3C 60 80 A4 */	lis r3, lit_9730@ha /* 0x80A41A3C@ha */
/* 80A320B0  38 63 1A 3C */	addi r3, r3, lit_9730@l /* 0x80A41A3C@l */
/* 80A320B4  57 C0 10 3A */	slwi r0, r30, 2
/* 80A320B8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A320BC  7C 09 03 A6 */	mtctr r0
/* 80A320C0  4E 80 04 20 */	bctr 
lbl_80A320C4:
/* 80A320C4  80 1D 0B 8C */	lwz r0, 0xb8c(r29)
/* 80A320C8  2C 00 00 01 */	cmpwi r0, 1
/* 80A320CC  41 82 00 28 */	beq lbl_80A320F4
/* 80A320D0  83 9D 0B 90 */	lwz r28, 0xb90(r29)
/* 80A320D4  38 7D 0B 84 */	addi r3, r29, 0xb84
/* 80A320D8  4B 71 37 C1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A320DC  93 9D 0B 90 */	stw r28, 0xb90(r29)
/* 80A320E0  38 00 00 01 */	li r0, 1
/* 80A320E4  90 1D 0B 8C */	stw r0, 0xb8c(r29)
/* 80A320E8  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A320EC  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A320F0  D0 1D 0B 9C */	stfs f0, 0xb9c(r29)
lbl_80A320F4:
/* 80A320F4  80 1D 0B B0 */	lwz r0, 0xbb0(r29)
/* 80A320F8  2C 00 00 00 */	cmpwi r0, 0
/* 80A320FC  41 82 01 3C */	beq lbl_80A32238
/* 80A32100  83 9D 0B B4 */	lwz r28, 0xbb4(r29)
/* 80A32104  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80A32108  4B 71 37 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3210C  93 9D 0B B4 */	stw r28, 0xbb4(r29)
/* 80A32110  38 00 00 00 */	li r0, 0
/* 80A32114  90 1D 0B B0 */	stw r0, 0xbb0(r29)
/* 80A32118  3C 60 80 A4 */	lis r3, lit_4613@ha /* 0x80A40914@ha */
/* 80A3211C  C0 03 09 14 */	lfs f0, lit_4613@l(r3)  /* 0x80A40914@l */
/* 80A32120  D0 1D 0B C0 */	stfs f0, 0xbc0(r29)
/* 80A32124  48 00 01 14 */	b lbl_80A32238
lbl_80A32128:
/* 80A32128  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80A3212C  4B 5E F2 2D */	bl fpcEx_SearchByID__FUi
/* 80A32130  A8 03 00 08 */	lha r0, 8(r3)
/* 80A32134  2C 00 02 4F */	cmpwi r0, 0x24f
/* 80A32138  40 82 01 00 */	bne lbl_80A32238
/* 80A3213C  38 80 00 04 */	li r4, 4
/* 80A32140  3C A0 80 A4 */	lis r5, lit_4613@ha /* 0x80A40914@ha */
/* 80A32144  C0 25 09 14 */	lfs f1, lit_4613@l(r5)  /* 0x80A40914@l */
/* 80A32148  38 A0 00 00 */	li r5, 0
/* 80A3214C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A32150  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A32154  7D 89 03 A6 */	mtctr r12
/* 80A32158  4E 80 04 21 */	bctrl 
/* 80A3215C  48 00 00 DC */	b lbl_80A32238
lbl_80A32160:
/* 80A32160  80 7D 04 A4 */	lwz r3, 0x4a4(r29)
/* 80A32164  4B 5E F1 F5 */	bl fpcEx_SearchByID__FUi
/* 80A32168  28 03 00 00 */	cmplwi r3, 0
/* 80A3216C  41 82 00 08 */	beq lbl_80A32174
/* 80A32170  4B 5E 7B 0D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80A32174:
/* 80A32174  38 00 00 00 */	li r0, 0
/* 80A32178  98 1D 0E 2C */	stb r0, 0xe2c(r29)
/* 80A3217C  48 00 00 BC */	b lbl_80A32238
lbl_80A32180:
/* 80A32180  88 1D 15 AC */	lbz r0, 0x15ac(r29)
/* 80A32184  2C 00 00 04 */	cmpwi r0, 4
/* 80A32188  41 82 00 6C */	beq lbl_80A321F4
/* 80A3218C  40 80 00 1C */	bge lbl_80A321A8
/* 80A32190  2C 00 00 02 */	cmpwi r0, 2
/* 80A32194  41 82 00 38 */	beq lbl_80A321CC
/* 80A32198  40 80 00 48 */	bge lbl_80A321E0
/* 80A3219C  2C 00 00 01 */	cmpwi r0, 1
/* 80A321A0  40 80 00 18 */	bge lbl_80A321B8
/* 80A321A4  48 00 00 94 */	b lbl_80A32238
lbl_80A321A8:
/* 80A321A8  2C 00 00 06 */	cmpwi r0, 6
/* 80A321AC  41 82 00 70 */	beq lbl_80A3221C
/* 80A321B0  40 80 00 88 */	bge lbl_80A32238
/* 80A321B4  48 00 00 54 */	b lbl_80A32208
lbl_80A321B8:
/* 80A321B8  7F A3 EB 78 */	mr r3, r29
/* 80A321BC  38 80 02 BD */	li r4, 0x2bd
/* 80A321C0  38 A0 00 00 */	li r5, 0
/* 80A321C4  48 00 92 25 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A321C8  48 00 00 70 */	b lbl_80A32238
lbl_80A321CC:
/* 80A321CC  7F A3 EB 78 */	mr r3, r29
/* 80A321D0  38 80 02 DE */	li r4, 0x2de
/* 80A321D4  38 A0 00 00 */	li r5, 0
/* 80A321D8  48 00 92 11 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A321DC  48 00 00 5C */	b lbl_80A32238
lbl_80A321E0:
/* 80A321E0  7F A3 EB 78 */	mr r3, r29
/* 80A321E4  38 80 02 EE */	li r4, 0x2ee
/* 80A321E8  38 A0 00 00 */	li r5, 0
/* 80A321EC  48 00 91 FD */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A321F0  48 00 00 48 */	b lbl_80A32238
lbl_80A321F4:
/* 80A321F4  7F A3 EB 78 */	mr r3, r29
/* 80A321F8  38 80 02 E6 */	li r4, 0x2e6
/* 80A321FC  38 A0 00 00 */	li r5, 0
/* 80A32200  48 00 91 E9 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A32204  48 00 00 34 */	b lbl_80A32238
lbl_80A32208:
/* 80A32208  7F A3 EB 78 */	mr r3, r29
/* 80A3220C  38 80 02 F7 */	li r4, 0x2f7
/* 80A32210  38 A0 00 00 */	li r5, 0
/* 80A32214  48 00 91 D5 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A32218  48 00 00 20 */	b lbl_80A32238
lbl_80A3221C:
/* 80A3221C  7F A3 EB 78 */	mr r3, r29
/* 80A32220  38 80 02 FF */	li r4, 0x2ff
/* 80A32224  38 A0 00 00 */	li r5, 0
/* 80A32228  48 00 91 C1 */	bl initTalk__10daNpc_Kn_cFiPP10fopAc_ac_c
/* 80A3222C  48 00 00 0C */	b lbl_80A32238
lbl_80A32230:
/* 80A32230  38 00 00 1E */	li r0, 0x1e
/* 80A32234  90 1D 0D EC */	stw r0, 0xdec(r29)
lbl_80A32238:
/* 80A32238  28 1E 00 14 */	cmplwi r30, 0x14
/* 80A3223C  41 81 02 68 */	bgt lbl_80A324A4
/* 80A32240  3C 60 80 A4 */	lis r3, lit_9731@ha /* 0x80A419E8@ha */
/* 80A32244  38 63 19 E8 */	addi r3, r3, lit_9731@l /* 0x80A419E8@l */
/* 80A32248  57 C0 10 3A */	slwi r0, r30, 2
/* 80A3224C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A32250  7C 09 03 A6 */	mtctr r0
/* 80A32254  4E 80 04 20 */	bctr 
lbl_80A32258:
/* 80A32258  3B E0 00 01 */	li r31, 1
/* 80A3225C  48 00 02 4C */	b lbl_80A324A8
lbl_80A32260:
/* 80A32260  3B E0 00 01 */	li r31, 1
/* 80A32264  48 00 02 44 */	b lbl_80A324A8
lbl_80A32268:
/* 80A32268  3B E0 00 01 */	li r31, 1
/* 80A3226C  48 00 02 3C */	b lbl_80A324A8
lbl_80A32270:
/* 80A32270  7F A3 EB 78 */	mr r3, r29
/* 80A32274  38 80 00 00 */	li r4, 0
/* 80A32278  38 A0 00 00 */	li r5, 0
/* 80A3227C  38 C0 00 00 */	li r6, 0
/* 80A32280  38 E0 00 00 */	li r7, 0
/* 80A32284  48 00 91 C5 */	bl talkProc__10daNpc_Kn_cFPiiPP10fopAc_ac_ci
/* 80A32288  2C 03 00 00 */	cmpwi r3, 0
/* 80A3228C  41 82 02 1C */	beq lbl_80A324A8
/* 80A32290  A0 1D 09 E2 */	lhz r0, 0x9e2(r29)
/* 80A32294  7C 00 07 35 */	extsh. r0, r0
/* 80A32298  40 82 01 68 */	bne lbl_80A32400
/* 80A3229C  38 00 00 00 */	li r0, 0
/* 80A322A0  90 01 00 08 */	stw r0, 8(r1)
/* 80A322A4  88 1D 15 AC */	lbz r0, 0x15ac(r29)
/* 80A322A8  2C 00 00 03 */	cmpwi r0, 3
/* 80A322AC  41 82 00 B8 */	beq lbl_80A32364
/* 80A322B0  40 80 00 14 */	bge lbl_80A322C4
/* 80A322B4  2C 00 00 01 */	cmpwi r0, 1
/* 80A322B8  41 82 00 18 */	beq lbl_80A322D0
/* 80A322BC  40 80 00 50 */	bge lbl_80A3230C
/* 80A322C0  48 00 01 38 */	b lbl_80A323F8
lbl_80A322C4:
/* 80A322C4  2C 00 00 05 */	cmpwi r0, 5
/* 80A322C8  40 80 01 30 */	bge lbl_80A323F8
/* 80A322CC  48 00 00 D4 */	b lbl_80A323A0
lbl_80A322D0:
/* 80A322D0  38 7D 09 A8 */	addi r3, r29, 0x9a8
/* 80A322D4  38 81 00 08 */	addi r4, r1, 8
/* 80A322D8  4B 81 82 51 */	bl getEventId__10dMsgFlow_cFPi
/* 80A322DC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80A322E0  28 00 00 1A */	cmplwi r0, 0x1a
/* 80A322E4  40 82 00 18 */	bne lbl_80A322FC
/* 80A322E8  80 01 00 08 */	lwz r0, 8(r1)
/* 80A322EC  2C 00 00 00 */	cmpwi r0, 0
/* 80A322F0  40 82 00 0C */	bne lbl_80A322FC
/* 80A322F4  3B E0 00 01 */	li r31, 1
/* 80A322F8  48 00 01 B0 */	b lbl_80A324A8
lbl_80A322FC:
/* 80A322FC  7F A3 EB 78 */	mr r3, r29
/* 80A32300  38 80 00 00 */	li r4, 0
/* 80A32304  4B FF B9 B1 */	bl setSceneChange__10daNpc_Kn_cFi
/* 80A32308  48 00 01 A0 */	b lbl_80A324A8
lbl_80A3230C:
/* 80A3230C  38 7D 09 A8 */	addi r3, r29, 0x9a8
/* 80A32310  38 81 00 08 */	addi r4, r1, 8
/* 80A32314  4B 81 82 15 */	bl getEventId__10dMsgFlow_cFPi
/* 80A32318  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80A3231C  28 00 00 1A */	cmplwi r0, 0x1a
/* 80A32320  40 82 00 34 */	bne lbl_80A32354
/* 80A32324  80 01 00 08 */	lwz r0, 8(r1)
/* 80A32328  2C 00 00 01 */	cmpwi r0, 1
/* 80A3232C  40 82 00 0C */	bne lbl_80A32338
/* 80A32330  3B E0 00 01 */	li r31, 1
/* 80A32334  48 00 01 74 */	b lbl_80A324A8
lbl_80A32338:
/* 80A32338  2C 00 00 02 */	cmpwi r0, 2
/* 80A3233C  40 82 01 6C */	bne lbl_80A324A8
/* 80A32340  38 00 00 0D */	li r0, 0xd
/* 80A32344  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A32348  7F A3 EB 78 */	mr r3, r29
/* 80A3234C  48 00 80 B9 */	bl evtChange__10daNpc_Kn_cFv
/* 80A32350  48 00 01 58 */	b lbl_80A324A8
lbl_80A32354:
/* 80A32354  7F A3 EB 78 */	mr r3, r29
/* 80A32358  38 80 00 00 */	li r4, 0
/* 80A3235C  4B FF B9 59 */	bl setSceneChange__10daNpc_Kn_cFi
/* 80A32360  48 00 01 48 */	b lbl_80A324A8
lbl_80A32364:
/* 80A32364  38 7D 09 A8 */	addi r3, r29, 0x9a8
/* 80A32368  38 81 00 08 */	addi r4, r1, 8
/* 80A3236C  4B 81 81 BD */	bl getEventId__10dMsgFlow_cFPi
/* 80A32370  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80A32374  28 00 00 1A */	cmplwi r0, 0x1a
/* 80A32378  40 82 00 18 */	bne lbl_80A32390
/* 80A3237C  80 01 00 08 */	lwz r0, 8(r1)
/* 80A32380  2C 00 00 03 */	cmpwi r0, 3
/* 80A32384  40 82 00 0C */	bne lbl_80A32390
/* 80A32388  3B E0 00 01 */	li r31, 1
/* 80A3238C  48 00 01 1C */	b lbl_80A324A8
lbl_80A32390:
/* 80A32390  7F A3 EB 78 */	mr r3, r29
/* 80A32394  38 80 00 00 */	li r4, 0
/* 80A32398  4B FF B9 1D */	bl setSceneChange__10daNpc_Kn_cFi
/* 80A3239C  48 00 01 0C */	b lbl_80A324A8
lbl_80A323A0:
/* 80A323A0  38 7D 09 A8 */	addi r3, r29, 0x9a8
/* 80A323A4  38 81 00 08 */	addi r4, r1, 8
/* 80A323A8  4B 81 81 81 */	bl getEventId__10dMsgFlow_cFPi
/* 80A323AC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80A323B0  28 00 00 1A */	cmplwi r0, 0x1a
/* 80A323B4  40 82 00 34 */	bne lbl_80A323E8
/* 80A323B8  80 01 00 08 */	lwz r0, 8(r1)
/* 80A323BC  2C 00 00 04 */	cmpwi r0, 4
/* 80A323C0  40 82 00 0C */	bne lbl_80A323CC
/* 80A323C4  3B E0 00 01 */	li r31, 1
/* 80A323C8  48 00 00 E0 */	b lbl_80A324A8
lbl_80A323CC:
/* 80A323CC  2C 00 00 05 */	cmpwi r0, 5
/* 80A323D0  40 82 00 D8 */	bne lbl_80A324A8
/* 80A323D4  38 00 00 12 */	li r0, 0x12
/* 80A323D8  B0 1D 0E 36 */	sth r0, 0xe36(r29)
/* 80A323DC  7F A3 EB 78 */	mr r3, r29
/* 80A323E0  48 00 80 25 */	bl evtChange__10daNpc_Kn_cFv
/* 80A323E4  48 00 00 C4 */	b lbl_80A324A8
lbl_80A323E8:
/* 80A323E8  7F A3 EB 78 */	mr r3, r29
/* 80A323EC  38 80 00 00 */	li r4, 0
/* 80A323F0  4B FF B8 C5 */	bl setSceneChange__10daNpc_Kn_cFi
/* 80A323F4  48 00 00 B4 */	b lbl_80A324A8
lbl_80A323F8:
/* 80A323F8  3B E0 00 01 */	li r31, 1
/* 80A323FC  48 00 00 AC */	b lbl_80A324A8
lbl_80A32400:
/* 80A32400  7F A3 EB 78 */	mr r3, r29
/* 80A32404  38 80 00 00 */	li r4, 0
/* 80A32408  4B FF B8 AD */	bl setSceneChange__10daNpc_Kn_cFi
/* 80A3240C  48 00 00 9C */	b lbl_80A324A8
lbl_80A32410:
/* 80A32410  38 7D 0D EC */	addi r3, r29, 0xdec
/* 80A32414  48 00 99 35 */	bl func_80A3BD48
/* 80A32418  2C 03 00 00 */	cmpwi r3, 0
/* 80A3241C  40 82 00 8C */	bne lbl_80A324A8
/* 80A32420  3B E0 00 01 */	li r31, 1
/* 80A32424  88 1D 15 AC */	lbz r0, 0x15ac(r29)
/* 80A32428  2C 00 00 04 */	cmpwi r0, 4
/* 80A3242C  41 82 00 54 */	beq lbl_80A32480
/* 80A32430  40 80 00 1C */	bge lbl_80A3244C
/* 80A32434  2C 00 00 02 */	cmpwi r0, 2
/* 80A32438  41 82 00 30 */	beq lbl_80A32468
/* 80A3243C  40 80 00 38 */	bge lbl_80A32474
/* 80A32440  2C 00 00 01 */	cmpwi r0, 1
/* 80A32444  40 80 00 18 */	bge lbl_80A3245C
/* 80A32448  48 00 00 60 */	b lbl_80A324A8
lbl_80A3244C:
/* 80A3244C  2C 00 00 06 */	cmpwi r0, 6
/* 80A32450  41 82 00 48 */	beq lbl_80A32498
/* 80A32454  40 80 00 54 */	bge lbl_80A324A8
/* 80A32458  48 00 00 34 */	b lbl_80A3248C
lbl_80A3245C:
/* 80A3245C  38 00 00 02 */	li r0, 2
/* 80A32460  98 1D 15 AE */	stb r0, 0x15ae(r29)
/* 80A32464  48 00 00 44 */	b lbl_80A324A8
lbl_80A32468:
/* 80A32468  38 00 00 05 */	li r0, 5
/* 80A3246C  98 1D 15 AE */	stb r0, 0x15ae(r29)
/* 80A32470  48 00 00 38 */	b lbl_80A324A8
lbl_80A32474:
/* 80A32474  38 00 00 08 */	li r0, 8
/* 80A32478  98 1D 15 AE */	stb r0, 0x15ae(r29)
/* 80A3247C  48 00 00 2C */	b lbl_80A324A8
lbl_80A32480:
/* 80A32480  38 00 00 09 */	li r0, 9
/* 80A32484  98 1D 15 AE */	stb r0, 0x15ae(r29)
/* 80A32488  48 00 00 20 */	b lbl_80A324A8
lbl_80A3248C:
/* 80A3248C  38 00 00 0C */	li r0, 0xc
/* 80A32490  98 1D 15 AE */	stb r0, 0x15ae(r29)
/* 80A32494  48 00 00 14 */	b lbl_80A324A8
lbl_80A32498:
/* 80A32498  38 00 00 0D */	li r0, 0xd
/* 80A3249C  98 1D 15 AE */	stb r0, 0x15ae(r29)
/* 80A324A0  48 00 00 08 */	b lbl_80A324A8
lbl_80A324A4:
/* 80A324A4  3B E0 00 01 */	li r31, 1
lbl_80A324A8:
/* 80A324A8  7F E3 FB 78 */	mr r3, r31
/* 80A324AC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A324B0  4B 92 FD 71 */	bl _restgpr_27
/* 80A324B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A324B8  7C 08 03 A6 */	mtlr r0
/* 80A324BC  38 21 00 30 */	addi r1, r1, 0x30
/* 80A324C0  4E 80 00 20 */	blr 
