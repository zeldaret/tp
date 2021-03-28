lbl_8056A120:
/* 8056A120  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8056A124  7C 08 02 A6 */	mflr r0
/* 8056A128  90 01 00 34 */	stw r0, 0x34(r1)
/* 8056A12C  39 61 00 30 */	addi r11, r1, 0x30
/* 8056A130  4B DF 80 A0 */	b _savegpr_26
/* 8056A134  7C 7C 1B 78 */	mr r28, r3
/* 8056A138  7C 9A 23 78 */	mr r26, r4
/* 8056A13C  3B E0 00 00 */	li r31, 0
/* 8056A140  3B C0 FF FF */	li r30, -1
/* 8056A144  3B A0 00 00 */	li r29, 0
/* 8056A148  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056A14C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8056A150  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 8056A154  7F 63 DB 78 */	mr r3, r27
/* 8056A158  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 8056A15C  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 8056A160  38 A5 02 9C */	addi r5, r5, 0x29c
/* 8056A164  38 C0 00 03 */	li r6, 3
/* 8056A168  4B AD DF 84 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056A16C  28 03 00 00 */	cmplwi r3, 0
/* 8056A170  41 82 00 08 */	beq lbl_8056A178
/* 8056A174  83 C3 00 00 */	lwz r30, 0(r3)
lbl_8056A178:
/* 8056A178  7F 63 DB 78 */	mr r3, r27
/* 8056A17C  7F 44 D3 78 */	mr r4, r26
/* 8056A180  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 8056A184  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 8056A188  38 A5 02 A0 */	addi r5, r5, 0x2a0
/* 8056A18C  38 C0 00 03 */	li r6, 3
/* 8056A190  4B AD DF 5C */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056A194  28 03 00 00 */	cmplwi r3, 0
/* 8056A198  41 82 00 08 */	beq lbl_8056A1A0
/* 8056A19C  83 A3 00 00 */	lwz r29, 0(r3)
lbl_8056A1A0:
/* 8056A1A0  7F 63 DB 78 */	mr r3, r27
/* 8056A1A4  7F 44 D3 78 */	mr r4, r26
/* 8056A1A8  4B AD DB A4 */	b getIsAddvance__16dEvent_manager_cFi
/* 8056A1AC  2C 03 00 00 */	cmpwi r3, 0
/* 8056A1B0  41 82 01 54 */	beq lbl_8056A304
/* 8056A1B4  2C 1E 00 02 */	cmpwi r30, 2
/* 8056A1B8  41 82 01 38 */	beq lbl_8056A2F0
/* 8056A1BC  40 80 00 14 */	bge lbl_8056A1D0
/* 8056A1C0  2C 1E 00 00 */	cmpwi r30, 0
/* 8056A1C4  41 82 00 18 */	beq lbl_8056A1DC
/* 8056A1C8  40 80 00 7C */	bge lbl_8056A244
/* 8056A1CC  48 00 01 38 */	b lbl_8056A304
lbl_8056A1D0:
/* 8056A1D0  2C 1E 00 04 */	cmpwi r30, 4
/* 8056A1D4  40 80 01 30 */	bge lbl_8056A304
/* 8056A1D8  48 00 01 24 */	b lbl_8056A2FC
lbl_8056A1DC:
/* 8056A1DC  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8056A1E0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 8056A1E4  41 82 00 28 */	beq lbl_8056A20C
/* 8056A1E8  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8056A1EC  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8056A1F0  4B BD B6 A8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056A1F4  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8056A1F8  38 00 00 1E */	li r0, 0x1e
/* 8056A1FC  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8056A200  3C 60 80 57 */	lis r3, lit_4472@ha
/* 8056A204  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 8056A208  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8056A20C:
/* 8056A20C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8056A210  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8056A214  41 82 00 28 */	beq lbl_8056A23C
/* 8056A218  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8056A21C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8056A220  4B BD B6 78 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056A224  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8056A228  38 00 00 1A */	li r0, 0x1a
/* 8056A22C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8056A230  3C 60 80 57 */	lis r3, lit_4472@ha
/* 8056A234  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 8056A238  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_8056A23C:
/* 8056A23C  93 BC 0D C4 */	stw r29, 0xdc4(r28)
/* 8056A240  48 00 00 C4 */	b lbl_8056A304
lbl_8056A244:
/* 8056A244  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 8056A248  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8056A24C  41 82 00 28 */	beq lbl_8056A274
/* 8056A250  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 8056A254  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 8056A258  4B BD B6 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056A25C  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 8056A260  38 00 00 1C */	li r0, 0x1c
/* 8056A264  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 8056A268  3C 60 80 57 */	lis r3, lit_5232@ha
/* 8056A26C  C0 03 17 D0 */	lfs f0, lit_5232@l(r3)
/* 8056A270  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_8056A274:
/* 8056A274  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 8056A278  2C 00 00 29 */	cmpwi r0, 0x29
/* 8056A27C  41 82 00 28 */	beq lbl_8056A2A4
/* 8056A280  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 8056A284  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 8056A288  4B BD B6 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056A28C  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 8056A290  38 00 00 29 */	li r0, 0x29
/* 8056A294  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 8056A298  3C 60 80 57 */	lis r3, lit_5232@ha
/* 8056A29C  C0 03 17 D0 */	lfs f0, lit_5232@l(r3)
/* 8056A2A0  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_8056A2A4:
/* 8056A2A4  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005005F@ha */
/* 8056A2A8  38 03 00 5F */	addi r0, r3, 0x005F /* 0x0005005F@l */
/* 8056A2AC  90 01 00 08 */	stw r0, 8(r1)
/* 8056A2B0  38 7C 05 80 */	addi r3, r28, 0x580
/* 8056A2B4  38 81 00 08 */	addi r4, r1, 8
/* 8056A2B8  38 A0 FF FF */	li r5, -1
/* 8056A2BC  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 8056A2C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8056A2C4  7D 89 03 A6 */	mtctr r12
/* 8056A2C8  4E 80 04 21 */	bctrl 
/* 8056A2CC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8056A2D0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8056A2D4  80 63 00 00 */	lwz r3, 0(r3)
/* 8056A2D8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8056A2DC  3C 80 01 00 */	lis r4, 0x0100 /* 0x010000A3@ha */
/* 8056A2E0  38 84 00 A3 */	addi r4, r4, 0x00A3 /* 0x010000A3@l */
/* 8056A2E4  4B D4 51 B8 */	b subBgmStart__8Z2SeqMgrFUl
/* 8056A2E8  93 BC 0D C4 */	stw r29, 0xdc4(r28)
/* 8056A2EC  48 00 00 18 */	b lbl_8056A304
lbl_8056A2F0:
/* 8056A2F0  38 60 02 71 */	li r3, 0x271
/* 8056A2F4  4B BE 27 38 */	b daNpcT_onEvtBit__FUl
/* 8056A2F8  48 00 00 0C */	b lbl_8056A304
lbl_8056A2FC:
/* 8056A2FC  38 60 02 5D */	li r3, 0x25d
/* 8056A300  4B BE 27 2C */	b daNpcT_onEvtBit__FUl
lbl_8056A304:
/* 8056A304  2C 1E 00 02 */	cmpwi r30, 2
/* 8056A308  41 82 00 C4 */	beq lbl_8056A3CC
/* 8056A30C  40 80 00 14 */	bge lbl_8056A320
/* 8056A310  2C 1E 00 00 */	cmpwi r30, 0
/* 8056A314  41 82 00 18 */	beq lbl_8056A32C
/* 8056A318  40 80 00 64 */	bge lbl_8056A37C
/* 8056A31C  48 00 01 28 */	b lbl_8056A444
lbl_8056A320:
/* 8056A320  2C 1E 00 04 */	cmpwi r30, 4
/* 8056A324  40 80 01 20 */	bge lbl_8056A444
/* 8056A328  48 00 00 CC */	b lbl_8056A3F4
lbl_8056A32C:
/* 8056A32C  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8056A330  2C 00 00 00 */	cmpwi r0, 0
/* 8056A334  41 82 00 28 */	beq lbl_8056A35C
/* 8056A338  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8056A33C  4B BD B3 C0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056A340  38 00 00 00 */	li r0, 0
/* 8056A344  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 8056A348  3C 60 80 57 */	lis r3, lit_4472@ha
/* 8056A34C  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 8056A350  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8056A354  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056A358  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_8056A35C:
/* 8056A35C  38 00 00 00 */	li r0, 0
/* 8056A360  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056A364  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 8056A368  48 00 6E A1 */	bl func_80571208
/* 8056A36C  2C 03 00 00 */	cmpwi r3, 0
/* 8056A370  40 82 00 D4 */	bne lbl_8056A444
/* 8056A374  3B E0 00 01 */	li r31, 1
/* 8056A378  48 00 00 CC */	b lbl_8056A444
lbl_8056A37C:
/* 8056A37C  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8056A380  2C 00 00 00 */	cmpwi r0, 0
/* 8056A384  41 82 00 28 */	beq lbl_8056A3AC
/* 8056A388  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8056A38C  4B BD B3 70 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056A390  38 00 00 00 */	li r0, 0
/* 8056A394  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 8056A398  3C 60 80 57 */	lis r3, lit_4472@ha
/* 8056A39C  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 8056A3A0  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8056A3A4  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056A3A8  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_8056A3AC:
/* 8056A3AC  38 00 00 00 */	li r0, 0
/* 8056A3B0  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056A3B4  38 7C 0D C4 */	addi r3, r28, 0xdc4
/* 8056A3B8  48 00 6E 51 */	bl func_80571208
/* 8056A3BC  2C 03 00 00 */	cmpwi r3, 0
/* 8056A3C0  40 82 00 84 */	bne lbl_8056A444
/* 8056A3C4  3B E0 00 01 */	li r31, 1
/* 8056A3C8  48 00 00 7C */	b lbl_8056A444
lbl_8056A3CC:
/* 8056A3CC  38 60 00 07 */	li r3, 7
/* 8056A3D0  3C 80 80 57 */	lis r4, lit_4472@ha
/* 8056A3D4  C0 24 17 AC */	lfs f1, lit_4472@l(r4)
/* 8056A3D8  38 80 00 00 */	li r4, 0
/* 8056A3DC  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 8056A3E0  7C 05 07 74 */	extsb r5, r0
/* 8056A3E4  38 C0 00 00 */	li r6, 0
/* 8056A3E8  38 E0 FF FF */	li r7, -1
/* 8056A3EC  4B AB CD 84 */	b dStage_changeScene__FifUlScsi
/* 8056A3F0  48 00 00 54 */	b lbl_8056A444
lbl_8056A3F4:
/* 8056A3F4  7F 83 E3 78 */	mr r3, r28
/* 8056A3F8  81 9C 0E 3C */	lwz r12, 0xe3c(r28)
/* 8056A3FC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8056A400  7D 89 03 A6 */	mtctr r12
/* 8056A404  4E 80 04 21 */	bctrl 
/* 8056A408  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 8056A40C  2C 00 00 00 */	cmpwi r0, 0
/* 8056A410  41 82 00 28 */	beq lbl_8056A438
/* 8056A414  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 8056A418  4B BD B2 E4 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056A41C  38 00 00 00 */	li r0, 0
/* 8056A420  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 8056A424  3C 60 80 57 */	lis r3, lit_4472@ha
/* 8056A428  C0 03 17 AC */	lfs f0, lit_4472@l(r3)
/* 8056A42C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 8056A430  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056A434  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_8056A438:
/* 8056A438  38 00 00 00 */	li r0, 0
/* 8056A43C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 8056A440  3B E0 00 01 */	li r31, 1
lbl_8056A444:
/* 8056A444  7F E3 FB 78 */	mr r3, r31
/* 8056A448  39 61 00 30 */	addi r11, r1, 0x30
/* 8056A44C  4B DF 7D D0 */	b _restgpr_26
/* 8056A450  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8056A454  7C 08 03 A6 */	mtlr r0
/* 8056A458  38 21 00 30 */	addi r1, r1, 0x30
/* 8056A45C  4E 80 00 20 */	blr 
