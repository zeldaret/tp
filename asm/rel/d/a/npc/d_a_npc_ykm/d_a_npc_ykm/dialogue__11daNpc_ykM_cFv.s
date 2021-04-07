lbl_80B5A224:
/* 80B5A224  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5A228  7C 08 02 A6 */	mflr r0
/* 80B5A22C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5A230  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5A234  93 C1 00 08 */	stw r30, 8(r1)
/* 80B5A238  7C 7F 1B 78 */	mr r31, r3
/* 80B5A23C  80 03 15 48 */	lwz r0, 0x1548(r3)
/* 80B5A240  2C 00 00 03 */	cmpwi r0, 3
/* 80B5A244  41 82 01 94 */	beq lbl_80B5A3D8
/* 80B5A248  40 80 01 98 */	bge lbl_80B5A3E0
/* 80B5A24C  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A250  41 82 00 0C */	beq lbl_80B5A25C
/* 80B5A254  40 80 00 B4 */	bge lbl_80B5A308
/* 80B5A258  48 00 01 88 */	b lbl_80B5A3E0
lbl_80B5A25C:
/* 80B5A25C  80 1F 15 44 */	lwz r0, 0x1544(r31)
/* 80B5A260  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A264  41 82 01 7C */	beq lbl_80B5A3E0
/* 80B5A268  38 7F 15 44 */	addi r3, r31, 0x1544
/* 80B5A26C  48 00 31 0D */	bl func_80B5D378
/* 80B5A270  2C 03 00 00 */	cmpwi r3, 0
/* 80B5A274  40 82 01 6C */	bne lbl_80B5A3E0
/* 80B5A278  80 7F 15 48 */	lwz r3, 0x1548(r31)
/* 80B5A27C  38 03 00 01 */	addi r0, r3, 1
/* 80B5A280  90 1F 15 48 */	stw r0, 0x1548(r31)
/* 80B5A284  80 1F 15 4C */	lwz r0, 0x154c(r31)
/* 80B5A288  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B5A28C  41 82 00 4C */	beq lbl_80B5A2D8
/* 80B5A290  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5A294  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5A298  3B C3 0D D8 */	addi r30, r3, 0xdd8
/* 80B5A29C  7F C3 F3 78 */	mr r3, r30
/* 80B5A2A0  38 80 0D 01 */	li r4, 0xd01
/* 80B5A2A4  4B 4D A7 01 */	bl offEventBit__11dSv_event_cFUs
/* 80B5A2A8  7F C3 F3 78 */	mr r3, r30
/* 80B5A2AC  38 80 0E 80 */	li r4, 0xe80
/* 80B5A2B0  4B 4D A6 DD */	bl onEventBit__11dSv_event_cFUs
/* 80B5A2B4  38 7F 14 A0 */	addi r3, r31, 0x14a0
/* 80B5A2B8  4B 5E B4 51 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5A2BC  28 03 00 00 */	cmplwi r3, 0
/* 80B5A2C0  41 82 01 20 */	beq lbl_80B5A3E0
/* 80B5A2C4  80 1F 15 4C */	lwz r0, 0x154c(r31)
/* 80B5A2C8  90 03 10 24 */	stw r0, 0x1024(r3)
/* 80B5A2CC  38 00 00 0A */	li r0, 0xa
/* 80B5A2D0  90 03 10 18 */	stw r0, 0x1018(r3)
/* 80B5A2D4  48 00 01 0C */	b lbl_80B5A3E0
lbl_80B5A2D8:
/* 80B5A2D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5A2DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5A2E0  3B C3 0D D8 */	addi r30, r3, 0xdd8
/* 80B5A2E4  7F C3 F3 78 */	mr r3, r30
/* 80B5A2E8  38 80 0D 01 */	li r4, 0xd01
/* 80B5A2EC  4B 4D A6 A1 */	bl onEventBit__11dSv_event_cFUs
/* 80B5A2F0  7F C3 F3 78 */	mr r3, r30
/* 80B5A2F4  38 80 0E 80 */	li r4, 0xe80
/* 80B5A2F8  4B 4D A6 AD */	bl offEventBit__11dSv_event_cFUs
/* 80B5A2FC  7F E3 FB 78 */	mr r3, r31
/* 80B5A300  4B FF FE 29 */	bl setDialogueMotion__11daNpc_ykM_cFv
/* 80B5A304  48 00 00 DC */	b lbl_80B5A3E0
lbl_80B5A308:
/* 80B5A308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B5A30C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B5A310  3B C3 0D D8 */	addi r30, r3, 0xdd8
/* 80B5A314  7F C3 F3 78 */	mr r3, r30
/* 80B5A318  38 80 0D 01 */	li r4, 0xd01
/* 80B5A31C  4B 4D A6 A1 */	bl isEventBit__11dSv_event_cCFUs
/* 80B5A320  2C 03 00 00 */	cmpwi r3, 0
/* 80B5A324  41 82 00 64 */	beq lbl_80B5A388
/* 80B5A328  80 1F 0B 84 */	lwz r0, 0xb84(r31)
/* 80B5A32C  2C 00 00 00 */	cmpwi r0, 0
/* 80B5A330  40 81 00 B0 */	ble lbl_80B5A3E0
/* 80B5A334  7F C3 F3 78 */	mr r3, r30
/* 80B5A338  38 80 0D 01 */	li r4, 0xd01
/* 80B5A33C  4B 4D A6 69 */	bl offEventBit__11dSv_event_cFUs
/* 80B5A340  7F C3 F3 78 */	mr r3, r30
/* 80B5A344  38 80 0E 80 */	li r4, 0xe80
/* 80B5A348  4B 4D A6 45 */	bl onEventBit__11dSv_event_cFUs
/* 80B5A34C  80 1F 15 48 */	lwz r0, 0x1548(r31)
/* 80B5A350  2C 00 00 01 */	cmpwi r0, 1
/* 80B5A354  40 82 00 24 */	bne lbl_80B5A378
/* 80B5A358  38 7F 14 A0 */	addi r3, r31, 0x14a0
/* 80B5A35C  4B 5E B3 AD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B5A360  28 03 00 00 */	cmplwi r3, 0
/* 80B5A364  41 82 00 14 */	beq lbl_80B5A378
/* 80B5A368  80 1F 15 4C */	lwz r0, 0x154c(r31)
/* 80B5A36C  90 03 10 24 */	stw r0, 0x1024(r3)
/* 80B5A370  38 00 00 0A */	li r0, 0xa
/* 80B5A374  90 03 10 1C */	stw r0, 0x101c(r3)
lbl_80B5A378:
/* 80B5A378  80 7F 15 48 */	lwz r3, 0x1548(r31)
/* 80B5A37C  38 03 00 01 */	addi r0, r3, 1
/* 80B5A380  90 1F 15 48 */	stw r0, 0x1548(r31)
/* 80B5A384  48 00 00 5C */	b lbl_80B5A3E0
lbl_80B5A388:
/* 80B5A388  7F C3 F3 78 */	mr r3, r30
/* 80B5A38C  38 80 0E 80 */	li r4, 0xe80
/* 80B5A390  4B 4D A6 2D */	bl isEventBit__11dSv_event_cCFUs
/* 80B5A394  2C 03 00 00 */	cmpwi r3, 0
/* 80B5A398  40 82 00 48 */	bne lbl_80B5A3E0
/* 80B5A39C  7F C3 F3 78 */	mr r3, r30
/* 80B5A3A0  38 80 0D 01 */	li r4, 0xd01
/* 80B5A3A4  4B 4D A5 E9 */	bl onEventBit__11dSv_event_cFUs
/* 80B5A3A8  7F C3 F3 78 */	mr r3, r30
/* 80B5A3AC  38 80 0E 80 */	li r4, 0xe80
/* 80B5A3B0  4B 4D A5 F5 */	bl offEventBit__11dSv_event_cFUs
/* 80B5A3B4  80 1F 15 48 */	lwz r0, 0x1548(r31)
/* 80B5A3B8  2C 00 00 01 */	cmpwi r0, 1
/* 80B5A3BC  40 82 00 0C */	bne lbl_80B5A3C8
/* 80B5A3C0  7F E3 FB 78 */	mr r3, r31
/* 80B5A3C4  4B FF FD 65 */	bl setDialogueMotion__11daNpc_ykM_cFv
lbl_80B5A3C8:
/* 80B5A3C8  80 7F 15 48 */	lwz r3, 0x1548(r31)
/* 80B5A3CC  38 03 00 01 */	addi r0, r3, 1
/* 80B5A3D0  90 1F 15 48 */	stw r0, 0x1548(r31)
/* 80B5A3D4  48 00 00 0C */	b lbl_80B5A3E0
lbl_80B5A3D8:
/* 80B5A3D8  38 60 00 01 */	li r3, 1
/* 80B5A3DC  48 00 00 08 */	b lbl_80B5A3E4
lbl_80B5A3E0:
/* 80B5A3E0  38 60 00 00 */	li r3, 0
lbl_80B5A3E4:
/* 80B5A3E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5A3E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B5A3EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5A3F0  7C 08 03 A6 */	mtlr r0
/* 80B5A3F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5A3F8  4E 80 00 20 */	blr 
