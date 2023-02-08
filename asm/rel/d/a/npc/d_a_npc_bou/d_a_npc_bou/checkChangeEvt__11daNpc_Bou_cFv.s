lbl_8096DF9C:
/* 8096DF9C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096DFA0  7C 08 02 A6 */	mflr r0
/* 8096DFA4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096DFA8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8096DFAC  7C 7F 1B 78 */	mr r31, r3
/* 8096DFB0  3C 80 80 97 */	lis r4, lit_4712@ha /* 0x80973214@ha */
/* 8096DFB4  38 A4 32 14 */	addi r5, r4, lit_4712@l /* 0x80973214@l */
/* 8096DFB8  80 85 00 00 */	lwz r4, 0(r5)
/* 8096DFBC  80 05 00 04 */	lwz r0, 4(r5)
/* 8096DFC0  90 81 00 08 */	stw r4, 8(r1)
/* 8096DFC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8096DFC8  80 05 00 08 */	lwz r0, 8(r5)
/* 8096DFCC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8096DFD0  38 81 00 08 */	addi r4, r1, 8
/* 8096DFD4  48 00 0D 69 */	bl chkAction__11daNpc_Bou_cFM11daNpc_Bou_cFPCvPvPv_i
/* 8096DFD8  2C 03 00 00 */	cmpwi r3, 0
/* 8096DFDC  40 82 00 F8 */	bne lbl_8096E0D4
/* 8096DFE0  38 00 00 00 */	li r0, 0
/* 8096DFE4  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 8096DFE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096DFEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096DFF0  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 8096DFF4  28 04 00 01 */	cmplwi r4, 1
/* 8096DFF8  41 82 00 0C */	beq lbl_8096E004
/* 8096DFFC  28 04 00 02 */	cmplwi r4, 2
/* 8096E000  40 82 00 08 */	bne lbl_8096E008
lbl_8096E004:
/* 8096E004  38 00 00 01 */	li r0, 1
lbl_8096E008:
/* 8096E008  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8096E00C  41 82 00 2C */	beq lbl_8096E038
/* 8096E010  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8096E014  4B 6D A7 DD */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 8096E018  2C 03 00 00 */	cmpwi r3, 0
/* 8096E01C  41 82 00 14 */	beq lbl_8096E030
/* 8096E020  38 00 00 01 */	li r0, 1
/* 8096E024  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8096E028  7F E3 FB 78 */	mr r3, r31
/* 8096E02C  4B 7D C1 F9 */	bl evtChange__8daNpcT_cFv
lbl_8096E030:
/* 8096E030  38 60 00 01 */	li r3, 1
/* 8096E034  48 00 00 A4 */	b lbl_8096E0D8
lbl_8096E038:
/* 8096E038  88 1F 0F 80 */	lbz r0, 0xf80(r31)
/* 8096E03C  2C 00 00 01 */	cmpwi r0, 1
/* 8096E040  41 82 00 48 */	beq lbl_8096E088
/* 8096E044  40 80 00 10 */	bge lbl_8096E054
/* 8096E048  2C 00 00 00 */	cmpwi r0, 0
/* 8096E04C  40 80 00 14 */	bge lbl_8096E060
/* 8096E050  48 00 00 84 */	b lbl_8096E0D4
lbl_8096E054:
/* 8096E054  2C 00 00 04 */	cmpwi r0, 4
/* 8096E058  41 82 00 54 */	beq lbl_8096E0AC
/* 8096E05C  48 00 00 78 */	b lbl_8096E0D4
lbl_8096E060:
/* 8096E060  38 60 02 4A */	li r3, 0x24a
/* 8096E064  4B 7D EA 49 */	bl daNpcT_chkEvtBit__FUl
/* 8096E068  2C 03 00 00 */	cmpwi r3, 0
/* 8096E06C  40 82 00 68 */	bne lbl_8096E0D4
/* 8096E070  38 00 00 02 */	li r0, 2
/* 8096E074  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8096E078  7F E3 FB 78 */	mr r3, r31
/* 8096E07C  4B 7D C1 A9 */	bl evtChange__8daNpcT_cFv
/* 8096E080  38 60 00 01 */	li r3, 1
/* 8096E084  48 00 00 54 */	b lbl_8096E0D8
lbl_8096E088:
/* 8096E088  80 1F 0F DC */	lwz r0, 0xfdc(r31)
/* 8096E08C  2C 00 00 04 */	cmpwi r0, 4
/* 8096E090  40 80 00 44 */	bge lbl_8096E0D4
/* 8096E094  38 00 00 06 */	li r0, 6
/* 8096E098  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8096E09C  7F E3 FB 78 */	mr r3, r31
/* 8096E0A0  4B 7D C1 85 */	bl evtChange__8daNpcT_cFv
/* 8096E0A4  38 60 00 01 */	li r3, 1
/* 8096E0A8  48 00 00 30 */	b lbl_8096E0D8
lbl_8096E0AC:
/* 8096E0AC  38 60 00 B3 */	li r3, 0xb3
/* 8096E0B0  4B 7D E9 FD */	bl daNpcT_chkEvtBit__FUl
/* 8096E0B4  2C 03 00 00 */	cmpwi r3, 0
/* 8096E0B8  40 82 00 1C */	bne lbl_8096E0D4
/* 8096E0BC  38 00 00 02 */	li r0, 2
/* 8096E0C0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8096E0C4  7F E3 FB 78 */	mr r3, r31
/* 8096E0C8  4B 7D C1 5D */	bl evtChange__8daNpcT_cFv
/* 8096E0CC  38 60 00 01 */	li r3, 1
/* 8096E0D0  48 00 00 08 */	b lbl_8096E0D8
lbl_8096E0D4:
/* 8096E0D4  38 60 00 00 */	li r3, 0
lbl_8096E0D8:
/* 8096E0D8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8096E0DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096E0E0  7C 08 03 A6 */	mtlr r0
/* 8096E0E4  38 21 00 20 */	addi r1, r1, 0x20
/* 8096E0E8  4E 80 00 20 */	blr 
