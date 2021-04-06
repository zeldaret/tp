lbl_80A09F4C:
/* 80A09F4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A09F50  7C 08 02 A6 */	mflr r0
/* 80A09F54  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A09F58  39 61 00 40 */	addi r11, r1, 0x40
/* 80A09F5C  4B 95 82 79 */	bl _savegpr_27
/* 80A09F60  7C 7E 1B 78 */	mr r30, r3
/* 80A09F64  3C 80 80 A1 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80A0C524@ha */
/* 80A09F68  3B E4 C5 24 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80A0C524@l */
/* 80A09F6C  A0 03 0D E6 */	lhz r0, 0xde6(r3)
/* 80A09F70  2C 00 00 02 */	cmpwi r0, 2
/* 80A09F74  41 82 00 60 */	beq lbl_80A09FD4
/* 80A09F78  40 80 02 4C */	bge lbl_80A0A1C4
/* 80A09F7C  2C 00 00 00 */	cmpwi r0, 0
/* 80A09F80  41 82 00 0C */	beq lbl_80A09F8C
/* 80A09F84  48 00 02 40 */	b lbl_80A0A1C4
/* 80A09F88  48 00 02 3C */	b lbl_80A0A1C4
lbl_80A09F8C:
/* 80A09F8C  38 80 00 07 */	li r4, 7
/* 80A09F90  3C A0 80 A1 */	lis r5, lit_4889@ha /* 0x80A0C48C@ha */
/* 80A09F94  C0 25 C4 8C */	lfs f1, lit_4889@l(r5)  /* 0x80A0C48C@l */
/* 80A09F98  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A09F9C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A09FA0  7D 89 03 A6 */	mtctr r12
/* 80A09FA4  4E 80 04 21 */	bctrl 
/* 80A09FA8  7F C3 F3 78 */	mr r3, r30
/* 80A09FAC  38 80 00 00 */	li r4, 0
/* 80A09FB0  3C A0 80 A1 */	lis r5, lit_4889@ha /* 0x80A0C48C@ha */
/* 80A09FB4  C0 25 C4 8C */	lfs f1, lit_4889@l(r5)  /* 0x80A0C48C@l */
/* 80A09FB8  38 A0 00 00 */	li r5, 0
/* 80A09FBC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80A09FC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A09FC4  7D 89 03 A6 */	mtctr r12
/* 80A09FC8  4E 80 04 21 */	bctrl 
/* 80A09FCC  38 00 00 02 */	li r0, 2
/* 80A09FD0  B0 1E 0D E6 */	sth r0, 0xde6(r30)
lbl_80A09FD4:
/* 80A09FD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A09FD8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A09FDC  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80A09FE0  28 00 00 00 */	cmplwi r0, 0
/* 80A09FE4  41 82 01 58 */	beq lbl_80A0A13C
/* 80A09FE8  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80A09FEC  28 00 00 01 */	cmplwi r0, 1
/* 80A09FF0  41 82 01 4C */	beq lbl_80A0A13C
/* 80A09FF4  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 80A09FF8  7F 83 E3 78 */	mr r3, r28
/* 80A09FFC  80 9F 01 C0 */	lwz r4, 0x1c0(r31)
/* 80A0A000  38 A0 00 00 */	li r5, 0
/* 80A0A004  38 C0 00 00 */	li r6, 0
/* 80A0A008  4B 63 DB 15 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80A0A00C  2C 03 FF FF */	cmpwi r3, -1
/* 80A0A010  41 82 00 40 */	beq lbl_80A0A050
/* 80A0A014  7C 7B 1B 78 */	mr r27, r3
/* 80A0A018  93 7E 09 2C */	stw r27, 0x92c(r30)
/* 80A0A01C  7F C3 F3 78 */	mr r3, r30
/* 80A0A020  7F 64 DB 78 */	mr r4, r27
/* 80A0A024  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A0A028  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80A0A02C  39 9F 01 E8 */	addi r12, r31, 0x1e8
/* 80A0A030  7D 8C 02 14 */	add r12, r12, r0
/* 80A0A034  4B 95 80 51 */	bl __ptmf_scall
/* 80A0A038  60 00 00 00 */	nop 
/* 80A0A03C  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A040  41 82 00 10 */	beq lbl_80A0A050
/* 80A0A044  7F 83 E3 78 */	mr r3, r28
/* 80A0A048  7F 64 DB 78 */	mr r4, r27
/* 80A0A04C  4B 63 E1 31 */	bl cutEnd__16dEvent_manager_cFi
lbl_80A0A050:
/* 80A0A050  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80A0A054  28 00 00 02 */	cmplwi r0, 2
/* 80A0A058  40 82 01 6C */	bne lbl_80A0A1C4
/* 80A0A05C  A8 9E 09 D4 */	lha r4, 0x9d4(r30)
/* 80A0A060  2C 04 FF FF */	cmpwi r4, -1
/* 80A0A064  41 82 01 60 */	beq lbl_80A0A1C4
/* 80A0A068  7F 83 E3 78 */	mr r3, r28
/* 80A0A06C  4B 63 DA 0D */	bl endCheck__16dEvent_manager_cFs
/* 80A0A070  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A074  41 82 01 50 */	beq lbl_80A0A1C4
/* 80A0A078  88 1E 09 EC */	lbz r0, 0x9ec(r30)
/* 80A0A07C  28 00 00 00 */	cmplwi r0, 0
/* 80A0A080  40 82 00 0C */	bne lbl_80A0A08C
/* 80A0A084  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80A0A088  4B 63 83 E1 */	bl reset__14dEvt_control_cFv
lbl_80A0A08C:
/* 80A0A08C  38 60 00 00 */	li r3, 0
/* 80A0A090  98 7E 09 EC */	stb r3, 0x9ec(r30)
/* 80A0A094  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80A0A098  28 00 00 01 */	cmplwi r0, 1
/* 80A0A09C  40 82 00 08 */	bne lbl_80A0A0A4
/* 80A0A0A0  38 60 00 02 */	li r3, 2
lbl_80A0A0A4:
/* 80A0A0A4  B0 7E 09 E6 */	sth r3, 0x9e6(r30)
/* 80A0A0A8  38 00 FF FF */	li r0, -1
/* 80A0A0AC  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80A0A0B0  80 7F 02 7C */	lwz r3, 0x27c(r31)
/* 80A0A0B4  80 1F 02 80 */	lwz r0, 0x280(r31)
/* 80A0A0B8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A0A0BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A0A0C0  80 1F 02 84 */	lwz r0, 0x284(r31)
/* 80A0A0C4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A0A0C8  38 00 00 03 */	li r0, 3
/* 80A0A0CC  B0 1E 0D E6 */	sth r0, 0xde6(r30)
/* 80A0A0D0  38 7E 0D C0 */	addi r3, r30, 0xdc0
/* 80A0A0D4  4B 95 7F 45 */	bl __ptmf_test
/* 80A0A0D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A0DC  41 82 00 18 */	beq lbl_80A0A0F4
/* 80A0A0E0  7F C3 F3 78 */	mr r3, r30
/* 80A0A0E4  38 80 00 00 */	li r4, 0
/* 80A0A0E8  39 9E 0D C0 */	addi r12, r30, 0xdc0
/* 80A0A0EC  4B 95 7F 99 */	bl __ptmf_scall
/* 80A0A0F0  60 00 00 00 */	nop 
lbl_80A0A0F4:
/* 80A0A0F4  38 00 00 00 */	li r0, 0
/* 80A0A0F8  B0 1E 0D E6 */	sth r0, 0xde6(r30)
/* 80A0A0FC  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80A0A100  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80A0A104  90 7E 0D C0 */	stw r3, 0xdc0(r30)
/* 80A0A108  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 80A0A10C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A0A110  90 1E 0D C8 */	stw r0, 0xdc8(r30)
/* 80A0A114  38 7E 0D C0 */	addi r3, r30, 0xdc0
/* 80A0A118  4B 95 7F 01 */	bl __ptmf_test
/* 80A0A11C  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A120  41 82 00 A4 */	beq lbl_80A0A1C4
/* 80A0A124  7F C3 F3 78 */	mr r3, r30
/* 80A0A128  38 80 00 00 */	li r4, 0
/* 80A0A12C  39 9E 0D C0 */	addi r12, r30, 0xdc0
/* 80A0A130  4B 95 7F 55 */	bl __ptmf_scall
/* 80A0A134  60 00 00 00 */	nop 
/* 80A0A138  48 00 00 8C */	b lbl_80A0A1C4
lbl_80A0A13C:
/* 80A0A13C  80 7F 02 88 */	lwz r3, 0x288(r31)
/* 80A0A140  80 1F 02 8C */	lwz r0, 0x28c(r31)
/* 80A0A144  90 61 00 08 */	stw r3, 8(r1)
/* 80A0A148  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A0A14C  80 1F 02 90 */	lwz r0, 0x290(r31)
/* 80A0A150  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A0A154  38 00 00 03 */	li r0, 3
/* 80A0A158  B0 1E 0D E6 */	sth r0, 0xde6(r30)
/* 80A0A15C  38 7E 0D C0 */	addi r3, r30, 0xdc0
/* 80A0A160  4B 95 7E B9 */	bl __ptmf_test
/* 80A0A164  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A168  41 82 00 18 */	beq lbl_80A0A180
/* 80A0A16C  7F C3 F3 78 */	mr r3, r30
/* 80A0A170  38 80 00 00 */	li r4, 0
/* 80A0A174  39 9E 0D C0 */	addi r12, r30, 0xdc0
/* 80A0A178  4B 95 7F 0D */	bl __ptmf_scall
/* 80A0A17C  60 00 00 00 */	nop 
lbl_80A0A180:
/* 80A0A180  38 00 00 00 */	li r0, 0
/* 80A0A184  B0 1E 0D E6 */	sth r0, 0xde6(r30)
/* 80A0A188  80 61 00 08 */	lwz r3, 8(r1)
/* 80A0A18C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A0A190  90 7E 0D C0 */	stw r3, 0xdc0(r30)
/* 80A0A194  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 80A0A198  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A0A19C  90 1E 0D C8 */	stw r0, 0xdc8(r30)
/* 80A0A1A0  38 7E 0D C0 */	addi r3, r30, 0xdc0
/* 80A0A1A4  4B 95 7E 75 */	bl __ptmf_test
/* 80A0A1A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A0A1AC  41 82 00 18 */	beq lbl_80A0A1C4
/* 80A0A1B0  7F C3 F3 78 */	mr r3, r30
/* 80A0A1B4  38 80 00 00 */	li r4, 0
/* 80A0A1B8  39 9E 0D C0 */	addi r12, r30, 0xdc0
/* 80A0A1BC  4B 95 7E C9 */	bl __ptmf_scall
/* 80A0A1C0  60 00 00 00 */	nop 
lbl_80A0A1C4:
/* 80A0A1C4  38 60 00 01 */	li r3, 1
/* 80A0A1C8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A0A1CC  4B 95 80 55 */	bl _restgpr_27
/* 80A0A1D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A0A1D4  7C 08 03 A6 */	mtlr r0
/* 80A0A1D8  38 21 00 40 */	addi r1, r1, 0x40
/* 80A0A1DC  4E 80 00 20 */	blr 
