lbl_80622F64:
/* 80622F64  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80622F68  7C 08 02 A6 */	mflr r0
/* 80622F6C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80622F70  39 61 00 60 */	addi r11, r1, 0x60
/* 80622F74  4B D3 F2 69 */	bl _savegpr_29
/* 80622F78  7C 7E 1B 78 */	mr r30, r3
/* 80622F7C  3C 60 80 63 */	lis r3, lit_3920@ha /* 0x8062E634@ha */
/* 80622F80  3B E3 E6 34 */	addi r31, r3, lit_3920@l /* 0x8062E634@l */
/* 80622F84  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80622F88  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80622F8C  88 05 5D B0 */	lbz r0, 0x5db0(r5)
/* 80622F90  7C 00 07 74 */	extsb r0, r0
/* 80622F94  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80622F98  7C 65 02 14 */	add r3, r5, r0
/* 80622F9C  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 80622FA0  80 65 5D AC */	lwz r3, 0x5dac(r5)
/* 80622FA4  2C 04 00 00 */	cmpwi r4, 0
/* 80622FA8  40 82 00 F4 */	bne lbl_8062309C
/* 80622FAC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80622FB0  D0 3E 07 10 */	stfs f1, 0x710(r30)
/* 80622FB4  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80622FB8  D0 1E 07 14 */	stfs f0, 0x714(r30)
/* 80622FBC  D0 3E 07 18 */	stfs f1, 0x718(r30)
/* 80622FC0  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80622FC4  D0 1E 07 04 */	stfs f0, 0x704(r30)
/* 80622FC8  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80622FCC  D0 1E 07 08 */	stfs f0, 0x708(r30)
/* 80622FD0  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80622FD4  D0 1E 07 0C */	stfs f0, 0x70c(r30)
/* 80622FD8  C0 1E 07 10 */	lfs f0, 0x710(r30)
/* 80622FDC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80622FE0  C0 1E 07 14 */	lfs f0, 0x714(r30)
/* 80622FE4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80622FE8  C0 1E 07 18 */	lfs f0, 0x718(r30)
/* 80622FEC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80622FF0  C0 1E 07 04 */	lfs f0, 0x704(r30)
/* 80622FF4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80622FF8  C0 1E 07 08 */	lfs f0, 0x708(r30)
/* 80622FFC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80623000  C0 1E 07 0C */	lfs f0, 0x70c(r30)
/* 80623004  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80623008  38 7D 02 48 */	addi r3, r29, 0x248
/* 8062300C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80623010  38 A1 00 20 */	addi r5, r1, 0x20
/* 80623014  4B B5 DC 05 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 80623018  38 7D 02 48 */	addi r3, r29, 0x248
/* 8062301C  4B B3 E4 91 */	bl Start__9dCamera_cFv
/* 80623020  38 7D 02 48 */	addi r3, r29, 0x248
/* 80623024  38 80 00 00 */	li r4, 0
/* 80623028  4B B3 FF E5 */	bl SetTrimSize__9dCamera_cFl
/* 8062302C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80623030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80623034  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80623038  4B A1 F4 31 */	bl reset__14dEvt_control_cFv
/* 8062303C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80623040  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80623044  80 63 00 00 */	lwz r3, 0(r3)
/* 80623048  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8062304C  38 80 00 1E */	li r4, 0x1e
/* 80623050  4B C8 CE 8D */	bl bgmStreamStop__8Z2SeqMgrFUl
/* 80623054  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80623058  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8062305C  80 63 00 00 */	lwz r3, 0(r3)
/* 80623060  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80623064  3C 80 01 00 */	lis r4, 0x0100 /* 0x0100006C@ha */
/* 80623068  38 84 00 6C */	addi r4, r4, 0x006C /* 0x0100006C@l */
/* 8062306C  4B C8 C4 31 */	bl subBgmStart__8Z2SeqMgrFUl
/* 80623070  7F C3 F3 78 */	mr r3, r30
/* 80623074  38 80 00 02 */	li r4, 2
/* 80623078  38 A0 00 00 */	li r5, 0
/* 8062307C  4B FF D9 4D */	bl setActionMode__8daB_TN_cFii
/* 80623080  38 00 00 01 */	li r0, 1
/* 80623084  98 1E 0A 93 */	stb r0, 0xa93(r30)
/* 80623088  38 00 00 02 */	li r0, 2
/* 8062308C  98 1E 0A AE */	stb r0, 0xaae(r30)
/* 80623090  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80623094  D0 1E 0A B0 */	stfs f0, 0xab0(r30)
/* 80623098  48 00 00 DC */	b lbl_80623174
lbl_8062309C:
/* 8062309C  2C 04 00 01 */	cmpwi r4, 1
/* 806230A0  40 82 00 D4 */	bne lbl_80623174
/* 806230A4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806230A8  D0 3E 07 10 */	stfs f1, 0x710(r30)
/* 806230AC  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 806230B0  D0 1E 07 14 */	stfs f0, 0x714(r30)
/* 806230B4  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 806230B8  D0 1E 07 18 */	stfs f0, 0x718(r30)
/* 806230BC  D0 3E 07 04 */	stfs f1, 0x704(r30)
/* 806230C0  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 806230C4  D0 1E 07 08 */	stfs f0, 0x708(r30)
/* 806230C8  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 806230CC  D0 1E 07 0C */	stfs f0, 0x70c(r30)
/* 806230D0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 806230D4  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 806230D8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806230DC  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 806230E0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806230E4  38 81 00 38 */	addi r4, r1, 0x38
/* 806230E8  38 A0 80 00 */	li r5, -32768
/* 806230EC  38 C0 00 00 */	li r6, 0
/* 806230F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 806230F4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806230F8  7D 89 03 A6 */	mtctr r12
/* 806230FC  4E 80 04 21 */	bctrl 
/* 80623100  C0 1E 07 10 */	lfs f0, 0x710(r30)
/* 80623104  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80623108  C0 1E 07 14 */	lfs f0, 0x714(r30)
/* 8062310C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80623110  C0 1E 07 18 */	lfs f0, 0x718(r30)
/* 80623114  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80623118  C0 1E 07 04 */	lfs f0, 0x704(r30)
/* 8062311C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80623120  C0 1E 07 08 */	lfs f0, 0x708(r30)
/* 80623124  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80623128  C0 1E 07 0C */	lfs f0, 0x70c(r30)
/* 8062312C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80623130  38 7D 02 48 */	addi r3, r29, 0x248
/* 80623134  38 81 00 14 */	addi r4, r1, 0x14
/* 80623138  38 A1 00 08 */	addi r5, r1, 8
/* 8062313C  4B B5 DA DD */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 80623140  38 7D 02 48 */	addi r3, r29, 0x248
/* 80623144  4B B3 E3 69 */	bl Start__9dCamera_cFv
/* 80623148  38 7D 02 48 */	addi r3, r29, 0x248
/* 8062314C  38 80 00 00 */	li r4, 0
/* 80623150  4B B3 FE BD */	bl SetTrimSize__9dCamera_cFl
/* 80623154  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80623158  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8062315C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80623160  4B A1 F3 09 */	bl reset__14dEvt_control_cFv
/* 80623164  7F C3 F3 78 */	mr r3, r30
/* 80623168  38 80 00 01 */	li r4, 1
/* 8062316C  38 A0 00 00 */	li r5, 0
/* 80623170  4B FF D8 59 */	bl setActionMode__8daB_TN_cFii
lbl_80623174:
/* 80623174  39 61 00 60 */	addi r11, r1, 0x60
/* 80623178  4B D3 F0 B1 */	bl _restgpr_29
/* 8062317C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80623180  7C 08 03 A6 */	mtlr r0
/* 80623184  38 21 00 60 */	addi r1, r1, 0x60
/* 80623188  4E 80 00 20 */	blr 
