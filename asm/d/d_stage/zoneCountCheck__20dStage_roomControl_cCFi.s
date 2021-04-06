lbl_8002471C:
/* 8002471C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024720  7C 08 02 A6 */	mflr r0
/* 80024724  90 01 00 24 */	stw r0, 0x24(r1)
/* 80024728  39 61 00 20 */	addi r11, r1, 0x20
/* 8002472C  48 33 DA AD */	bl _savegpr_28
/* 80024730  7C 9C 23 78 */	mr r28, r4
/* 80024734  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 80024738  38 03 60 94 */	addi r0, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8002473C  7C 1E 03 78 */	mr r30, r0
/* 80024740  3B A0 00 00 */	li r29, 0
/* 80024744  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80024748  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8002474C  3B E3 4E 20 */	addi r31, r3, 0x4e20
lbl_80024750:
/* 80024750  88 7E 03 F7 */	lbz r3, 0x3f7(r30)
/* 80024754  7C 60 07 75 */	extsb. r0, r3
/* 80024758  41 80 00 B4 */	blt lbl_8002480C
/* 8002475C  88 1E 03 F6 */	lbz r0, 0x3f6(r30)
/* 80024760  7C 00 07 75 */	extsb. r0, r0
/* 80024764  40 81 00 A8 */	ble lbl_8002480C
/* 80024768  7C 60 07 74 */	extsb r0, r3
/* 8002476C  54 04 28 34 */	slwi r4, r0, 5
/* 80024770  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80024774  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80024778  7C 60 22 14 */	add r3, r0, r4
/* 8002477C  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 80024780  48 01 05 6D */	bl clearRoomSwitch__13dSv_zoneBit_cFv
/* 80024784  88 1E 03 F7 */	lbz r0, 0x3f7(r30)
/* 80024788  7C 00 07 74 */	extsb r0, r0
/* 8002478C  54 04 28 34 */	slwi r4, r0, 5
/* 80024790  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80024794  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80024798  7C 60 22 14 */	add r3, r0, r4
/* 8002479C  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 800247A0  48 01 05 59 */	bl clearRoomItem__13dSv_zoneBit_cFv
/* 800247A4  7F E3 FB 78 */	mr r3, r31
/* 800247A8  81 9F 00 00 */	lwz r12, 0(r31)
/* 800247AC  81 8C 00 BC */	lwz r12, 0xbc(r12)
/* 800247B0  7D 89 03 A6 */	mtctr r12
/* 800247B4  4E 80 04 21 */	bctrl 
/* 800247B8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 800247BC  54 00 87 7F */	rlwinm. r0, r0, 0x10, 0x1d, 0x1f
/* 800247C0  41 82 00 4C */	beq lbl_8002480C
/* 800247C4  88 0D 87 E5 */	lbz r0, struct_80450D64+0x1(r13)
/* 800247C8  7C 00 07 74 */	extsb r0, r0
/* 800247CC  7C 1C 00 00 */	cmpw r28, r0
/* 800247D0  41 82 00 3C */	beq lbl_8002480C
/* 800247D4  88 7E 03 F6 */	lbz r3, 0x3f6(r30)
/* 800247D8  38 03 FF FF */	addi r0, r3, -1
/* 800247DC  98 1E 03 F6 */	stb r0, 0x3f6(r30)
/* 800247E0  7C 00 07 75 */	extsb. r0, r0
/* 800247E4  40 82 00 28 */	bne lbl_8002480C
/* 800247E8  38 A0 FF FF */	li r5, -1
/* 800247EC  88 1E 03 F7 */	lbz r0, 0x3f7(r30)
/* 800247F0  7C 00 07 74 */	extsb r0, r0
/* 800247F4  54 04 28 34 */	slwi r4, r0, 5
/* 800247F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800247FC  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80024800  7C 60 22 14 */	add r3, r0, r4
/* 80024804  98 A3 09 B4 */	stb r5, 0x9b4(r3)
/* 80024808  98 BE 03 F7 */	stb r5, 0x3f7(r30)
lbl_8002480C:
/* 8002480C  3B BD 00 01 */	addi r29, r29, 1
/* 80024810  2C 1D 00 40 */	cmpwi r29, 0x40
/* 80024814  3B DE 04 04 */	addi r30, r30, 0x404
/* 80024818  41 80 FF 38 */	blt lbl_80024750
/* 8002481C  7F 83 E3 78 */	mr r3, r28
/* 80024820  4B FF FB C9 */	bl setStayNo__20dStage_roomControl_cFi
/* 80024824  39 61 00 20 */	addi r11, r1, 0x20
/* 80024828  48 33 D9 FD */	bl _restgpr_28
/* 8002482C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80024830  7C 08 03 A6 */	mtlr r0
/* 80024834  38 21 00 20 */	addi r1, r1, 0x20
/* 80024838  4E 80 00 20 */	blr 
