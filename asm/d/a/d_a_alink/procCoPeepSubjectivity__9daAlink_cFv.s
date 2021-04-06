lbl_800CF1B8:
/* 800CF1B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800CF1BC  7C 08 02 A6 */	mflr r0
/* 800CF1C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800CF1C4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800CF1C8  7C 7F 1B 78 */	mr r31, r3
/* 800CF1CC  88 03 2F 8D */	lbz r0, 0x2f8d(r3)
/* 800CF1D0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800CF1D4  40 82 00 14 */	bne lbl_800CF1E8
/* 800CF1D8  38 80 00 08 */	li r4, 8
/* 800CF1DC  4B FE 33 F1 */	bl itemTriggerCheck__9daAlink_cFUc
/* 800CF1E0  2C 03 00 00 */	cmpwi r3, 0
/* 800CF1E4  41 82 00 60 */	beq lbl_800CF244
lbl_800CF1E8:
/* 800CF1E8  38 00 00 00 */	li r0, 0
/* 800CF1EC  90 01 00 08 */	stw r0, 8(r1)
/* 800CF1F0  3C 60 80 0D */	lis r3, daAlink_searchPeepObj__FP10fopAc_ac_cPv@ha /* 0x800CED48@ha */
/* 800CF1F4  38 63 ED 48 */	addi r3, r3, daAlink_searchPeepObj__FP10fopAc_ac_cPv@l /* 0x800CED48@l */
/* 800CF1F8  38 81 00 08 */	addi r4, r1, 8
/* 800CF1FC  4B F4 A5 C1 */	bl fopAcIt_Executor__FPFPvPv_iPv
/* 800CF200  80 61 00 08 */	lwz r3, 8(r1)
/* 800CF204  28 03 00 00 */	cmplwi r3, 0
/* 800CF208  41 82 00 0C */	beq lbl_800CF214
/* 800CF20C  88 03 05 6D */	lbz r0, 0x56d(r3)
/* 800CF210  98 1F 2F AD */	stb r0, 0x2fad(r31)
lbl_800CF214:
/* 800CF214  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800CF218  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800CF21C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 800CF220  7F E4 FB 78 */	mr r4, r31
/* 800CF224  38 A0 00 00 */	li r5, 0
/* 800CF228  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800CF22C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800CF230  4B F7 3F 3D */	bl compulsory__14dEvt_control_cFPvPCcUs
/* 800CF234  2C 03 00 00 */	cmpwi r3, 0
/* 800CF238  41 82 00 0C */	beq lbl_800CF244
/* 800CF23C  7F E3 FB 78 */	mr r3, r31
/* 800CF240  4B FE EB 31 */	bl startPeepChange__9daAlink_cFv
lbl_800CF244:
/* 800CF244  38 60 00 01 */	li r3, 1
/* 800CF248  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800CF24C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800CF250  7C 08 03 A6 */	mtlr r0
/* 800CF254  38 21 00 20 */	addi r1, r1, 0x20
/* 800CF258  4E 80 00 20 */	blr 
