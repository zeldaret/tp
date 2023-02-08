lbl_80CE622C:
/* 80CE622C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CE6230  7C 08 02 A6 */	mflr r0
/* 80CE6234  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CE6238  39 61 00 40 */	addi r11, r1, 0x40
/* 80CE623C  4B 67 BF 9D */	bl _savegpr_28
/* 80CE6240  7C 7D 1B 78 */	mr r29, r3
/* 80CE6244  3C 80 80 CE */	lis r4, cNullVec__6Z2Calc@ha /* 0x80CE69C4@ha */
/* 80CE6248  3B E4 69 C4 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80CE69C4@l */
/* 80CE624C  3B C0 00 01 */	li r30, 1
/* 80CE6250  80 9F 00 A8 */	lwz r4, 0xa8(r31)
/* 80CE6254  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 80CE6258  90 81 00 20 */	stw r4, 0x20(r1)
/* 80CE625C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE6260  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CE6264  90 01 00 28 */	stw r0, 0x28(r1)
/* 80CE6268  38 81 00 20 */	addi r4, r1, 0x20
/* 80CE626C  4B FF FB 45 */	bl checkProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i
/* 80CE6270  2C 03 00 00 */	cmpwi r3, 0
/* 80CE6274  41 82 00 0C */	beq lbl_80CE6280
/* 80CE6278  38 60 00 01 */	li r3, 1
/* 80CE627C  48 00 01 18 */	b lbl_80CE6394
lbl_80CE6280:
/* 80CE6280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE6284  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE6288  38 00 00 00 */	li r0, 0
/* 80CE628C  88 7C 4F AD */	lbz r3, 0x4fad(r28)
/* 80CE6290  28 03 00 00 */	cmplwi r3, 0
/* 80CE6294  41 82 00 0C */	beq lbl_80CE62A0
/* 80CE6298  28 03 00 02 */	cmplwi r3, 2
/* 80CE629C  40 82 00 08 */	bne lbl_80CE62A4
lbl_80CE62A0:
/* 80CE62A0  38 00 00 01 */	li r0, 1
lbl_80CE62A4:
/* 80CE62A4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80CE62A8  40 82 00 E8 */	bne lbl_80CE6390
/* 80CE62AC  80 7D 05 6C */	lwz r3, 0x56c(r29)
/* 80CE62B0  28 03 00 00 */	cmplwi r3, 0
/* 80CE62B4  41 82 00 1C */	beq lbl_80CE62D0
/* 80CE62B8  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 80CE62BC  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80CE62C0  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 80CE62C4  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80CE62C8  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 80CE62CC  D0 1D 05 58 */	stfs f0, 0x558(r29)
lbl_80CE62D0:
/* 80CE62D0  3B C0 00 00 */	li r30, 0
/* 80CE62D4  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80CE62D8  28 00 00 01 */	cmplwi r0, 1
/* 80CE62DC  40 82 00 B4 */	bne lbl_80CE6390
/* 80CE62E0  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 80CE62E4  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 80CE62E8  90 61 00 14 */	stw r3, 0x14(r1)
/* 80CE62EC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80CE62F0  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 80CE62F4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80CE62F8  7F A3 EB 78 */	mr r3, r29
/* 80CE62FC  38 81 00 14 */	addi r4, r1, 0x14
/* 80CE6300  4B FF FA B1 */	bl checkProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i
/* 80CE6304  2C 03 00 00 */	cmpwi r3, 0
/* 80CE6308  41 82 00 20 */	beq lbl_80CE6328
/* 80CE630C  7F A3 EB 78 */	mr r3, r29
/* 80CE6310  38 80 00 00 */	li r4, 0
/* 80CE6314  39 9D 0A F0 */	addi r12, r29, 0xaf0
/* 80CE6318  4B 67 BD 6D */	bl __ptmf_scall
/* 80CE631C  60 00 00 00 */	nop 
/* 80CE6320  7C 7E 1B 78 */	mr r30, r3
/* 80CE6324  48 00 00 64 */	b lbl_80CE6388
lbl_80CE6328:
/* 80CE6328  38 00 00 00 */	li r0, 0
/* 80CE632C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE6330  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE6334  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80CE6338  28 03 00 01 */	cmplwi r3, 1
/* 80CE633C  41 82 00 0C */	beq lbl_80CE6348
/* 80CE6340  28 03 00 02 */	cmplwi r3, 2
/* 80CE6344  40 82 00 08 */	bne lbl_80CE634C
lbl_80CE6348:
/* 80CE6348  38 00 00 01 */	li r0, 1
lbl_80CE634C:
/* 80CE634C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80CE6350  41 82 00 14 */	beq lbl_80CE6364
/* 80CE6354  38 7C 4F F8 */	addi r3, r28, 0x4ff8
/* 80CE6358  4B 36 24 99 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80CE635C  2C 03 00 00 */	cmpwi r3, 0
/* 80CE6360  41 82 00 28 */	beq lbl_80CE6388
lbl_80CE6364:
/* 80CE6364  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 80CE6368  80 1F 00 C4 */	lwz r0, 0xc4(r31)
/* 80CE636C  90 61 00 08 */	stw r3, 8(r1)
/* 80CE6370  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE6374  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 80CE6378  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CE637C  7F A3 EB 78 */	mr r3, r29
/* 80CE6380  38 81 00 08 */	addi r4, r1, 8
/* 80CE6384  4B FF FA 59 */	bl setProcess__15daObj_SSDrink_cFM15daObj_SSDrink_cFPCvPvPv_i
lbl_80CE6388:
/* 80CE6388  7F C3 F3 78 */	mr r3, r30
/* 80CE638C  48 00 00 08 */	b lbl_80CE6394
lbl_80CE6390:
/* 80CE6390  7F C3 F3 78 */	mr r3, r30
lbl_80CE6394:
/* 80CE6394  39 61 00 40 */	addi r11, r1, 0x40
/* 80CE6398  4B 67 BE 8D */	bl _restgpr_28
/* 80CE639C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CE63A0  7C 08 03 A6 */	mtlr r0
/* 80CE63A4  38 21 00 40 */	addi r1, r1, 0x40
/* 80CE63A8  4E 80 00 20 */	blr 
