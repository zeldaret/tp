lbl_80235EBC:
/* 80235EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80235EC0  7C 08 02 A6 */	mflr r0
/* 80235EC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80235EC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80235ECC  93 C1 00 08 */	stw r30, 8(r1)
/* 80235ED0  7C 7F 1B 78 */	mr r31, r3
/* 80235ED4  80 63 01 48 */	lwz r3, 0x148(r3)
/* 80235ED8  28 03 00 00 */	cmplwi r3, 0
/* 80235EDC  41 82 00 10 */	beq lbl_80235EEC
/* 80235EE0  4B DD 92 ED */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 80235EE4  38 00 00 00 */	li r0, 0
/* 80235EE8  90 1F 01 48 */	stw r0, 0x148(r31)
lbl_80235EEC:
/* 80235EEC  7F E3 FB 78 */	mr r3, r31
/* 80235EF0  38 80 00 01 */	li r4, 1
/* 80235EF4  48 00 0A 19 */	bl delete_screen__12dMsgObject_cFb
/* 80235EF8  80 7F 01 14 */	lwz r3, 0x114(r31)
/* 80235EFC  48 07 16 D9 */	bl reset__Q28JMessage8TControlFv
/* 80235F00  80 7F 01 14 */	lwz r3, 0x114(r31)
/* 80235F04  80 83 00 04 */	lwz r4, 4(r3)
/* 80235F08  28 04 00 00 */	cmplwi r4, 0
/* 80235F0C  41 82 00 0C */	beq lbl_80235F18
/* 80235F10  38 00 00 00 */	li r0, 0
/* 80235F14  90 04 00 08 */	stw r0, 8(r4)
lbl_80235F18:
/* 80235F18  80 83 00 08 */	lwz r4, 8(r3)
/* 80235F1C  28 04 00 00 */	cmplwi r4, 0
/* 80235F20  41 82 00 0C */	beq lbl_80235F2C
/* 80235F24  38 00 00 00 */	li r0, 0
/* 80235F28  90 04 00 08 */	stw r0, 8(r4)
lbl_80235F2C:
/* 80235F2C  38 00 00 00 */	li r0, 0
/* 80235F30  90 03 00 10 */	stw r0, 0x10(r3)
/* 80235F34  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 80235F38  4B FF 38 D9 */	bl resetCharCountBuffer__19jmessage_tReferenceFv
/* 80235F3C  38 00 00 00 */	li r0, 0
/* 80235F40  B0 1F 01 7E */	sth r0, 0x17e(r31)
/* 80235F44  7F E3 FB 78 */	mr r3, r31
/* 80235F48  48 00 18 01 */	bl updateEquipBombInfoLocal__12dMsgObject_cFv
/* 80235F4C  38 00 00 FF */	li r0, 0xff
/* 80235F50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80235F54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80235F58  98 03 5E 7C */	stb r0, 0x5e7c(r3)
/* 80235F5C  38 00 FF FF */	li r0, -1
/* 80235F60  90 03 5E E8 */	stw r0, 0x5ee8(r3)
/* 80235F64  38 00 00 00 */	li r0, 0
/* 80235F68  98 03 5E 7A */	stb r0, 0x5e7a(r3)
/* 80235F6C  98 03 5E 7B */	stb r0, 0x5e7b(r3)
/* 80235F70  90 03 5E EC */	stw r0, 0x5eec(r3)
/* 80235F74  48 00 19 F5 */	bl offCameraCancelFlag__12dMsgObject_cFv
/* 80235F78  38 60 00 FF */	li r3, 0xff
/* 80235F7C  48 00 25 71 */	bl setMsgOutputType__12dMsgObject_cFUc
/* 80235F80  38 80 00 00 */	li r4, 0
/* 80235F84  98 9F 04 D2 */	stb r4, 0x4d2(r31)
/* 80235F88  80 7F 01 20 */	lwz r3, 0x120(r31)
/* 80235F8C  83 C3 00 04 */	lwz r30, 4(r3)
/* 80235F90  88 1E 12 4C */	lbz r0, 0x124c(r30)
/* 80235F94  28 00 00 00 */	cmplwi r0, 0
/* 80235F98  41 82 00 10 */	beq lbl_80235FA8
/* 80235F9C  98 9E 12 4C */	stb r4, 0x124c(r30)
/* 80235FA0  48 00 23 29 */	bl offMsgSendControl__12dMsgObject_cFv
/* 80235FA4  48 00 23 A9 */	bl offMsgSend__12dMsgObject_cFv
lbl_80235FA8:
/* 80235FA8  88 1E 12 4D */	lbz r0, 0x124d(r30)
/* 80235FAC  28 00 00 00 */	cmplwi r0, 0
/* 80235FB0  41 82 00 0C */	beq lbl_80235FBC
/* 80235FB4  38 00 00 00 */	li r0, 0
/* 80235FB8  98 1E 12 4D */	stb r0, 0x124d(r30)
lbl_80235FBC:
/* 80235FBC  88 1F 04 CB */	lbz r0, 0x4cb(r31)
/* 80235FC0  28 00 00 00 */	cmplwi r0, 0
/* 80235FC4  41 82 00 0C */	beq lbl_80235FD0
/* 80235FC8  38 00 00 00 */	li r0, 0
/* 80235FCC  98 1F 04 CB */	stb r0, 0x4cb(r31)
lbl_80235FD0:
/* 80235FD0  88 1F 04 CC */	lbz r0, 0x4cc(r31)
/* 80235FD4  28 00 00 00 */	cmplwi r0, 0
/* 80235FD8  41 82 00 0C */	beq lbl_80235FE4
/* 80235FDC  38 00 00 00 */	li r0, 0
/* 80235FE0  98 1F 04 CC */	stb r0, 0x4cc(r31)
lbl_80235FE4:
/* 80235FE4  88 1F 04 D4 */	lbz r0, 0x4d4(r31)
/* 80235FE8  28 00 00 00 */	cmplwi r0, 0
/* 80235FEC  41 82 00 0C */	beq lbl_80235FF8
/* 80235FF0  38 00 00 00 */	li r0, 0
/* 80235FF4  98 1F 04 D4 */	stb r0, 0x4d4(r31)
lbl_80235FF8:
/* 80235FF8  80 8D 88 84 */	lwz r4, m_control__7dDemo_c(r13)
/* 80235FFC  80 64 00 40 */	lwz r3, 0x40(r4)
/* 80236000  38 03 FF FF */	addi r0, r3, -1
/* 80236004  90 04 00 40 */	stw r0, 0x40(r4)
/* 80236008  88 1F 04 CE */	lbz r0, 0x4ce(r31)
/* 8023600C  28 00 00 01 */	cmplwi r0, 1
/* 80236010  40 82 00 18 */	bne lbl_80236028
/* 80236014  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80236018  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 8023601C  48 08 00 E9 */	bl talkOut__11Z2StatusMgrFv
/* 80236020  38 00 00 00 */	li r0, 0
/* 80236024  98 1F 04 CE */	stb r0, 0x4ce(r31)
lbl_80236028:
/* 80236028  38 00 00 00 */	li r0, 0
/* 8023602C  90 1F 01 3C */	stw r0, 0x13c(r31)
/* 80236030  90 1F 01 40 */	stw r0, 0x140(r31)
/* 80236034  98 1F 04 D1 */	stb r0, 0x4d1(r31)
/* 80236038  7F E3 FB 78 */	mr r3, r31
/* 8023603C  48 00 15 D5 */	bl resetSelectBomBag__12dMsgObject_cFv
/* 80236040  88 9F 01 A5 */	lbz r4, 0x1a5(r31)
/* 80236044  28 04 00 00 */	cmplwi r4, 0
/* 80236048  41 82 00 20 */	beq lbl_80236068
/* 8023604C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80236050  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80236054  A8 03 5D F4 */	lha r0, 0x5df4(r3)
/* 80236058  7C 00 22 14 */	add r0, r0, r4
/* 8023605C  B0 03 5D F4 */	sth r0, 0x5df4(r3)
/* 80236060  38 00 00 00 */	li r0, 0
/* 80236064  98 1F 01 A5 */	stb r0, 0x1a5(r31)
lbl_80236068:
/* 80236068  38 00 00 FF */	li r0, 0xff
/* 8023606C  98 1F 01 9A */	stb r0, 0x19a(r31)
/* 80236070  38 60 00 00 */	li r3, 0
/* 80236074  48 00 1A 15 */	bl setNowTalkFlowNo__12dMsgObject_cFs
/* 80236078  7F E3 FB 78 */	mr r3, r31
/* 8023607C  38 80 00 01 */	li r4, 1
/* 80236080  48 00 08 65 */	bl setStatusLocal__12dMsgObject_cFUs
/* 80236084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80236088  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023608C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80236090  7C 08 03 A6 */	mtlr r0
/* 80236094  38 21 00 10 */	addi r1, r1, 0x10
/* 80236098  4E 80 00 20 */	blr 
