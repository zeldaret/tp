lbl_80D0FED0:
/* 80D0FED0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D0FED4  7C 08 02 A6 */	mflr r0
/* 80D0FED8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D0FEDC  39 61 00 30 */	addi r11, r1, 0x30
/* 80D0FEE0  4B 65 22 F8 */	b _savegpr_28
/* 80D0FEE4  7C 7D 1B 78 */	mr r29, r3
/* 80D0FEE8  7C BE 2B 78 */	mr r30, r5
/* 80D0FEEC  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80D0FEF0  7C BF 2B 78 */	mr r31, r5
/* 80D0FEF4  3C 60 80 D1 */	lis r3, lit_4394@ha
/* 80D0FEF8  38 83 27 E4 */	addi r4, r3, lit_4394@l
/* 80D0FEFC  80 64 00 00 */	lwz r3, 0(r4)
/* 80D0FF00  80 04 00 04 */	lwz r0, 4(r4)
/* 80D0FF04  90 61 00 08 */	stw r3, 8(r1)
/* 80D0FF08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D0FF0C  80 04 00 08 */	lwz r0, 8(r4)
/* 80D0FF10  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D0FF14  2C 05 00 00 */	cmpwi r5, 0
/* 80D0FF18  40 82 00 B0 */	bne lbl_80D0FFC8
/* 80D0FF1C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80D0FF20  80 63 00 04 */	lwz r3, 4(r3)
/* 80D0FF24  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D0FF28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D0FF2C  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 80D0FF30  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80D0FF34  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80D0FF38  4B 63 65 78 */	b PSMTXCopy
/* 80D0FF3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D0FF40  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l
/* 80D0FF44  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80D0FF48  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80D0FF4C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80D0FF50  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80D0FF54  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80D0FF58  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80D0FF5C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80D0FF60  80 63 00 04 */	lwz r3, 4(r3)
/* 80D0FF64  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D0FF68  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D0FF6C  38 63 03 00 */	addi r3, r3, 0x300
/* 80D0FF70  7F 84 E3 78 */	mr r4, r28
/* 80D0FF74  4B 63 65 3C */	b PSMTXCopy
/* 80D0FF78  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80D0FF7C  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80D0FF80  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80D0FF84  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80D0FF88  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80D0FF8C  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80D0FF90  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80D0FF94  80 63 00 04 */	lwz r3, 4(r3)
/* 80D0FF98  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D0FF9C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D0FFA0  38 63 03 30 */	addi r3, r3, 0x330
/* 80D0FFA4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80D0FFA8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80D0FFAC  4B 63 65 04 */	b PSMTXCopy
/* 80D0FFB0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80D0FFB4  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80D0FFB8  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80D0FFBC  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80D0FFC0  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80D0FFC4  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80D0FFC8:
/* 80D0FFC8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80D0FFCC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80D0FFD0  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80D0FFD4  7C 60 E2 14 */	add r3, r0, r28
/* 80D0FFD8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80D0FFDC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80D0FFE0  4B 63 64 D0 */	b PSMTXCopy
/* 80D0FFE4  2C 1F 00 12 */	cmpwi r31, 0x12
/* 80D0FFE8  40 80 00 2C */	bge lbl_80D10014
/* 80D0FFEC  2C 1F 00 0F */	cmpwi r31, 0xf
/* 80D0FFF0  40 80 00 08 */	bge lbl_80D0FFF8
/* 80D0FFF4  48 00 00 20 */	b lbl_80D10014
lbl_80D0FFF8:
/* 80D0FFF8  7F A3 EB 78 */	mr r3, r29
/* 80D0FFFC  7F E4 FB 78 */	mr r4, r31
/* 80D10000  38 A1 00 08 */	addi r5, r1, 8
/* 80D10004  3C C0 80 D1 */	lis r6, m__16daObjTks_Param_c@ha
/* 80D10008  38 C6 27 3C */	addi r6, r6, m__16daObjTks_Param_c@l
/* 80D1000C  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80D10010  4B 44 33 6C */	b setLookatMtx__8daNpcF_cFiPif
lbl_80D10014:
/* 80D10014  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D10018  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1001C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80D10020  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80D10024  7C 80 E2 14 */	add r4, r0, r28
/* 80D10028  4B 63 64 88 */	b PSMTXCopy
/* 80D1002C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D10030  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D10034  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80D10038  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80D1003C  4B 63 64 74 */	b PSMTXCopy
/* 80D10040  2C 1F 00 11 */	cmpwi r31, 0x11
/* 80D10044  41 82 00 0C */	beq lbl_80D10050
/* 80D10048  2C 1F 00 13 */	cmpwi r31, 0x13
/* 80D1004C  40 82 00 2C */	bne lbl_80D10078
lbl_80D10050:
/* 80D10050  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80D10054  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80D10058  41 82 00 20 */	beq lbl_80D10078
/* 80D1005C  83 9D 05 80 */	lwz r28, 0x580(r29)
/* 80D10060  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80D10064  80 83 00 08 */	lwz r4, 8(r3)
/* 80D10068  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80D1006C  4B 2F D9 24 */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80D10070  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80D10074  93 83 00 08 */	stw r28, 8(r3)
lbl_80D10078:
/* 80D10078  38 60 00 01 */	li r3, 1
/* 80D1007C  39 61 00 30 */	addi r11, r1, 0x30
/* 80D10080  4B 65 21 A4 */	b _restgpr_28
/* 80D10084  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D10088  7C 08 03 A6 */	mtlr r0
/* 80D1008C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D10090  4E 80 00 20 */	blr 
