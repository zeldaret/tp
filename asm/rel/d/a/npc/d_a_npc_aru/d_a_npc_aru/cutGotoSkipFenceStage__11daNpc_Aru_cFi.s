lbl_80954F4C:
/* 80954F4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80954F50  7C 08 02 A6 */	mflr r0
/* 80954F54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80954F58  39 61 00 20 */	addi r11, r1, 0x20
/* 80954F5C  4B A0 D2 74 */	b _savegpr_26
/* 80954F60  7C 7A 1B 78 */	mr r26, r3
/* 80954F64  7C 9B 23 78 */	mr r27, r4
/* 80954F68  3B A0 00 00 */	li r29, 0
/* 80954F6C  3B 80 FF FF */	li r28, -1
/* 80954F70  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80954F74  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80954F78  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80954F7C  3B FE 40 C0 */	addi r31, r30, 0x40c0
/* 80954F80  7F E3 FB 78 */	mr r3, r31
/* 80954F84  3C A0 80 95 */	lis r5, struct_8095781C+0x0@ha
/* 80954F88  38 A5 78 1C */	addi r5, r5, struct_8095781C+0x0@l
/* 80954F8C  38 A5 00 C8 */	addi r5, r5, 0xc8
/* 80954F90  38 C0 00 03 */	li r6, 3
/* 80954F94  4B 6F 31 58 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80954F98  28 03 00 00 */	cmplwi r3, 0
/* 80954F9C  41 82 00 08 */	beq lbl_80954FA4
/* 80954FA0  83 83 00 00 */	lwz r28, 0(r3)
lbl_80954FA4:
/* 80954FA4  7F E3 FB 78 */	mr r3, r31
/* 80954FA8  7F 64 DB 78 */	mr r4, r27
/* 80954FAC  4B 6F 2D A0 */	b getIsAddvance__16dEvent_manager_cFi
/* 80954FB0  2C 03 00 00 */	cmpwi r3, 0
/* 80954FB4  41 82 00 28 */	beq lbl_80954FDC
/* 80954FB8  2C 1C 00 01 */	cmpwi r28, 1
/* 80954FBC  41 82 00 0C */	beq lbl_80954FC8
/* 80954FC0  40 80 00 1C */	bge lbl_80954FDC
/* 80954FC4  48 00 00 18 */	b lbl_80954FDC
lbl_80954FC8:
/* 80954FC8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80954FCC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80954FD0  80 63 00 00 */	lwz r3, 0(r3)
/* 80954FD4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80954FD8  4B 95 A8 AC */	b subBgmStop__8Z2SeqMgrFv
lbl_80954FDC:
/* 80954FDC  2C 1C 00 01 */	cmpwi r28, 1
/* 80954FE0  41 82 00 30 */	beq lbl_80955010
/* 80954FE4  40 80 00 80 */	bge lbl_80955064
/* 80954FE8  2C 1C 00 00 */	cmpwi r28, 0
/* 80954FEC  40 80 00 08 */	bge lbl_80954FF4
/* 80954FF0  48 00 00 74 */	b lbl_80955064
lbl_80954FF4:
/* 80954FF4  7F 43 D3 78 */	mr r3, r26
/* 80954FF8  81 9A 0E 3C */	lwz r12, 0xe3c(r26)
/* 80954FFC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80955000  7D 89 03 A6 */	mtctr r12
/* 80955004  4E 80 04 21 */	bctrl 
/* 80955008  3B A0 00 01 */	li r29, 1
/* 8095500C  48 00 00 58 */	b lbl_80955064
lbl_80955010:
/* 80955010  7F C3 F3 78 */	mr r3, r30
/* 80955014  4B 6D 7B C8 */	b getTimerPtr__14dComIfG_play_cFv
/* 80955018  28 03 00 00 */	cmplwi r3, 0
/* 8095501C  41 82 00 30 */	beq lbl_8095504C
/* 80955020  7F C3 F3 78 */	mr r3, r30
/* 80955024  4B 6D 7B 98 */	b getTimerMode__14dComIfG_play_cFv
/* 80955028  2C 03 00 02 */	cmpwi r3, 2
/* 8095502C  40 82 00 20 */	bne lbl_8095504C
/* 80955030  38 60 00 02 */	li r3, 2
/* 80955034  4B 6D A6 F8 */	b dComIfG_TimerDeleteCheck__Fi
/* 80955038  2C 03 00 00 */	cmpwi r3, 0
/* 8095503C  40 82 00 14 */	bne lbl_80955050
/* 80955040  38 60 00 02 */	li r3, 2
/* 80955044  4B 6D A7 58 */	b dComIfG_TimerDeleteRequest__Fi
/* 80955048  48 00 00 08 */	b lbl_80955050
lbl_8095504C:
/* 8095504C  3B A0 00 01 */	li r29, 1
lbl_80955050:
/* 80955050  7F 43 D3 78 */	mr r3, r26
/* 80955054  81 9A 0E 3C */	lwz r12, 0xe3c(r26)
/* 80955058  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8095505C  7D 89 03 A6 */	mtctr r12
/* 80955060  4E 80 04 21 */	bctrl 
lbl_80955064:
/* 80955064  7F A3 EB 78 */	mr r3, r29
/* 80955068  39 61 00 20 */	addi r11, r1, 0x20
/* 8095506C  4B A0 D1 B0 */	b _restgpr_26
/* 80955070  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80955074  7C 08 03 A6 */	mtlr r0
/* 80955078  38 21 00 20 */	addi r1, r1, 0x20
/* 8095507C  4E 80 00 20 */	blr 
