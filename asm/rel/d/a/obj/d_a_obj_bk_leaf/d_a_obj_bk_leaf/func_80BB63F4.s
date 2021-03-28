lbl_80BB63F4:
/* 80BB63F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB63F8  7C 08 02 A6 */	mflr r0
/* 80BB63FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6400  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB6404  93 C1 00 08 */	stw r30, 8(r1)
/* 80BB6408  7C 7E 1B 78 */	mr r30, r3
/* 80BB640C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BB6410  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BB6414  40 82 00 1C */	bne lbl_80BB6430
/* 80BB6418  28 1E 00 00 */	cmplwi r30, 0
/* 80BB641C  41 82 00 08 */	beq lbl_80BB6424
/* 80BB6420  4B 46 27 44 */	b __ct__10fopAc_ac_cFv
lbl_80BB6424:
/* 80BB6424  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80BB6428  60 00 00 08 */	ori r0, r0, 8
/* 80BB642C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80BB6430:
/* 80BB6430  38 7E 05 68 */	addi r3, r30, 0x568
/* 80BB6434  3C 80 80 BB */	lis r4, l_arcName@ha
/* 80BB6438  38 84 67 58 */	addi r4, r4, l_arcName@l
/* 80BB643C  80 84 00 00 */	lwz r4, 0(r4)
/* 80BB6440  4B 47 6A 7C */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BB6444  7C 7F 1B 78 */	mr r31, r3
/* 80BB6448  2C 1F 00 04 */	cmpwi r31, 4
/* 80BB644C  40 82 00 40 */	bne lbl_80BB648C
/* 80BB6450  7F C3 F3 78 */	mr r3, r30
/* 80BB6454  3C 80 80 BB */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80BB6458  38 84 60 D8 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80BB645C  38 A0 09 80 */	li r5, 0x980
/* 80BB6460  4B 46 40 50 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80BB6464  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB6468  40 82 00 0C */	bne lbl_80BB6474
/* 80BB646C  38 60 00 05 */	li r3, 5
/* 80BB6470  48 00 00 20 */	b lbl_80BB6490
lbl_80BB6474:
/* 80BB6474  7F C3 F3 78 */	mr r3, r30
/* 80BB6478  4B FF FD A5 */	bl Create__10daBkLeaf_cFv
/* 80BB647C  2C 03 00 00 */	cmpwi r3, 0
/* 80BB6480  40 82 00 0C */	bne lbl_80BB648C
/* 80BB6484  38 60 00 05 */	li r3, 5
/* 80BB6488  48 00 00 08 */	b lbl_80BB6490
lbl_80BB648C:
/* 80BB648C  7F E3 FB 78 */	mr r3, r31
lbl_80BB6490:
/* 80BB6490  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB6494  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BB6498  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB649C  7C 08 03 A6 */	mtlr r0
/* 80BB64A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB64A4  4E 80 00 20 */	blr 
