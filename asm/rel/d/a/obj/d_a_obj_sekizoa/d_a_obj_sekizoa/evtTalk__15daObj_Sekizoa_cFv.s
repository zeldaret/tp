lbl_80CCF9A8:
/* 80CCF9A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80CCF9AC  7C 08 02 A6 */	mflr r0
/* 80CCF9B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80CCF9B4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80CCF9B8  7C 7F 1B 78 */	mr r31, r3
/* 80CCF9BC  3C 80 80 CD */	lis r4, lit_4906@ha /* 0x80CD651C@ha */
/* 80CCF9C0  38 A4 65 1C */	addi r5, r4, lit_4906@l /* 0x80CD651C@l */
/* 80CCF9C4  80 85 00 00 */	lwz r4, 0(r5)
/* 80CCF9C8  80 05 00 04 */	lwz r0, 4(r5)
/* 80CCF9CC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80CCF9D0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CCF9D4  80 05 00 08 */	lwz r0, 8(r5)
/* 80CCF9D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CCF9DC  38 81 00 14 */	addi r4, r1, 0x14
/* 80CCF9E0  48 00 11 29 */	bl chkAction__15daObj_Sekizoa_cFM15daObj_Sekizoa_cFPCvPvPv_i
/* 80CCF9E4  2C 03 00 00 */	cmpwi r3, 0
/* 80CCF9E8  41 82 00 1C */	beq lbl_80CCFA04
/* 80CCF9EC  7F E3 FB 78 */	mr r3, r31
/* 80CCF9F0  38 80 00 00 */	li r4, 0
/* 80CCF9F4  39 9F 11 18 */	addi r12, r31, 0x1118
/* 80CCF9F8  4B 69 26 8D */	bl __ptmf_scall
/* 80CCF9FC  60 00 00 00 */	nop 
/* 80CCFA00  48 00 00 90 */	b lbl_80CCFA90
lbl_80CCFA04:
/* 80CCFA04  38 00 00 00 */	li r0, 0
/* 80CCFA08  98 1F 0E 2E */	stb r0, 0xe2e(r31)
/* 80CCFA0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCFA10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCFA14  88 83 4F B5 */	lbz r4, 0x4fb5(r3)
/* 80CCFA18  28 04 00 01 */	cmplwi r4, 1
/* 80CCFA1C  41 82 00 0C */	beq lbl_80CCFA28
/* 80CCFA20  28 04 00 02 */	cmplwi r4, 2
/* 80CCFA24  40 82 00 08 */	bne lbl_80CCFA2C
lbl_80CCFA28:
/* 80CCFA28  38 00 00 01 */	li r0, 1
lbl_80CCFA2C:
/* 80CCFA2C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80CCFA30  41 82 00 34 */	beq lbl_80CCFA64
/* 80CCFA34  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 80CCFA38  4B 37 8D B9 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80CCFA3C  2C 03 00 00 */	cmpwi r3, 0
/* 80CCFA40  40 82 00 0C */	bne lbl_80CCFA4C
/* 80CCFA44  38 60 00 01 */	li r3, 1
/* 80CCFA48  48 00 00 4C */	b lbl_80CCFA94
lbl_80CCFA4C:
/* 80CCFA4C  38 00 00 01 */	li r0, 1
/* 80CCFA50  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80CCFA54  7F E3 FB 78 */	mr r3, r31
/* 80CCFA58  4B 47 A7 CD */	bl evtChange__8daNpcT_cFv
/* 80CCFA5C  38 60 00 01 */	li r3, 1
/* 80CCFA60  48 00 00 34 */	b lbl_80CCFA94
lbl_80CCFA64:
/* 80CCFA64  3C 60 80 CD */	lis r3, lit_4916@ha /* 0x80CD6528@ha */
/* 80CCFA68  38 83 65 28 */	addi r4, r3, lit_4916@l /* 0x80CD6528@l */
/* 80CCFA6C  80 64 00 00 */	lwz r3, 0(r4)
/* 80CCFA70  80 04 00 04 */	lwz r0, 4(r4)
/* 80CCFA74  90 61 00 08 */	stw r3, 8(r1)
/* 80CCFA78  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CCFA7C  80 04 00 08 */	lwz r0, 8(r4)
/* 80CCFA80  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CCFA84  7F E3 FB 78 */	mr r3, r31
/* 80CCFA88  38 81 00 08 */	addi r4, r1, 8
/* 80CCFA8C  48 00 10 A9 */	bl setAction__15daObj_Sekizoa_cFM15daObj_Sekizoa_cFPCvPvPv_i
lbl_80CCFA90:
/* 80CCFA90  38 60 00 01 */	li r3, 1
lbl_80CCFA94:
/* 80CCFA94  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80CCFA98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80CCFA9C  7C 08 03 A6 */	mtlr r0
/* 80CCFAA0  38 21 00 30 */	addi r1, r1, 0x30
/* 80CCFAA4  4E 80 00 20 */	blr 
