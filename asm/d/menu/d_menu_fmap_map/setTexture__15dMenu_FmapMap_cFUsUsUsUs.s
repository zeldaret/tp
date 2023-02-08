lbl_801CF394:
/* 801CF394  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801CF398  7C 08 02 A6 */	mflr r0
/* 801CF39C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801CF3A0  39 61 00 20 */	addi r11, r1, 0x20
/* 801CF3A4  48 19 2E 31 */	bl _savegpr_27
/* 801CF3A8  7C 7B 1B 78 */	mr r27, r3
/* 801CF3AC  7C 9C 23 78 */	mr r28, r4
/* 801CF3B0  7C BD 2B 78 */	mr r29, r5
/* 801CF3B4  7C DE 33 78 */	mr r30, r6
/* 801CF3B8  7C FF 3B 78 */	mr r31, r7
/* 801CF3BC  38 00 00 00 */	li r0, 0
/* 801CF3C0  90 03 00 C0 */	stw r0, 0xc0(r3)
/* 801CF3C4  90 03 00 BC */	stw r0, 0xbc(r3)
/* 801CF3C8  7F 83 E3 78 */	mr r3, r28
/* 801CF3CC  7F A4 EB 78 */	mr r4, r29
/* 801CF3D0  38 A0 00 09 */	li r5, 9
/* 801CF3D4  38 C0 00 00 */	li r6, 0
/* 801CF3D8  38 E0 00 00 */	li r7, 0
/* 801CF3DC  48 18 E8 41 */	bl GXGetTexBufferSize
/* 801CF3E0  38 80 00 20 */	li r4, 0x20
/* 801CF3E4  48 0F F9 09 */	bl __nwa__FUli
/* 801CF3E8  90 7B 00 C0 */	stw r3, 0xc0(r27)
/* 801CF3EC  7F 63 DB 78 */	mr r3, r27
/* 801CF3F0  80 9B 00 C0 */	lwz r4, 0xc0(r27)
/* 801CF3F4  7F 85 E3 78 */	mr r5, r28
/* 801CF3F8  7F A6 EB 78 */	mr r6, r29
/* 801CF3FC  7F C7 F3 78 */	mr r7, r30
/* 801CF400  7F E8 FB 78 */	mr r8, r31
/* 801CF404  4B FF ED 59 */	bl init__15renderingFmap_cFPUcUsUsUsUs
/* 801CF408  38 60 00 20 */	li r3, 0x20
/* 801CF40C  38 80 00 20 */	li r4, 0x20
/* 801CF410  48 0F F8 65 */	bl __nw__FUli
/* 801CF414  90 7B 00 BC */	stw r3, 0xbc(r27)
/* 801CF418  7F 63 DB 78 */	mr r3, r27
/* 801CF41C  80 9B 00 BC */	lwz r4, 0xbc(r27)
/* 801CF420  7F 85 E3 78 */	mr r5, r28
/* 801CF424  7F A6 EB 78 */	mr r6, r29
/* 801CF428  80 FB 00 C0 */	lwz r7, 0xc0(r27)
/* 801CF42C  81 1B 00 C8 */	lwz r8, 0xc8(r27)
/* 801CF430  39 20 00 1B */	li r9, 0x1b
/* 801CF434  4B E6 D9 05 */	bl makeResTIMG__15dRenderingMap_cCFP7ResTIMGUsUsPUcPUcUs
/* 801CF438  39 61 00 20 */	addi r11, r1, 0x20
/* 801CF43C  48 19 2D E5 */	bl _restgpr_27
/* 801CF440  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801CF444  7C 08 03 A6 */	mtlr r0
/* 801CF448  38 21 00 20 */	addi r1, r1, 0x20
/* 801CF44C  4E 80 00 20 */	blr 
