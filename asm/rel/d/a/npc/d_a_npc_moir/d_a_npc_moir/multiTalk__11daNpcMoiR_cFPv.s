lbl_80A7EFBC:
/* 80A7EFBC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A7EFC0  7C 08 02 A6 */	mflr r0
/* 80A7EFC4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A7EFC8  39 61 00 60 */	addi r11, r1, 0x60
/* 80A7EFCC  4B 8E 32 10 */	b _savegpr_29
/* 80A7EFD0  7C 7D 1B 78 */	mr r29, r3
/* 80A7EFD4  3C 60 80 A8 */	lis r3, cNullVec__6Z2Calc@ha
/* 80A7EFD8  3B E3 38 B0 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80A7EFDC  3B C0 00 00 */	li r30, 0
/* 80A7EFE0  3C 60 80 A8 */	lis r3, lit_5306@ha
/* 80A7EFE4  38 83 37 C4 */	addi r4, r3, lit_5306@l
/* 80A7EFE8  80 64 00 00 */	lwz r3, 0(r4)
/* 80A7EFEC  80 04 00 04 */	lwz r0, 4(r4)
/* 80A7EFF0  90 61 00 34 */	stw r3, 0x34(r1)
/* 80A7EFF4  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A7EFF8  80 64 00 08 */	lwz r3, 8(r4)
/* 80A7EFFC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A7F000  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80A7F004  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A7F008  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80A7F00C  38 7D 0C 84 */	addi r3, r29, 0xc84
/* 80A7F010  4B 6D 16 DC */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A7F014  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A7F018  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80A7F01C  4B 6D 16 D0 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A7F020  90 61 00 3C */	stw r3, 0x3c(r1)
/* 80A7F024  38 7D 0C 94 */	addi r3, r29, 0xc94
/* 80A7F028  4B 6D 16 C4 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A7F02C  90 61 00 40 */	stw r3, 0x40(r1)
/* 80A7F030  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A7F034  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A7F038  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A7F03C  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 80A7F040  80 01 00 38 */	lwz r0, 0x38(r1)
/* 80A7F044  90 04 5E F4 */	stw r0, 0x5ef4(r4)
/* 80A7F048  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80A7F04C  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 80A7F050  90 64 5E FC */	stw r3, 0x5efc(r4)
/* 80A7F054  38 00 00 00 */	li r0, 0
/* 80A7F058  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 80A7F05C  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 80A7F060  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 80A7F064  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 80A7F068  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 80A7F06C  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 80A7F070  A0 1D 0E 08 */	lhz r0, 0xe08(r29)
/* 80A7F074  2C 00 00 02 */	cmpwi r0, 2
/* 80A7F078  41 82 00 54 */	beq lbl_80A7F0CC
/* 80A7F07C  40 80 00 10 */	bge lbl_80A7F08C
/* 80A7F080  2C 00 00 00 */	cmpwi r0, 0
/* 80A7F084  41 82 00 14 */	beq lbl_80A7F098
/* 80A7F088  48 00 03 68 */	b lbl_80A7F3F0
lbl_80A7F08C:
/* 80A7F08C  2C 00 00 04 */	cmpwi r0, 4
/* 80A7F090  40 80 03 60 */	bge lbl_80A7F3F0
/* 80A7F094  48 00 03 2C */	b lbl_80A7F3C0
lbl_80A7F098:
/* 80A7F098  7F A3 EB 78 */	mr r3, r29
/* 80A7F09C  A8 9D 0E 04 */	lha r4, 0xe04(r29)
/* 80A7F0A0  38 A0 00 00 */	li r5, 0
/* 80A7F0A4  4B 6D 4C 78 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80A7F0A8  38 60 00 00 */	li r3, 0
/* 80A7F0AC  90 7D 09 50 */	stw r3, 0x950(r29)
/* 80A7F0B0  A8 1D 0E 06 */	lha r0, 0xe06(r29)
/* 80A7F0B4  2C 00 00 00 */	cmpwi r0, 0
/* 80A7F0B8  41 82 00 08 */	beq lbl_80A7F0C0
/* 80A7F0BC  B0 7D 0E 06 */	sth r3, 0xe06(r29)
lbl_80A7F0C0:
/* 80A7F0C0  38 00 00 02 */	li r0, 2
/* 80A7F0C4  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7F0C8  48 00 03 28 */	b lbl_80A7F3F0
lbl_80A7F0CC:
/* 80A7F0CC  7F A3 EB 78 */	mr r3, r29
/* 80A7F0D0  38 80 00 00 */	li r4, 0
/* 80A7F0D4  38 A0 00 01 */	li r5, 1
/* 80A7F0D8  38 C1 00 34 */	addi r6, r1, 0x34
/* 80A7F0DC  4B 6D 4C A8 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A7F0E0  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F0E4  41 82 01 D4 */	beq lbl_80A7F2B8
/* 80A7F0E8  88 1D 0E 0B */	lbz r0, 0xe0b(r29)
/* 80A7F0EC  2C 00 00 01 */	cmpwi r0, 1
/* 80A7F0F0  41 82 00 AC */	beq lbl_80A7F19C
/* 80A7F0F4  40 80 00 10 */	bge lbl_80A7F104
/* 80A7F0F8  2C 00 00 00 */	cmpwi r0, 0
/* 80A7F0FC  40 80 00 14 */	bge lbl_80A7F110
/* 80A7F100  48 00 01 B0 */	b lbl_80A7F2B0
lbl_80A7F104:
/* 80A7F104  2C 00 00 03 */	cmpwi r0, 3
/* 80A7F108  40 80 01 A8 */	bge lbl_80A7F2B0
/* 80A7F10C  48 00 01 1C */	b lbl_80A7F228
lbl_80A7F110:
/* 80A7F110  80 7F 02 EC */	lwz r3, 0x2ec(r31)
/* 80A7F114  80 1F 02 F0 */	lwz r0, 0x2f0(r31)
/* 80A7F118  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A7F11C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7F120  80 1F 02 F4 */	lwz r0, 0x2f4(r31)
/* 80A7F124  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A7F128  38 00 00 03 */	li r0, 3
/* 80A7F12C  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7F130  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7F134  4B 8E 2E E4 */	b __ptmf_test
/* 80A7F138  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F13C  41 82 00 18 */	beq lbl_80A7F154
/* 80A7F140  7F A3 EB 78 */	mr r3, r29
/* 80A7F144  38 80 00 00 */	li r4, 0
/* 80A7F148  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7F14C  4B 8E 2F 38 */	b __ptmf_scall
/* 80A7F150  60 00 00 00 */	nop 
lbl_80A7F154:
/* 80A7F154  38 00 00 00 */	li r0, 0
/* 80A7F158  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7F15C  80 61 00 10 */	lwz r3, 0x10(r1)
/* 80A7F160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A7F164  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7F168  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7F16C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80A7F170  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7F174  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7F178  4B 8E 2E A0 */	b __ptmf_test
/* 80A7F17C  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F180  41 82 01 30 */	beq lbl_80A7F2B0
/* 80A7F184  7F A3 EB 78 */	mr r3, r29
/* 80A7F188  38 80 00 00 */	li r4, 0
/* 80A7F18C  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7F190  4B 8E 2E F4 */	b __ptmf_scall
/* 80A7F194  60 00 00 00 */	nop 
/* 80A7F198  48 00 01 18 */	b lbl_80A7F2B0
lbl_80A7F19C:
/* 80A7F19C  80 7F 02 F8 */	lwz r3, 0x2f8(r31)
/* 80A7F1A0  80 1F 02 FC */	lwz r0, 0x2fc(r31)
/* 80A7F1A4  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80A7F1A8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A7F1AC  80 1F 03 00 */	lwz r0, 0x300(r31)
/* 80A7F1B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7F1B4  38 00 00 03 */	li r0, 3
/* 80A7F1B8  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7F1BC  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7F1C0  4B 8E 2E 58 */	b __ptmf_test
/* 80A7F1C4  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F1C8  41 82 00 18 */	beq lbl_80A7F1E0
/* 80A7F1CC  7F A3 EB 78 */	mr r3, r29
/* 80A7F1D0  38 80 00 00 */	li r4, 0
/* 80A7F1D4  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7F1D8  4B 8E 2E AC */	b __ptmf_scall
/* 80A7F1DC  60 00 00 00 */	nop 
lbl_80A7F1E0:
/* 80A7F1E0  38 00 00 00 */	li r0, 0
/* 80A7F1E4  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7F1E8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80A7F1EC  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80A7F1F0  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7F1F4  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7F1F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A7F1FC  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7F200  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7F204  4B 8E 2E 14 */	b __ptmf_test
/* 80A7F208  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F20C  41 82 00 A4 */	beq lbl_80A7F2B0
/* 80A7F210  7F A3 EB 78 */	mr r3, r29
/* 80A7F214  38 80 00 00 */	li r4, 0
/* 80A7F218  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7F21C  4B 8E 2E 68 */	b __ptmf_scall
/* 80A7F220  60 00 00 00 */	nop 
/* 80A7F224  48 00 00 8C */	b lbl_80A7F2B0
lbl_80A7F228:
/* 80A7F228  80 7F 03 04 */	lwz r3, 0x304(r31)
/* 80A7F22C  80 1F 03 08 */	lwz r0, 0x308(r31)
/* 80A7F230  90 61 00 28 */	stw r3, 0x28(r1)
/* 80A7F234  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A7F238  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 80A7F23C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A7F240  38 00 00 03 */	li r0, 3
/* 80A7F244  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7F248  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7F24C  4B 8E 2D CC */	b __ptmf_test
/* 80A7F250  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F254  41 82 00 18 */	beq lbl_80A7F26C
/* 80A7F258  7F A3 EB 78 */	mr r3, r29
/* 80A7F25C  38 80 00 00 */	li r4, 0
/* 80A7F260  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7F264  4B 8E 2E 20 */	b __ptmf_scall
/* 80A7F268  60 00 00 00 */	nop 
lbl_80A7F26C:
/* 80A7F26C  38 00 00 00 */	li r0, 0
/* 80A7F270  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7F274  80 61 00 28 */	lwz r3, 0x28(r1)
/* 80A7F278  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80A7F27C  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7F280  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7F284  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80A7F288  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7F28C  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7F290  4B 8E 2D 88 */	b __ptmf_test
/* 80A7F294  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F298  41 82 00 18 */	beq lbl_80A7F2B0
/* 80A7F29C  7F A3 EB 78 */	mr r3, r29
/* 80A7F2A0  38 80 00 00 */	li r4, 0
/* 80A7F2A4  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7F2A8  4B 8E 2D DC */	b __ptmf_scall
/* 80A7F2AC  60 00 00 00 */	nop 
lbl_80A7F2B0:
/* 80A7F2B0  3B C0 00 01 */	li r30, 1
/* 80A7F2B4  48 00 01 3C */	b lbl_80A7F3F0
lbl_80A7F2B8:
/* 80A7F2B8  83 FD 09 50 */	lwz r31, 0x950(r29)
/* 80A7F2BC  7F A3 EB 78 */	mr r3, r29
/* 80A7F2C0  38 81 00 0C */	addi r4, r1, 0xc
/* 80A7F2C4  38 A1 00 08 */	addi r5, r1, 8
/* 80A7F2C8  7F A6 EB 78 */	mr r6, r29
/* 80A7F2CC  38 E0 00 00 */	li r7, 0
/* 80A7F2D0  4B 6D 44 48 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80A7F2D4  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F2D8  41 82 00 4C */	beq lbl_80A7F324
/* 80A7F2DC  7F A3 EB 78 */	mr r3, r29
/* 80A7F2E0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80A7F2E4  3C A0 80 A8 */	lis r5, lit_4960@ha
/* 80A7F2E8  C0 25 37 90 */	lfs f1, lit_4960@l(r5)
/* 80A7F2EC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F2F0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7F2F4  7D 89 03 A6 */	mtctr r12
/* 80A7F2F8  4E 80 04 21 */	bctrl 
/* 80A7F2FC  7F A3 EB 78 */	mr r3, r29
/* 80A7F300  80 81 00 08 */	lwz r4, 8(r1)
/* 80A7F304  3C A0 80 A8 */	lis r5, lit_4960@ha
/* 80A7F308  C0 25 37 90 */	lfs f1, lit_4960@l(r5)
/* 80A7F30C  38 A0 00 00 */	li r5, 0
/* 80A7F310  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F314  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7F318  7D 89 03 A6 */	mtctr r12
/* 80A7F31C  4E 80 04 21 */	bctrl 
/* 80A7F320  48 00 00 D0 */	b lbl_80A7F3F0
lbl_80A7F324:
/* 80A7F324  2C 1F 00 00 */	cmpwi r31, 0
/* 80A7F328  41 82 00 C8 */	beq lbl_80A7F3F0
/* 80A7F32C  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 80A7F330  2C 00 00 00 */	cmpwi r0, 0
/* 80A7F334  40 82 00 BC */	bne lbl_80A7F3F0
/* 80A7F338  A8 1D 09 DE */	lha r0, 0x9de(r29)
/* 80A7F33C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A7F340  41 82 00 38 */	beq lbl_80A7F378
/* 80A7F344  40 80 00 58 */	bge lbl_80A7F39C
/* 80A7F348  2C 00 00 03 */	cmpwi r0, 3
/* 80A7F34C  41 82 00 08 */	beq lbl_80A7F354
/* 80A7F350  48 00 00 4C */	b lbl_80A7F39C
lbl_80A7F354:
/* 80A7F354  7F A3 EB 78 */	mr r3, r29
/* 80A7F358  38 80 00 0E */	li r4, 0xe
/* 80A7F35C  3C A0 80 A8 */	lis r5, lit_4960@ha
/* 80A7F360  C0 25 37 90 */	lfs f1, lit_4960@l(r5)
/* 80A7F364  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F368  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7F36C  7D 89 03 A6 */	mtctr r12
/* 80A7F370  4E 80 04 21 */	bctrl 
/* 80A7F374  48 00 00 7C */	b lbl_80A7F3F0
lbl_80A7F378:
/* 80A7F378  7F A3 EB 78 */	mr r3, r29
/* 80A7F37C  38 80 00 11 */	li r4, 0x11
/* 80A7F380  3C A0 80 A8 */	lis r5, lit_4960@ha
/* 80A7F384  C0 25 37 90 */	lfs f1, lit_4960@l(r5)
/* 80A7F388  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F38C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7F390  7D 89 03 A6 */	mtctr r12
/* 80A7F394  4E 80 04 21 */	bctrl 
/* 80A7F398  48 00 00 58 */	b lbl_80A7F3F0
lbl_80A7F39C:
/* 80A7F39C  7F A3 EB 78 */	mr r3, r29
/* 80A7F3A0  38 80 00 12 */	li r4, 0x12
/* 80A7F3A4  3C A0 80 A8 */	lis r5, lit_4960@ha
/* 80A7F3A8  C0 25 37 90 */	lfs f1, lit_4960@l(r5)
/* 80A7F3AC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F3B0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7F3B4  7D 89 03 A6 */	mtctr r12
/* 80A7F3B8  4E 80 04 21 */	bctrl 
/* 80A7F3BC  48 00 00 34 */	b lbl_80A7F3F0
lbl_80A7F3C0:
/* 80A7F3C0  7F A3 EB 78 */	mr r3, r29
/* 80A7F3C4  38 80 00 12 */	li r4, 0x12
/* 80A7F3C8  3C A0 80 A8 */	lis r5, lit_4960@ha
/* 80A7F3CC  C0 25 37 90 */	lfs f1, lit_4960@l(r5)
/* 80A7F3D0  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F3D4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7F3D8  7D 89 03 A6 */	mtctr r12
/* 80A7F3DC  4E 80 04 21 */	bctrl 
/* 80A7F3E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A7F3E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A7F3E8  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80A7F3EC  4B 5C 30 7C */	b reset__14dEvt_control_cFv
lbl_80A7F3F0:
/* 80A7F3F0  7F C3 F3 78 */	mr r3, r30
/* 80A7F3F4  39 61 00 60 */	addi r11, r1, 0x60
/* 80A7F3F8  4B 8E 2E 30 */	b _restgpr_29
/* 80A7F3FC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A7F400  7C 08 03 A6 */	mtlr r0
/* 80A7F404  38 21 00 60 */	addi r1, r1, 0x60
/* 80A7F408  4E 80 00 20 */	blr 
