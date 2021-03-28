lbl_80CEF5C8:
/* 80CEF5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEF5CC  7C 08 02 A6 */	mflr r0
/* 80CEF5D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEF5D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEF5D8  7C 7F 1B 78 */	mr r31, r3
/* 80CEF5DC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CEF5E0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CEF5E4  40 82 00 1C */	bne lbl_80CEF600
/* 80CEF5E8  28 1F 00 00 */	cmplwi r31, 0
/* 80CEF5EC  41 82 00 08 */	beq lbl_80CEF5F4
/* 80CEF5F0  4B 32 95 74 */	b __ct__10fopAc_ac_cFv
lbl_80CEF5F4:
/* 80CEF5F4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CEF5F8  60 00 00 08 */	ori r0, r0, 8
/* 80CEF5FC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CEF600:
/* 80CEF600  38 7F 05 68 */	addi r3, r31, 0x568
/* 80CEF604  3C 80 80 CF */	lis r4, l_arcName@ha
/* 80CEF608  38 84 FF 24 */	addi r4, r4, l_arcName@l
/* 80CEF60C  80 84 00 00 */	lwz r4, 0(r4)
/* 80CEF610  4B 33 D8 AC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CEF614  2C 03 00 04 */	cmpwi r3, 4
/* 80CEF618  41 82 00 08 */	beq lbl_80CEF620
/* 80CEF61C  48 00 00 3C */	b lbl_80CEF658
lbl_80CEF620:
/* 80CEF620  7F E3 FB 78 */	mr r3, r31
/* 80CEF624  3C 80 80 CF */	lis r4, CheckCreateHeap__FP10fopAc_ac_c@ha
/* 80CEF628  38 84 F3 38 */	addi r4, r4, CheckCreateHeap__FP10fopAc_ac_c@l
/* 80CEF62C  38 A0 40 00 */	li r5, 0x4000
/* 80CEF630  4B 32 AE 80 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80CEF634  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CEF638  40 82 00 0C */	bne lbl_80CEF644
/* 80CEF63C  38 60 00 05 */	li r3, 5
/* 80CEF640  48 00 00 18 */	b lbl_80CEF658
lbl_80CEF644:
/* 80CEF644  7F E3 FB 78 */	mr r3, r31
/* 80CEF648  4B FF FE 05 */	bl Create__15daObjStopper2_cFv
/* 80CEF64C  20 03 00 00 */	subfic r0, r3, 0
/* 80CEF650  7C 60 01 10 */	subfe r3, r0, r0
/* 80CEF654  38 63 00 05 */	addi r3, r3, 5
lbl_80CEF658:
/* 80CEF658  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEF65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEF660  7C 08 03 A6 */	mtlr r0
/* 80CEF664  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEF668  4E 80 00 20 */	blr 
