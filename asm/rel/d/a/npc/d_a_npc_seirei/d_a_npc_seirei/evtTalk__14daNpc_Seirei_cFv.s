lbl_80AD6054:
/* 80AD6054  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AD6058  7C 08 02 A6 */	mflr r0
/* 80AD605C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AD6060  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80AD6064  7C 7F 1B 78 */	mr r31, r3
/* 80AD6068  3C 80 80 AD */	lis r4, lit_4415@ha /* 0x80AD7F10@ha */
/* 80AD606C  38 A4 7F 10 */	addi r5, r4, lit_4415@l /* 0x80AD7F10@l */
/* 80AD6070  80 85 00 00 */	lwz r4, 0(r5)
/* 80AD6074  80 05 00 04 */	lwz r0, 4(r5)
/* 80AD6078  90 81 00 14 */	stw r4, 0x14(r1)
/* 80AD607C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AD6080  80 05 00 08 */	lwz r0, 8(r5)
/* 80AD6084  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AD6088  38 81 00 14 */	addi r4, r1, 0x14
/* 80AD608C  48 00 05 C1 */	bl chkAction__14daNpc_Seirei_cFM14daNpc_Seirei_cFPCvPvPv_i
/* 80AD6090  2C 03 00 00 */	cmpwi r3, 0
/* 80AD6094  41 82 00 1C */	beq lbl_80AD60B0
/* 80AD6098  7F E3 FB 78 */	mr r3, r31
/* 80AD609C  38 80 00 00 */	li r4, 0
/* 80AD60A0  39 9F 0E 54 */	addi r12, r31, 0xe54
/* 80AD60A4  4B 88 BF E1 */	bl __ptmf_scall
/* 80AD60A8  60 00 00 00 */	nop 
/* 80AD60AC  48 00 00 90 */	b lbl_80AD613C
lbl_80AD60B0:
/* 80AD60B0  38 00 00 00 */	li r0, 0
/* 80AD60B4  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80AD60B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AD60BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AD60C0  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80AD60C4  28 04 00 01 */	cmplwi r4, 1
/* 80AD60C8  41 82 00 0C */	beq lbl_80AD60D4
/* 80AD60CC  28 04 00 02 */	cmplwi r4, 2
/* 80AD60D0  40 82 00 08 */	bne lbl_80AD60D8
lbl_80AD60D4:
/* 80AD60D4  38 00 00 01 */	li r0, 1
lbl_80AD60D8:
/* 80AD60D8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AD60DC  41 82 00 34 */	beq lbl_80AD6110
/* 80AD60E0  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80AD60E4  4B 57 27 0D */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80AD60E8  2C 03 00 00 */	cmpwi r3, 0
/* 80AD60EC  40 82 00 0C */	bne lbl_80AD60F8
/* 80AD60F0  38 60 00 01 */	li r3, 1
/* 80AD60F4  48 00 00 4C */	b lbl_80AD6140
lbl_80AD60F8:
/* 80AD60F8  38 00 00 03 */	li r0, 3
/* 80AD60FC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AD6100  7F E3 FB 78 */	mr r3, r31
/* 80AD6104  4B 67 41 21 */	bl evtChange__8daNpcT_cFv
/* 80AD6108  38 60 00 01 */	li r3, 1
/* 80AD610C  48 00 00 34 */	b lbl_80AD6140
lbl_80AD6110:
/* 80AD6110  3C 60 80 AD */	lis r3, lit_4425@ha /* 0x80AD7F1C@ha */
/* 80AD6114  38 83 7F 1C */	addi r4, r3, lit_4425@l /* 0x80AD7F1C@l */
/* 80AD6118  80 64 00 00 */	lwz r3, 0(r4)
/* 80AD611C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD6120  90 61 00 08 */	stw r3, 8(r1)
/* 80AD6124  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AD6128  80 04 00 08 */	lwz r0, 8(r4)
/* 80AD612C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AD6130  7F E3 FB 78 */	mr r3, r31
/* 80AD6134  38 81 00 08 */	addi r4, r1, 8
/* 80AD6138  48 00 05 41 */	bl setAction__14daNpc_Seirei_cFM14daNpc_Seirei_cFPCvPvPv_i
lbl_80AD613C:
/* 80AD613C  38 60 00 01 */	li r3, 1
lbl_80AD6140:
/* 80AD6140  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80AD6144  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AD6148  7C 08 03 A6 */	mtlr r0
/* 80AD614C  38 21 00 30 */	addi r1, r1, 0x30
/* 80AD6150  4E 80 00 20 */	blr 
