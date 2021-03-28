lbl_80AE8ED4:
/* 80AE8ED4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AE8ED8  7C 08 02 A6 */	mflr r0
/* 80AE8EDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AE8EE0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AE8EE4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80AE8EE8  7C 7F 1B 78 */	mr r31, r3
/* 80AE8EEC  3B C0 00 00 */	li r30, 0
/* 80AE8EF0  A0 03 0E 18 */	lhz r0, 0xe18(r3)
/* 80AE8EF4  2C 00 00 02 */	cmpwi r0, 2
/* 80AE8EF8  41 82 00 58 */	beq lbl_80AE8F50
/* 80AE8EFC  40 80 00 10 */	bge lbl_80AE8F0C
/* 80AE8F00  2C 00 00 00 */	cmpwi r0, 0
/* 80AE8F04  41 82 00 14 */	beq lbl_80AE8F18
/* 80AE8F08  48 00 01 70 */	b lbl_80AE9078
lbl_80AE8F0C:
/* 80AE8F0C  2C 00 00 04 */	cmpwi r0, 4
/* 80AE8F10  40 80 01 68 */	bge lbl_80AE9078
/* 80AE8F14  48 00 01 48 */	b lbl_80AE905C
lbl_80AE8F18:
/* 80AE8F18  80 9F 0E 0C */	lwz r4, 0xe0c(r31)
/* 80AE8F1C  38 A0 00 00 */	li r5, 0
/* 80AE8F20  4B 66 AD FC */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80AE8F24  38 00 00 00 */	li r0, 0
/* 80AE8F28  90 1F 09 50 */	stw r0, 0x950(r31)
/* 80AE8F2C  98 1F 0E 1A */	stb r0, 0xe1a(r31)
/* 80AE8F30  A8 1F 0E 10 */	lha r0, 0xe10(r31)
/* 80AE8F34  2C 00 00 03 */	cmpwi r0, 3
/* 80AE8F38  41 82 00 0C */	beq lbl_80AE8F44
/* 80AE8F3C  38 00 00 03 */	li r0, 3
/* 80AE8F40  B0 1F 0E 10 */	sth r0, 0xe10(r31)
lbl_80AE8F44:
/* 80AE8F44  38 00 00 02 */	li r0, 2
/* 80AE8F48  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80AE8F4C  48 00 01 2C */	b lbl_80AE9078
lbl_80AE8F50:
/* 80AE8F50  38 80 00 00 */	li r4, 0
/* 80AE8F54  38 A0 00 01 */	li r5, 1
/* 80AE8F58  38 C0 00 00 */	li r6, 0
/* 80AE8F5C  4B 66 AE 28 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80AE8F60  2C 03 00 00 */	cmpwi r3, 0
/* 80AE8F64  41 82 00 B0 */	beq lbl_80AE9014
/* 80AE8F68  38 7F 0C 94 */	addi r3, r31, 0xc94
/* 80AE8F6C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80AE8F70  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80AE8F74  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80AE8F78  4B 66 77 44 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AE8F7C  3C 60 80 AF */	lis r3, lit_4645@ha
/* 80AE8F80  38 83 A5 F0 */	addi r4, r3, lit_4645@l
/* 80AE8F84  80 64 00 00 */	lwz r3, 0(r4)
/* 80AE8F88  80 04 00 04 */	lwz r0, 4(r4)
/* 80AE8F8C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80AE8F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE8F94  80 04 00 08 */	lwz r0, 8(r4)
/* 80AE8F98  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AE8F9C  38 00 00 03 */	li r0, 3
/* 80AE8FA0  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80AE8FA4  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80AE8FA8  4B 87 90 70 */	b __ptmf_test
/* 80AE8FAC  2C 03 00 00 */	cmpwi r3, 0
/* 80AE8FB0  41 82 00 18 */	beq lbl_80AE8FC8
/* 80AE8FB4  7F E3 FB 78 */	mr r3, r31
/* 80AE8FB8  38 80 00 00 */	li r4, 0
/* 80AE8FBC  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80AE8FC0  4B 87 90 C4 */	b __ptmf_scall
/* 80AE8FC4  60 00 00 00 */	nop 
lbl_80AE8FC8:
/* 80AE8FC8  38 00 00 00 */	li r0, 0
/* 80AE8FCC  B0 1F 0E 18 */	sth r0, 0xe18(r31)
/* 80AE8FD0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80AE8FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE8FD8  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80AE8FDC  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80AE8FE0  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80AE8FE4  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80AE8FE8  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80AE8FEC  4B 87 90 2C */	b __ptmf_test
/* 80AE8FF0  2C 03 00 00 */	cmpwi r3, 0
/* 80AE8FF4  41 82 00 18 */	beq lbl_80AE900C
/* 80AE8FF8  7F E3 FB 78 */	mr r3, r31
/* 80AE8FFC  38 80 00 00 */	li r4, 0
/* 80AE9000  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80AE9004  4B 87 90 80 */	b __ptmf_scall
/* 80AE9008  60 00 00 00 */	nop 
lbl_80AE900C:
/* 80AE900C  3B C0 00 01 */	li r30, 1
/* 80AE9010  48 00 00 68 */	b lbl_80AE9078
lbl_80AE9014:
/* 80AE9014  7F E3 FB 78 */	mr r3, r31
/* 80AE9018  38 81 00 0C */	addi r4, r1, 0xc
/* 80AE901C  38 A1 00 08 */	addi r5, r1, 8
/* 80AE9020  7F E6 FB 78 */	mr r6, r31
/* 80AE9024  38 E0 00 00 */	li r7, 0
/* 80AE9028  4B 66 A6 F0 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80AE902C  2C 03 00 00 */	cmpwi r3, 0
/* 80AE9030  41 82 00 48 */	beq lbl_80AE9078
/* 80AE9034  7F E3 FB 78 */	mr r3, r31
/* 80AE9038  80 81 00 08 */	lwz r4, 8(r1)
/* 80AE903C  3C A0 80 AF */	lis r5, lit_4237@ha
/* 80AE9040  C0 25 A4 34 */	lfs f1, lit_4237@l(r5)
/* 80AE9044  38 A0 00 00 */	li r5, 0
/* 80AE9048  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AE904C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AE9050  7D 89 03 A6 */	mtctr r12
/* 80AE9054  4E 80 04 21 */	bctrl 
/* 80AE9058  48 00 00 20 */	b lbl_80AE9078
lbl_80AE905C:
/* 80AE905C  88 1F 09 EC */	lbz r0, 0x9ec(r31)
/* 80AE9060  28 00 00 00 */	cmplwi r0, 0
/* 80AE9064  40 82 00 14 */	bne lbl_80AE9078
/* 80AE9068  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80AE906C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80AE9070  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AE9074  4B 55 93 F4 */	b reset__14dEvt_control_cFv
lbl_80AE9078:
/* 80AE9078  7F C3 F3 78 */	mr r3, r30
/* 80AE907C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AE9080  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80AE9084  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AE9088  7C 08 03 A6 */	mtlr r0
/* 80AE908C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AE9090  4E 80 00 20 */	blr 
