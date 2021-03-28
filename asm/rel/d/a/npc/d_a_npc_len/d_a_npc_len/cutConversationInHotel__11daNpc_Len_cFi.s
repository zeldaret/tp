lbl_80A661B4:
/* 80A661B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A661B8  7C 08 02 A6 */	mflr r0
/* 80A661BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A661C0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A661C4  4B 8F C0 04 */	b _savegpr_24
/* 80A661C8  7C 7B 1B 78 */	mr r27, r3
/* 80A661CC  7C 98 23 78 */	mr r24, r4
/* 80A661D0  3C 60 80 A7 */	lis r3, m__17daNpc_Len_Param_c@ha
/* 80A661D4  3B E3 8E A4 */	addi r31, r3, m__17daNpc_Len_Param_c@l
/* 80A661D8  3B C0 00 00 */	li r30, 0
/* 80A661DC  3B A0 FF FF */	li r29, -1
/* 80A661E0  3B 20 00 00 */	li r25, 0
/* 80A661E4  3B 80 00 00 */	li r28, 0
/* 80A661E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A661EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A661F0  3B 43 4F F8 */	addi r26, r3, 0x4ff8
/* 80A661F4  7F 43 D3 78 */	mr r3, r26
/* 80A661F8  3C A0 80 A7 */	lis r5, struct_80A68FDC+0x0@ha
/* 80A661FC  38 A5 8F DC */	addi r5, r5, struct_80A68FDC+0x0@l
/* 80A66200  38 A5 00 9A */	addi r5, r5, 0x9a
/* 80A66204  38 C0 00 03 */	li r6, 3
/* 80A66208  4B 5E 1E E4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A6620C  28 03 00 00 */	cmplwi r3, 0
/* 80A66210  41 82 00 08 */	beq lbl_80A66218
/* 80A66214  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80A66218:
/* 80A66218  7F 43 D3 78 */	mr r3, r26
/* 80A6621C  7F 04 C3 78 */	mr r4, r24
/* 80A66220  3C A0 80 A7 */	lis r5, struct_80A68FDC+0x0@ha
/* 80A66224  38 A5 8F DC */	addi r5, r5, struct_80A68FDC+0x0@l
/* 80A66228  38 A5 00 9E */	addi r5, r5, 0x9e
/* 80A6622C  38 C0 00 03 */	li r6, 3
/* 80A66230  4B 5E 1E BC */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A66234  28 03 00 00 */	cmplwi r3, 0
/* 80A66238  41 82 00 08 */	beq lbl_80A66240
/* 80A6623C  83 23 00 00 */	lwz r25, 0(r3)
lbl_80A66240:
/* 80A66240  7F 43 D3 78 */	mr r3, r26
/* 80A66244  7F 04 C3 78 */	mr r4, r24
/* 80A66248  3C A0 80 A7 */	lis r5, struct_80A68FDC+0x0@ha
/* 80A6624C  38 A5 8F DC */	addi r5, r5, struct_80A68FDC+0x0@l
/* 80A66250  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80A66254  38 C0 00 03 */	li r6, 3
/* 80A66258  4B 5E 1E 94 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80A6625C  28 03 00 00 */	cmplwi r3, 0
/* 80A66260  41 82 00 08 */	beq lbl_80A66268
/* 80A66264  83 83 00 00 */	lwz r28, 0(r3)
lbl_80A66268:
/* 80A66268  7F 43 D3 78 */	mr r3, r26
/* 80A6626C  7F 04 C3 78 */	mr r4, r24
/* 80A66270  4B 5E 1A DC */	b getIsAddvance__16dEvent_manager_cFi
/* 80A66274  2C 03 00 00 */	cmpwi r3, 0
/* 80A66278  41 82 00 F8 */	beq lbl_80A66370
/* 80A6627C  2C 1D 00 02 */	cmpwi r29, 2
/* 80A66280  41 82 00 98 */	beq lbl_80A66318
/* 80A66284  40 80 00 10 */	bge lbl_80A66294
/* 80A66288  2C 1D 00 00 */	cmpwi r29, 0
/* 80A6628C  41 82 00 18 */	beq lbl_80A662A4
/* 80A66290  48 00 00 E0 */	b lbl_80A66370
lbl_80A66294:
/* 80A66294  2C 1D 00 04 */	cmpwi r29, 4
/* 80A66298  41 82 00 D8 */	beq lbl_80A66370
/* 80A6629C  40 80 00 D4 */	bge lbl_80A66370
/* 80A662A0  48 00 00 90 */	b lbl_80A66330
lbl_80A662A4:
/* 80A662A4  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 80A662A8  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A662AC  41 82 00 24 */	beq lbl_80A662D0
/* 80A662B0  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 80A662B4  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 80A662B8  4B 6D F5 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A662BC  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 80A662C0  38 00 00 11 */	li r0, 0x11
/* 80A662C4  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 80A662C8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A662CC  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_80A662D0:
/* 80A662D0  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80A662D4  2C 00 00 00 */	cmpwi r0, 0
/* 80A662D8  41 82 00 24 */	beq lbl_80A662FC
/* 80A662DC  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 80A662E0  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80A662E4  4B 6D F5 B4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A662E8  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 80A662EC  38 00 00 00 */	li r0, 0
/* 80A662F0  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80A662F4  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A662F8  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
lbl_80A662FC:
/* 80A662FC  38 60 00 0B */	li r3, 0xb
/* 80A66300  4B 6E 68 2C */	b daNpcT_offTmpBit__FUl
/* 80A66304  7F 63 DB 78 */	mr r3, r27
/* 80A66308  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80A6630C  38 A0 00 00 */	li r5, 0
/* 80A66310  4B 6E 58 E0 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A66314  48 00 00 5C */	b lbl_80A66370
lbl_80A66318:
/* 80A66318  93 3B 0D C4 */	stw r25, 0xdc4(r27)
/* 80A6631C  7F 63 DB 78 */	mr r3, r27
/* 80A66320  80 9B 0A 7C */	lwz r4, 0xa7c(r27)
/* 80A66324  38 A0 00 00 */	li r5, 0
/* 80A66328  4B 6E 58 C8 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80A6632C  48 00 00 44 */	b lbl_80A66370
lbl_80A66330:
/* 80A66330  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80A66334  2C 00 00 00 */	cmpwi r0, 0
/* 80A66338  41 82 00 24 */	beq lbl_80A6635C
/* 80A6633C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80A66340  4B 6D F3 BC */	b remove__18daNpcT_ActorMngr_cFv
/* 80A66344  38 00 00 00 */	li r0, 0
/* 80A66348  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80A6634C  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A66350  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80A66354  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80A66358  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80A6635C:
/* 80A6635C  38 00 00 00 */	li r0, 0
/* 80A66360  B0 1B 0C D4 */	sth r0, 0xcd4(r27)
/* 80A66364  B0 1B 0C D6 */	sth r0, 0xcd6(r27)
/* 80A66368  38 00 00 01 */	li r0, 1
/* 80A6636C  98 1B 0C FF */	stb r0, 0xcff(r27)
lbl_80A66370:
/* 80A66370  80 7F 01 28 */	lwz r3, 0x128(r31)
/* 80A66374  80 1F 01 2C */	lwz r0, 0x12c(r31)
/* 80A66378  90 61 00 08 */	stw r3, 8(r1)
/* 80A6637C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A66380  2C 1D 00 02 */	cmpwi r29, 2
/* 80A66384  41 82 00 C8 */	beq lbl_80A6644C
/* 80A66388  40 80 00 14 */	bge lbl_80A6639C
/* 80A6638C  2C 1D 00 00 */	cmpwi r29, 0
/* 80A66390  41 82 00 1C */	beq lbl_80A663AC
/* 80A66394  40 80 00 84 */	bge lbl_80A66418
/* 80A66398  48 00 02 B0 */	b lbl_80A66648
lbl_80A6639C:
/* 80A6639C  2C 1D 00 04 */	cmpwi r29, 4
/* 80A663A0  41 82 02 2C */	beq lbl_80A665CC
/* 80A663A4  40 80 02 A4 */	bge lbl_80A66648
/* 80A663A8  48 00 02 1C */	b lbl_80A665C4
lbl_80A663AC:
/* 80A663AC  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80A663B0  2C 00 00 01 */	cmpwi r0, 1
/* 80A663B4  41 82 00 28 */	beq lbl_80A663DC
/* 80A663B8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80A663BC  4B 6D F3 40 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A663C0  38 00 00 00 */	li r0, 0
/* 80A663C4  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80A663C8  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A663CC  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80A663D0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80A663D4  38 00 00 01 */	li r0, 1
/* 80A663D8  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80A663DC:
/* 80A663DC  38 00 00 00 */	li r0, 0
/* 80A663E0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80A663E4  A8 9B 0D C8 */	lha r4, 0xdc8(r27)
/* 80A663E8  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 80A663EC  7C 04 00 00 */	cmpw r4, r0
/* 80A663F0  41 82 00 20 */	beq lbl_80A66410
/* 80A663F4  7F 63 DB 78 */	mr r3, r27
/* 80A663F8  38 A0 00 11 */	li r5, 0x11
/* 80A663FC  38 C0 00 0D */	li r6, 0xd
/* 80A66400  38 E0 00 0F */	li r7, 0xf
/* 80A66404  39 00 00 00 */	li r8, 0
/* 80A66408  4B 6E 52 40 */	b step__8daNpcT_cFsiiii
/* 80A6640C  48 00 02 3C */	b lbl_80A66648
lbl_80A66410:
/* 80A66410  3B C0 00 01 */	li r30, 1
/* 80A66414  48 00 02 34 */	b lbl_80A66648
lbl_80A66418:
/* 80A66418  7F 63 DB 78 */	mr r3, r27
/* 80A6641C  38 80 00 00 */	li r4, 0
/* 80A66420  38 A0 00 00 */	li r5, 0
/* 80A66424  38 C0 00 00 */	li r6, 0
/* 80A66428  38 E0 00 00 */	li r7, 0
/* 80A6642C  4B 6E 58 4C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A66430  2C 03 00 00 */	cmpwi r3, 0
/* 80A66434  41 82 02 14 */	beq lbl_80A66648
/* 80A66438  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80A6643C  28 00 00 01 */	cmplwi r0, 1
/* 80A66440  40 82 02 08 */	bne lbl_80A66648
/* 80A66444  3B C0 00 01 */	li r30, 1
/* 80A66448  48 00 02 00 */	b lbl_80A66648
lbl_80A6644C:
/* 80A6644C  38 7B 0F 84 */	addi r3, r27, 0xf84
/* 80A66450  4B 6D F2 B8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A66454  7C 7A 1B 79 */	or. r26, r3, r3
/* 80A66458  41 82 00 90 */	beq lbl_80A664E8
/* 80A6645C  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80A66460  4B 6D F2 A8 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 80A66464  7C 63 D0 50 */	subf r3, r3, r26
/* 80A66468  30 03 FF FF */	addic r0, r3, -1
/* 80A6646C  7C 00 19 10 */	subfe r0, r0, r3
/* 80A66470  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80A66474  40 82 00 10 */	bne lbl_80A66484
/* 80A66478  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80A6647C  2C 00 00 02 */	cmpwi r0, 2
/* 80A66480  41 82 00 30 */	beq lbl_80A664B0
lbl_80A66484:
/* 80A66484  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80A66488  4B 6D F2 74 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A6648C  38 00 00 00 */	li r0, 0
/* 80A66490  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80A66494  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A66498  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80A6649C  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80A664A0  38 00 00 02 */	li r0, 2
/* 80A664A4  90 1B 0C E0 */	stw r0, 0xce0(r27)
/* 80A664A8  38 00 00 01 */	li r0, 1
/* 80A664AC  48 00 00 08 */	b lbl_80A664B4
lbl_80A664B0:
/* 80A664B0  38 00 00 00 */	li r0, 0
lbl_80A664B4:
/* 80A664B4  2C 00 00 00 */	cmpwi r0, 0
/* 80A664B8  41 82 00 28 */	beq lbl_80A664E0
/* 80A664BC  7F 43 D3 78 */	mr r3, r26
/* 80A664C0  4B 5B 28 20 */	b fopAc_IsActor__FPv
/* 80A664C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A664C8  41 82 00 18 */	beq lbl_80A664E0
/* 80A664CC  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80A664D0  7F 44 D3 78 */	mr r4, r26
/* 80A664D4  4B 6D F2 0C */	b entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80A664D8  C0 1F 01 30 */	lfs f0, 0x130(r31)
/* 80A664DC  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
lbl_80A664E0:
/* 80A664E0  38 00 00 00 */	li r0, 0
/* 80A664E4  98 1B 0C FF */	stb r0, 0xcff(r27)
lbl_80A664E8:
/* 80A664E8  38 7B 0D C4 */	addi r3, r27, 0xdc4
/* 80A664EC  48 00 26 C9 */	bl func_80A68BB4
/* 80A664F0  2C 03 00 00 */	cmpwi r3, 0
/* 80A664F4  40 82 00 44 */	bne lbl_80A66538
/* 80A664F8  A8 7B 04 B6 */	lha r3, 0x4b6(r27)
/* 80A664FC  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 80A66500  7C 03 00 00 */	cmpw r3, r0
/* 80A66504  40 82 00 34 */	bne lbl_80A66538
/* 80A66508  7F 63 DB 78 */	mr r3, r27
/* 80A6650C  38 80 00 00 */	li r4, 0
/* 80A66510  38 A0 00 00 */	li r5, 0
/* 80A66514  38 C0 00 00 */	li r6, 0
/* 80A66518  38 E0 00 00 */	li r7, 0
/* 80A6651C  4B 6E 57 5C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A66520  2C 03 00 00 */	cmpwi r3, 0
/* 80A66524  41 82 00 14 */	beq lbl_80A66538
/* 80A66528  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80A6652C  28 00 00 01 */	cmplwi r0, 1
/* 80A66530  40 82 00 08 */	bne lbl_80A66538
/* 80A66534  3B C0 00 01 */	li r30, 1
lbl_80A66538:
/* 80A66538  A8 9B 04 B6 */	lha r4, 0x4b6(r27)
/* 80A6653C  A8 1B 0D 7A */	lha r0, 0xd7a(r27)
/* 80A66540  7C 04 00 00 */	cmpw r4, r0
/* 80A66544  41 82 01 04 */	beq lbl_80A66648
/* 80A66548  7F 63 DB 78 */	mr r3, r27
/* 80A6654C  38 A0 00 11 */	li r5, 0x11
/* 80A66550  38 C0 00 0D */	li r6, 0xd
/* 80A66554  38 E0 00 0F */	li r7, 0xf
/* 80A66558  39 00 00 00 */	li r8, 0
/* 80A6655C  4B 6E 50 EC */	b step__8daNpcT_cFsiiii
/* 80A66560  2C 03 00 00 */	cmpwi r3, 0
/* 80A66564  41 82 00 E4 */	beq lbl_80A66648
/* 80A66568  80 1B 0B 58 */	lwz r0, 0xb58(r27)
/* 80A6656C  2C 00 00 11 */	cmpwi r0, 0x11
/* 80A66570  41 82 00 24 */	beq lbl_80A66594
/* 80A66574  83 5B 0B 5C */	lwz r26, 0xb5c(r27)
/* 80A66578  38 7B 0B 50 */	addi r3, r27, 0xb50
/* 80A6657C  4B 6D F3 1C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A66580  93 5B 0B 5C */	stw r26, 0xb5c(r27)
/* 80A66584  38 00 00 11 */	li r0, 0x11
/* 80A66588  90 1B 0B 58 */	stw r0, 0xb58(r27)
/* 80A6658C  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A66590  D0 1B 0B 68 */	stfs f0, 0xb68(r27)
lbl_80A66594:
/* 80A66594  80 1B 0B 7C */	lwz r0, 0xb7c(r27)
/* 80A66598  2C 00 00 00 */	cmpwi r0, 0
/* 80A6659C  41 82 00 AC */	beq lbl_80A66648
/* 80A665A0  83 5B 0B 80 */	lwz r26, 0xb80(r27)
/* 80A665A4  38 7B 0B 74 */	addi r3, r27, 0xb74
/* 80A665A8  4B 6D F2 F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A665AC  93 5B 0B 80 */	stw r26, 0xb80(r27)
/* 80A665B0  38 00 00 00 */	li r0, 0
/* 80A665B4  90 1B 0B 7C */	stw r0, 0xb7c(r27)
/* 80A665B8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80A665BC  D0 1B 0B 8C */	stfs f0, 0xb8c(r27)
/* 80A665C0  48 00 00 88 */	b lbl_80A66648
lbl_80A665C4:
/* 80A665C4  3B C0 00 01 */	li r30, 1
/* 80A665C8  48 00 00 80 */	b lbl_80A66648
lbl_80A665CC:
/* 80A665CC  80 1B 0C E0 */	lwz r0, 0xce0(r27)
/* 80A665D0  2C 00 00 01 */	cmpwi r0, 1
/* 80A665D4  41 82 00 28 */	beq lbl_80A665FC
/* 80A665D8  38 7B 0B A8 */	addi r3, r27, 0xba8
/* 80A665DC  4B 6D F1 20 */	b remove__18daNpcT_ActorMngr_cFv
/* 80A665E0  38 00 00 00 */	li r0, 0
/* 80A665E4  90 1B 0B C8 */	stw r0, 0xbc8(r27)
/* 80A665E8  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80A665EC  D0 1B 0C F4 */	stfs f0, 0xcf4(r27)
/* 80A665F0  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80A665F4  38 00 00 01 */	li r0, 1
/* 80A665F8  90 1B 0C E0 */	stw r0, 0xce0(r27)
lbl_80A665FC:
/* 80A665FC  38 00 00 00 */	li r0, 0
/* 80A66600  98 1B 0C FF */	stb r0, 0xcff(r27)
/* 80A66604  93 81 00 08 */	stw r28, 8(r1)
/* 80A66608  7F 63 DB 78 */	mr r3, r27
/* 80A6660C  38 81 00 08 */	addi r4, r1, 8
/* 80A66610  38 A0 00 00 */	li r5, 0
/* 80A66614  38 C0 00 00 */	li r6, 0
/* 80A66618  38 E0 00 00 */	li r7, 0
/* 80A6661C  4B 6E 56 5C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80A66620  2C 03 00 00 */	cmpwi r3, 0
/* 80A66624  41 82 00 24 */	beq lbl_80A66648
/* 80A66628  2C 1C 00 00 */	cmpwi r28, 0
/* 80A6662C  40 82 00 18 */	bne lbl_80A66644
/* 80A66630  88 1B 09 9A */	lbz r0, 0x99a(r27)
/* 80A66634  28 00 00 01 */	cmplwi r0, 1
/* 80A66638  40 82 00 10 */	bne lbl_80A66648
/* 80A6663C  3B C0 00 01 */	li r30, 1
/* 80A66640  48 00 00 08 */	b lbl_80A66648
lbl_80A66644:
/* 80A66644  3B C0 00 01 */	li r30, 1
lbl_80A66648:
/* 80A66648  7F C3 F3 78 */	mr r3, r30
/* 80A6664C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A66650  4B 8F BB C4 */	b _restgpr_24
/* 80A66654  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A66658  7C 08 03 A6 */	mtlr r0
/* 80A6665C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A66660  4E 80 00 20 */	blr 
