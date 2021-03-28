lbl_806E01D8:
/* 806E01D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E01DC  7C 08 02 A6 */	mflr r0
/* 806E01E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E01E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E01E8  93 C1 00 08 */	stw r30, 8(r1)
/* 806E01EC  7C 7F 1B 78 */	mr r31, r3
/* 806E01F0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 806E01F4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 806E01F8  40 82 00 1C */	bne lbl_806E0214
/* 806E01FC  28 1F 00 00 */	cmplwi r31, 0
/* 806E0200  41 82 00 08 */	beq lbl_806E0208
/* 806E0204  4B 93 89 60 */	b __ct__10fopAc_ac_cFv
lbl_806E0208:
/* 806E0208  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 806E020C  60 00 00 08 */	ori r0, r0, 8
/* 806E0210  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_806E0214:
/* 806E0214  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 806E0218  3C 80 80 6E */	lis r4, stringBase0@ha
/* 806E021C  38 84 02 94 */	addi r4, r4, stringBase0@l
/* 806E0220  4B 94 CC 9C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 806E0224  7C 7E 1B 78 */	mr r30, r3
/* 806E0228  2C 1E 00 04 */	cmpwi r30, 4
/* 806E022C  40 82 00 40 */	bne lbl_806E026C
/* 806E0230  7F E3 FB 78 */	mr r3, r31
/* 806E0234  3C 80 80 6E */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 806E0238  38 84 00 D8 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 806E023C  38 A0 0B 00 */	li r5, 0xb00
/* 806E0240  4B 93 A2 70 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 806E0244  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E0248  40 82 00 0C */	bne lbl_806E0254
/* 806E024C  38 60 00 05 */	li r3, 5
/* 806E0250  48 00 00 20 */	b lbl_806E0270
lbl_806E0254:
/* 806E0254  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 806E0258  80 63 00 04 */	lwz r3, 4(r3)
/* 806E025C  38 03 00 24 */	addi r0, r3, 0x24
/* 806E0260  90 1F 05 04 */	stw r0, 0x504(r31)
/* 806E0264  7F E3 FB 78 */	mr r3, r31
/* 806E0268  4B FF FD 59 */	bl daE_HB_LEAF_Execute__FP15e_hb_leaf_class
lbl_806E026C:
/* 806E026C  7F C3 F3 78 */	mr r3, r30
lbl_806E0270:
/* 806E0270  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E0274  83 C1 00 08 */	lwz r30, 8(r1)
/* 806E0278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E027C  7C 08 03 A6 */	mtlr r0
/* 806E0280  38 21 00 10 */	addi r1, r1, 0x10
/* 806E0284  4E 80 00 20 */	blr 
