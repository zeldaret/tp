lbl_80D216F4:
/* 80D216F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D216F8  7C 08 02 A6 */	mflr r0
/* 80D216FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D21700  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D21704  93 C1 00 08 */	stw r30, 8(r1)
/* 80D21708  7C 7E 1B 78 */	mr r30, r3
/* 80D2170C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D21710  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D21714  40 82 00 1C */	bne lbl_80D21730
/* 80D21718  28 1E 00 00 */	cmplwi r30, 0
/* 80D2171C  41 82 00 08 */	beq lbl_80D21724
/* 80D21720  4B 2F 74 45 */	bl __ct__10fopAc_ac_cFv
lbl_80D21724:
/* 80D21724  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D21728  60 00 00 08 */	ori r0, r0, 8
/* 80D2172C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D21730:
/* 80D21730  38 7E 05 68 */	addi r3, r30, 0x568
/* 80D21734  3C 80 80 D2 */	lis r4, l_arcName@ha /* 0x80D21A24@ha */
/* 80D21738  38 84 1A 24 */	addi r4, r4, l_arcName@l /* 0x80D21A24@l */
/* 80D2173C  80 84 00 00 */	lwz r4, 0(r4)
/* 80D21740  4B 30 B7 7D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D21744  7C 7F 1B 78 */	mr r31, r3
/* 80D21748  2C 1F 00 04 */	cmpwi r31, 4
/* 80D2174C  40 82 00 40 */	bne lbl_80D2178C
/* 80D21750  7F C3 F3 78 */	mr r3, r30
/* 80D21754  3C 80 80 D2 */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha /* 0x80D213D8@ha */
/* 80D21758  38 84 13 D8 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l /* 0x80D213D8@l */
/* 80D2175C  38 A0 09 60 */	li r5, 0x960
/* 80D21760  4B 2F 8D 51 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D21764  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D21768  40 82 00 0C */	bne lbl_80D21774
/* 80D2176C  38 60 00 05 */	li r3, 5
/* 80D21770  48 00 00 20 */	b lbl_80D21790
lbl_80D21774:
/* 80D21774  7F C3 F3 78 */	mr r3, r30
/* 80D21778  4B FF FD 35 */	bl Create__11daObjVGnd_cFv
/* 80D2177C  2C 03 00 00 */	cmpwi r3, 0
/* 80D21780  40 82 00 0C */	bne lbl_80D2178C
/* 80D21784  38 60 00 05 */	li r3, 5
/* 80D21788  48 00 00 08 */	b lbl_80D21790
lbl_80D2178C:
/* 80D2178C  7F E3 FB 78 */	mr r3, r31
lbl_80D21790:
/* 80D21790  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D21794  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D21798  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2179C  7C 08 03 A6 */	mtlr r0
/* 80D217A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D217A4  4E 80 00 20 */	blr 
