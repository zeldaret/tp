lbl_80007954:
/* 80007954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007958  7C 08 02 A6 */	mflr r0
/* 8000795C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007960  38 60 00 B0 */	li r3, 0xb0
/* 80007964  48 2C 72 E9 */	bl __nw__FUl
/* 80007968  7C 60 1B 79 */	or. r0, r3, r3
/* 8000796C  41 82 00 10 */	beq lbl_8000797C
/* 80007970  38 80 00 00 */	li r4, 0
/* 80007974  48 2D 8D 69 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 80007978  7C 60 1B 78 */	mr r0, r3
lbl_8000797C:
/* 8000797C  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha
/* 80007980  94 03 D2 D8 */	stwu r0, m_gamePad__8mDoCPd_c@l(r3)
/* 80007984  88 0D 80 00 */	lbz r0, data_80450580(r13)
/* 80007988  7C 00 07 75 */	extsb. r0, r0
/* 8000798C  41 82 00 80 */	beq lbl_80007A0C
/* 80007990  38 60 00 B0 */	li r3, 0xb0
/* 80007994  48 2C 72 B9 */	bl __nw__FUl
/* 80007998  7C 60 1B 79 */	or. r0, r3, r3
/* 8000799C  41 82 00 10 */	beq lbl_800079AC
/* 800079A0  38 80 00 01 */	li r4, 1
/* 800079A4  48 2D 8D 39 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 800079A8  7C 60 1B 78 */	mr r0, r3
lbl_800079AC:
/* 800079AC  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha
/* 800079B0  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l
/* 800079B4  90 03 00 04 */	stw r0, 4(r3)
/* 800079B8  38 60 00 B0 */	li r3, 0xb0
/* 800079BC  48 2C 72 91 */	bl __nw__FUl
/* 800079C0  7C 60 1B 79 */	or. r0, r3, r3
/* 800079C4  41 82 00 10 */	beq lbl_800079D4
/* 800079C8  38 80 00 02 */	li r4, 2
/* 800079CC  48 2D 8D 11 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 800079D0  7C 60 1B 78 */	mr r0, r3
lbl_800079D4:
/* 800079D4  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha
/* 800079D8  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l
/* 800079DC  90 03 00 08 */	stw r0, 8(r3)
/* 800079E0  38 60 00 B0 */	li r3, 0xb0
/* 800079E4  48 2C 72 69 */	bl __nw__FUl
/* 800079E8  7C 60 1B 79 */	or. r0, r3, r3
/* 800079EC  41 82 00 10 */	beq lbl_800079FC
/* 800079F0  38 80 00 03 */	li r4, 3
/* 800079F4  48 2D 8C E9 */	bl __ct__10JUTGamePadFQ210JUTGamePad8EPadPort
/* 800079F8  7C 60 1B 78 */	mr r0, r3
lbl_800079FC:
/* 800079FC  3C 60 80 3E */	lis r3, m_gamePad__8mDoCPd_c@ha
/* 80007A00  38 63 D2 D8 */	addi r3, r3, m_gamePad__8mDoCPd_c@l
/* 80007A04  90 03 00 0C */	stw r0, 0xc(r3)
/* 80007A08  48 00 00 14 */	b lbl_80007A1C
lbl_80007A0C:
/* 80007A0C  38 00 00 00 */	li r0, 0
/* 80007A10  90 03 00 04 */	stw r0, 4(r3)
/* 80007A14  90 03 00 08 */	stw r0, 8(r3)
/* 80007A18  90 03 00 0C */	stw r0, 0xc(r3)
lbl_80007A1C:
/* 80007A1C  80 6D 86 F8 */	lwz r3, mResetData__6mDoRst(r13)
/* 80007A20  80 03 00 00 */	lwz r0, 0(r3)
/* 80007A24  2C 00 00 00 */	cmpwi r0, 0
/* 80007A28  40 82 00 1C */	bne lbl_80007A44
/* 80007A2C  38 80 00 00 */	li r4, 0
/* 80007A30  98 8D 8F 81 */	stb r4, struct_80451500+0x1(r13)
/* 80007A34  3C 60 80 01 */	lis r3, mDoRst_resetCallBack__FiPv@ha
/* 80007A38  38 03 57 4C */	addi r0, r3, mDoRst_resetCallBack__FiPv@l
/* 80007A3C  90 0D 8F 6C */	stw r0, sCallback__Q210JUTGamePad13C3ButtonReset(r13)
/* 80007A40  90 8D 8F 70 */	stw r4, sCallbackArg__Q210JUTGamePad13C3ButtonReset(r13)
lbl_80007A44:
/* 80007A44  38 00 00 03 */	li r0, 3
/* 80007A48  90 0D 8F 5C */	stw r0, sAnalogMode__10JUTGamePad(r13)
/* 80007A4C  38 60 00 03 */	li r3, 3
/* 80007A50  48 34 7F C1 */	bl PADSetAnalogMode
/* 80007A54  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha
/* 80007A58  38 03 D2 E8 */	addi r0, r3, m_cpadInfo__8mDoCPd_c@l
/* 80007A5C  7C 04 03 78 */	mr r4, r0
/* 80007A60  38 60 00 00 */	li r3, 0
/* 80007A64  38 00 00 04 */	li r0, 4
/* 80007A68  7C 09 03 A6 */	mtctr r0
lbl_80007A6C:
/* 80007A6C  98 64 00 3A */	stb r3, 0x3a(r4)
/* 80007A70  98 64 00 39 */	stb r3, 0x39(r4)
/* 80007A74  98 64 00 3C */	stb r3, 0x3c(r4)
/* 80007A78  98 64 00 3B */	stb r3, 0x3b(r4)
/* 80007A7C  38 84 00 40 */	addi r4, r4, 0x40
/* 80007A80  42 00 FF EC */	bdnz lbl_80007A6C
/* 80007A84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007A88  7C 08 03 A6 */	mtlr r0
/* 80007A8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80007A90  4E 80 00 20 */	blr 
